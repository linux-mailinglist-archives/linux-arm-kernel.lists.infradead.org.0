Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895E873322
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 17:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QIxfGx+ILF84AJmGbo6GeCAcYLjHfnQfdqP7Gz7ZW1Q=; b=leYgxT5sItJ79u
	oQ8gbq+Qzz7vCxs63JDnbZT/nIoWy5o3Ap9SwhWBGP53qQJqsRHGURqmeqrZcg197hKiYYB3PPFWC
	U/J9wvByv0QPB5Per1L/LiBhRtTRj4MtGvBIDj6V9y6jt2HbNzIKM0EiYa6Ym0GFVlw392wXhe2E4
	0u3c/rbfAbn37VRxnS2Jor5Xw9c18mya3gRZYaXbm4/Rp+aMER4CktgUlsTKnSCy/2dvXjd4L9DNL
	cMR42tAMUv/jcDrmHcfQG14mANiu0RW7KImjqPcq2jYSqBIqUgjszOT5FbyjXh3Z2i4jjnAqQfucA
	rZ0HETjwdEwsIrGQxScA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJZe-0001L1-1S; Wed, 24 Jul 2019 15:53:02 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJZD-0001AO-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 15:52:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 3F193FB06;
 Wed, 24 Jul 2019 17:52:29 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c2rVJsA1noyh; Wed, 24 Jul 2019 17:52:27 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id E638A43417; Wed, 24 Jul 2019 17:52:26 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Robert Chiras <robert.chiras@nxp.com>
Subject: [PATCH 0/3] drm: bridge: Add NWL MIPI DSI host controller support
Date: Wed, 24 Jul 2019 17:52:23 +0200
Message-Id: <cover.1563983037.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_085235_913155_2E86BCD0 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

VGhpcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgdGhlIE5XTCBNSVBJIERTSSBIb3N0IGNvbnRy
b2xsZXIgZm91bmQgb24gaS5NWDgKU29Dcy4KCkl0IGFkZHMgc3VwcG9ydCBmb3IgdGhlIGkuTVg4
TVEgYnV0IHRoZSBzYW1lIElQIGNvcmUgY2FuIGFsc28gYmUgZm91bmQgb24gZS5nLgppLk1YOFFY
UC4gSSBhZGRlZCB0aGUgbmVjZXNzYXJ5IGhvb2tzIHRvIHN1cHBvcnQgb3RoZXIgaW14OCB2YXJp
YW50cyBidXQgc2luY2UKSSBvbmx5IGhhdmUgaW14OG1xIGJvYXJkcyB0byB0ZXN0IEkgb21pdHRl
ZCB0aGUgcGxhdGZvcm0gZGF0YSBmb3Igb3RoZXIgU29Dcy4KClRoZSBjb2RlIGlzIGJhc2VkIG9u
IE5YUHMgQlNQIHNvIEkgYWRkZWQgUm9iZXJ0IENoaXJhcyBhcwpDby1hdXRob3JlZC1ieS4gUm9i
ZXJ0LCBpZiB0aGlzIGxvb2tzIHNhbmUgY291bGQgeW91IGFkZCB5b3VyClNpZ25lZC1vZmYtYnk6
PwoKVGhlIG1vc3Qgbm90YWJsZSBjaGFuZ2VzIG92ZXIgdGhlIEJTUCBkcml2ZXIgYXJlCiAtIENh
bGN1bGF0ZSBIUyBtb2RlIHRpbWluZyBmcm9tIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkK
IC0gUGVyZm9ybSBhbGwgY2xvY2sgc2V0dXAgdmlhIERUCiAtIE1lcmdlIG53bC1pbXggYW5kIG53
bCBkcml2ZXJzCiAtIEFkZCBCMCBzaWxpb24gcmV2aXNpb24gcXVpcmsKIC0gYmVjb21lIGEgYnJp
ZGdlIGRyaXZlciB0byBob29rIGludG8gbXhzZmIgKGZyb20gd2hhdCBJIHJlYWRbMF0gRENTUywg
d2hpY2gKICAgYWxzbyBjYW4gZHJpdmUgdGhlIG53bCBvbiB0aGUgaW14OG1xIHdpbGwgbGlrZWx5
IG5vdCBiZWNvbWUgcGFydCBvZgogICBpbXgtZGlzcGxheS1zdWJzeXN0ZW0gc28gaXQgbWFrZXMg
c2Vuc2UgdG8gbWFrZSBpdCBkcml2ZSBhIGJyaWRnZSBmb3IgZHNpIGFzCiAgIHdlbGwpLgogLSBV
c2UgcGFuZWxfYnJpZGdlIHRvIGF0dGFjaCB0aGUgcGFuZWwKClRoaXMgaGFzIGJlZW4gdGVzdGVk
IG9uIGEgTGlicmVtIDUgZGV2a2l0IHVzaW5nIG14c2ZiIHdpdGggUm9iZXJ0J3MgcGF0Y2hlc1sx
XQphbmQgdGhlIHJvY2t0ZWNoLWpoMDU3bjAwOTAwIHBhbmVsIGRyaXZlci4gVGhlIERDU1MgY2Fu
IGxhdGVyIG9uIGFsc28gYWN0IGFzCmlucHV0IHNvdXJjZSB0b28uCgpDaGFuZ2VzIGZyb20gdjA6
Ci0gQWRkIHF1aXJrIGZvciBJTVE4TVEgc2lsaWNvbiBCMCByZXZpc2lvbiB0byBub3QgbWVzcyB3
aXRoIHRoZQogIHN5c3RlbSByZXNldCBjb250cm9sbGVyIG9uIHBvd2VyIGRvd24gc2luY2UgZW5h
YmxlKCkgd29uJ3Qgd29yawogIG90aGVyd2lzZS4KLSBEcm9wIGRldm1fZnJlZV9pcnEoKSBoYW5k
bGVkIGJ5IHRoZSBkZXZpY2UgZHJpdmVyIGNvcmUKLSBEaXNhYmxlIHR4IGVzYyBjbG9jayBhZnRl
ciB0aGUgcGh5IHBvd2VyIGRvd24gdG8gdW5icmVhawogIGRpc2FibGUvZW5hYmxlICh1bmJsYW5r
L2JsYW5rKQotIEFkZCBwb3J0cyB0byBkdCBiaW5kaW5nIGRvY3MKLSBTZWxlY3QgR0VORVJJQ19Q
SFlfTUlQSV9EUEhZIGluc3RlYWQgb2YgR0VORVJJQ19QSFkgZm9yCiAgcGh5X21pcGlfZHBoeV9n
ZXRfZGVmYXVsdF9jb25maWcKLSBTZWxlY3QgRFJNX01JUElfRFNJCi0gSW5jbHVkZSBkcm1fcHJp
bnQuaCB0byBmaXggYnVpbGQgb24gbmV4dC0yMDE5MDQwOAotIERyb3Agc29tZSBkZWJ1Z2dpbmcg
bWVzc2FnZXMKLSBOZXdsaW5lIHRlcm1pbmF0ZSBhbGwgRFJNXyBwcmludG91dHMKLSBUdXJuIGNv
bXBvbmVudCBkcml2ZXIgaW50byBhIGRybSBicmlkZ2UKClswXTogaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktTWF5LzIxOTQ4NC5odG1sClsxXTog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjgyMi8KCkd1aWRvIEfD
vG50aGVyICgzKToKICBhcm02NDogaW14OG1xOiBhZGQgaW14OG1xIGlvbXV4LWdwciBmaWVsZCBk
ZWZpbmVzCiAgZHQtYmluZGluZ3M6IGRpc3BsYXkvYnJpZGdlOiBBZGQgYmluZGluZyBmb3IgSU1Y
IE5XTCBtaXBpIGRzaSBob3N0CiAgICBjb250cm9sbGVyCiAgZHJtL2JyaWRnZTogQWRkIE5XTCBN
SVBJIERTSSBob3N0IGNvbnRyb2xsZXIgc3VwcG9ydAoKIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2Jy
aWRnZS9pbXgtbndsLWRzaS50eHQgICB8ICA4OSArKysKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
S2NvbmZpZyAgICAgICAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01h
a2VmaWxlICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgt
bndsL0tjb25maWcgICAgICAgIHwgIDE1ICsKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14LW53
bC9NYWtlZmlsZSAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC1ud2wv
bndsLWRydi5jICAgICAgfCA1MjkgKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9pbXgtbndsL253bC1kcnYuaCAgICAgIHwgIDcyICsrCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L2lteC1ud2wvbndsLWRzaS5jICAgICAgfCA3NDUgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2lteC1ud2wvbndsLWRzaS5oICAgICAgfCAxMTEgKysrCiBpbmNsdWRl
L2xpbnV4L21mZC9zeXNjb24vaW14OG1xLWlvbXV4Yy1ncHIuaCAgfCAgNjIgKysKIDEwIGZpbGVz
IGNoYW5nZWQsIDE2MjggaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9pbXgtbndsLWRzaS50eHQK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC1ud2wvS2NvbmZp
ZwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14LW53bC9NYWtl
ZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14LW53bC9u
d2wtZHJ2LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC1u
d2wvbndsLWRydi5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9p
bXgtbndsL253bC1kc2kuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvaW14LW53bC9ud2wtZHNpLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21m
ZC9zeXNjb24vaW14OG1xLWlvbXV4Yy1ncHIuaAoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
