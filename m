Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F941275E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 08:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lU2cvA7/yLUutA00cqLQ80qkPeyIX7Ir5NrV8uauyo=; b=e8fE5SLNajuO1Z
	8qxVoIFN7jJpNZeMJZcmZrOOvHbDKhKFpPcVfiU2Rxqtr+7tEJgO2hOh8QMBRCmRdG/iH/oTuWasL
	Oc5UkOOWO+AK2haRG3DVsJziZpj9xZjUlx9F9G8C3ntQm44PrncWlcqmVEJKJBpJBFj2p1Vkc09Qf
	hnsUzBm7EJliXE5EJO2M33hUV5NZIiZ4GLXEmsj4aUkjWT/ZrT4x2Kokf85JE0VLxdLv5WzOgg9AO
	nieNE7Nl/Zk2UUqPAT+aLWMFfU2J0F42wUvo6PGlOG5W7HvFqGdFBcMarXliSKAWu5Uz7KD6mtkrF
	Ugx9NiIJ+Yr//sFqVopw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgyx-0004s8-CK; Thu, 23 May 2019 06:13:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgyo-0004rH-3j; Thu, 23 May 2019 06:13:32 +0000
X-UUID: 95ed1a278bca4de39dd70483acbb440b-20190522
X-UUID: 95ed1a278bca4de39dd70483acbb440b-20190522
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1863230554; Wed, 22 May 2019 22:13:23 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 May 2019 23:13:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 14:13:20 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 23 May 2019 14:13:20 +0800
Message-ID: <1558592000.552.3.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Fix warning about unhandled enum value
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Thu, 23 May 2019 14:13:20 +0800
In-Reply-To: <20190522202207.223110-1-sean@poorly.run>
References: <20190522202207.223110-1-sean@poorly.run>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_231330_154672_A914A9CE 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Hans Verkuil <hansverk@cisco.com>,
 David Airlie <airlied@linux.ie>, Uma Shankar <uma.shankar@intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Shashank
 Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFNlYW46CgpPbiBXZWQsIDIwMTktMDUtMjIgYXQgMTY6MjEgLTA0MDAsIFNlYW4gUGF1bCB3
cm90ZToKPiBGcm9tOiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KPiAKPiBGaXhl
cyB0aGUgZm9sbG93aW5nIGJ1aWxkIHdhcm5pbmc6Cj4gZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19oZG1pLmM6MzI3OjI6IHdhcm5pbmc6IGVudW1lcmF0aW9uIHZhbHVlIOKAmEhETUlfSU5G
T0ZSQU1FX1RZUEVfRFJN4oCZIG5vdCBoYW5kbGVkIGluIHN3aXRjaCBbLVdzd2l0Y2hdCj4gCj4g
SW50cm9kdWNlZCB3aXRoIHRoZSBhZGRpdGlvbiBvZiBIRE1JX0lORk9GUkFNRV9UWVBFX0RSTSBp
biB0aGUgY29tbWl0Cj4gYmVsb3csIGJ1dCB0aGUgY29kZSByZWFsbHkgc2hvdWxkIGhhdmUgYmVl
biBmdXR1cmUtcHJvb2ZlZCBmcm9tIHRoZQo+IHN0YXJ0LgoKQWNrZWQtYnk6IENLIEh1IDxjay5o
dUBtZWRpYXRlay5jb20+Cgo+IAo+IEZpeGVzOiAyY2RiZmQ2NmE4MjkgKCJkcm06IEVuYWJsZSBI
RFIgaW5mb2ZyYW1lIHN1cHBvcnQiKQoKSSB0aGluayAiZHJtOiBFbmFibGUgSERSIGluZm9mcmFt
ZSBzdXBwb3J0IiBleGlzdCBvbmx5IGluIGRybS1taXNjIHRyZWUsCmNvdWxkIHlvdSBqdXN0IG1l
cmdlIHRoaXMgcGF0Y2ggdG8gImRybTogRW5hYmxlIEhEUiBpbmZvZnJhbWUgc3VwcG9ydCI/CgpS
ZWdhcmRzLApDSwoKPiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiBD
YzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgo+IENjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXhp
bWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgo+IENjOiBTZWFuIFBhdWwgPHNl
YW5AcG9vcmx5LnJ1bj4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENj
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IEJhcnRsb21pZWogWm9sbmll
cmtpZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5nLmNvbT4KPiBDYzogIlZpbGxlIFN5cmrDpGzD
pCIgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBIYW5zIFZlcmt1aWwgPGhh
bnN2ZXJrQGNpc2NvLmNvbT4KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IENjOiBsaW51eC1mYmRldkB2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFBh
dWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19oZG1pLmMgfCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMKPiBpbmRleCBlMDRlNmMyOTNkMzku
LjEwY2M5OTEwZjE2NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4gQEAg
LTM0MSw2ICszNDEsOSBAQCBzdGF0aWMgdm9pZCBtdGtfaGRtaV9od19zZW5kX2luZm9fZnJhbWUo
c3RydWN0IG10a19oZG1pICpoZG1pLCB1OCAqYnVmZmVyLAo+ICAJCWN0cmxfZnJhbWVfZW4gPSBW
U19FTjsKPiAgCQljdHJsX3JlZyA9IEdSTF9BQ1BfSVNSQ19DVFJMOwo+ICAJCWJyZWFrOwo+ICsJ
ZGVmYXVsdDoKPiArCQlkZXZfZXJyKGhkbWktPmRldiwgIlVua25vd24gaW5mb2ZyYW1lIHR5cGUg
JWRcbiIsIGZyYW1lX3R5cGUpOwo+ICsJCXJldHVybjsKPiAgCX0KPiAgCW10a19oZG1pX2NsZWFy
X2JpdHMoaGRtaSwgY3RybF9yZWcsIGN0cmxfZnJhbWVfZW4pOwo+ICAJbXRrX2hkbWlfd3JpdGUo
aGRtaSwgR1JMX0lORk9GUk1fVFlQRSwgZnJhbWVfdHlwZSk7CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
