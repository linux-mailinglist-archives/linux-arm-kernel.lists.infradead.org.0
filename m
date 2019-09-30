Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89690C25C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iO5k19KlJcqN+wqmQ+O2n1vdavtpx5K/V5baESzlLBs=; b=rVs6zrre6COpf+
	ahhC6awUoBXMaOpzRv/77tud6cF4Wy6aJjwTgmcqUzPGOfF9r4ph9knFvqQUP4ivHhcNPw6GbarPL
	M5GAUon1Tyt33cSpJSZKnUNzqxGt07ciyxNVjlqnXU8kaZ2ulMFzpDzbxbTogm1CqKlBJTMkRGbKg
	swUjJH/MsmBySJCgfG7bjnb4hKaywV41x0172/OVAvGiZOmF1+/op+SSFEDuuUjtGmPF/VWbdFJy6
	MSOiI1CBe5mNlIhMJSDHj/IMV7BXmmYdw1OhHV4+iqhICe28hScMgl6OmvbN1lYp2KsZtz1tnOGHQ
	6qGeZoP6/HGni4HXzqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEzSQ-00071W-Fu; Mon, 30 Sep 2019 17:27:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzSI-00070i-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:27:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC9E71000;
 Mon, 30 Sep 2019 10:27:22 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 781A03F534;
 Mon, 30 Sep 2019 10:27:22 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 377CD682570; Mon, 30 Sep 2019 18:27:21 +0100 (BST)
