Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C9944987
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDo0K+LKMFgy4choZ/PIBaouzeapah+/RyQE/x+6msE=; b=MxvsfvGRNzAA4V
	oiHyi5l81iHaACOF/0+wa9lcB67Mk+6qZyQes5L6PCt/EMkduw5pI/QrUBIcdjaluJXaZ8mSAmRV8
	WMnN4PhsZ3r4Eb13q/8OOXf9r9IvXZeL63en4DspaQ+32liP40E421AX8Mau0r32J4GF2CbA99zCg
	UmuuZ8WWareraaV2Gz2vRga0nbqHdCsQfr1/OqRu8t2jDjDYZz9ONre4osDOpPwfRrbhDfVrtdrGV
	90fbLKuMv1vEtmibonmMto6WblvstTDJjIeiaujUFZ6+3UxkRm8iHoYGtP143rulA76pxMujCw4b0
	QG0d4ts9Q2QUUxgPV5rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTPL-0003XR-MR; Thu, 13 Jun 2019 17:21:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTP9-0003Wv-F5; Thu, 13 Jun 2019 17:20:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id E7AB52838FC
Subject: Re: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
To: Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org
References: <20190613162745.12195-1-enric.balletbo@collabora.com>
 <40d2260f-3925-acdc-eb02-8abb972f1056@arm.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <a685fef9-8f45-700c-17d6-59d792fca092@collabora.com>
