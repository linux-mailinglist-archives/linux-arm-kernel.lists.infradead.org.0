Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B921DE17A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhAVe3+Qgvb1p0AEVIrqtnLKtBvc6K+ZTcw6dURHDl0=; b=Owgp9tkvsMYjHO
	qwEEyIkD/R9QtFL9kv5ihKr+KAVItMXMYjMo92704zQHg3UQtUBQ7xRUFZOxO7lraKXEuQI8FTwe2
	er0uChdcCdvTTOldj+LYhuXXL6DsqZjBd/ZkzGcaf/QUYXOSpcXQ/JH3YNsCSevvcJTqO3fRZ0+OV
	leHe904V7OS4nwA5FEQqrxeh0FzfC6H4OXQn2TZe2b10pdrjPf2xZS0mk41fFmBcaLtb8Pf6t8k7m
	CLm3w9sLxssWYOM2VaCyWLzVcwICx5725IUur/fRAnhozKVacS7akH5w4m0mpdAPIXHytjNhkl8ZD
	z1LEi7QL8CCko6RPQOqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDgZ-0000Ii-3X; Wed, 23 Oct 2019 10:16:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe1-0004kg-I8; Wed, 23 Oct 2019 10:13:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 062C4B53E;
 Wed, 23 Oct 2019 10:13:30 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 06/11] arm64: dts: realtek: Add RTD129x reset controller
 nodes
Date: Wed, 23 Oct 2019 12:13:12 +0200
Message-Id: <20191023101317.26656-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031333_780601_33F039A2 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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

QWRkIG5vZGVzIGZvciB0aGUgUmVhbHRlayBSVEQxMjk1IHJlc2V0IGNvbnRyb2xsZXJzLgoKU2ln
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYxIC0+
IHYyOgogKiBSZWJhc2VkLCBtb3ZlZCBmcm9tIHJ0ZDEyOTUuZHRzaSB0byBydGQxMjl4LmR0c2kK
IAogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSB8IDMwICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQppbmRleCAwYjJhYzBjMzNi
OGIuLjI4MmFiOGJmYWFkMSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOXguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5k
dHNpCkBAIC0zNyw2ICszNywzNiBAQAogCQkvKiBFeGNsdWRlIHVwIHRvIDIgR2lCIG9mIFJBTSAq
LwogCQlyYW5nZXMgPSA8MHg4MDAwMDAwMCAweDgwMDAwMDAwIDB4ODAwMDAwMDA+OwogCisJCXJl
c2V0MTogcmVzZXQtY29udHJvbGxlckA5ODAwMDAwMCB7CisJCQljb21wYXRpYmxlID0gInNucHMs
ZHctbG93LXJlc2V0IjsKKwkJCXJlZyA9IDwweDk4MDAwMDAwIDB4ND47CisJCQkjcmVzZXQtY2Vs
bHMgPSA8MT47CisJCX07CisKKwkJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDk4MDAwMDA0IHsK
KwkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQkJcmVnID0gPDB4OTgwMDAw
MDQgMHg0PjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJfTsKKworCQlyZXNldDM6IHJlc2V0
LWNvbnRyb2xsZXJAOTgwMDAwMDggeworCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNl
dCI7CisJCQlyZWcgPSA8MHg5ODAwMDAwOCAweDQ+OworCQkJI3Jlc2V0LWNlbGxzID0gPDE+Owor
CQl9OworCisJCXJlc2V0NDogcmVzZXQtY29udHJvbGxlckA5ODAwMDA1MCB7CisJCQljb21wYXRp
YmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJCXJlZyA9IDwweDk4MDAwMDUwIDB4ND47CisJ
CQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCX07CisKKwkJaXNvX3Jlc2V0OiByZXNldC1jb250cm9s
bGVyQDk4MDA3MDg4IHsKKwkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQkJ
cmVnID0gPDB4OTgwMDcwODggMHg0PjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJfTsKKwog
CQl3ZHQ6IHdhdGNoZG9nQDk4MDA3NjgwIHsKIAkJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQx
Mjk1LXdhdGNoZG9nIjsKIAkJCXJlZyA9IDwweDk4MDA3NjgwIDB4MTAwPjsKLS0gCjIuMTYuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
