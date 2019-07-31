Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2137CAAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqJzXlCZexfO7dd9n/hmIxD7pqtj4eAmXF+23VarzoE=; b=mn/1QWLaDJjQcx
	EKRMPQV4zTh8mICpgUkDYdKaCt9tM6VzFgLLAIuqgaSEDGjh93DFAA0A1ebGueZWPMyiVZNW+Z5Y5
	WFvqNETcPP5Fnh7HwnDFb9qNDMXeAXLmwJuU5uC5vuUK9C/yvunZYz7FO4NoKpPBMZJX5/poTM01B
	gSXZzJF6yGyCOkbNsjb3szAnSvg/xQcquA0AqsI9VTYaSAO1KUqaSL9ktw9bK6b9Q96C/+eWl8ip4
	MJnM3dzCvmJ8a0IIHDY3tR/UJyX3xwPlBg4FDfXa5CMRHmR4fxzkv9H5e/ffMz7oOiRQ7n2OzjuQa
	cqilZTnowB4Um5t+8SPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssY2-0005hR-UY; Wed, 31 Jul 2019 17:37:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hssXM-0004uR-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:37:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67BC615BF;
 Wed, 31 Jul 2019 10:37:15 -0700 (PDT)
Received: from big-swifty.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B672C3F71F;
 Wed, 31 Jul 2019 10:37:12 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 5/5] arm64: KVM: hyp: debug-sr: Mark expected switch
 fall-through
