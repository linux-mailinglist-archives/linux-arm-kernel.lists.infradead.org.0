Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F173FE1E21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRNCByIJHM5oY4nL/jLwG9n7V16cPT3c3bxu41vxEyk=; b=EMXjaF9SoE4Tk+
	c9t/4A5kyg2Ur4wmqPFFkU3N0c0EWsC2Sv6l2m6gUZMv8TUVMcLJG0ixd4sMLRSGGf1NF1nki+eBl
	uNgw1BSDveWHY6yUahQ5mn1/hWhslaHkzuh35U3moquYy8x6KBN1f+MqGXe1yTN31HXb1w5VmO21J
	DMZa00kaqt2HviLP8triz+nOkaSQfFJLYQ1f40sOjSQy0Z6uMi5TqXhL5O7Rsu7g10ydBY6EClsJ2
	o07xyl8YkyH6jWR850fBLd9LSS+4Y+VJhVeD8CJ+KO7+4HZKJg22vWkjzKfIS96edNeD8fQz2OQSL
	dDEjhnEDUmLyAirkIDHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHbx-0006LJ-RW; Wed, 23 Oct 2019 14:27:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHbl-0006Jg-0F; Wed, 23 Oct 2019 14:27:31 +0000
Received: from pendragon.ideasonboard.com (143.121.2.93.rev.sfr.net
 [93.2.121.143])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 731022BA;
 Wed, 23 Oct 2019 16:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1571840836;
 bh=JXqWjdiLubVy5sWaPNoZEJWjeRj39puPI4yetjR1u3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HfNC5+1MHn6TRNR/YN4P3LSQWxmv4uJMWJfnz3zLtGa9GRuZYMbfPcxvaKa+bb9NU
 wP52IcWvP/OGLU8sYfrkecNBWS8mZXpK2+j1kNIqKu4qY0NrrFttxCF2qbOmql2fRV
 MDKrV52IHE9CnQrlhyeFyAv29V4Y+zLzh06EHEp4=
Date: Wed, 23 Oct 2019 17:27:11 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 4/6] drm/cma-helper: Support DRM_MODE_DUMB_KERNEL_MAP flag
Message-ID: <20191023142711.GB1904@pendragon.ideasonboard.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-5-robh@kernel.org>
 <20191022113001.GG4756@pendragon.ideasonboard.com>
 <CAL_JsqJk4xeFCHPqpXUSW4XJ=eQ+EYPUpjX_4UL9Pw_OAcqLdA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJk4xeFCHPqpXUSW4XJ=eQ+EYPUpjX_4UL9Pw_OAcqLdA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_072729_351157_1AAC8B31 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
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
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
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

