Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3AD1E33C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/bf7l8uve5/vygOg6vk8zMPlRbRGHaKZjq4+ayvt8M=; b=tiLPVteDgazDG2
	X7+l/p0aqLlV+WMDj04ITE0FUalioW707fuInbDizskMA1m+KCabYXcZBLD8lFm6eenOIlxexzqLa
	7iMmu3qFUMou6l9MHD1VY900AhAJGRcLspIPprz/lqfNahOop5ghK+R7roMXE4VbelJcKip0m/heg
	627KgeP0I2qDw02iHqwpktYw43p9cSZVJmGTpH2nwqZKEtlxPSu51bcPXt4Dc6pfoo7GIiupQyAaO
	1m5ZV1nZLuN4D068RcGFv2dyqkqTL3Q1bAlj5h5CllsG23QIoNqR1sjXgbuypTQYurDTssxSE39Qv
	7I5erX61cQpY3AHVwm4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdj4R-0007en-Qd; Tue, 26 May 2020 23:33:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdj4H-0007eO-Ao
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 23:33:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C06755D;
 Tue, 26 May 2020 16:33:07 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 174E63F52E;
 Tue, 26 May 2020 16:33:07 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 9C38D682B70; Wed, 27 May 2020 00:33:05 +0100 (BST)
Date: Wed, 27 May 2020 00:33:05 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 10/21] drm/komeda: Use GEM CMA object functions
Message-ID: <20200526233305.GE159988@e110455-lin.cambridge.arm.com>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-11-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522135246.10134-11-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_163309_459407_C656B4C5 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 stefan@agner.ch, philippe.cornu@st.com, paul@crapouillou.net,
 laurent.pinchart@ideasonboard.com, benjamin.gaignard@linaro.org,
 mihail.atanassov@arm.com, sam@ravnborg.org, alexandre.torgue@st.com,
 marex@denx.de, festevam@gmail.com, abrodkin@synopsys.com,
 ludovic.desroches@microchip.com, xinliang.liu@linaro.org,
 kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com, james.qian.wang@arm.com,
 joel@jms.id.au, linux-imx@nxp.com, p.zabel@pengutronix.de,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, john.stultz@linaro.org,
 jsarha@ti.com, wens@csie.org, vincent.abriou@st.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 noralf@tronnes.org, bbrezillon@kernel.org, andrew@aj.id.au,
 dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch, khilman@baylibre.com,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjIsIDIwMjAgYXQgMDM6NTI6MzVQTSArMDIwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gVGhlIGtvbWVkYSBkcml2ZXIgdXNlcyB0aGUgZGVmYXVsdCBpbXBsZW1lbnRh
dGlvbiBmb3IgQ01BIGZ1bmN0aW9uczsgZXhjZXB0Cj4gZm9yIHRoZSAuZHVtYl9jcmVhdGUgY2Fs
bGJhY2suIFRoZSBfX0RSTV9HRU1fQ01BX0RSSVZFUl9PUFMgbWFjcm8gbm93IHNldHMKPiB0aGVz
ZSBkZWZhdWx0cyBhbmQgLmR1bWJfY3JlYXRlIGluIHN0cnVjdCBkcm1fZHJpdmVyLiBBbGwgcmVt
YWluaW5nCj4gb3BlcmF0aW9ucyBhcmUgcHJvdmlkZWQgYnkgQ01BIEdFTSBvYmplY3QgZnVuY3Rp
b25zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPgoKQWNrZWQtYnk6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKQmVz
dCByZWdhcmRzLApMaXZpdQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tv
bWVkYS9rb21lZGFfa21zLmMgfCAxMSArLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYXJtL2Rpc3BsYXkva29tZWRhL2tvbWVkYV9rbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
cm0vZGlzcGxheS9rb21lZGEva29tZWRhX2ttcy5jCj4gaW5kZXggNmI4NWQ1ZjRjYWE4NS4uYmRm
YmNiYzQxNjI2MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYXJtL2Rpc3BsYXkva29t
ZWRhL2tvbWVkYV9rbXMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vZGlzcGxheS9rb21l
ZGEva29tZWRhX2ttcy5jCj4gQEAgLTYxLDE2ICs2MSw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBr
b21lZGFfa21zX2lycV9oYW5kbGVyKGludCBpcnEsIHZvaWQgKmRhdGEpCj4gIHN0YXRpYyBzdHJ1
Y3QgZHJtX2RyaXZlciBrb21lZGFfa21zX2RyaXZlciA9IHsKPiAgCS5kcml2ZXJfZmVhdHVyZXMg
PSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLAo+ICAJLmxhc3Rj
bG9zZQkJCT0gZHJtX2ZiX2hlbHBlcl9sYXN0Y2xvc2UsCj4gLQkuZ2VtX2ZyZWVfb2JqZWN0X3Vu
bG9ja2VkCT0gZHJtX2dlbV9jbWFfZnJlZV9vYmplY3QsCj4gLQkuZ2VtX3ZtX29wcwkJCT0gJmRy
bV9nZW1fY21hX3ZtX29wcywKPiAtCS5kdW1iX2NyZWF0ZQkJCT0ga29tZWRhX2dlbV9jbWFfZHVt
Yl9jcmVhdGUsCj4gLQkucHJpbWVfaGFuZGxlX3RvX2ZkCQk9IGRybV9nZW1fcHJpbWVfaGFuZGxl
X3RvX2ZkLAo+IC0JLnByaW1lX2ZkX3RvX2hhbmRsZQkJPSBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hh
bmRsZSwKPiAtCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlCQk9IGRybV9nZW1fY21hX3ByaW1lX2dl
dF9zZ190YWJsZSwKPiAtCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlCT0gZHJtX2dlbV9jbWFf
cHJpbWVfaW1wb3J0X3NnX3RhYmxlLAo+IC0JLmdlbV9wcmltZV92bWFwCQkJPSBkcm1fZ2VtX2Nt
YV9wcmltZV92bWFwLAo+IC0JLmdlbV9wcmltZV92dW5tYXAJCT0gZHJtX2dlbV9jbWFfcHJpbWVf
dnVubWFwLAo+IC0JLmdlbV9wcmltZV9tbWFwCQkJPSBkcm1fZ2VtX2NtYV9wcmltZV9tbWFwLAo+
ICsJX19EUk1fR0VNX0NNQV9EUklWRVJfT1BTKGtvbWVkYV9nZW1fY21hX2R1bWJfY3JlYXRlKSwK
PiAgCS5mb3BzID0gJmtvbWVkYV9jbWFfZm9wcywKPiAgCS5uYW1lID0gImtvbWVkYSIsCj4gIAku
ZGVzYyA9ICJBcm0gS29tZWRhIERpc3BsYXkgUHJvY2Vzc29yIGRyaXZlciIsCj4gLS0gCj4gMi4y
Ni4yCj4gCgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJIHdvdWxkIGxpa2UgdG8gfAp8IGZp
eCB0aGUgd29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwKfCBnaXZpbmcgbWUgdGhlICAgfAog
XCBzb3VyY2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0KICAgIMKvXF8o44OEKV8vwq8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
