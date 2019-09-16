Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09664B3967
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 13:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkTR9IDiQnvUkPiB4WbnUro9dTPfXJJ1tpdj0ZF8m58=; b=L561XWRqF8opcp
	lgi1iG8m+VvDnDFo1EicALUw7uFq2c/naPTRXT3uM4SurG4Sw40pnYrzsV4CAEEpBJqFvELxoXS/k
	THRiVOwwMqwjJXiM1PWHSbx6H4gPdpOkRJMiQAoUeoexTjVdAc/UPrI4OMSanS3tpEfDsdVj/P3jE
	65i79G3y8JEPMJtVNPFUld/4ePLAgUSZrwhkry9kAgOpzSZ81Dws+gSWSHuyJoVrU19VzS42WMzXa
	SBIkmj2iZ1nS04C5F11HunBJsUQfU2LYd5lmfWhMj/pnkP5dFTzxxGU+t9rXajmBDtpPEPBCb9KKa
	2fO/i47yl8lu2hNQojmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pFv-0000gU-12; Mon, 16 Sep 2019 11:33:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pFf-0000ff-Ru
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 11:33:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id D44D228D45B
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Brian Masney <masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
 <20190916103614.GA1644@onstation.org>
 <20190916104907.GB4734@pendragon.ideasonboard.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <3ec4f0bc-f3c5-aebf-8213-bc4f80915902@collabora.com>
