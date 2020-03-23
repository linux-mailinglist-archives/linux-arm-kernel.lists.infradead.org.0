Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B3B18F8F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwQH/6IOv8netl1z3itC3Zrlac2ZR4mAYfvpPO1yhQk=; b=aB+SQSUEtoIwK1
	abcg74IukjAQilVFTrTsnz6pSs4OAb0SQiVTgSCoxfcuc2gDF3iEjl1KLBRJS9PPXlKGmEl213Jn6
	cXaEPJJlNNCNck355KSo2Bju1kk1zT1UFUmcqTj1BBppru29WibZXE+v7DkZgoC78QKUsgzrQsc/S
	G6g075RuVLixDI5pUSLQnliXBGNvIRdMMmU0e+PH3aLdzJkIJTiL9nwMM6eILGhr1JVyOnnUXUImn
	FE2PkDcimnvhQY2mWl0ek63Y+8YuwNXhgwdO/xvfIW8EODtkGUlnPggpi4X+7dMDxavhYSJXGvmaP
	Ztg1H0c7ezyaEnVS/4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPMM-0000Cz-Gv; Mon, 23 Mar 2020 15:51:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPMD-0000C4-9r
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 15:51:18 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jGPM3-0004GB-Ny; Mon, 23 Mar 2020 16:51:07 +0100
Message-ID: <d39209a3664179f895a7dfabbd02d27a6adb9895.camel@pengutronix.de>
Subject: Re: [PATCH] drm/mxsfb: Make supported modifiers explicit
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Marek Vasut
 <marex@denx.de>, Stefan Agner <stefan@agner.ch>, David Airlie
 <airlied@linux.ie>,  Daniel Vetter <daniel@ffwll.ch>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,  Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Mar 2020 16:51:05 +0100
In-Reply-To: <26877532e272c12a74c33188e2a72abafc9a2e1c.1584973664.git.agx@sigxcpu.org>
References: <26877532e272c12a74c33188e2a72abafc9a2e1c.1584973664.git.agx@sigxcpu.org>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_085117_350825_4DEB6E40 
X-CRM114-Status: GOOD (  12.85  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTW9udGFnLCBkZW4gMjMuMDMuMjAyMCwgMTU6NTIgKzAxMDAgc2NocmllYiBHdWlkbyBHw7xu
dGhlcjoKPiBJbiBjb250cmFzdCB0byBvdGhlciBkaXNwbGF5IGNvbnRyb2xsZXJzIG9uIGlteCBs
aWtlIERDU1MgYW5kIGlwdXYzCj4gbGNkaWYvbXhzZmIgZG9lcyBub3Qgc3VwcG9ydCBkZXRpbGlu
ZyBlLmcuIHZpdmFudGUgdGlsZWQgbGF5b3V0cy4KPiBTaW5jZSBtZXNhIG1pZ2h0IGFzc3VtZSBv
dGhlcndpc2UgbWFrZSBpdCBleHBsaWNpdCB0aGF0IG9ubHkKPiBEUk1fRk9STUFUX01PRF9MSU5F
QVIgaXMgc3VwcG9ydGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hA
c2lneGNwdS5vcmc+CgpSZXZpZXdlZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9u
aXguZGU+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMgfCA5ICsr
KysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMKPiBpbmRleCA3NjIzNzk1MzA5MjguLmZj
NzFlN2E3YTAyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmMKPiBAQCAtNzMsNiAr
NzMsMTEgQEAgc3RhdGljIGNvbnN0IHVpbnQzMl90IG14c2ZiX2Zvcm1hdHNbXSA9IHsKPiAgCURS
TV9GT1JNQVRfUkdCNTY1Cj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3QgdWludDY0X3QgbXhzZmJf
bW9kaWZpZXJzW10gPSB7Cj4gKwlEUk1fRk9STUFUX01PRF9MSU5FQVIsCj4gKwlEUk1fRk9STUFU
X01PRF9JTlZBTElECj4gK307Cj4gKwo+ICBzdGF0aWMgc3RydWN0IG14c2ZiX2RybV9wcml2YXRl
ICoKPiAgZHJtX3BpcGVfdG9fbXhzZmJfZHJtX3ByaXZhdGUoc3RydWN0IGRybV9zaW1wbGVfZGlz
cGxheV9waXBlICpwaXBlKQo+ICB7Cj4gQEAgLTMzNCw4ICszMzksOCBAQCBzdGF0aWMgaW50IG14
c2ZiX2xvYWQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgdW5zaWduZWQgbG9uZyBmbGFncykKPiAg
CX0KPiAgCj4gIAlyZXQgPSBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9pbml0KGRybSwgJm14c2Zi
LT5waXBlLCAmbXhzZmJfZnVuY3MsCj4gLQkJCW14c2ZiX2Zvcm1hdHMsIEFSUkFZX1NJWkUobXhz
ZmJfZm9ybWF0cyksIE5VTEwsCj4gLQkJCW14c2ZiLT5jb25uZWN0b3IpOwo+ICsJCQlteHNmYl9m
b3JtYXRzLCBBUlJBWV9TSVpFKG14c2ZiX2Zvcm1hdHMpLAo+ICsJCQlteHNmYl9tb2RpZmllcnMs
IG14c2ZiLT5jb25uZWN0b3IpOwo+ICAJaWYgKHJldCA8IDApIHsKPiAgCQlkZXZfZXJyKGRybS0+
ZGV2LCAiQ2Fubm90IHNldHVwIHNpbXBsZSBkaXNwbGF5IHBpcGVcbiIpOwo+ICAJCWdvdG8gZXJy
X3ZibGFuazsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
