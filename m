Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD2471879
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bobv3C2qkPbHGLi7PyypfYdQaZVN9/OJN6ZnpZEQI5w=; b=PdTiQnFsl71kKX9BtnyPnY19G
	QklW+ggge7kZgqhJYbWQRM+LMk/jcwqVL/DKxsue+LdxmHXZ1HfmOnPsFES8hz4OoBSezQiwOETuu
	CtVBKe4Bfi8Oz5Jh3LBoGNnrdj1U3Fg3wPPhzEiGktyL87b6wvAsF9StjwqIiiSAdYcqNn4YUYMoV
	bfCQI4ZuF7Ju9wwmZz6H24lBXpU8SMujzY62vtgGz4V9ViQt10Zo1VDyqPMvOzLEW645z72johcpp
	gwr4TYHKAIwyyI4WO4NkHwSWvW2C7GUsb7GCnZX5aSQYx6WBW2tWw4nfA3644/P03hcaowHgGHjzP
	1XggPFhLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuAU-0005wv-2A; Tue, 23 Jul 2019 12:45:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuA8-0005c5-RI; Tue, 23 Jul 2019 12:45:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 0B2192610F4
Subject: Re: [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in connector
 sysfs directory
To: Sam Ravnborg <sam@ravnborg.org>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
 <20190723090532.GA787@ravnborg.org>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
Date: Tue, 23 Jul 2019 14:44:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723090532.GA787@ravnborg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_054501_016935_27B1396D 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FtLAoKVyBkbml1IDIzLjA3LjIwMTkgb8KgMTE6MDUsIFNhbSBSYXZuYm9yZyBwaXN6ZToK
PiBIaSBBbmRyemVqCj4gCj4gT24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDE6MjY6NDFQTSArMDIw
MCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+PiBVc2UgdGhlIGRkYyBwb2ludGVyIHBy
b3ZpZGVkIGJ5IHRoZSBnZW5lcmljIGNvbm5lY3Rvci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQW5k
cnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfdGZwNDEwLmMgfCAxICsKPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS90aWxjZGMvdGlsY2RjX3RmcDQxMC5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNf
dGZwNDEwLmMKPj4gaW5kZXggNjJkMDE0YzIwOTg4Li5jMzczZWRiOTU2NjYgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX3RmcDQxMC5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX3RmcDQxMC5jCj4+IEBAIC0yMTksNiArMjE5LDcgQEAg
c3RhdGljIHN0cnVjdCBkcm1fY29ubmVjdG9yICp0ZnA0MTBfY29ubmVjdG9yX2NyZWF0ZShzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LAo+PiAgIAl0ZnA0MTBfY29ubmVjdG9yLT5tb2QgPSBtb2Q7Cj4+
ICAgCj4+ICAgCWNvbm5lY3RvciA9ICZ0ZnA0MTBfY29ubmVjdG9yLT5iYXNlOwo+PiArCWNvbm5l
Y3Rvci0+ZGRjID0gbW9kLT5pMmM7Cj4+ICAgCj4+ICAgCWRybV9jb25uZWN0b3JfaW5pdChkZXYs
IGNvbm5lY3RvciwgJnRmcDQxMF9jb25uZWN0b3JfZnVuY3MsCj4+ICAgCQkJRFJNX01PREVfQ09O
TkVDVE9SX0RWSUQpOwo+IAo+IFdoZW4gcmVhZGluZyB0aGlzIGNvZGUsIGl0IGxvb2tzIHN0cmFu
Z2UgdGhhdCB3ZSBzZXQgY29ubmVjdG9yLT5kZGMKPiAqYmVmb3JlKiB0aGUgY2FsbCB0byBpbml0
IHRoZSBjb25uZWN0b3IuCj4gT25lIGNvdWxkIHJpc2sgdGhhdCBkcm1fY29ubmVjdG9yX2luaXQo
KSB1c2VkIG1lbXNldCguLikgdG8gY2xlYXIgYWxsCj4gZmllbGRzIG9yIHNvLCBhbmQgaXQgd291
bGQgYnJlYWsgdGhpcyBvcmRlci4KCkkgdmVyaWZpZWQgdGhlIGNvZGUgb2YgZHJtX2Nvbm5lY3Rv
cl9pbml0KCkgYW5kIGNhbm5vdCBmaW5kIGFueSBtZW1zZXQoKQppbnZvY2F0aW9ucyB0aGVyZS4g
V2hhdCBpcyB5b3VyIGFjdHVhbCBjb25jZXJuPwoKQW5kcnplagoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
