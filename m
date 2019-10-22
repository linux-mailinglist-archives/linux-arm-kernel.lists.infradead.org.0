Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90079E0CF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 22:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMPW3eHwRVVnfJ5/9/Zm70/jVY53+w8NCIcM+aAxV7c=; b=dXXej+BcCFrTwv
	BT2fv/NT3UoJI3JuzPlM8nHQiOkwenn806JsynvLLTNTC+cVmo3wM3HlbviHhlbe4CZJ2NFmrsSP+
	vJOejSmTDVFkV1Kq++i7JWZlsHaPg2OoJGLg5IdVxtFYXIa1OcIhzrsZ6pCYU8MTDqisK2I7qtNJI
	HcDEW8unfEnUy2IH+ZXGK+msyzcRLoBgeBSvsRG2NtyOblrN/Rb/suPwlm0HPr0wdK7sjQWCpT9q5
	N76j+EFLf6eKdcoKUsgagvjEhAI1UoHaZ9Y4tiCp55LB+iSwj1zh8GD3a4ex2zjJBP2G4aI6baxR3
	l4OCx/n4ALTc/6/ApUgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN0MS-0005yr-DR; Tue, 22 Oct 2019 20:02:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN0MF-0005xI-W8; Tue, 22 Oct 2019 20:02:21 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 840F921872;
 Tue, 22 Oct 2019 20:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571774539;
 bh=cUyr2/2eoIXdntAnEJRO5nJod7jUeseE4yCJAFXatQM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QSrPKqtVzvOMghMPusjDcrIwspdk0PUHRCsCXxe28iRqlW+OrgDEzuyourfuqbRdm
 BGHm1NxPIgpweb6yPX8wu7iZPd7xIccn1PKclyHPGWThLo8XjQcDjHsbD0x2jpgQWX
 WG/0eRlk9iSSKiUEsMjm/6exwH6y7GOjge1P2kyE=
Received: by mail-qk1-f175.google.com with SMTP id u184so17538232qkd.4;
 Tue, 22 Oct 2019 13:02:19 -0700 (PDT)
X-Gm-Message-State: APjAAAVdmdwqIRdx68B+nokJUZW8MmgGW8wnjFsU2pNN6eIlIkGpyIsE
 d2RXWyUtyb6RVgh2xsQdcL6zV7oSxMbrFOlhgw==
X-Google-Smtp-Source: APXvYqwDYIVQJxTqK1NKEymDbBCWf5Yibt54DNHS0TVHBn4zdeo2OkVgbaVaKatm6IFKoCUtNtez5iEVP5dq07mD8XM=
X-Received: by 2002:a05:620a:12b4:: with SMTP id
 x20mr4910200qki.254.1571774538627; 
 Tue, 22 Oct 2019 13:02:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-5-robh@kernel.org>
 <20191022113001.GG4756@pendragon.ideasonboard.com>
