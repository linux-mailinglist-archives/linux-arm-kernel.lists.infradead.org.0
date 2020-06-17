Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DFF1FC9CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWdeMUsn6fIE5zEca3UH9nGdU8FbZZa9Vm7KsmCnwqQ=; b=EpdrwZFR+KLpoD
	516Zk5abzrqnGwkugZXAHl8mv68gw0L2FRYonyHu8L/k9NdXLM2iWPRP4j0PPu590dTg1qdlsCd50
	2E+YBX223v/hxXd5ebeDVQhls9r1lRQxLak4s985YdLAU8k9I9hDA/BOlA4PBRwicgFa9SBwiUer4
	3kU7gaWYUbnTm4xXhLL8bBpVRRc3bcH+PdNvqdSodYgIjhalLmf0l5XZO8uAbICHckSCEYy7ZKQrW
	qNkQ1lPZ/ZEWGNdQBkq99vbXG6IIZoeDauGo0G+XCepNafMBOKd/UdIFMu1Aqj/bT7SgykWxyp8wf
	pXbJY5XEFDFaA7v+BzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlULb-0003NA-22; Wed, 17 Jun 2020 09:27:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlULS-0003MD-0W
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:26:59 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlULK-0006ra-BH; Wed, 17 Jun 2020 11:26:50 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlULJ-0001vg-97; Wed, 17 Jun 2020 11:26:49 +0200
Message-ID: <1f5f27d0d5321b3c9a1aed79877a2fd1f2aac6e3.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>, 
 simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com,  krzk@kernel.org,
 gregkh@linuxfoundation.org, alcooperx@gmail.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 17 Jun 2020 11:26:49 +0200
In-Reply-To: <20200616184542.3504965-3-noltari@gmail.com>
References: <20200616184542.3504965-1-noltari@gmail.com>
 <20200616184542.3504965-3-noltari@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_022658_052885_5617CE61 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCk9uIFR1ZSwgMjAyMC0wNi0xNiBhdCAyMDo0NSArMDIwMCwgw4FsdmFybyBG
ZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+IEFkZCBCQ002M3h4IFVTQkggUEhZIGRyaXZlciBmb3Ig
Qk1JUFMuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0
YXJpQGdtYWlsLmNvbT4KPiAtLS0KPiAgdjM6IGludHJvZHVjZSBjaGFuZ2VzIHN1Z2dlc3RlZCBi
eSBGbG9yaWFuOgo+ICAgLSBBZGQgc3VwcG9ydCBmb3IgZGV2aWNlIG1vZGUuCj4gIHYyOiBpbnRy
b2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKPiAgIC0gRHJvcCBPRiBkZXBlbmRl
bmN5ICh1c2UgZGV2aWNlX2dldF9tYXRjaF9kYXRhKS4KPiAgIC0gRHJvcCBfX2luaXRjb25zdCBm
cm9tIHZhcmlhbnQgdGFibGVzLgo+ICAgLSBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsLgo+IAo+
ICBkcml2ZXJzL3BoeS9icm9hZGNvbS9LY29uZmlnICAgICAgICAgICAgfCAgIDkgKwo+ICBkcml2
ZXJzL3BoeS9icm9hZGNvbS9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3Bo
eS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMgfCA0NTYgKysrKysrKysrKysrKysrKysrKysr
KysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDY2IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYwo+IApbLi4uXQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMgYi9k
cml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNTg0ODA3MjA1MTY2Cj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYwo+IEBAIC0wLDAg
KzEsNDU2IEBAClsuLi5dCj4gKwl1c2JoLT5yZXNldCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXQo
ZGV2LCBOVUxMKTsKClBsZWFzZSB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUo
KSBpbnN0ZWFkIHdoZW4gcmVxdWVzdGluZwpleGNsdXNpdmUgcmVzZXQgY29udHJvbHMuCgo+ICsJ
aWYgKElTX0VSUih1c2JoLT5yZXNldCkpIHsKPiArCQlpZiAoUFRSX0VSUih1c2JoLT5yZXNldCkg
IT0gLUVQUk9CRV9ERUZFUikKPiArCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IHJlc2V0
XG4iKTsKPiArCQlyZXR1cm4gUFRSX0VSUih1c2JoLT5yZXNldCk7Cj4gKwl9CgpyZWdhcmRzClBo
aWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