Date: Mon, 16 Sep 2019 13:32:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190916104907.GB4734@pendragon.ideasonboard.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_043304_180663_86A8AD19 
X-CRM114-Status: GOOD (  23.21  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 narmstrong@baylibre.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, jonas@kwiboo.se, agross@kernel.org,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 Andrzej Hajda <a.hajda@samsung.com>, robdclark@gmail.com, robh+dt@kernel.org,
 daniel@ffwll.ch, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxNi85LzE5IDEyOjQ5LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+IEhpIEJyaWFu
LAo+IAo+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0IDA2OjM2OjE0QU0gLTA0MDAsIEJyaWFuIE1h
c25leSB3cm90ZToKPj4gT24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMTI6MDI6MDlQTSArMDIwMCwg
QW5kcnplaiBIYWpkYSB3cm90ZToKPj4+IE9uIDE1LjA4LjIwMTkgMDI6NDgsIEJyaWFuIE1hc25l
eSB3cm90ZToKPj4+PiBXaGVuIGF0dGVtcHRpbmcgdG8gY29uZmlndXJlIHRoaXMgZHJpdmVyIG9u
IGEgTmV4dXMgNSBwaG9uZSAobXNtODk3NCksCj4+Pj4gc2V0dGluZyB1cCB0aGUgZHVtbXkgaTJj
IGJ1cyBmb3IgVFhfUDAgd291bGQgZmFpbCBkdWUgdG8gYW4gLUVCVVNZCj4+Pj4gZXJyb3IuIFRo
ZSBkb3duc3RyZWFtIE1TTSBrZXJuZWwgc291cmNlcyBbMV0gc2hvd3MgdGhhdCB0aGUgcHJvcGVy
IHZhbHVlCj4+Pj4gZm9yIFRYX1AwIGlzIDB4NzgsIG5vdCAweDcwLCBzbyBjb3JyZWN0IHRoZSB2
YWx1ZSB0byBhbGxvdyBkZXZpY2UKPj4+PiBwcm9iaW5nIHRvIHN1Y2NlZWQuCj4+Pj4KPj4+PiBb
MV0gaHR0cHM6Ly9naXRodWIuY29tL0FJQ1Ava2VybmVsX2xnZV9oYW1tZXJoZWFkL2Jsb2Ivbjcu
MS9kcml2ZXJzL3ZpZGVvL3NsaW1wb3J0L3NsaW1wb3J0X3R4X3JlZy5oCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBCcmlhbiBNYXNuZXkgPG1hc25leWJAb25zdGF0aW9uLm9yZz4KPj4+PiAtLS0K
Pj4+PiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmggfCAyICstCj4+
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Cj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5o
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmgKPj4+PiBpbmRleCAy
NWUwNjNiY2VjYmMuLmJjNTExZmM2MDVjOSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4eHguaAo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oCj4+Pj4gQEAgLTYsNyArNiw3IEBACj4+Pj4gICNpZm5k
ZWYgX19BTlg3OHh4X0gKPj4+PiAgI2RlZmluZSBfX0FOWDc4eHhfSAo+Pj4+ICAKPj4+PiAtI2Rl
ZmluZSBUWF9QMAkJCQkweDcwCj4+Pj4gKyNkZWZpbmUgVFhfUDAJCQkJMHg3OAo+Pj4KPj4+Cj4+
PiBUaGlzIGJvdGhlcnMgbWUgbGl0dGxlLiBUaGVyZSBhcmUgbm8gdXBzdHJlYW0gdXNlcnMsIGdy
ZXBwaW5nIGFuZHJvaWQKPj4+IHNvdXJjZXMgc3VnZ2VzdHMgdGhhdCBib3RoIHZhbHVlcyBjYW4g
YmUgdXNlZCBbMV1bMl3CoCAoZ3JlcCBmb3IgIiNkZWZpbmUKPj4+IFRYX1AwIiksIG1vcmVvdmVy
IHRoZXJlIGlzIGNvZGUgc3VnZ2VzdGluZyBib3RoIHZhbHVlcyBjYW4gYmUgdmFsaWQgWzNdLgo+
Pj4KPj4+IENvdWxkIHlvdSB2ZXJpZnkgZGF0YXNoZWV0IHdoaWNoIGkyYyBzbGF2ZSBhZGRyZXNz
ZXMgYXJlIHZhbGlkIGZvciB0aGlzCj4+PiBjaGlwLCBpZiBib3RoIEkgZ3Vlc3MgdGhpcyBwYXRj
aCBzaG91bGQgYmUgcmV3b3JrZWQuCj4+Pgo+Pj4KPj4+IFsxXToKPj4+IGh0dHBzOi8vYW5kcm9p
ZC5nb29nbGVzb3VyY2UuY29tL2tlcm5lbC9tc20vKy9hbmRyb2lkLW1zbS1mbG8tMy40LWpiLW1y
Mi9kcml2ZXJzL21pc2Mvc2xpbXBvcnRfYW54NzgwOC9zbGltcG9ydF90eF9yZWcuaAo+Pj4KPj4+
IFsyXToKPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9BbmRyb2lkR1gvU2ltcGxlR1gtTU0tNi4wX0g4
MTVfMjBkL2Jsb2IvbWFzdGVyL2RyaXZlcnMvdmlkZW8vc2xpbXBvcnQvYW54NzgxMi9zbGltcG9y
dDc4MTJfdHhfcmVnLmgKPj4+Cj4+PiBbM106Cj4+PiBodHRwczovL2dpdGh1Yi5jb20vY29tbWFh
aS9hbmRyb2lkX2tlcm5lbF9sZWVjb19tc204OTk2L2Jsb2IvbWFzdGVyL2RyaXZlcnMvdmlkZW8v
bXNtL21kc3MvZHAvc2xpbXBvcnRfY3VzdG9tX2RlY2xhcmUuaCNMNzMKPj4KPj4gVGhpcyBhZGRy
ZXNzIGlzIDB4Nzggb24gbXkgTmV4dXMgNS4gR2l2ZW4gWzNdIGFib3ZlIGl0IGxvb2tzIGxpa2Ug
d2UKPj4gbmVlZCB0byBzdXBwb3J0IGJvdGggYWRkcmVzc2VzLiBXaGF0IGRvIHlvdSB0aGluayBh
Ym91dCBtb3ZpbmcgdGhlc2UKPj4gYWRkcmVzc2VzIGludG8gZGV2aWNlIHRyZWU/Cj4gCj4gQXNz
dW1pbmcgdGhhdCB0aGUgZGV2aWNlIHN1cHBvcnRzIGRpZmZlcmVudCBhZGRyZXNzZXMgKEkgY2Fu
J3QgdmFsaWRhdGUKPiB0aGF0IGFzIEkgZG9uJ3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIGRhdGFzaGVl
dCksIGFuZCBkaWZmZXJlbnQgYWRkcmVzc2VzCj4gbmVlZCB0byBiZSB1c2VkIG9uIGRpZmZlcmVu
dCBzeXN0ZW1zLCB0aGVuIHRoZSBhZGRyZXNzIHRvIGJlIHVzZWQgbmVlZHMKPiB0byBiZSBwcm92
aWRlZCBieSB0aGUgZmlybXdhcmUgKERUIGluIHRoaXMgY2FzZSkuIFR3byBvcHRpb25zIGFyZQo+
IHBvc3NpYmxlLCBlaXRoZXIgc3BlY2lmeWluZyB0aGUgYWRkcmVzcyBleHBsaWNpdGx5IGluIHRo
ZSBkZXZpY2UncyBEVAo+IG5vZGUsIG9yIHNwZWNpZnlpbmcgZnJlZSBhZGRyZXNzZXMgKGluIHRo
ZSBmb3JtIG9mIGEgd2hpdGUgbGlzdCBvciBibGFjawo+IGxpc3QpIGFuZCBhbGxvY2F0aW5nIGFu
IGFkZHJlc3MgZnJvbSB0aGF0IHBvb2wuIFRoZSBsYXR0ZXIgaGFzIGJlZW4KPiBkaXNjdXNzZWQg
aW4gYSBCb0YgYXQgdGhlIExpbnV4IFBsdW1iZXJzIENvbmZlcmVuY2UgbGFzdCB3ZWVrLAo+IGh0
dHBzOi8vbGludXhwbHVtYmVyc2NvbmYub3JnL2V2ZW50LzQvY29udHJpYnV0aW9ucy81NDIvLgo+
IAo+PiBUaGUgZG93bnN0cmVhbSBhbmQgdXBzdHJlYW0ga2VybmVsIHNvdXJjZXMgZGl2aWRlIHRo
ZXNlIGFkZHJlc3NlcyBieSB0d28KPj4gdG8gZ2V0IHRoZSBpMmMgYWRkcmVzcy4gSGVyZSdzIHRo
ZSBjb2RlIGluIHVwc3RyZWFtOgo+Pgo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5j
I0wxMzUzCj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2Uv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC1hbng3OHh4LmMjTDQxCj4+Cj4+IEknbSBu
b3Qgc3VyZSB3aHkgdGhlIGFjdHVhbCBpMmMgYWRkcmVzcyBpc24ndCB1c2VkIGluIHRoaXMgY29k
ZS4KPiAKClRoZSBBTlg3ODAyLzEyLzE0LzE2IGhhcyBhIHNsYXZlIEkyQyBidXMgdGhhdCBwcm92
aWRlcyB0aGUgaW50ZXJmYWNlIHRvIGFjY2VzcwpvciBjb250cm9sIHRoZSBjaGlwIGZyb20gdGhl
IEFQLiBUaGUgSTJDIHNsYXZlIGFkZHJlc3NlcyB1c2VkIHRvIGNvbnRyb2wgdGhlCkFOWDc4MDIv
MTIvMTQvMTYgYXJlIDcwaCwgNzJoLCA3QWgsIDdFaCBhbmQgODBoLiBFdmVyeSBhZGRyZXNzIGFs
bG93cyB5b3UgdG8KYWNjZXNzIHRvIGRpZmZlcmVudCByZWdpc3RlcnMgb2YgdGhlIGNoaXAgYW5k
IEFGQUlDUyBpcyBub3QgY29uZmlndXJhYmxlLgoKSSBkb24ndCB0aGluayB0aGVzZSBhZGRyZXNz
ZXMgc2hvdWxkIGJlIGNvbmZpZ3VyZWQgdmlhIERUIGJ1dCBmb3IgdGhlIGRyaXZlciBpdHNlbGYu
CgpNeSB3aWxkIGd1ZXNzIGlzIHRoYXQgdGhlIEFOWDc4MDggaGFzIGRpZmZlcmVudCBhZGRyZXNz
ZXMsIGJ1dCBJIGRvbid0IGhhdmUgdGhlCmRhdGFzaGVldCBvZiB0aGlzIHZlcnNpb24uCgpCZXN0
IHJlZ2FyZHMsCiBFbnJpYwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
