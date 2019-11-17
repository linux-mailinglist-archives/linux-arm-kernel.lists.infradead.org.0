Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AE4FF867
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shvbmNJQqTqqCYxo/tDDfEilPZqULaymxiR3g5YszHk=; b=toPcm9AnbSmMg6
	CJZfguWTayUG73mlSuP+jQ+0+Xv5zsmCqKdvUXMJogDO6EDfjGCwl8WElmSNdKg3RVGS8nNKfvhQk
	FzG8fnFRQpW2yiSVjrGdcDvmcHsagGzueXIBKCBFz+w+LO07skRrtBZsZ004XyKNybbbxUjCn6Z/s
	gchjywZFQenw+FA6qbeGNvE1IxcDVKMW48WgUl3otAv49NH+flKDPxu9zgsfwZBq1wwbj/OrN6jWg
	ZpUr0U3bLaa7d2A24Yj5mzihO8Bh7QT34SKwQOQI6emgjuTbwyLsZIMCmqaIZ2D4fD31A8x64+amP
	XnJOzhR011oBeqcCpWgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEu6-0001e2-LP; Sun, 17 Nov 2019 07:23:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEsA-000852-68; Sun, 17 Nov 2019 07:21:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 41726B315;
 Sun, 17 Nov 2019 07:21:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 7/8] ARM: dts: rtd1195: Add UART resets
Date: Sun, 17 Nov 2019 08:21:08 +0100
Message-Id: <20191117072109.20402-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232126_415663_4A368443 
X-CRM114-Status: GOOD (  10.25  )
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

QXNzb2NpYXRlIHRoZSBVQVJUIG5vZGVzIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgY29u
dHJvbGxlciBiaXRzLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPgotLS0KIHYzOiBmcm9tIFJURDEyOTUgcmVzZXQgdjIKICogUmViYXNlZCBvbnRvIHIt
YnVzCiAKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSB8IDMgKysrCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRk
MTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCmluZGV4IGUwZjEzM2Ex
MzU0Zi4uNGVlYzQ1MjQ0MTMyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1
LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCkBAIC04LDYgKzgsNyBA
QAogL21lbXJlc2VydmUvIDB4MTdmZmYwMDAgMHgwMDAwMTAwMDsKIAogI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KKyNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUuaD4KIAogLyB7CiAJY29tcGF0aWJsZSA9ICJyZWFs
dGVrLHJ0ZDExOTUiOwpAQCAtMTM0LDYgKzEzNSw3IEBACiAJCQkJcmVnID0gPDB4NzgwMCAweDQw
MD47CiAJCQkJcmVnLXNoaWZ0ID0gPDI+OwogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCQly
ZXNldHMgPSA8Jmlzb19yZXNldCBSVEQxMTk1X0lTT19SU1ROX1VSMD47CiAJCQkJY2xvY2stZnJl
cXVlbmN5ID0gPDI3MDAwMDAwPjsKIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQkJfTsKQEAg
LTE0Myw2ICsxNDUsNyBAQAogCQkJCXJlZyA9IDwweDFiMjAwIDB4MTAwPjsKIAkJCQlyZWctc2hp
ZnQgPSA8Mj47CiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQkJCXJlc2V0cyA9IDwmcmVzZXQy
IFJURDExOTVfUlNUTl9VUjE+OwogCQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47CiAJ
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
