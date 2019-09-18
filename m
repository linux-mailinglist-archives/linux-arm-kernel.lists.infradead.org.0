Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AB3B655B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aXhd0P/XRwQJRQUL4ljLdHx0usla5F2nlj3o3a/DjJ8=; b=Lc1WZgqVwlsdWCqwqgjoDtj/1
	b+AQ16mwsYy9fQVVsEf19bbRfTAUk/8Ta8dMHTQIkvlYuwuFVI6mWsv5zlVFVeipjU0KmjSoWTBaT
	+BBmqg7BKOn7g1krmpQHfG+HtfQLrFhjn9aKcU88GdY05/g+XeFGcWQs/70hB6+RovO+fJGpLP8ja
	wugIeHEdynbtRosbflCehIUPIcGPPGaZUcpaoIOkvT0S+Fd8DYTSOcM+/MfQhYOgRSN8aHi3jsjaq
	Cycnd6ZlHKPL6UA4VQ2JuKvO3Uunec3/kOuzR/lH9r1uL1DZXise+BAqrd9XhnfMixfBbM8eGiUsu
	00sDkQxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaWb-0006Vs-Ov; Wed, 18 Sep 2019 14:01:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaWO-0006Uf-5z; Wed, 18 Sep 2019 14:01:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 87FE728D029
Subject: Re: [PATCH RESEND 00/14] Next round of associating ddc adapters with
 connectors
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
References: <cover.1566845537.git.andrzej.p@collabora.com>
Message-ID: <0799e830-400d-4ced-7108-c8fcfd5ef8c0@collabora.com>
Date: Wed, 18 Sep 2019 16:01:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cover.1566845537.git.andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_070128_489200_A35EF7F2 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>, Emil Velikov <emil.velikov@collabora.com>,
 linux-samsung-soc@vger.kernel.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 David Francis <David.Francis@amd.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Leo Li <sunpeng.li@amd.com>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 linux-arm-kernel@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Shawn Guo <shawnguo@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxsLAoKQSBnZW50bGUgcGluZy4KCkFuZHJ6ZWoKClcgZG5pdSAyNi4wOC4yMDE5IG/CoDIx
OjI1LCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogcGlzemU6Cj4gSSdtIHJlc2VuZGluZyB0aGUgcGF0
Y2hlcyB3aGljaCBoYXZlIHNvbWVob3cgZ290IGxvc3Q6IG9uZSBwYXRjaAo+IGZyb20gR2VlcnQg
YW5kIDEzIHBhdGNoZXMgZnJvbSBtZS4KPiAKPiBHZWVydCdzIHBhdGNoIHVwZGF0ZXMgdGhlIGVy
cm9yIG1lc3NhZ2UgdG8gcmVmbGVjdCB0aGUgYWN0dWFsbHkKPiBjYWxsZWQgZnVuY3Rpb24ncyBu
YW1lLgo+IAo+IE1vc3Qgb2YgcGF0Y2hlcyBmcm9tIG1lIGhhdmUgdGhlaXIgQWNrZWQtYnkgYW5k
IFJldmlld2VkLWJ5IHRhZ3MKPiBhbmQgZGVhbCB3aXRoIHByb3ZpZGluZyBhIGRkYyBzeW1saW5r
IGluIGNvbm5lY3RvcidzIHN5c2ZzIGRpcmVjdG9yeS4KPiAKPiBSZWJhc2VkIG9udG8gZHJtLW1p
c2MtbmV4dCBhcyBvZiAyNnRoIEF1Z3VzdC4KPiAKPiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogKDEz
KToKPiAgICBkcm0vcmFkZW9uOiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGNvbm5lY3RvciBzeXNm
cyBkaXJlY3RvcnkKPiAgICBkcm0vYW1kZ3B1OiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGRtIGNv
bm5lY3RvcidzIHN5c2ZzIGRpcmVjdG9yeQo+ICAgIGRybS9leHlub3M6IFByb3ZpZGUgZGRjIHN5
bWxpbmsgaW4gY29ubmVjdG9yJ3Mgc3lzZnMKPiAgICBkcm06IHJvY2tjaGlwOiBQcm92aWRlIGRk
YyBzeW1saW5rIGluIHJrMzA2Nl9oZG1pIHN5c2ZzIGRpcmVjdG9yeQo+ICAgIGRybTogcm9ja2No
aXA6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gaW5ub19oZG1pIHN5c2ZzIGRpcmVjdG9yeQo+ICAg
IGRybS9tc20vaGRtaTogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBoZG1pIGNvbm5lY3RvciBzeXNm
cyBkaXJlY3RvcnkKPiAgICBkcm0vbWVkaWF0ZWs6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gaGRt
aSBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5Cj4gICAgZHJtL3RlZ3JhOiBQcm92aWRlIGRkYyBz
eW1saW5rIGluIG91dHB1dCBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5Cj4gICAgZHJtL3ZjNDog
UHJvdmlkZSBkZGMgc3ltbGluayBpbiBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5Cj4gICAgZHJt
OiB6dGU6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gaGRtaSBjb25uZWN0b3Igc3lzZnMgZGlyZWN0
b3J5Cj4gICAgZHJtOiB6dGU6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gdmdhIGNvbm5lY3RvciBz
eXNmcyBkaXJlY3RvcnkKPiAgICBkcm0vdGlsY2RjOiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGNv
bm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKPiAgICBkcm0vaTkxNTogUHJvdmlkZSBkZGMgc3ltbGlu
ayBpbiBoZG1pIGNvbm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKPiAKPiBHZWVydCBVeXR0ZXJob2V2
ZW4gKDEpOgo+ICAgIGRybS9icmlkZ2U6IHRpLXRmcDQxMDogVXBkYXRlIGRybV9jb25uZWN0b3Jf
aW5pdF93aXRoX2RkYygpIGVycm9yCj4gICAgICBtZXNzYWdlCj4gCj4gICAuLi4vZ3B1L2RybS9h
bWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAgIDUgKy0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvdGktdGZwNDEwLmMgICAgICAgICAgICB8ICAgMyArLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2V4eW5vcy9leHlub3NfaGRtaS5jICAgICAgICAgIHwgICA2ICstCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgfCAgMTIgKy0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jICAgICAgICAgICB8ICAgNyArLQo+ICAgZHJp
dmVycy9ncHUvZHJtL21zbS9oZG1pL2hkbWlfY29ubmVjdG9yLmMgICAgIHwgICA2ICstCj4gICBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jb25uZWN0b3JzLmMgICAgfCAxNDMgKysrKysr
KysrKysrKy0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgICAg
ICAgICAgfCAgIDYgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5j
ICAgICAgICB8ICAgNyArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2hkbWkuYyAgICAgICAg
ICAgICAgICAgIHwgICA3ICstCj4gICBkcml2ZXJzL2dwdS9kcm0vdGVncmEvc29yLmMgICAgICAg
ICAgICAgICAgICAgfCAgIDcgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX3Rm
cDQxMC5jICAgICAgICB8ICAgNiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaGRtaS5j
ICAgICAgICAgICAgICAgIHwgIDEyICstCj4gICBkcml2ZXJzL2dwdS9kcm0venRlL3p4X2hkbWku
YyAgICAgICAgICAgICAgICAgfCAgIDYgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS96dGUvenhfdmdh
LmMgICAgICAgICAgICAgICAgICB8ICAgNiArLQo+ICAgMTUgZmlsZXMgY2hhbmdlZCwgMTY4IGlu
c2VydGlvbnMoKyksIDcxIGRlbGV0aW9ucygtKQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
