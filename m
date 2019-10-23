Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097E6E17A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3sicJJCecpqueBHsBmHaqMvPcLy20n8U07BNnHMj2Y=; b=RqcXwky9Ro1+4O
	Y3p7oV5MfKOX/3RoQPZgT1dsHmRt98uX9RsxI6GTM2wDitOQGe0ucj/ZISY3cMdpEVoMNtb1WZ0fD
	90M3oik+8ZQ/2/lLHBPiM/r4SwVnN/j5l22rAOWsxOFTAnI0I4RjCVPnS/dhwClo9PrGq39LSm1u/
	mFp809kZIBcSj4g2ja+jspVTEHC7VscYtfkx8TdPofbp0MLVSDLtSS3aJHIwuVPlVI9yuJBf4DtN3
	85afIT8sq3NzXnHGctSP+j7LrDK0HTFyNxzC4Lpc1wsRgcDEIcudxLxF29RkJ1Yd4zyuwlCDQ8b6M
	WcWDHQvmKctASTdhXGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDhB-000126-5w; Wed, 23 Oct 2019 10:16:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe3-0004mh-BF; Wed, 23 Oct 2019 10:13:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 85CCDB638;
 Wed, 23 Oct 2019 10:13:31 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 09/11] ARM: dts: rtd1195: Add UART resets
Date: Wed, 23 Oct 2019 12:13:15 +0200
Message-Id: <20191023101317.26656-10-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031335_550179_9A703BF9 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXNzb2NpYXRlIHRoZSBVQVJUIG5vZGVzIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgY29u
dHJvbGxlciBiaXRzLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPgotLS0KIHYyOiBOZXcKIAogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIHwg
MiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRz
aQppbmRleCBmZGNhZjQ4YTI2ZjIuLmUyY2RjYmNmNzBmNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRz
aQpAQCAtMTI4LDYgKzEyOCw3IEBACiAJCQlyZWcgPSA8MHgxODAwNzgwMCAweDQwMD47CiAJCQly
ZWctc2hpZnQgPSA8Mj47CiAJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQlyZXNldHMgPSA8Jmlz
b19yZXNldCA4PjsKIAkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47CiAJCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwogCQl9OwpAQCAtMTM3LDYgKzEzOCw3IEBACiAJCQlyZWcgPSA8MHgxODAx
YjIwMCAweDEwMD47CiAJCQlyZWctc2hpZnQgPSA8Mj47CiAJCQlyZWctaW8td2lkdGggPSA8ND47
CisJCQlyZXNldHMgPSA8JnJlc2V0MiAyOD47CiAJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAw
MDA+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
