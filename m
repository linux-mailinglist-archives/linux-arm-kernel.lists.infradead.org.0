Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397C9CB9CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7V1TT+MsRa01E8N7CZyIcU/r3bHeB5Uh7vjOUYd6gI=; b=KNOHdV6XnH/T3Z
	lmx8ZNsb8eD7zC7328ULyQ9lzgn8XVYRPIwNcCAkNXcQnUj0+MRzJhb5WBUKKaPwW/lNPtdDYOYHI
	5CmyYDn+DpaVJKm8ci1qZgtIDAhDepBCXeC6blW42uXyrd3qErv9QtfAfz3AFxbifbTw54ONAH0+F
	C4AFlP9iSDyi7fmXugcNOks+5xJuWxOa8FILqRcOX3OO1zUMZcirdcc71RtumMZ2e55TyvkJQgfy+
	eRlv1u66KtRfx5PaatGw2Pe9Mvbc8+42JUEnZ08dGZzVcM29+xTKo2uPBjwlhuW1kdf94D+FTdolx
	UK/ZAm8+6cqzKOdzW/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMKB-0001Zj-PD; Fri, 04 Oct 2019 12:04:43 +0000
Received: from 13.mo7.mail-out.ovh.net ([87.98.150.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMHa-0007on-To
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:02:04 +0000
Received: from player792.ha.ovh.net (unknown [10.109.143.210])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 5B60B13601F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:02:00 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id E4DA3AA65F70;
 Fri,  4 Oct 2019 12:01:43 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 08/16] mtd: spi-nor: Add support for w25q512jv
Date: Fri,  4 Oct 2019 13:59:11 +0200
Message-Id: <20191004115919.20788-9-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3798786288221916083
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050203_131784_A01AA523 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.150.175 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RFVBTCBhbmQgUVVBRCBhcmUgc3VwcG9ydGVkIDoKCiAgaHR0cHM6Ly93d3cud2luYm9uZC5jb20v
cmVzb3VyY2UtZmlsZXMvVzI1UTUxMkpWJTIwU1BJJTIwUmV2QiUyMDA2MjUyMDE5JTIwS01TLnBk
ZgoKU2lnbmVkLW9mZi1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KUmV2aWV3
ZWQtYnk6IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+Ci0tLQogZHJpdmVycy9tdGQv
c3BpLW5vci9zcGktbm9yLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jIGIvZHJpdmVycy9t
dGQvc3BpLW5vci9zcGktbm9yLmMKaW5kZXggYjExNjU2NzNjZDkzLi5lOGJlYjY3MWVmODggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jCisrKyBiL2RyaXZlcnMvbXRk
L3NwaS1ub3Ivc3BpLW5vci5jCkBAIC0yNDgyLDYgKzI0ODIsOSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGZsYXNoX2luZm8gc3BpX25vcl9pZHNbXSA9IHsKIAl7ICJ3MjVxMjU2IiwgSU5GTygweGVm
NDAxOSwgMCwgNjQgKiAxMDI0LCA1MTIsIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQ
SV9OT1JfUVVBRF9SRUFEKSB9LAogCXsgIncyNXEyNTZqdm0iLCBJTkZPKDB4ZWY3MDE5LCAwLCA2
NCAqIDEwMjQsIDUxMiwKIAkJCSAgICAgU0VDVF80SyB8IFNQSV9OT1JfRFVBTF9SRUFEIHwgU1BJ
X05PUl9RVUFEX1JFQUQpIH0sCisJeyAidzI1cTUxMmp2IiwgSU5GTygweGVmNDAyMCwgMCwgNjQg
KiAxMDI0LCAxMDI0LAorCQkJICAgIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQSV9O
T1JfUVVBRF9SRUFEIHwKKwkJCSAgICBTUElfTk9SX0hBU19MT0NLIHwgU1BJX05PUl9IQVNfVEIp
IH0sCiAJeyAidzI1bTUxMmp2IiwgSU5GTygweGVmNzExOSwgMCwgNjQgKiAxMDI0LCAxMDI0LAog
CQkJU0VDVF80SyB8IFNQSV9OT1JfUVVBRF9SRUFEIHwgU1BJX05PUl9EVUFMX1JFQUQpIH0sCiAK
LS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