Date: Thu, 13 Jun 2019 19:20:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <40d2260f-3925-acdc-eb02-8abb972f1056@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_102051_777292_4CEF5424 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Rob Herring <robh+dt@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiAxMy82LzE5IDE4OjU2LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMTMv
MDYvMjAxOSAxNzoyNywgRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSB3cm90ZToKPj4gQXMgcGVyIGJp
bmRpbmcgZG9jdW1lbnRhdGlvbiBbMV0sIHRoZSBEV0MzIGNvcmUgc2hvdWxkIGhhdmUgdGhlICJy
ZWYiLAo+PiAiYnVzX2Vhcmx5IiBhbmQgInN1c3BlbmQiIGNsb2Nrcy4gQXMgZXhwbGFpbmVkIGlu
IHRoZSBiaW5kaW5nLCB0aG9zZQo+PiBjbG9ja3MgYXJlIHJlcXVpcmVkIGZvciBuZXcgcGxhdGZv
cm1zIGJ1dCBub3QgZm9yIGV4aXN0aW5nIHBsYXRmb3Jtcwo+PiBiZWZvcmUgY29tbWl0IGZlOGFi
ZjMzMmI4ZiAoInVzYjogZHdjMzogc3VwcG9ydCBjbG9ja3MgYW5kIHJlc2V0cyBmb3IKPj4gRFdD
MyBjb3JlIikuCj4+Cj4+IEhvd2V2ZXIsIGFzIHRob3NlIGNsb2NrcyBhcmUgcmVhbGx5IHRyZWF0
ZWQgYXMgcmVxdWlyZWQsIHRoaXMgZW5kcyB3aXRoCj4+IGhhdmluZyBzb21lIGFubm95aW5nIG1l
c3NhZ2VzIHdoZW4gdGhlICJyb2NrY2hpcCxyazMzOTktZHdjMyIgaXMgdXNlZDoKPj4KPj4gW8Kg
wqDCoCAxLjcyNDEwN10gZHdjMyBmZTgwMDAwMC5kd2MzOiBGYWlsZWQgdG8gZ2V0IGNsayAncmVm
JzogLTIKPj4gW8KgwqDCoCAxLjczMTg5M10gZHdjMyBmZTkwMDAwMC5kd2MzOiBGYWlsZWQgdG8g
Z2V0IGNsayAncmVmJzogLTIKPj4gW8KgwqDCoCAyLjQ5NTkzN10gZHdjMyBmZTgwMDAwMC5kd2Mz
OiBGYWlsZWQgdG8gZ2V0IGNsayAncmVmJzogLTIKPj4gW8KgwqDCoCAyLjY0NzIzOV0gZHdjMyBm
ZTkwMDAwMC5kd2MzOiBGYWlsZWQgdG8gZ2V0IGNsayAncmVmJzogLTIKPj4KPj4gSW4gb3JkZXIg
dG8gcmVtb3ZlIHRob3NlIGFubm95aW5nIG1lc3NhZ2VzLCB1cGRhdGUgdGhlIERXQzMgaGFyZHdh
cmUKPj4gbW9kdWxlIG5vZGUgYW5kIGFkZCBhbGwgdGhlIHJlcXVpcmVkIGNsb2Nrcy4gV2l0aCB0
aGlzIGNoYW5nZSwgYm90aCwgdGhlCj4+IGdsdWUgbm9kZSBhbmQgdGhlIERXQzMgY29yZSBub2Rl
LCBoYXZlIHRoZSBjbG9ja3MgZGVmaW5lZCwgYnV0IHRoYXQncwo+PiBub3QgcmVhbGx5IGEgcHJv
YmxlbSBhbmQgdGhlcmUgaXNuJ3QgYSBzaWRlIGVmZmVjdCBvbiBkbyB0aGlzLiBTbywgd2UKPj4g
Y2FuIGdldCByaWQgb2YgdGhlIGFubm95aW5nIGdldCBjbGsgZXJyb3IgbWVzc2FnZXMuCj4gCj4g
Q2FuIHdlIG5vdCBqdXN0IG1vdmUgdGhlc2UgY2xvY2tzIGVudGlyZWx5IGZyb20gdGhlIGdsdWUg
bGF5ZXIgdG8gdGhlIGNvcmUKPiBsYXllcj8gVGhhdCBkaWRuJ3Qgc2VlbSB0byBicmVhayB3aGVu
IEkgdHJpZWQgaXQsIGFsdGhvdWdoIEknbGwgYWRtaXQgbXkKPiAndGVzdGluZycgd2FzIG5vIG1v
cmUgdGhhbiBib290aW5nIGFuZCBtb3VudGluZyBhIFVTQiAzLjAgZmxhc2ggZHJpdmUsIG5vCj4g
c3VzcGVuZCBvciBhbnl0aGluZyBmYW5jeS4KPiAKCkFGQUlDVCB1c2IgZG9lc24ndCBicmVhaywg
YnV0IHdlIHdvbid0IGJyZWFrIGJhY2t3YXJkIGNvbXBhYmlsaXR5IHRoZW4/ICgvbWUKc3RpbGwg
ZG9lc24ndCBrbm93IHdoZW4gYmFja3dhcmQgY29tcGFiaWxpdHkgaXMgcmVhbGx5IGltcG9ydGFu
dCBvciBub3QpCgo+IE15IG93biBhdHRlbXB0IHRvIHNodXQgdXAgdGhlc2UgZXJyb3JzIGdvdCBz
aWRldHJhY2tlZCBpbnRvIGMwYzYxNDcxZWY4NiAoInVzYjoKPiBkd2MzOiBvZi1zaW1wbGU6IENv
bnZlcnQgdG8gYnVsayBjbGsgQVBJIiksIHRoZW4gYXBwYXJlbnRseSBzdGFsbGVkIDopCj4gCgpU
aGVyZSB3YXMgYW55IG9mZiB0aGUgcmVjb3JkIGRpc2N1c3Npb24gYW5kIHN0YWxsZWQgb3Igc2lt
cGx5IHlvdSBkaWRuJ3QgZ2V0CmZlZWRiYWNrPwoKSSdsbCB0YWtlIGEgbG9vay4KClRoYW5rcywK
fiBFbnJpYwoKPiBSb2Jpbi4KPiAKPj4KPj4gWzFdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91c2IvZHdjMy50eHQKPj4KPj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8g
aSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+Cj4+IMKgIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgfCA2ICsrKysrKwo+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+IGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+PiBpbmRleCAxOTZhYzliNzgwNzYuLmExNTM0OGQxODVj
ZSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRz
aQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+IEBA
IC00MTQsNiArNDE0LDkgQEAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJzbnBzLGR3YzMiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgw
IDB4ZmU4MDAwMDAgMHgwIDB4MTAwMDAwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aW50ZXJydXB0cyA9IDxHSUNfU1BJIDEwNSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNydSBTQ0xLX1VTQjNPVEcwX1JFRj4sIDwm
Y3J1IEFDTEtfVVNCM09URzA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZjcnUgU0NMS19VU0IzT1RHMF9TVVNQRU5EPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y2xvY2stbmFtZXMgPSAicmVmIiwgImJ1c19lYXJseSIsICJzdXNwZW5kIjsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZHJfbW9kZSA9ICJvdGciOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwaHlzID0gPCZ1MnBoeTBfb3RnPiwgPCZ0Y3BoeTBfdXNiMz47Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHBoeS1uYW1lcyA9ICJ1c2IyLXBoeSIsICJ1c2IzLXBoeSI7Cj4+
IEBAIC00NDcsNiArNDUwLDkgQEAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0
aWJsZSA9ICJzbnBzLGR3YzMiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8
MHgwIDB4ZmU5MDAwMDAgMHgwIDB4MTAwMDAwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExMCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNydSBTQ0xLX1VTQjNPVEcxX1JFRj4s
IDwmY3J1IEFDTEtfVVNCM09URzE+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPCZjcnUgU0NMS19VU0IzT1RHMV9TVVNQRU5EPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2xvY2stbmFtZXMgPSAicmVmIiwgImJ1c19lYXJseSIsICJzdXNwZW5kIjsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJfbW9kZSA9ICJvdGciOwo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwaHlzID0gPCZ1MnBoeTFfb3RnPiwgPCZ0Y3BoeTFfdXNiMz47Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeS1uYW1lcyA9ICJ1c2IyLXBoeSIsICJ1c2IzLXBoeSI7
Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
