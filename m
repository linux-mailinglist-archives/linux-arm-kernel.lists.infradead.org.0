Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4E1775D6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 04:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qDIlN0HRqRuusBAc6nV7FFgaAnR6VzNPlq5mmQbHus=; b=CfzlfN4/KjVP7n
	HSXAD/dJAqfTGIUfWafyKp3zEYQ2J8yVmhIbp4P+2K8DZH6K92J2+YQMoGmzAhfnx5YY0XnAgyoUo
	icHDdAFsF+hnuVKmhXwZjyBhzyMjgnR8FZ8Ga27XU0SaUAglyxgmOBOGkUgd9nFxk8Hu5vwPLiG9o
	9N5L465H2LEfOQwKKs6Q2p2Wwzp4Hpi2mik6QYRndvY0kQRsMbgMtdRUBoupO4bez8LaJtBZZYVXy
	iUOeeJTlDaJy5v1bJ9UJnG6VVWEgaJXoiQ2fPtXLYCFxJ+zgr7gvaV9GAyTEMRGLNJR6cVY0HDmx3
	iuiDE4Zr0AHgaudCpHjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrC54-0006Un-Bz; Sat, 27 Jul 2019 02:05:07 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrC4q-0006UJ-MZ
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 02:04:54 +0000
Received: from pendragon.ideasonboard.com (om126200118163.15.openmobile.ne.jp
 [126.200.118.163])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AD2869B1;
 Sat, 27 Jul 2019 04:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564193090;
 bh=vVlrigtV/4n1LRYGHmQgWdMF36/DcZ6Ryvzw8aTcvZE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UGHkk32aSXSYBC9k0S8TYWWPJ71pvNcd6rc7G1goNemIr54JKb6ChRFqMrEYDjHb8
 Ax+tke8BzXReGpoaoSFuTNo8DxEGkVvLBj7qIvWKmH4ja72XH3ZfC5jBJr3uqTV1Ws
 Gglj4E5HHE/FjKncIgOJFdHhCU6i5Z9wAK7g4w18=
Date: Sat, 27 Jul 2019 05:04:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/3] drm/bridge: Add NWL MIPI DSI host controller support
Message-ID: <20190727020444.GC4902@pendragon.ideasonboard.com>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <3158f4f8c97c21f98c394e5631d74bc60d796522.1563983037.git.agx@sigxcpu.org>
 <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BRbV_1du1b9eJqcBvvXSE2Mon3yxSPJxPpZgBqYNjBSg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_190452_888651_39DC9F25 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>,
 Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwNTowMTo1MlBNIC0wMzAwLCBGYWJpbyBF
c3RldmFtIHdyb3RlOgo+IEhpIEd1aWRvLAo+IAo+IFRoYW5rcyBmb3IgeW91ciB3b3JrIG9uIHRo
aXMgZHJpdmVyIQo+IAo+IE9uIFdlZCwgSnVsIDI0LCAyMDE5IGF0IDEyOjUyIFBNIEd1aWRvIEfD
vG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgo+IAo+ID4gLS0tIC9kZXYvbnVsbAo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgtbndsL0tjb25maWcKPiA+IEBAIC0wLDAg
KzEsMTUgQEAKPiA+ICtjb25maWcgRFJNX0lNWF9OV0xfRFNJCj4gPiArICAgICAgIHRyaXN0YXRl
ICJTdXBwb3J0IGZvciBOb3J0aHdlc3QgTG9naWMgTUlQSSBEU0kgSG9zdCBjb250cm9sbGVyIgo+
ID4gKyAgICAgICBkZXBlbmRzIG9uIERSTSAmJiAoQVJDSF9NWEMgfHwgQVJDSF9NVUxUSVBMQVRG
T1JNIHx8IENPTVBJTEVfVEVTVCkKPiAKPiBUaGlzIElQIGNvdWxkIHBvdGVudGlhbGx5IGJlIGZv
dW5kIG9uIG90aGVyIFNvQ3MsIHNvIG5vIG5lZWQgdG8gbWFrZQo+IGl0IGRlcGVuZCBvbiBBUkNI
X01YQy4KCkknZCBnbyBldmVuIGZ1cnRoZXIgYW5kIG5vdCB1c2UgdGhlIHByZWZpeCBpbXggaW4g
dGhlIGRyaXZlciBuYW1lIG9yCmFueXdoZXJlIGluIHRoZSBjb2RlLgoKW3NuaXBdCgotLSAKUmVn
YXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
