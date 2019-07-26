Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB8D7724D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 21:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Av1cI+N+rQC6CFmeEqeI1MtD5R8wx5vAY26vlAV0Q0=; b=rTx1KNTPK97Zsxu2KDiBeA+Gf
	rYryaE0ZbSZlp3qxFkJeoZmxVKcyS3A91tiiKvbkGQ6BP5xL9QjaeEV/tPEir1PZ8pcsAjN9VvCpN
	u2qigkQb/E6WF/EgtwrQ1QtJ2kde4B+t08TI0Uc3B12cSTzgoMAMJ+BztZpAzrQIrjLQXATKtDNUj
	yTt47Df0mDtiCrCIq2s8J86iPLgNg/LokyStovGbw8+lr66ubar/z74w45hakvydJ0j/Sv8BcMbmx
	H4nIEBnXDpl+VQUaHPXwX9IqQves5tdNyVX6EJnqCZfdsl2t/5bW6/RBD9AbxvDT9hFO9YE+oBEaE
	VSYj7akaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr66d-0000Hk-Mr; Fri, 26 Jul 2019 19:42:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr66S-0000H6-Hp; Fri, 26 Jul 2019 19:42:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 2CA2928C2D3
Subject: Re: [PATCH v6 22/24] drm/amdgpu: Provide ddc symlink in connector
 sysfs directory
To: Alex Deucher <alexdeucher@gmail.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <7fee0fa0d0f77af6595d283d5f3ae5d551475821.1564161140.git.andrzej.p@collabora.com>
 <CADnq5_O1B59Q+68fJgtf_bn_=WQ9yrVPq-V5tL1VQ3+vzgf1Zw@mail.gmail.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <038809c7-e664-e365-a778-03bc11299193@collabora.com>
Date: Fri, 26 Jul 2019 21:42:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CADnq5_O1B59Q+68fJgtf_bn_=WQ9yrVPq-V5tL1VQ3+vzgf1Zw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_124208_724722_56855B17 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleCwKCgpXIGRuaXUgMjYuMDcuMjAxOSBvwqAyMToyOCwgQWxleCBEZXVjaGVyIHBpc3pl
Ogo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDE6MjggUE0gQW5kcnplaiBQaWV0cmFzaWV3aWN6
Cj4gPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4KPj4gVXNlIHRoZSBkZGMgcG9p
bnRlciBwcm92aWRlZCBieSB0aGUgZ2VuZXJpYyBjb25uZWN0b3IuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cj4gCj4g
Tm90ZSB0aGF0IHRoaXMgb25seSBjb3ZlcnMgdGhlIGxlZ2FjeSBkaXNwbGF5IGNvZGUuICBUaGUg
bmV3IERDCj4gZGlzcGxheSBjb2RlIGFsc28gbmVlZHMgdG8gYmUgY29udmVydGVkLiAgU2VlOgo+
IGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKPiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9tc3RfdHlwZXMuYwoK
SW4gYW1kZ3B1X2RtX2Nvbm5lY3Rvcl9pbml0KCkgdGhlIGRkYyBpcyAmaTJjLT5iYXNlLCBpcyBp
dD8KCkJ1dCBpdCBpcyBub3QgY2xlYXIgdG8gbWUgaG93IGNhbiBJIGZpbmQgZGRjIHBvaW50ZXIg
aW4KZG1fZHBfYWRkX21zdF9jb25uZWN0b3IoKT8KCkFuZHJ6ZWoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
