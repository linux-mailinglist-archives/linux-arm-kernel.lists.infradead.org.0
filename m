Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C73C186B43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u7M58DWm8TdNE+yhDNmPnU/JiI/qtiZHhHJqiNxaYJs=; b=W0a/2OKW2biEBq
	O5L+s+BMQuFffHHssY42TkyebbDo9cpRL5TwtNxpvfaFwM9Xk2+o/bp1OKMpj+LKcBM3NiHgWNym3
	e4B+Koaft1GtiAKlLPvMqoY62eLFv0E1srrMLZfMHvpX+35As9dhZrZdLhuxhMpDqQCutiroeE24G
	L79FPP5VMGUr9NO6nC7ViKFCbOzMLKtlgvkdt0sctf2dxi3l5bWK2KhRw1enk+XunfuEr/DsKkDhn
	wwYHDHMiSFHQjNbX1Z5FP2/S7jkPZwJ/Lnx96BvgyqyoqqtgEVUHsBEmEIDk5MeVr3EWAWGHVSLol
	4t3S1kFkeT41FC+g59aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDp3e-00021u-6U; Mon, 16 Mar 2020 12:41:26 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDp3D-0001rO-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:41:01 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id B1B795FD86;
 Mon, 16 Mar 2020 13:40:47 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: reduce trampoline data alignment
Date: Mon, 16 Mar 2020 14:40:46 +0200
Message-Id: <20200316124046.103844-3-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_054059_784030_B61CB524 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNv
bT4KClRoZSB0cmFtcG9saW5lIGRhdGEsIGN1cnJlbnRseSBjb25zaXN0aW5nIG9mIHR3byByZWxv
Y2F0ZWQgcG9pbnRlcnMsCm11c3QgYmUgd2l0aGluIGEgc2luZ2xlIHBhZ2UuIEhvd2V2ZXIsIHRo
ZXJlIGFyZSBubyBuZWVkcyBmb3IgaXQgdG8Kc3RhcnQgYSBwYWdlLgoKVGhpcyByZWR1Y2VzIHRo
ZSBhbGlnbm1lbnQgdG8gMTYgYnl0ZXMgKHdpdGggU0RFSSkgb3IgOCBieXRlcyAod2l0aG91dApT
REVJKSwgd2hpY2ggaXMgc3VmZmljaWVudCB0byBlbnN1cmUgdGhhdCB0aGUgZGF0YSBpcyBlbnRp
cmVseSB3aXRoaW4gYQpzaW5nbGUgcGFnZSBvZiB0aGUgZml4bWFwLgoKU2lnbmVkLW9mZi1ieTog
UsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KLS0t
CiBhcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TIHwgNCArKy0tCiBhcmNoL2FybTY0L21tL21tdS5j
ICAgICAgIHwgNSArKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyBiL2FyY2gv
YXJtNjQva2VybmVsL2VudHJ5LlMKaW5kZXggYWYxN2ZjYjRhYWVhLi5iNjQ4ZjlmZTFlMzMgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKKysrIGIvYXJjaC9hcm02NC9rZXJu
ZWwvZW50cnkuUwpAQCAtODU4LDEyICs4NTgsMTIgQEAgU1lNX0NPREVfRU5EKHRyYW1wX2V4aXRf
Y29tcGF0KQogCS5wb3BzZWN0aW9uCQkJCS8vIC5lbnRyeS50cmFtcC50ZXh0CiAjaWZkZWYgQ09O
RklHX1JBTkRPTUlaRV9CQVNFCiAJLnB1c2hzZWN0aW9uICIucm9kYXRhIiwgImEiCi0JLmFsaWdu
IFBBR0VfU0hJRlQKICNpZmRlZiBDT05GSUdfQVJNX1NERV9JTlRFUkZBQ0UKKwkuYWxpZ24JNAkv
LyBhbGwgLnJvZGF0YSBtdXN0IGJlIGluIGEgc2luZ2xlIGZpeG1hcCBwYWdlCiBTWU1fREFUQV9T
VEFSVChfX3NkZWlfYXNtX3RyYW1wb2xpbmVfbmV4dF9oYW5kbGVyKQogCS5xdWFkCV9fc2RlaV9h
c21faGFuZGxlcgogU1lNX0RBVEFfRU5EKF9fc2RlaV9hc21fdHJhbXBvbGluZV9uZXh0X2hhbmRs
ZXIpCi0jZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdfQVJNX1NERV9JTlRFUkZBQ0UgKi8KIFNZTV9E
QVRBX1NUQVJUKF9fZW50cnlfdHJhbXBfZGF0YV9zdGFydCkKIAkucXVhZAl2ZWN0b3JzCiBTWU1f
REFUQV9FTkQoX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0KQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9tbS9tbXUuYyBiL2FyY2gvYXJtNjQvbW0vbW11LmMKaW5kZXggOWIwOGY3YzdlNmYwLi42YTBl
NzVmNDhlN2IgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvbW0vbW11LmMKKysrIGIvYXJjaC9hcm02
NC9tbS9tbXUuYwpAQCAtNTk5LDkgKzU5OSw4IEBAIHN0YXRpYyBpbnQgX19pbml0IG1hcF9lbnRy
eV90cmFtcG9saW5lKHZvaWQpCiAJaWYgKElTX0VOQUJMRUQoQ09ORklHX1JBTkRPTUlaRV9CQVNF
KSkgewogCQlleHRlcm4gY2hhciBfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnRbXTsKIAotCQlfX3Nl
dF9maXhtYXAoRklYX0VOVFJZX1RSQU1QX0RBVEEsCi0JCQkgICAgIF9fcGFfc3ltYm9sKF9fZW50
cnlfdHJhbXBfZGF0YV9zdGFydCksCi0JCQkgICAgIFBBR0VfS0VSTkVMX1JPKTsKKwkJcGFfc3Rh
cnQgPSBfX3BhX3N5bWJvbChfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQpICYgUEFHRV9NQVNLOwor
CQlfX3NldF9maXhtYXAoRklYX0VOVFJZX1RSQU1QX0RBVEEsIHBhX3N0YXJ0LCBQQUdFX0tFUk5F
TF9STyk7CiAJfQogCiAJcmV0dXJuIDA7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