Date: Mon, 30 Sep 2019 18:27:21 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: juno: add GPU subsystem
Message-ID: <20190930172721.3yatbfxcyb4gteed@e110455-lin.cambridge.arm.com>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_102726_248710_938113BF 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: robh@kernel.org, lorenzo.pieralisi@arm.com, tomeu.vizoso@collabora.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 steven.price@arm.com, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDQ6MjQ6NThQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IFNpbmNlIHdlIG5vdyBoYXZlIGJpbmRpbmdzIGZvciBNYWxpIE1pZGdhcmQgR1BVcywg
bGV0J3MgdXNlIHRoZW0gdG8KPiBkZXNjcmliZSBKdW5vJ3MgR1BVIHN1YnN5c3RlbSwgaWYgb25s
eSBiZWNhdXNlIHdlIGNhbi4gSnVubyBzcG9ydHMgYQo+IE1hbGktVDYyNCBpbnRlZ3JhdGVkIGJl
aGluZCBhbiBNTVUtNDAwIChhcyBhIGdlc3R1cmUgdG93YXJkcwo+IHZpcnR1YWxpc2F0aW9uKSwg
aW4gdGhlaXIgb3duIGRlZGljYXRlZCBwb3dlciBkb21haW4gd2l0aCBEVkZTCj4gY29udHJvbGxl
ZCBieSB0aGUgU0NQLgo+IAo+IENDOiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4K
CkFja2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KClRoYW5rcywKTGl2
aXUKCj4gQ0M6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gQ0M6IExvcmVu
em8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IFNpZ25lZC1vZmYtYnk6
IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cj4gLS0tCj4gIC4uLi9iaW5kaW5n
cy9ncHUvYXJtLG1hbGktbWlkZ2FyZC55YW1sICAgICAgICB8ICA1ICsrKy0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9hcm0vanVuby1iYXNlLmR0c2kgICAgICAgIHwgMjcgKysrKysrKysrKysrKysr
KysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9h
cm0sbWFsaS1taWRnYXJkLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Z3B1L2FybSxtYWxpLW1pZGdhcmQueWFtbAo+IGluZGV4IDQ3YmMxYWMzNjQyNi4uMDE4ZjNhZTRi
NDNjIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUv
YXJtLG1hbGktbWlkZ2FyZC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnlhbWwKPiBAQCAtMjIsNiArMjIsMTAgQEAgcHJv
cGVydGllczoKPiAgICAgICAgICAgIC0gZW51bToKPiAgICAgICAgICAgICAgIC0gYW1sb2dpYyxt
ZXNvbi1neG0tbWFsaQo+ICAgICAgICAgICAgLSBjb25zdDogYXJtLG1hbGktdDgyMAo+ICsgICAg
ICAtIGl0ZW1zOgo+ICsgICAgICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgLSBhcm0sanVu
by1tYWxpCj4gKyAgICAgICAgICAtIGNvbnN0OiBhcm0sbWFsaS10NjI0Cj4gICAgICAgIC0gaXRl
bXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzI4
OC1tYWxpCj4gQEAgLTM5LDcgKzQzLDYgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgICAgIC0g
c2Ftc3VuZyxleHlub3M1NDMzLW1hbGkKPiAgICAgICAgICAgIC0gY29uc3Q6IGFybSxtYWxpLXQ3
NjAKPiAgCj4gLSAgICAgICAgICAjICJhcm0sbWFsaS10NjI0Igo+ICAgICAgICAgICAgIyAiYXJt
LG1hbGktdDYyOCIKPiAgICAgICAgICAgICMgImFybSxtYWxpLXQ4MzAiCj4gICAgICAgICAgICAj
ICJhcm0sbWFsaS10ODgwIgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9q
dW5vLWJhc2UuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2p1bm8tYmFzZS5kdHNpCj4g
aW5kZXggMjZhMDM5YTAyOGI4Li45ZTNlOGNlNmFkZmUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9hcm0vanVuby1iYXNlLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FybS9qdW5vLWJhc2UuZHRzaQo+IEBAIC0zNSw2ICszNSwxOCBAQAo+ICAJCWNsb2NrLW5hbWVz
ID0gImFwYl9wY2xrIjsKPiAgCX07Cj4gIAo+ICsJc21tdV9ncHU6IGlvbW11QDJiNDAwMDAwIHsK
PiArCQljb21wYXRpYmxlID0gImFybSxtbXUtNDAwIiwgImFybSxzbW11LXYxIjsKPiArCQlyZWcg
PSA8MHgwIDB4MmI0MDAwMDAgMHgwIDB4MTAwMDA+Owo+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQ
SSAzOCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJICAgICA8R0lDX1NQSSAzOCBJUlFfVFlQ
RV9MRVZFTF9ISUdIPjsKPiArCQkjaW9tbXUtY2VsbHMgPSA8MT47Cj4gKwkJI2dsb2JhbC1pbnRl
cnJ1cHRzID0gPDE+Owo+ICsJCXBvd2VyLWRvbWFpbnMgPSA8JnNjcGlfZGV2cGQgMT47Cj4gKwkJ
ZG1hLWNvaGVyZW50Owo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwl9Owo+ICsKPiAgCXNt
bXVfcGNpZTogaW9tbXVAMmI1MDAwMDAgewo+ICAJCWNvbXBhdGlibGUgPSAiYXJtLG1tdS00MDEi
LCAiYXJtLHNtbXUtdjEiOwo+ICAJCXJlZyA9IDwweDAgMHgyYjUwMDAwMCAweDAgMHgxMDAwMD47
Cj4gQEAgLTQ4Nyw2ICs0OTksMjEgQEAKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwlncHU6IGdwdUAy
ZDAwMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJhcm0sanVuby1tYWxpIiwgImFybSxtYWxpLXQ2
MjQiOwo+ICsJCXJlZyA9IDwwIDB4MmQwMDAwMDAgMCAweDEwMDAwPjsKPiArCQlpbnRlcnJ1cHRz
ID0gPEdJQ19TUEkgMzIgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCSAgICAgPEdJQ19TUEkg
MzMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCSAgICAgPEdJQ19TUEkgMzQgSVJRX1RZUEVf
TEVWRUxfSElHSD47Cj4gKwkJaW50ZXJydXB0LW5hbWVzID0gImdwdSIsICJqb2IiLCAibW11IjsK
PiArCQljbG9ja3MgPSA8JnNjcGlfZHZmcyAyPjsKPiArCQlwb3dlci1kb21haW5zID0gPCZzY3Bp
X2RldnBkIDE+Owo+ICsJCWRtYS1jb2hlcmVudDsKPiArCQkvKiBUaGUgU01NVSBpcyBvbmx5IHJl
YWxseSBvZiBpbnRlcmVzdCB0byBiYXJlLW1ldGFsIGh5cGVydmlzb3JzICovCj4gKwkJLyogaW9t
bXVzID0gPCZzbW11X2dwdSAwPjsgKi8KPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJfTsK
PiArCj4gIAlzcmFtOiBzcmFtQDJlMDAwMDAwIHsKPiAgCQljb21wYXRpYmxlID0gImFybSxqdW5v
LXNyYW0tbnMiLCAibW1pby1zcmFtIjsKPiAgCQlyZWcgPSA8MHgwIDB4MmUwMDAwMDAgMHgwIDB4
ODAwMD47Cj4gLS0gCj4gMi4yMS4wLmRpcnR5Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJ
IHdvdWxkIGxpa2UgdG8gfAp8IGZpeCB0aGUgd29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwK
fCBnaXZpbmcgbWUgdGhlICAgfAogXCBzb3VyY2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0K
ICAgIMKvXF8o44OEKV8vwq8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