In-Reply-To: <20191022113001.GG4756@pendragon.ideasonboard.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 22 Oct 2019 15:02:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJk4xeFCHPqpXUSW4XJ=eQ+EYPUpjX_4UL9Pw_OAcqLdA@mail.gmail.com>
Message-ID: <CAL_JsqJk4xeFCHPqpXUSW4XJ=eQ+EYPUpjX_4UL9Pw_OAcqLdA@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/cma-helper: Support DRM_MODE_DUMB_KERNEL_MAP flag
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_130220_076775_7314F0B2 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Philippe Cornu <philippe.cornu@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>, Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgNjozMCBBTSBMYXVyZW50IFBpbmNoYXJ0CjxsYXVyZW50
LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGkgUm9iLAo+Cj4gVGhhbmsg
eW91IGZvciB0aGUgcGF0Y2guCj4KPiBPbiBNb24sIE9jdCAyMSwgMjAxOSBhdCAwNDo0NTo0OFBN
IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPiA+IEFkZCBzdXBwb3J0IGluIENNQSBoZWxwZXJz
IHRvIGhhbmRsZSBjYWxsZXJzIHNwZWNpZnlpbmcKPiA+IERSTV9NT0RFX0RVTUJfS0VSTkVMX01B
UCBmbGFnLiBFeGlzdGluZyBiZWhhdmlvciBpcyBtYWludGFpbmVkIHdpdGggdGhpcwo+ID4gY2hh
bmdlLiBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZSgpIGFsd2F5cyBjcmVhdGVzIGEga2VybmVsIG1h
cHBpbmcgYXMKPiA+IGJlZm9yZS4gZHJtX2dlbV9jbWFfZHVtYl9jcmVhdGVfaW50ZXJuYWwoKSBs
ZXRzIHRoZSBjYWxsZXIgc2V0IHRoZSBmbGFncwo+ID4gYXMgZGVzaXJlZC4gVGhlcmVmb3JlLCB1
cGRhdGUgYWxsIHRoZSBleGlzdGluZyBjYWxsZXJzIG9mCj4gPiBkcm1fZ2VtX2NtYV9kdW1iX2Ny
ZWF0ZV9pbnRlcm5hbCgpIHRvIGFsc28gc2V0IHRoZQo+ID4gRFJNX01PREVfRFVNQl9LRVJORUxf
TUFQIGZsYWcuCj4gPgo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPgo+ID4gQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgo+ID4gQ2M6IERhdmlkIEFp
cmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+Cj4gPiBDYzogIkphbWVzIChRaWFuKSBXYW5nIiA8amFtZXMucWlhbi53YW5nQGFybS5j
b20+Cj4gPiBDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+Cj4gPiBDYzogQnJp
YW4gU3RhcmtleSA8YnJpYW4uc3RhcmtleUBhcm0uY29tPgo+ID4gQ2M6IE5laWwgQXJtc3Ryb25n
IDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiA+IENjOiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5A
YmF5bGlicmUuY29tPgo+ID4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRA
aWRlYXNvbmJvYXJkLmNvbT4KPiA+IENjOiBLaWVyYW4gQmluZ2hhbSA8a2llcmFuLmJpbmdoYW0r
cmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgo+ID4gQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1j
aGlwcy5jb20+Cj4gPiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgo+ID4g
Q2M6IFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Cj4gPiBDYzogUGhpbGlw
cGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KPiA+IENjOiBCZW5qYW1pbiBHYWlnbmFy
ZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4KPiA+IENjOiBWaW5jZW50IEFicmlvdSA8
dmluY2VudC5hYnJpb3VAc3QuY29tPgo+ID4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGlu
LnN0bTMyQGdtYWlsLmNvbT4KPiA+IENjOiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9y
Z3VlQHN0LmNvbT4KPiA+IENjOiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4gPiBDYzog
bGludXgtYW1sb2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBDYzogbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBDYzogbGludXgtcmVuZXNhcy1zb2NAdmdlci5rZXJu
ZWwub3JnCj4gPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gQ2M6
IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPiA+IFNpZ25lZC1vZmYt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+ICAuLi4vZ3B1L2Ry
bS9hcm0vZGlzcGxheS9rb21lZGEva29tZWRhX2ttcy5jICAgfCAgMSArCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2FybS9tYWxpZHBfZHJ2LmMgICAgICAgICAgICAgIHwgIDEgKwo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYyAgICAgICAgICB8IDQ4ICsrKysrKysrKysrLS0t
LS0tLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fZHJ2LmMgICAgICAgICAgICAg
fCAgMSArCj4gPiAgZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV9rbXMuYyAgICAgICAg
IHwgIDEgKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMg
ICB8ICAxICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vc3RtL2Rydi5jICAgICAgICAgICAgICAgICAg
ICAgfCAgMSArCj4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2Rydi5jICAgICAgICAg
ICAgIHwgIDEgKwo+ID4gIDggZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMTkgZGVs
ZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hcm0vZGlzcGxh
eS9rb21lZGEva29tZWRhX2ttcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVk
YS9rb21lZGFfa21zLmMKPiA+IGluZGV4IGQ0OTc3MmRlOTNlMC4uN2NmMGRjNGNiZmMxIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21z
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vZGlzcGxheS9rb21lZGEva29tZWRhX2tt
cy5jCj4gPiBAQCAtMzEsNiArMzEsNyBAQCBzdGF0aWMgaW50IGtvbWVkYV9nZW1fY21hX2R1bWJf
Y3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiA+ICAgICAgIHUzMiBwaXRjaCA9IERJVl9S
T1VORF9VUChhcmdzLT53aWR0aCAqIGFyZ3MtPmJwcCwgOCk7Cj4gPgo+ID4gICAgICAgYXJncy0+
cGl0Y2ggPSBBTElHTihwaXRjaCwgbWRldi0+Y2hpcC5idXNfd2lkdGgpOwo+ID4gKyAgICAgYXJn
cy0+ZmxhZ3MgPSBEUk1fTU9ERV9EVU1CX0tFUk5FTF9NQVA7Cj4gPgo+ID4gICAgICAgcmV0dXJu
IGRybV9nZW1fY21hX2R1bWJfY3JlYXRlX2ludGVybmFsKGZpbGUsIGRldiwgYXJncyk7Cj4gPiAg
fQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jIGIvZHJp
dmVycy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2LmMKPiA+IGluZGV4IDhhNzYzMTVhYWEwZi4uYWVi
MWE3NzllY2MxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gPiBAQCAtNDY1
LDYgKzQ2NSw3IEBAIHN0YXRpYyBpbnQgbWFsaWRwX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZV9wcml2LAo+ID4gICAgICAgdTggYWxpZ25tZW50ID0gbWFsaWRwX2h3X2dldF9waXRj
aF9hbGlnbihtYWxpZHAtPmRldiwgMSk7Cj4gPgo+ID4gICAgICAgYXJncy0+cGl0Y2ggPSBBTElH
TihESVZfUk9VTkRfVVAoYXJncy0+d2lkdGggKiBhcmdzLT5icHAsIDgpLCBhbGlnbm1lbnQpOwo+
ID4gKyAgICAgYXJncy0+ZmxhZ3MgPSBEUk1fTU9ERV9EVU1CX0tFUk5FTF9NQVA7Cj4gPgo+ID4g
ICAgICAgcmV0dXJuIGRybV9nZW1fY21hX2R1bWJfY3JlYXRlX2ludGVybmFsKGZpbGVfcHJpdiwg
ZHJtLCBhcmdzKTsKPiA+ICB9Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW1fY21hX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jCj4g
PiBpbmRleCA0Y2ViZmUwMWU2ZWEuLmY5MWU5ZThhZGVhZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fY21hX2hlbHBlci5jCj4gPiBAQCAtNzgsMjEgKzc4LDggQEAgX19kcm1fZ2VtX2Nt
YV9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgc2l6ZV90IHNpemUpCj4gPiAgICAgICBy
ZXR1cm4gRVJSX1BUUihyZXQpOwo+ID4gIH0KPiA+Cj4gPiAtLyoqCj4gPiAtICogZHJtX2dlbV9j
bWFfY3JlYXRlIC0gYWxsb2NhdGUgYW4gb2JqZWN0IHdpdGggdGhlIGdpdmVuIHNpemUKPiA+IC0g
KiBAZHJtOiBEUk0gZGV2aWNlCj4gPiAtICogQHNpemU6IHNpemUgb2YgdGhlIG9iamVjdCB0byBh
bGxvY2F0ZQo+ID4gLSAqCj4gPiAtICogVGhpcyBmdW5jdGlvbiBjcmVhdGVzIGEgQ01BIEdFTSBv
YmplY3QgYW5kIGFsbG9jYXRlcyBhIGNvbnRpZ3VvdXMgY2h1bmsgb2YKPiA+IC0gKiBtZW1vcnkg
YXMgYmFja2luZyBzdG9yZS4gVGhlIGJhY2tpbmcgbWVtb3J5IGhhcyB0aGUgd3JpdGVjb21iaW5l
IGF0dHJpYnV0ZQo+ID4gLSAqIHNldC4KPiA+IC0gKgo+ID4gLSAqIFJldHVybnM6Cj4gPiAtICog
QSBzdHJ1Y3QgZHJtX2dlbV9jbWFfb2JqZWN0ICogb24gc3VjY2VzcyBvciBhbiBFUlJfUFRSKCkt
ZW5jb2RlZCBuZWdhdGl2ZQo+ID4gLSAqIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KPiA+IC0gKi8K
PiA+IC1zdHJ1Y3QgZHJtX2dlbV9jbWFfb2JqZWN0ICpkcm1fZ2VtX2NtYV9jcmVhdGUoc3RydWN0
IGRybV9kZXZpY2UgKmRybSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc2l6ZV90IHNpemUpCj4gPiArc3RhdGljIHN0cnVjdCBkcm1fZ2VtX2NtYV9vYmpl
Y3QgKgo+ID4gK2RybV9nZW1fY21hX2NyZWF0ZV9mbGFncyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
LCBzaXplX3Qgc2l6ZSwgdTMyIGZsYWdzKQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBkcm1fZ2Vt
X2NtYV9vYmplY3QgKmNtYV9vYmo7Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4gQEAgLTEwMyw2ICs5
MCw5IEBAIHN0cnVjdCBkcm1fZ2VtX2NtYV9vYmplY3QgKmRybV9nZW1fY21hX2NyZWF0ZShzdHJ1
Y3QgZHJtX2RldmljZSAqZHJtLAo+ID4gICAgICAgaWYgKElTX0VSUihjbWFfb2JqKSkKPiA+ICAg
ICAgICAgICAgICAgcmV0dXJuIGNtYV9vYmo7Cj4gPgo+ID4gKyAgICAgaWYgKCEoZmxhZ3MgJiBE
Uk1fTU9ERV9EVU1CX0tFUk5FTF9NQVApKQo+ID4gKyAgICAgICAgICAgICBjbWFfb2JqLT5kbWFf
YXR0cnMgfD0gRE1BX0FUVFJfTk9fS0VSTkVMX01BUFBJTkc7Cj4gPiArCj4gPiAgICAgICBjbWFf
b2JqLT52YWRkciA9IGRtYV9hbGxvY19hdHRycyhkcm0tPmRldiwgc2l6ZSwgJmNtYV9vYmotPnBh
ZGRyLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0ZQX0tFUk5F
TCB8IF9fR0ZQX05PV0FSTiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGNtYV9vYmotPmRtYV9hdHRycyk7Cj4gPiBAQCAtMTE5LDYgKzEwOSwyNSBAQCBzdHJ1Y3Qg
ZHJtX2dlbV9jbWFfb2JqZWN0ICpkcm1fZ2VtX2NtYV9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRybSwKPiA+ICAgICAgIGRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgmY21hX29iai0+YmFz
ZSk7Cj4gPiAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+ID4gIH0KPiA+ICsKPiA+ICsvKioK
PiA+ICsgKiBkcm1fZ2VtX2NtYV9jcmVhdGUgLSBhbGxvY2F0ZSBhbiBvYmplY3Qgd2l0aCB0aGUg
Z2l2ZW4gc2l6ZQo+ID4gKyAqIEBkcm06IERSTSBkZXZpY2UKPiA+ICsgKiBAc2l6ZTogc2l6ZSBv
ZiB0aGUgb2JqZWN0IHRvIGFsbG9jYXRlCj4gPiArICoKPiA+ICsgKiBUaGlzIGZ1bmN0aW9uIGNy
ZWF0ZXMgYSBDTUEgR0VNIG9iamVjdCBhbmQgYWxsb2NhdGVzIGEgY29udGlndW91cyBjaHVuayBv
Zgo+ID4gKyAqIG1lbW9yeSBhcyBiYWNraW5nIHN0b3JlLiBUaGUgYmFja2luZyBtZW1vcnkgaGFz
IHRoZSB3cml0ZWNvbWJpbmUgYXR0cmlidXRlCj4gPiArICogc2V0Lgo+ID4gKyAqCj4KPiBTaG91
bGRuJ3QgeW91IG1lbnRpb24gaGVyZSB0aGF0IHRoZSBmdW5jdGlvbiBhbHdheXMgY3JlYXRlcyBh
IGtlcm5lbAo+IG1hcHBpbmcsIGFuZCB0aGF0IGNhbGxlcnMgdGhhdCBkb24ndCBuZWVkIHRoZSBt
YXBwaW5nIHNob3VsZCB1c2UKPiBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbCgpIGlu
c3RlYWQgPwoKQXJlIHlvdSBjb25mdXNpbmcgZHJtX2dlbV9jbWFfY3JlYXRlIHdpdGggZHJtX2dl
bV9jbWFfZHVtYl9jcmVhdGU/CmRybV9nZW1fY21hX2R1bWJfY3JlYXRlKCkgdXNlcyBkZWZhdWx0
cyBhbmQKZHJtX2dlbV9jbWFfZHVtYl9jcmVhdGVfaW50ZXJuYWwoKSBhbGxvd3MgdGhlIGNhbGxl
ciB0byB0d2VhawpwYXJhbWV0ZXJzLiBOb3RoaW5nIG5ldyB0aGVyZSBvdGhlciB0aGFuIGFuIGFk
ZGl0aW9uYWwgcGFyYW0gdG8gdHdlYWsuCgo+IGRybV9nZW1fY21hX2R1bWJfY3JlYXRlX2ludGVy
bmFsKCkgb3BlcmF0ZXMgYXQgYSBkaWZmZXJlbnQgbGV2ZWwgdGhvdWdoLAo+IGFuZCBkcm1fZ2Vt
X2NtYV9jcmVhdGUoKSBpcyBvbmx5IGV4cG9ydGVkIGZvciBhIHNpbmdsZSBkcml2ZXIuIFRoZXJl
J3MKPiBubyBlcXVpdmFsZW50IHRvIGRybV9nZW1fY21hX2NyZWF0ZSgpIHRoYXQgY2FuIHNraXAg
dGhlIGtlcm5lbCBtYXBwaW5nLgoKQmVjYXVzZSB3ZSBkb24ndCB5ZXQgbmVlZCBvbmUuIGRybV9n
ZW1fY21hX2NyZWF0ZV9mbGFncygpIGNhbiBiZSBtYWRlCnB1YmxpYyB3aGVuIHdlIGRvLiBJIGNv
dWxkIGRvIHRoYXQgbm93IEkgZ3Vlc3MgYW5kIG1ha2UKZHJtX2dlbV9jbWFfY3JlYXRlIGFuIGlu
bGluZSB3cmFwcGVyLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
