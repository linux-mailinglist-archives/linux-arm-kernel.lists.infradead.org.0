Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9601E33BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Td+UJ1qHElWnuXwMqoB0iPwgVCKreV5r+S9zzJKxBHM=; b=uuWAH5tAhLipmD
	jCjhOneaBOBW4Wa5TeG7ieNIj2Ej8eZctkCVk3usgZ1leiUZmj2eXiUt4A/ds+En7/DP06fKaZELc
	pi+PJnhKIflC++nFYzXTQkpesWXx2/uC7FgDi7W9fOQr5fvlC2mEaIJLC98gQPlnLBNuaKi2kuidC
	8rI4sAw298Ru/0w/8OqoNXG2KJEYu7OL0Z5SYtLfMpfi3fumik5nTm4KH4PMMShZBcp/Rz9QdvRIH
	w3TP34WHs9Qqk5Ei1HFdGFaBLmCQXgf/fPnT3AtH3GLcVsCcG7dNmt8MVqzbD/5VBf9bnND2McHhV
	5T4KAeHEHjKx+abWCbGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdj1p-00072z-P1; Tue, 26 May 2020 23:30:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdj1f-00072B-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 23:30:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB62C1FB;
 Tue, 26 May 2020 16:30:23 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85D043F52E;
 Tue, 26 May 2020 16:30:23 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id CE3C3682B71; Wed, 27 May 2020 00:30:21 +0100 (BST)
Date: Wed, 27 May 2020 00:30:21 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 03/21] drm/arm: Use GEM CMA object functions
Message-ID: <20200526233021.GD159988@e110455-lin.cambridge.arm.com>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-4-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522135246.10134-4-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_163027_499894_3D016E10 
X-CRM114-Status: GOOD (  14.94  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjAgYXQgMDM6NTI6MjhQTSArMDIwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gVGhlIGFybSBkcml2ZXIgdXNlcyB0aGUgZGVmYXVsdCBpbXBsZW1lbnRhdGlv
biBmb3IgQ01BIGZ1bmN0aW9ucy4gVGhlCj4gRFJNX0dFTV9DTUFfRFJJVkVSX09QUyBtYWNybyBu
b3cgc2V0cyB0aGVzZSBkZWZhdWx0cyBpbiBzdHJ1Y3QgZHJtX2RyaXZlci4KPiBBbGwgcmVtYWlu
aW5nIG9wZXJhdGlvbnMgYXJlIHByb3ZpZGVkIGJ5IENNQSBHRU0gb2JqZWN0IGZ1bmN0aW9ucy4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4KCkFja2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KClRoYW5rcyEK
TGl2aXUKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hcm0vaGRsY2RfZHJ2LmMgfCAxMiArLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMSBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FybS9oZGxjZF9kcnYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hcm0vaGRsY2RfZHJ2LmMKPiBpbmRleCAxOTQ0MTlmNDdjNWU1Li5jODNi
ODFhM2E1ODJhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hcm0vaGRsY2RfZHJ2LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtL2hkbGNkX2Rydi5jCj4gQEAgLTI0MCwxNyArMjQw
LDcgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGhkbGNkX2RyaXZlciA9IHsKPiAgCS5pcnFf
cHJlaW5zdGFsbCA9IGhkbGNkX2lycV9wcmVpbnN0YWxsLAo+ICAJLmlycV9wb3N0aW5zdGFsbCA9
IGhkbGNkX2lycV9wb3N0aW5zdGFsbCwKPiAgCS5pcnFfdW5pbnN0YWxsID0gaGRsY2RfaXJxX3Vu
aW5zdGFsbCwKPiAtCS5nZW1fZnJlZV9vYmplY3RfdW5sb2NrZWQgPSBkcm1fZ2VtX2NtYV9mcmVl
X29iamVjdCwKPiAtCS5nZW1fcHJpbnRfaW5mbyA9IGRybV9nZW1fY21hX3ByaW50X2luZm8sCj4g
LQkuZ2VtX3ZtX29wcyA9ICZkcm1fZ2VtX2NtYV92bV9vcHMsCj4gLQkuZHVtYl9jcmVhdGUgPSBk
cm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZSwKPiAtCS5wcmltZV9oYW5kbGVfdG9fZmQgPSBkcm1fZ2Vt
X3ByaW1lX2hhbmRsZV90b19mZCwKPiAtCS5wcmltZV9mZF90b19oYW5kbGUgPSBkcm1fZ2VtX3By
aW1lX2ZkX3RvX2hhbmRsZSwKPiAtCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlID0gZHJtX2dlbV9j
bWFfcHJpbWVfZ2V0X3NnX3RhYmxlLAo+IC0JLmdlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUgPSBk
cm1fZ2VtX2NtYV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCj4gLQkuZ2VtX3ByaW1lX3ZtYXAgPSBk
cm1fZ2VtX2NtYV9wcmltZV92bWFwLAo+IC0JLmdlbV9wcmltZV92dW5tYXAgPSBkcm1fZ2VtX2Nt
YV9wcmltZV92dW5tYXAsCj4gLQkuZ2VtX3ByaW1lX21tYXAgPSBkcm1fZ2VtX2NtYV9wcmltZV9t
bWFwLAo+ICsJRFJNX0dFTV9DTUFfRFJJVkVSX09QUywKPiAgI2lmZGVmIENPTkZJR19ERUJVR19G
Uwo+ICAJLmRlYnVnZnNfaW5pdCA9IGhkbGNkX2RlYnVnZnNfaW5pdCwKPiAgI2VuZGlmCj4gLS0g
Cj4gMi4yNi4yCj4gCgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJIHdvdWxkIGxpa2UgdG8g
fAp8IGZpeCB0aGUgd29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwKfCBnaXZpbmcgbWUgdGhl
ICAgfAogXCBzb3VyY2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0KICAgIMKvXF8o44OEKV8v
wq8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
