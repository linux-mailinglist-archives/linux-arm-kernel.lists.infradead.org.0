Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E322FF864
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ea9m4aFUyxpeoKFvbroYh7Ow0UsxvGEqkuxWcBbcz9w=; b=I5oOPnuBpjuwlU
	/mDVRVAhBXuNvP/uPaHxjxoh2ZNB6UEriEvVeWoulCqhpsMCJ+GluH8e+AWM2lRFsoTSAOQP0EolV
	cQfGy/LjWMImVN9evIy04d5QZW8HRAFjXW4z8HnzEIeMMx534bXB9s0H31I5nfeRYjz9kQaq1vjpC
	S0sj3B4dTwftNsDJ3fu5knS+r26TTFJKL6ZumJeCSc0fB9/rYCdu139yP+3w/eCcrB2mMCCSpzE3q
	4LH5+JD0ZaydZtJSbMqio3Grh+NC46sF9XJJgB/jgac1OE07tAk1DwCPtTkn8TI9ICwls8HKVR5Hx
	2MExelqThyohXVDiXCcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEtZ-0000wG-Pq; Sun, 17 Nov 2019 07:22:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEsA-000850-68; Sun, 17 Nov 2019 07:21:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CC3B2B313;
 Sun, 17 Nov 2019 07:21:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 6/8] ARM: dts: rtd1195: Add reset nodes
Date: Sun, 17 Nov 2019 08:21:07 +0100
Message-Id: <20191117072109.20402-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232126_410386_751019A2 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHJlc2V0IGNvbnRyb2xsZXIgbm9kZXMgZm9yIFJlYWx0ZWsgUlREMTE5NSBTb0MuCgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjM6IGZy
b20gUlREMTI5NSByZXNldCB2MgogKiBSZWJhc2VkIG9udG8gci1idXMgLSByZWcsIHVuaXQgYWRk
cmVzcywgaW5kZW50YXRpb24KIAogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIHwgMjQg
KysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQppbmRleCBmNTE3NGY4MjhhMjguLmUwZjEzM2ExMzU0ZiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQpAQCAtOTksNiArOTksMzAgQEAKIAkJCSNzaXplLWNlbGxz
ID0gPDE+OwogCQkJcmFuZ2VzID0gPDB4MCAweDE4MDAwMDAwIDB4NzAwMDA+OwogCisJCQlyZXNl
dDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7CisJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1y
ZXNldCI7CisJCQkJcmVnID0gPDB4MCAweDQ+OworCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJ
CX07CisKKwkJCXJlc2V0MjogcmVzZXQtY29udHJvbGxlckA0IHsKKwkJCQljb21wYXRpYmxlID0g
InNucHMsZHctbG93LXJlc2V0IjsKKwkJCQlyZWcgPSA8MHg0IDB4ND47CisJCQkJI3Jlc2V0LWNl
bGxzID0gPDE+OworCQkJfTsKKworCQkJcmVzZXQzOiByZXNldC1jb250cm9sbGVyQDggeworCQkJ
CWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQkJCXJlZyA9IDwweDggMHg0PjsK
KwkJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCQl9OworCisJCQlpc29fcmVzZXQ6IHJlc2V0LWNv
bnRyb2xsZXJANzA4OCB7CisJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7CisJ
CQkJcmVnID0gPDB4NzA4OCAweDQ+OworCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJCX07CisK
IAkJCXdkdDogd2F0Y2hkb2dANzY4MCB7CiAJCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEy
OTUtd2F0Y2hkb2ciOwogCQkJCXJlZyA9IDwweDc2ODAgMHgxMDA+OwotLSAKMi4xNi40CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