Date: Wed, 31 Jul 2019 18:36:50 +0100
Message-Id: <20190731173650.12627-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731173650.12627-1-maz@kernel.org>
References: <20190731173650.12627-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_103716_296654_CC23AD76 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Anders Roxell <anders.roxell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgoKV2hlbiBmYWxs
LXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9sbG93aW5nIHdh
cm5pbmdzCndhcyBzdGFydGluZyB0byBzaG93IHVwOgoKLi4vYXJjaC9hcm02NC9rdm0vaHlwL2Rl
YnVnLXNyLmM6IEluIGZ1bmN0aW9uIOKAmF9fZGVidWdfc2F2ZV9zdGF0ZeKAmToKLi4vYXJjaC9h
cm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6MjA6MTk6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1h
eSBmYWxsCiB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICBjYXNlIDE1OiBwdHJb
MTVdID0gcmVhZF9kZWJ1ZyhyZWcsIDE1KTsgICBcCi4uL2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1
Zy1zci5jOjExMzoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYc2F2ZV9kZWJ1Z+KA
mQogIHNhdmVfZGVidWcoZGJnLT5kYmdfYmNyLCBkYmdiY3IsIGJycHMpOwogIF5+fn5+fn5+fn4K
Li4vYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6MjE6Mjogbm90ZTogaGVyZQogIGNhc2Ug
MTQ6IHB0clsxNF0gPSByZWFkX2RlYnVnKHJlZywgMTQpOyAgIFwKICBefn5+Ci4uL2FyY2gvYXJt
NjQva3ZtL2h5cC9kZWJ1Zy1zci5jOjExMzoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g
4oCYc2F2ZV9kZWJ1Z+KAmQogIHNhdmVfZGVidWcoZGJnLT5kYmdfYmNyLCBkYmdiY3IsIGJycHMp
OwogIF5+fn5+fn5+fn4KLi4vYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6MjE6MTk6IHdh
cm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCiB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0
aHJvdWdoPV0KICBjYXNlIDE0OiBwdHJbMTRdID0gcmVhZF9kZWJ1ZyhyZWcsIDE0KTsgICBcCi4u
L2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jOjExMzoyOiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYc2F2ZV9kZWJ1Z+KAmQogIHNhdmVfZGVidWcoZGJnLT5kYmdfYmNyLCBkYmdi
Y3IsIGJycHMpOwogIF5+fn5+fn5+fn4KLi4vYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6
MjI6Mjogbm90ZTogaGVyZQogIGNhc2UgMTM6IHB0clsxM10gPSByZWFkX2RlYnVnKHJlZywgMTMp
OyAgIFwKICBefn5+Ci4uL2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jOjExMzoyOiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYc2F2ZV9kZWJ1Z+KAmQogIHNhdmVfZGVidWcoZGJn
LT5kYmdfYmNyLCBkYmdiY3IsIGJycHMpOwogIF5+fn5+fn5+fn4KClJld29yayB0byBhZGQgYSAn
RmFsbCB0aHJvdWdoJyBjb21tZW50IHdoZXJlIHRoZSBjb21waWxlciB3YXJuZWQKYWJvdXQgZmFs
bC10aHJvdWdoLCBoZW5jZSBzaWxlbmNpbmcgdGhlIHdhcm5pbmcuCgpGaXhlczogZDkzNTEyZWYw
ZjBlICgiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIpClNp
Z25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGluYXJvLm9yZz4KW21h
ejogZml4ZWQgY29tbWl0IG1lc3NhZ2VdClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+Ci0tLQogYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmMgfCAzMCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmMgYi9hcmNoL2Fy
bTY0L2t2bS9oeXAvZGVidWctc3IuYwppbmRleCAyNjc4MWRhM2FkM2UuLjBmYzk4NzJhMTQ2NyAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmMKKysrIGIvYXJjaC9hcm02
NC9rdm0vaHlwL2RlYnVnLXNyLmMKQEAgLTE4LDQwICsxOCw3MCBAQAogI2RlZmluZSBzYXZlX2Rl
YnVnKHB0cixyZWcsbnIpCQkJCQkJXAogCXN3aXRjaCAobnIpIHsJCQkJCQkJXAogCWNhc2UgMTU6
CXB0clsxNV0gPSByZWFkX2RlYnVnKHJlZywgMTUpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAq
LwkJCQlcCiAJY2FzZSAxNDoJcHRyWzE0XSA9IHJlYWRfZGVidWcocmVnLCAxNCk7CQkJXAorCQkJ
LyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDEzOglwdHJbMTNdID0gcmVhZF9kZWJ1Zyhy
ZWcsIDEzKTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgMTI6CXB0clsx
Ml0gPSByZWFkX2RlYnVnKHJlZywgMTIpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlc
CiAJY2FzZSAxMToJcHRyWzExXSA9IHJlYWRfZGVidWcocmVnLCAxMSk7CQkJXAorCQkJLyogRmFs
bCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDEwOglwdHJbMTBdID0gcmVhZF9kZWJ1ZyhyZWcsIDEw
KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgOToJCXB0cls5XSA9IHJl
YWRfZGVidWcocmVnLCA5KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2Ug
ODoJCXB0cls4XSA9IHJlYWRfZGVidWcocmVnLCA4KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2gg
Ki8JCQkJXAogCWNhc2UgNzoJCXB0cls3XSA9IHJlYWRfZGVidWcocmVnLCA3KTsJCQlcCisJCQkv
KiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgNjoJCXB0cls2XSA9IHJlYWRfZGVidWcocmVn
LCA2KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgNToJCXB0cls1XSA9
IHJlYWRfZGVidWcocmVnLCA1KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNh
c2UgNDoJCXB0cls0XSA9IHJlYWRfZGVidWcocmVnLCA0KTsJCQlcCisJCQkvKiBGYWxsIHRocm91
Z2ggKi8JCQkJXAogCWNhc2UgMzoJCXB0clszXSA9IHJlYWRfZGVidWcocmVnLCAzKTsJCQlcCisJ
CQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgMjoJCXB0clsyXSA9IHJlYWRfZGVidWco
cmVnLCAyKTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgMToJCXB0clsx
XSA9IHJlYWRfZGVidWcocmVnLCAxKTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAog
CWRlZmF1bHQ6CXB0clswXSA9IHJlYWRfZGVidWcocmVnLCAwKTsJCQlcCiAJfQogCiAjZGVmaW5l
IHJlc3RvcmVfZGVidWcocHRyLHJlZyxucikJCQkJCVwKIAlzd2l0Y2ggKG5yKSB7CQkJCQkJCVwK
IAljYXNlIDE1Ogl3cml0ZV9kZWJ1ZyhwdHJbMTVdLCByZWcsIDE1KTsJCQlcCisJCQkvKiBGYWxs
IHRocm91Z2ggKi8JCQkJXAogCWNhc2UgMTQ6CXdyaXRlX2RlYnVnKHB0clsxNF0sIHJlZywgMTQp
OwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSAxMzoJd3JpdGVfZGVidWco
cHRyWzEzXSwgcmVnLCAxMyk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNl
IDEyOgl3cml0ZV9kZWJ1ZyhwdHJbMTJdLCByZWcsIDEyKTsJCQlcCisJCQkvKiBGYWxsIHRocm91
Z2ggKi8JCQkJXAogCWNhc2UgMTE6CXdyaXRlX2RlYnVnKHB0clsxMV0sIHJlZywgMTEpOwkJCVwK
KwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSAxMDoJd3JpdGVfZGVidWcocHRyWzEw
XSwgcmVnLCAxMCk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDk6CQl3
cml0ZV9kZWJ1ZyhwdHJbOV0sIHJlZywgOSk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJ
CVwKIAljYXNlIDg6CQl3cml0ZV9kZWJ1ZyhwdHJbOF0sIHJlZywgOCk7CQkJXAorCQkJLyogRmFs
bCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDc6CQl3cml0ZV9kZWJ1ZyhwdHJbN10sIHJlZywgNyk7
CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDY6CQl3cml0ZV9kZWJ1Zyhw
dHJbNl0sIHJlZywgNik7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDU6
CQl3cml0ZV9kZWJ1ZyhwdHJbNV0sIHJlZywgNSk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICov
CQkJCVwKIAljYXNlIDQ6CQl3cml0ZV9kZWJ1ZyhwdHJbNF0sIHJlZywgNCk7CQkJXAorCQkJLyog
RmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDM6CQl3cml0ZV9kZWJ1ZyhwdHJbM10sIHJlZywg
Myk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDI6CQl3cml0ZV9kZWJ1
ZyhwdHJbMl0sIHJlZywgMik7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNl
IDE6CQl3cml0ZV9kZWJ1ZyhwdHJbMV0sIHJlZywgMSk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdo
ICovCQkJCVwKIAlkZWZhdWx0Ogl3cml0ZV9kZWJ1ZyhwdHJbMF0sIHJlZywgMCk7CQkJXAogCX0K
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
