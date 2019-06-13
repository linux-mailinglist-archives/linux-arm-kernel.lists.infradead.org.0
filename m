Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C24449DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WnqXIEhCEhk7h0JSDkeKYKBs30g6fAvhuX2CqOgrDd0=; b=pJCBMEjFK9cAGRHaDUJXNKI5n
	T2NJefQ9XqGYC2THfSmTqEBKFqebTdx+ah7aP2MV8hyw6ZdnT3JghEPn6z9pTlqBhyo63TXTSO3jN
	ogq/6evWXFbYGwa/rFc8qE9JN1BxD4/ozK0sX4YddSJZ/DhemZE8Rjyy3uUYlWe/okpgoOH3e7Zg+
	f9gzdhOj4s2PSc0IEwuBlSvXixKhYbi88PDkE0eKxSDqc0J6YWw7Ava8LQpwk9xP+3h721XYqwlHC
	N4Gw+j1bhpqmFRnSTs8/6K5+nleDeKkxfAb+Iss8f8YfjPs1yOzcq/ykmXX1RwKPeppXRXU9/4GV8
	/I6sKIKAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTmy-0003Bw-13; Thu, 13 Jun 2019 17:45:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTmJ-0002JK-Kj; Thu, 13 Jun 2019 17:44:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98C4B367;
 Thu, 13 Jun 2019 10:44:46 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E8633F694;
 Thu, 13 Jun 2019 10:44:44 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 devicetree@vger.kernel.org
References: <20190613162745.12195-1-enric.balletbo@collabora.com>
 <40d2260f-3925-acdc-eb02-8abb972f1056@arm.com>
 <a685fef9-8f45-700c-17d6-59d792fca092@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a3050da7-9b99-c6fd-ee06-f65503f1ae87@arm.com>