SGkgUm9iLAoKT24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDM6MDI6MDZQTSAtMDUwMCwgUm9iIEhl
cnJpbmcgd3JvdGU6Cj4gT24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgNjozMCBBTSBMYXVyZW50IFBp
bmNoYXJ0IHdyb3RlOgo+ID4gT24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMDQ6NDU6NDhQTSAtMDUw
MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPj4gQWRkIHN1cHBvcnQgaW4gQ01BIGhlbHBlcnMgdG8g
aGFuZGxlIGNhbGxlcnMgc3BlY2lmeWluZwo+ID4+IERSTV9NT0RFX0RVTUJfS0VSTkVMX01BUCBm
bGFnLiBFeGlzdGluZyBiZWhhdmlvciBpcyBtYWludGFpbmVkIHdpdGggdGhpcwo+ID4+IGNoYW5n
ZS4gZHJtX2dlbV9jbWFfZHVtYl9jcmVhdGUoKSBhbHdheXMgY3JlYXRlcyBhIGtlcm5lbCBtYXBw
aW5nIGFzCj4gPj4gYmVmb3JlLiBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbCgpIGxl
dHMgdGhlIGNhbGxlciBzZXQgdGhlIGZsYWdzCj4gPj4gYXMgZGVzaXJlZC4gVGhlcmVmb3JlLCB1
cGRhdGUgYWxsIHRoZSBleGlzdGluZyBjYWxsZXJzIG9mCj4gPj4gZHJtX2dlbV9jbWFfZHVtYl9j
cmVhdGVfaW50ZXJuYWwoKSB0byBhbHNvIHNldCB0aGUKPiA+PiBEUk1fTU9ERV9EVU1CX0tFUk5F
TF9NQVAgZmxhZy4KPiA+Pgo+ID4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+Cj4gPj4gQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgo+ID4+IENjOiBE
YXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gPj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbEBmZndsbC5jaD4KPiA+PiBDYzogIkphbWVzIChRaWFuKSBXYW5nIiA8amFtZXMucWlhbi53
YW5nQGFybS5jb20+Cj4gPj4gQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgo+
ID4+IENjOiBCcmlhbiBTdGFya2V5IDxicmlhbi5zdGFya2V5QGFybS5jb20+Cj4gPj4gQ2M6IE5l
aWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiA+PiBDYzogS2V2aW4gSGls
bWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT4KPiA+PiBDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1
cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+ID4+IENjOiBLaWVyYW4gQmluZ2hhbSA8
a2llcmFuLmJpbmdoYW0rcmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgo+ID4+IENjOiBTYW5keSBI
dWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+ID4+IENjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlr
b0BzbnRlY2guZGU+Cj4gPj4gQ2M6IFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZlcnRyZUBzdC5j
b20+Cj4gPj4gQ2M6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+Cj4gPj4g
Q2M6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+ID4+
IENjOiBWaW5jZW50IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3QuY29tPgo+ID4+IENjOiBNYXhp
bWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4gPj4gQ2M6IEFsZXhhbmRy
ZSBUb3JndWUgPGFsZXhhbmRyZS50b3JndWVAc3QuY29tPgo+ID4+IENjOiBDaGVuLVl1IFRzYWkg
PHdlbnNAY3NpZS5vcmc+Cj4gPj4gQ2M6IGxpbnV4LWFtbG9naWNAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+ID4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+PiBDYzog
bGludXgtcmVuZXNhcy1zb2NAdmdlci5rZXJuZWwub3JnCj4gPj4gQ2M6IGxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+PiBDYzogbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5z
dG9ybXJlcGx5LmNvbQo+ID4+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+Cj4gPj4gLS0tCj4gPj4gIC4uLi9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21l
ZGFfa21zLmMgICB8ICAxICsKPiA+PiAgZHJpdmVycy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2LmMg
ICAgICAgICAgICAgIHwgIDEgKwo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVs
cGVyLmMgICAgICAgICAgfCA0OCArKysrKysrKysrKy0tLS0tLS0tCj4gPj4gIGRyaXZlcnMvZ3B1
L2RybS9tZXNvbi9tZXNvbl9kcnYuYyAgICAgICAgICAgICB8ICAxICsKPiA+PiAgZHJpdmVycy9n
cHUvZHJtL3JjYXItZHUvcmNhcl9kdV9rbXMuYyAgICAgICAgIHwgIDEgKwo+ID4+ICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jICAgfCAgMSArCj4gPj4gIGRyaXZl
cnMvZ3B1L2RybS9zdG0vZHJ2LmMgICAgICAgICAgICAgICAgICAgICB8ICAxICsKPiA+PiAgZHJp
dmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2Rydi5jICAgICAgICAgICAgIHwgIDEgKwo+ID4+ICA4
IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQo+ID4+Cj4g
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hcm0vZGlzcGxheS9rb21lZGEva29tZWRh
X2ttcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21zLmMK
PiA+PiBpbmRleCBkNDk3NzJkZTkzZTAuLjdjZjBkYzRjYmZjMSAxMDA2NDQKPiA+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYXJtL2Rpc3BsYXkva29tZWRhL2tvbWVkYV9rbXMuYwo+ID4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hcm0vZGlzcGxheS9rb21lZGEva29tZWRhX2ttcy5jCj4gPj4gQEAg
LTMxLDYgKzMxLDcgQEAgc3RhdGljIGludCBrb21lZGFfZ2VtX2NtYV9kdW1iX2NyZWF0ZShzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gPj4gICAgICAgdTMyIHBpdGNoID0gRElWX1JPVU5EX1VQKGFy
Z3MtPndpZHRoICogYXJncy0+YnBwLCA4KTsKPiA+Pgo+ID4+ICAgICAgIGFyZ3MtPnBpdGNoID0g
QUxJR04ocGl0Y2gsIG1kZXYtPmNoaXAuYnVzX3dpZHRoKTsKPiA+PiArICAgICBhcmdzLT5mbGFn
cyA9IERSTV9NT0RFX0RVTUJfS0VSTkVMX01BUDsKPiA+Pgo+ID4+ICAgICAgIHJldHVybiBkcm1f
Z2VtX2NtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbChmaWxlLCBkZXYsIGFyZ3MpOwo+ID4+ICB9Cj4g
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2LmMKPiA+PiBpbmRleCA4YTc2MzE1YWFhMGYuLmFlYjFh
Nzc5ZWNjMSAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlkcF9kcnYu
Ywo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gPj4gQEAgLTQ2
NSw2ICs0NjUsNyBAQCBzdGF0aWMgaW50IG1hbGlkcF9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGVfcHJpdiwKPiA+PiAgICAgICB1OCBhbGlnbm1lbnQgPSBtYWxpZHBfaHdfZ2V0X3Bp
dGNoX2FsaWduKG1hbGlkcC0+ZGV2LCAxKTsKPiA+Pgo+ID4+ICAgICAgIGFyZ3MtPnBpdGNoID0g
QUxJR04oRElWX1JPVU5EX1VQKGFyZ3MtPndpZHRoICogYXJncy0+YnBwLCA4KSwgYWxpZ25tZW50
KTsKPiA+PiArICAgICBhcmdzLT5mbGFncyA9IERSTV9NT0RFX0RVTUJfS0VSTkVMX01BUDsKPiA+
Pgo+ID4+ICAgICAgIHJldHVybiBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbChmaWxl
X3ByaXYsIGRybSwgYXJncyk7Cj4gPj4gIH0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fY21hX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hl
bHBlci5jCj4gPj4gaW5kZXggNGNlYmZlMDFlNmVhLi5mOTFlOWU4YWRlYWYgMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jCj4gPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jCj4gPj4gQEAgLTc4LDIxICs3OCw4IEBA
IF9fZHJtX2dlbV9jbWFfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHNpemVfdCBzaXpl
KQo+ID4+ICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7Cj4gPj4gIH0KPiA+Pgo+ID4+IC0vKioK
PiA+PiAtICogZHJtX2dlbV9jbWFfY3JlYXRlIC0gYWxsb2NhdGUgYW4gb2JqZWN0IHdpdGggdGhl
IGdpdmVuIHNpemUKPiA+PiAtICogQGRybTogRFJNIGRldmljZQo+ID4+IC0gKiBAc2l6ZTogc2l6
ZSBvZiB0aGUgb2JqZWN0IHRvIGFsbG9jYXRlCj4gPj4gLSAqCj4gPj4gLSAqIFRoaXMgZnVuY3Rp
b24gY3JlYXRlcyBhIENNQSBHRU0gb2JqZWN0IGFuZCBhbGxvY2F0ZXMgYSBjb250aWd1b3VzIGNo
dW5rIG9mCj4gPj4gLSAqIG1lbW9yeSBhcyBiYWNraW5nIHN0b3JlLiBUaGUgYmFja2luZyBtZW1v
cnkgaGFzIHRoZSB3cml0ZWNvbWJpbmUgYXR0cmlidXRlCj4gPj4gLSAqIHNldC4KPiA+PiAtICoK
PiA+PiAtICogUmV0dXJuczoKPiA+PiAtICogQSBzdHJ1Y3QgZHJtX2dlbV9jbWFfb2JqZWN0ICog
b24gc3VjY2VzcyBvciBhbiBFUlJfUFRSKCktZW5jb2RlZCBuZWdhdGl2ZQo+ID4+IC0gKiBlcnJv
ciBjb2RlIG9uIGZhaWx1cmUuCj4gPj4gLSAqLwo+ID4+IC1zdHJ1Y3QgZHJtX2dlbV9jbWFfb2Jq
ZWN0ICpkcm1fZ2VtX2NtYV9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRybSwKPiA+PiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBzaXplKQo+ID4+
ICtzdGF0aWMgc3RydWN0IGRybV9nZW1fY21hX29iamVjdCAqCj4gPj4gK2RybV9nZW1fY21hX2Ny
ZWF0ZV9mbGFncyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzaXplX3Qgc2l6ZSwgdTMyIGZsYWdz
KQo+ID4+ICB7Cj4gPj4gICAgICAgc3RydWN0IGRybV9nZW1fY21hX29iamVjdCAqY21hX29iajsK
PiA+PiAgICAgICBpbnQgcmV0Owo+ID4+IEBAIC0xMDMsNiArOTAsOSBAQCBzdHJ1Y3QgZHJtX2dl
bV9jbWFfb2JqZWN0ICpkcm1fZ2VtX2NtYV9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRybSwK
PiA+PiAgICAgICBpZiAoSVNfRVJSKGNtYV9vYmopKQo+ID4+ICAgICAgICAgICAgICAgcmV0dXJu
IGNtYV9vYmo7Cj4gPj4KPiA+PiArICAgICBpZiAoIShmbGFncyAmIERSTV9NT0RFX0RVTUJfS0VS
TkVMX01BUCkpCj4gPj4gKyAgICAgICAgICAgICBjbWFfb2JqLT5kbWFfYXR0cnMgfD0gRE1BX0FU
VFJfTk9fS0VSTkVMX01BUFBJTkc7Cj4gPj4gKwo+ID4+ICAgICAgIGNtYV9vYmotPnZhZGRyID0g
ZG1hX2FsbG9jX2F0dHJzKGRybS0+ZGV2LCBzaXplLCAmY21hX29iai0+cGFkZHIsCj4gPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0ZQX0tFUk5FTCB8IF9fR0ZQX05P
V0FSTiwKPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbWFfb2Jq
LT5kbWFfYXR0cnMpOwo+ID4+IEBAIC0xMTksNiArMTA5LDI1IEBAIHN0cnVjdCBkcm1fZ2VtX2Nt
YV9vYmplY3QgKmRybV9nZW1fY21hX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLAo+ID4+
ICAgICAgIGRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgmY21hX29iai0+YmFzZSk7Cj4gPj4g
ICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsKPiA+PiAgfQo+ID4+ICsKPiA+PiArLyoqCj4gPj4g
KyAqIGRybV9nZW1fY21hX2NyZWF0ZSAtIGFsbG9jYXRlIGFuIG9iamVjdCB3aXRoIHRoZSBnaXZl
biBzaXplCj4gPj4gKyAqIEBkcm06IERSTSBkZXZpY2UKPiA+PiArICogQHNpemU6IHNpemUgb2Yg
dGhlIG9iamVjdCB0byBhbGxvY2F0ZQo+ID4+ICsgKgo+ID4+ICsgKiBUaGlzIGZ1bmN0aW9uIGNy
ZWF0ZXMgYSBDTUEgR0VNIG9iamVjdCBhbmQgYWxsb2NhdGVzIGEgY29udGlndW91cyBjaHVuayBv
Zgo+ID4+ICsgKiBtZW1vcnkgYXMgYmFja2luZyBzdG9yZS4gVGhlIGJhY2tpbmcgbWVtb3J5IGhh
cyB0aGUgd3JpdGVjb21iaW5lIGF0dHJpYnV0ZQo+ID4+ICsgKiBzZXQuCj4gPj4gKyAqCj4gPgo+
ID4gU2hvdWxkbid0IHlvdSBtZW50aW9uIGhlcmUgdGhhdCB0aGUgZnVuY3Rpb24gYWx3YXlzIGNy
ZWF0ZXMgYSBrZXJuZWwKPiA+IG1hcHBpbmcsIGFuZCB0aGF0IGNhbGxlcnMgdGhhdCBkb24ndCBu
ZWVkIHRoZSBtYXBwaW5nIHNob3VsZCB1c2UKPiA+IGRybV9nZW1fY21hX2R1bWJfY3JlYXRlX2lu
dGVybmFsKCkgaW5zdGVhZCA/Cj4gCj4gQXJlIHlvdSBjb25mdXNpbmcgZHJtX2dlbV9jbWFfY3Jl
YXRlIHdpdGggZHJtX2dlbV9jbWFfZHVtYl9jcmVhdGU/Cj4gZHJtX2dlbV9jbWFfZHVtYl9jcmVh
dGUoKSB1c2VzIGRlZmF1bHRzIGFuZAo+IGRybV9nZW1fY21hX2R1bWJfY3JlYXRlX2ludGVybmFs
KCkgYWxsb3dzIHRoZSBjYWxsZXIgdG8gdHdlYWsKPiBwYXJhbWV0ZXJzLiBOb3RoaW5nIG5ldyB0
aGVyZSBvdGhlciB0aGFuIGFuIGFkZGl0aW9uYWwgcGFyYW0gdG8gdHdlYWsuCj4gCj4gPiBkcm1f
Z2VtX2NtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbCgpIG9wZXJhdGVzIGF0IGEgZGlmZmVyZW50IGxl
dmVsIHRob3VnaCwKPiA+IGFuZCBkcm1fZ2VtX2NtYV9jcmVhdGUoKSBpcyBvbmx5IGV4cG9ydGVk
IGZvciBhIHNpbmdsZSBkcml2ZXIuIFRoZXJlJ3MKPiA+IG5vIGVxdWl2YWxlbnQgdG8gZHJtX2dl
bV9jbWFfY3JlYXRlKCkgdGhhdCBjYW4gc2tpcCB0aGUga2VybmVsIG1hcHBpbmcuCj4gCj4gQmVj
YXVzZSB3ZSBkb24ndCB5ZXQgbmVlZCBvbmUuIGRybV9nZW1fY21hX2NyZWF0ZV9mbGFncygpIGNh
biBiZSBtYWRlCj4gcHVibGljIHdoZW4gd2UgZG8uIEkgY291bGQgZG8gdGhhdCBub3cgSSBndWVz
cyBhbmQgbWFrZQo+IGRybV9nZW1fY21hX2NyZWF0ZSBhbiBpbmxpbmUgd3JhcHBlci4KCkkgZG9u
J3QgbWluZCBub3QgaGF2aW5nIGRybV9nZW1fY21hX2NyZWF0ZV9mbGFncygpIG1hZGUgcHVibGlj
IChidXQgeW91CmNhbiBkbyBzbyBhbHJlYWR5IGlmIHlvdSBwcmVmZXIpIGlmIHRoZXJlJ3Mgbm8g
dXNlci4gTXkgcG9pbnQgaXMgdGhhdCB3ZQpub3cgaGF2ZSBhIG1lY2hhbmlzbSB0byBza2lwIGNy
ZWF0aW9uIG9mIGtlcm5lbCBtYXBwaW5ncywgYW5kIHRoYXQKZHJtX2dlbV9jbWFfY3JlYXRlKCkg
d2lsbCBhbHdheXMgcmVzdWx0IGluIHRoZSBjcmVhdGlvbiBvZiBhIGtlcm5lbAptYXBwaW5nLiBJ
IHRob3VnaHQgaXQgd2FzIHdvcnRoIG1lbnRpb25pbmcgaXQsIGJ1dCBpZiB5b3UgdGhpbmsgdGhh
dCdzCm5vdCBuZWVkZWQsIGZlZWwgZnJlZSB0byBpZ25vcmUgdGhlIGNvbW1lbnQuCgotLSAKUmVn
YXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
