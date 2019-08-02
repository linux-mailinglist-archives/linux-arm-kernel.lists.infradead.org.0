Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8577F663
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXR0MnezcWOEwnSf5DTatKDhXSBBN96estcBJDs655g=; b=PdOJSdkOj187BT
	cNFRcvMkYL1fRn2DH3j7TABNZUr4M9mMEJeAFdVnx5DmJbv0A1xtulN3ypBJ1N0Onf8yAEJNUXA06
	ZmMn7V39bRqBRc8BLFTX4iRtwzCc8EyqUGAyFRHYr5jNIaaW+9SJ4P4cMa/N0GX7yxJYlBy1eM+nQ
	RIC/Z1gG/2szu+puJxPWqryq5/hxq6GUQ+g8PNb4VxD15MBVeEf0sq0YRYoUNvECUAzcOjRaCN3Dr
	aFuxCLc5hYgeauCcSXrBZHwupNTf5KB49DbGBnWQSGXkCm76ALT43JhJz+qqvCOjSE0WjPlIyJ2az
	esjc2aP2OMXaWcBTukvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWHy-0007G8-7T; Fri, 02 Aug 2019 12:04:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWHr-0007Fp-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:03:57 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1htWHk-0006HX-Oz; Fri, 02 Aug 2019 14:03:48 +0200
Message-ID: <1564747425.3090.1.camel@pengutronix.de>
Subject: Re: [PATCH] drm/imx: Drop unused imx-ipuv3-crtc.o build
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>, Guido =?ISO-8859-1?Q?G=FCnther?=
 <agx@sigxcpu.org>
Date: Fri, 02 Aug 2019 14:03:45 +0200
In-Reply-To: <CAOMZO5BipmSPR1jz3ov8ESSJPsHMViMw42di-WKOdqhyONLK6Q@mail.gmail.com>
References: <e5484fa33bffec220fd0590b502a962da17c9c72.1564743270.git.agx@sigxcpu.org>
 <CAOMZO5BipmSPR1jz3ov8ESSJPsHMViMw42di-WKOdqhyONLK6Q@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_050355_974847_E2BD1A84 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sIEZhYmlvLAoKT24gRnJpLCAyMDE5LTA4LTAyIGF0IDA4OjAzIC0wMzAwLCBGYWJp
byBFc3RldmFtIHdyb3RlOgo+IEhpIEd1aWRvLAo+IAo+IEdvb2QgY2F0Y2ghCj4gCj4gT24gRnJp
LCBBdWcgMiwgMjAxOSBhdCA3OjU1IEFNIEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+
IHdyb3RlOgo+ID4gCj4gPiBTaW5jZQo+ID4gCj4gPiBjb21taXQgM2QxZGY5NmFkNDY4ICgiZHJt
L2lteDogbWVyZ2UgaW14LWRybS1jb3JlIGFuZCBpcHV2My1jcnRjIGluIG9uZSBtb2R1bGUiKQo+
ID4gCj4gPiBpbXgtaXB1djMtY3J0Yy5vIGlzIGJ1aWx0IHZpYSBpbXhkcm0tb2Jqcy4gU28gdGhl
cmUncyBubyBuZWVkIHRvIGtlZXAgYW4KPiAKPiBBY3R1YWxseSwgaXQgaXMgaXB1djMtY3J0Yy5v
IHRoYXQgaXMgYnVpbHQgdmlhIGlteGRybS1vYmpzLCBub3QKPiBpbXgtaXB1djMtY3J0Yy5vLgo+
IAo+IEFwYXJ0IGZyb20gdGhhdDoKPiAKPiBSZXZpZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZ21haWwuY29tPgoKVGhhbmsgeW91LCBhcHBsaWVkIHRvIGlteC1kcm0vbmV4dCB3aXRo
IEZhYmlvJ3MgUi1iLCBhbmQgYWRkZWQgRml4ZXM6CnRhZywgYW5kIHRoZSBjb21taXQgbWVzc2Fn
ZSBjaGFuZ2VkIGFzIGZvbGxvd3M6CgrCoMKgwqDCoGRybS9pbXg6IERyb3AgdW51c2VkIGlteC1p
cHV2My1jcnRjLm8gYnVpbGQKwqDCoMKgwqAKwqDCoMKgwqBTaW5jZQrCoMKgwqDCoArCoMKgwqDC
oGNvbW1pdCAzZDFkZjk2YWQ0NjggKCJkcm0vaW14OiBtZXJnZSBpbXgtZHJtLWNvcmUgYW5kIGlw
dXYzLWNydGMgaW4gb25lIG1vZHVsZSIpCsKgwqDCoMKgCsKgwqDCoMKgdGhlIGZvcm1lciBjb250
ZW50cyBvZiBpbXgtaXB1djMtY3J0Yy5vIGFyZSBidWlsdCB2aWEgaW14ZHJtLW9ianMuIFNvCsKg
wqDCoMKgdGhlcmUncyBubyBuZWVkIHRvIGtlZXAgYW4gZXh0cmEgZW50cnkgd2l0aCBhIG5vbiBl
eGlzdGluZyBjb25maWcgdmFsdWUKwqDCoMKgwqAoQ09ORklHX0RSTV9JTVhfSVBVVjMpLgrCoMKg
wqDCoArCoMKgwqDCoEZpeGVzOiAzZDFkZjk2YWQ0NjggKCJkcm0vaW14OiBtZXJnZSBpbXgtZHJt
LWNvcmUgYW5kIGlwdXYzLWNydGMgaW4gb25lIG1vZHVsZSIpCsKgwqDCoMKgU2lnbmVkLW9mZi1i
eTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KwqDCoMKgwqBSZXZpZXdlZC1ieTog
RmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgrCoMKgwqDCoFNpZ25lZC1vZmYtYnk6
IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+CgpubyBhY3Rpb24gbmVjZXNz
YXJ5IGlmIHlvdSBhZ3JlZSwgb3RoZXJ3aXNlIGp1c3Qgc2VuZCBhIHYyIGFuZCBJJ2xsCnJlcGxh
Y2UgaXQuCgpyZWdhcmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