Date: Thu, 13 Jun 2019 18:44:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a685fef9-8f45-700c-17d6-59d792fca092@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_104447_797663_714657A7 
X-CRM114-Status: GOOD (  23.09  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-rockchip@lists.infradead.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDYvMjAxOSAxODoyMCwgRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSB3cm90ZToKPiBIaSBS
b2JpbiwKPiAKPiBPbiAxMy82LzE5IDE4OjU2LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDEz
LzA2LzIwMTkgMTc6MjcsIEVucmljIEJhbGxldGJvIGkgU2VycmEgd3JvdGU6Cj4+PiBBcyBwZXIg
YmluZGluZyBkb2N1bWVudGF0aW9uIFsxXSwgdGhlIERXQzMgY29yZSBzaG91bGQgaGF2ZSB0aGUg
InJlZiIsCj4+PiAiYnVzX2Vhcmx5IiBhbmQgInN1c3BlbmQiIGNsb2Nrcy4gQXMgZXhwbGFpbmVk
IGluIHRoZSBiaW5kaW5nLCB0aG9zZQo+Pj4gY2xvY2tzIGFyZSByZXF1aXJlZCBmb3IgbmV3IHBs
YXRmb3JtcyBidXQgbm90IGZvciBleGlzdGluZyBwbGF0Zm9ybXMKPj4+IGJlZm9yZSBjb21taXQg
ZmU4YWJmMzMyYjhmICgidXNiOiBkd2MzOiBzdXBwb3J0IGNsb2NrcyBhbmQgcmVzZXRzIGZvcgo+
Pj4gRFdDMyBjb3JlIikuCj4+Pgo+Pj4gSG93ZXZlciwgYXMgdGhvc2UgY2xvY2tzIGFyZSByZWFs
bHkgdHJlYXRlZCBhcyByZXF1aXJlZCwgdGhpcyBlbmRzIHdpdGgKPj4+IGhhdmluZyBzb21lIGFu
bm95aW5nIG1lc3NhZ2VzIHdoZW4gdGhlICJyb2NrY2hpcCxyazMzOTktZHdjMyIgaXMgdXNlZDoK
Pj4+Cj4+PiBbwqDCoMKgIDEuNzI0MTA3XSBkd2MzIGZlODAwMDAwLmR3YzM6IEZhaWxlZCB0byBn
ZXQgY2xrICdyZWYnOiAtMgo+Pj4gW8KgwqDCoCAxLjczMTg5M10gZHdjMyBmZTkwMDAwMC5kd2Mz
OiBGYWlsZWQgdG8gZ2V0IGNsayAncmVmJzogLTIKPj4+IFvCoMKgwqAgMi40OTU5MzddIGR3YzMg
ZmU4MDAwMDAuZHdjMzogRmFpbGVkIHRvIGdldCBjbGsgJ3JlZic6IC0yCj4+PiBbwqDCoMKgIDIu
NjQ3MjM5XSBkd2MzIGZlOTAwMDAwLmR3YzM6IEZhaWxlZCB0byBnZXQgY2xrICdyZWYnOiAtMgo+
Pj4KPj4+IEluIG9yZGVyIHRvIHJlbW92ZSB0aG9zZSBhbm5veWluZyBtZXNzYWdlcywgdXBkYXRl
IHRoZSBEV0MzIGhhcmR3YXJlCj4+PiBtb2R1bGUgbm9kZSBhbmQgYWRkIGFsbCB0aGUgcmVxdWly
ZWQgY2xvY2tzLiBXaXRoIHRoaXMgY2hhbmdlLCBib3RoLCB0aGUKPj4+IGdsdWUgbm9kZSBhbmQg
dGhlIERXQzMgY29yZSBub2RlLCBoYXZlIHRoZSBjbG9ja3MgZGVmaW5lZCwgYnV0IHRoYXQncwo+
Pj4gbm90IHJlYWxseSBhIHByb2JsZW0gYW5kIHRoZXJlIGlzbid0IGEgc2lkZSBlZmZlY3Qgb24g
ZG8gdGhpcy4gU28sIHdlCj4+PiBjYW4gZ2V0IHJpZCBvZiB0aGUgYW5ub3lpbmcgZ2V0IGNsayBl
cnJvciBtZXNzYWdlcy4KPj4KPj4gQ2FuIHdlIG5vdCBqdXN0IG1vdmUgdGhlc2UgY2xvY2tzIGVu
dGlyZWx5IGZyb20gdGhlIGdsdWUgbGF5ZXIgdG8gdGhlIGNvcmUKPj4gbGF5ZXI/IFRoYXQgZGlk
bid0IHNlZW0gdG8gYnJlYWsgd2hlbiBJIHRyaWVkIGl0LCBhbHRob3VnaCBJJ2xsIGFkbWl0IG15
Cj4+ICd0ZXN0aW5nJyB3YXMgbm8gbW9yZSB0aGFuIGJvb3RpbmcgYW5kIG1vdW50aW5nIGEgVVNC
IDMuMCBmbGFzaCBkcml2ZSwgbm8KPj4gc3VzcGVuZCBvciBhbnl0aGluZyBmYW5jeS4KPj4KPiAK
PiBBRkFJQ1QgdXNiIGRvZXNuJ3QgYnJlYWssIGJ1dCB3ZSB3b24ndCBicmVhayBiYWNrd2FyZCBj
b21wYWJpbGl0eSB0aGVuPyAoL21lCj4gc3RpbGwgZG9lc24ndCBrbm93IHdoZW4gYmFja3dhcmQg
Y29tcGFiaWxpdHkgaXMgcmVhbGx5IGltcG9ydGFudCBvciBub3QpCgpBaCwgZmFpciBwb2ludCAt
IEkgd2FzIGltYWdpbmluZyB0aGUgZ2x1ZSBsYXllcidzIGhlYXZ5LWhhbmRlZCAidHVybiAKZXZl
cnl0aGluZyBvbiIgYXBwcm9hY2ggcG90ZW50aWFsbHkgaW50ZXJmZXJpbmcgd2l0aCB0aGUgY29y
ZSBsYXllcidzIAphYmlsaXR5IHRvIGV4ZXJ0IGZpbmVyLWdyYWluZWQgY29udHJvbCBvZiB0aGUg
Y2xvY2tzIGl0IGtub3dzIG1vcmUgCmFib3V0LCBidXQgdGhlICJvbGQga2VybmVsLCBuZXcgRFQi
IHNpdHVhdGlvbiBtaWdodCBpbmRlZWQgYmUgYSBwcm9ibGVtLiAKSSBndWVzcyB0aGF0J3MgSGVp
a28ncyBjYWxsIGluIHRoZSBlbmQuIFBsdXMgSSdtIG5vIENDRiBleHBlcnQgc28gbXkgCmNvbmNl
cm4gbWlnaHQgYmUgdW5mb3VuZGVkIGFueXdheS4KCj4+IE15IG93biBhdHRlbXB0IHRvIHNodXQg
dXAgdGhlc2UgZXJyb3JzIGdvdCBzaWRldHJhY2tlZCBpbnRvIGMwYzYxNDcxZWY4NiAoInVzYjoK
Pj4gZHdjMzogb2Ytc2ltcGxlOiBDb252ZXJ0IHRvIGJ1bGsgY2xrIEFQSSIpLCB0aGVuIGFwcGFy
ZW50bHkgc3RhbGxlZCA6KQo+Pgo+IAo+IFRoZXJlIHdhcyBhbnkgb2ZmIHRoZSByZWNvcmQgZGlz
Y3Vzc2lvbiBhbmQgc3RhbGxlZCBvciBzaW1wbHkgeW91IGRpZG4ndCBnZXQKPiBmZWVkYmFjaz8K
Ck1vcmUgdGhhdCB0aGUgMzM5OSBib2FyZCBnb3QgcHV0IGF3YXkgaW4gYSBmcmVhayAidGlkeWlu
ZyB0aGUga2l0Y2hlbiIgCmluY2lkZW50LCBhbmQgSSd2ZSBqdXN0IGhhZCB0b28gbWFueSBvdGhl
ciB0aGluZ3Mgb24gdGhlIGdvIHNpbmNlIDopCgpSb2Jpbi4KCj4gCj4gSSdsbCB0YWtlIGEgbG9v
ay4KPiAKPiBUaGFua3MsCj4gfiBFbnJpYwo+IAo+PiBSb2Jpbi4KPj4KPj4+Cj4+PiBbMV0gRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kd2MzLnR4dAo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9y
YS5jb20+Cj4+PiAtLS0KPj4+Cj4+PiAgwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTkuZHRzaSB8IDYgKysrKysrCj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS5kdHNpCj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kK
Pj4+IGluZGV4IDE5NmFjOWI3ODA3Ni4uYTE1MzQ4ZDE4NWNlIDEwMDY0NAo+Pj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+Pj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+Pj4gQEAgLTQxNCw2ICs0MTQsOSBAQAo+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAic25wcyxkd2MzIjsK
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwIDB4ZmU4MDAwMDAgMHgw
IDB4MTAwMDAwPjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMTA1IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbG9ja3MgPSA8JmNydSBTQ0xLX1VTQjNPVEcwX1JFRj4sIDwmY3J1IEFDTEtfVVNC
M09URzA+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY3J1IFNDTEtf
VVNCM09URzBfU1VTUEVORD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1l
cyA9ICJyZWYiLCAiYnVzX2Vhcmx5IiwgInN1c3BlbmQiOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGRyX21vZGUgPSAib3RnIjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBwaHlzID0gPCZ1MnBoeTBfb3RnPiwgPCZ0Y3BoeTBfdXNiMz47Cj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcGh5LW5hbWVzID0gInVzYjItcGh5IiwgInVzYjMtcGh5IjsKPj4+IEBA
IC00NDcsNiArNDUwLDkgQEAKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRp
YmxlID0gInNucHMsZHdjMyI7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0g
PDB4MCAweGZlOTAwMDAwIDB4MCAweDEwMDAwMD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExMCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUgU0NMS19VU0IzT1RHMV9S
RUY+LCA8JmNydSBBQ0xLX1VTQjNPVEcxPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8JmNydSBTQ0xLX1VTQjNPVEcxX1NVU1BFTkQ+Owo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY2xvY2stbmFtZXMgPSAicmVmIiwgImJ1c19lYXJseSIsICJzdXNwZW5kIjsKPj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcl9tb2RlID0gIm90ZyI7Cj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcGh5cyA9IDwmdTJwaHkxX290Zz4sIDwmdGNwaHkxX3VzYjM+
Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeS1uYW1lcyA9ICJ1c2IyLXBoeSIs
ICJ1c2IzLXBoeSI7Cj4+Pgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
