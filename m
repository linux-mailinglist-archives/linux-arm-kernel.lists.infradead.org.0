Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73940B0F1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 14:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSg6awv9S/wSlLs3GVSy1VnZoEFCoECg2lE3QrRcRZI=; b=bvzpzHHfnHmn7T
	acjdRxX7fIIHpGbTYl6j5lK3B7jBxYAv1R/7TN4BEB1yvfXRIMzyzdLKCkITHXe8NvIJzBLHT18bN
	lCPT8rm//VvBumlpfKc1mreJfHaezwJqCqpgP0qutTg+ZIl3fx94rxCSA7Yg55e+FpffvJAs97YC8
	K5iXOgqhoh3+gQq/BbYL5vBdnD+t+0CVyadgqPuthtmNgmHmFCEnoOz3bjdJDuuoV51zMW1FIb24D
	T5OKxuqdeowIqMJLMvi/y4r5bhdVh9BNahHMN2E97aTB9Sud3NqSCRCZVTLqUr4rczpec4ow92xfu
	JAkl9I3097JjaG+bB4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8OYK-000716-AZ; Thu, 12 Sep 2019 12:50:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8OXp-0006z6-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 12:49:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED01A28;
 Thu, 12 Sep 2019 05:49:48 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B34A3F71F;
 Thu, 12 Sep 2019 05:49:48 -0700 (PDT)
Date: Thu, 12 Sep 2019 13:49:46 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v3 09/11] PCI: layerscape: Add EP mode support for
 ls1088a and ls2088a
Message-ID: <20190912124943.GD9720@e119886-lin.cambridge.arm.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
 <20190902031716.43195-10-xiaowei.bao@nxp.com>
 <20190902124603.GJ9720@e119886-lin.cambridge.arm.com>
 <AM5PR04MB329970AE2C1812E88B9DE5A2F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB329970AE2C1812E88B9DE5A2F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_054953_726455_9ED8ED0A 
X-CRM114-Status: GOOD (  26.96  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMDE6NDc6MzZBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5kcmV3
IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+ID4gU2VudDogMjAxOeW5tDnmnIgy5pel
IDIwOjQ2Cj4gPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiBDYzog
cm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVs
Lm9yZzsgTGVvCj4gPiBMaSA8bGVveWFuZy5saUBueHAuY29tPjsga2lzaG9uQHRpLmNvbTsgbG9y
ZW56by5waWVyYWxpc2lAYXJtLmNvbTsgTS5oLgo+ID4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAu
Y29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95Cj4gPiBaYW5nIDxyb3ku
emFuZ0BueHAuY29tPjsgamluZ29vaGFuMUBnbWFpbC5jb207Cj4gPiBndXN0YXZvLnBpbWVudGVs
QHN5bm9wc3lzLmNvbTsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPiA+IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJz
Lm9yZzsKPiA+IGFybmRAYXJuZGIuZGU7IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnOyBaLnEu
IEhvdQo+ID4gPHpoaXFpYW5nLmhvdUBueHAuY29tPgo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2
MyAwOS8xMV0gUENJOiBsYXllcnNjYXBlOiBBZGQgRVAgbW9kZSBzdXBwb3J0IGZvcgo+ID4gbHMx
MDg4YSBhbmQgbHMyMDg4YQo+ID4gCj4gPiBPbiBNb24sIFNlcCAwMiwgMjAxOSBhdCAxMToxNzox
NEFNICswODAwLCBYaWFvd2VpIEJhbyB3cm90ZToKPiA+ID4gQWRkIFBDSWUgRVAgbW9kZSBzdXBw
b3J0IGZvciBsczEwODhhIGFuZCBsczIwODhhLCB0aGVyZSBhcmUgc29tZQo+ID4gPiBkaWZmZXJl
bmNlIGJldHdlZW4gTFMxIGFuZCBMUzIgcGxhdGZvcm0sIHNvIHJlZmFjdG9yIHRoZSBjb2RlIG9m
IHRoZQo+ID4gPiBFUCBkcml2ZXIuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW93ZWkg
QmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gPiAtLS0KPiA+ID4gdjI6Cj4gPiA+ICAtIFRo
aXMgaXMgYSBuZXcgcGF0Y2ggZm9yIHN1cHBvcnRpbmcgdGhlIGxzMTA4OGEgYW5kIGxzMjA4OGEg
cGxhdGZvcm0uCj4gPiA+IHYzOgo+ID4gPiAgLSBBZGp1c3QgdGhlIHNvbWUgc3RydWN0IGFzc2ln
bm1lbnQgb3JkZXIgaW4gcHJvYmUgZnVuY3Rpb24uCj4gPiA+Cj4gPiA+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jIHwgNzIKPiA+ID4gKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAx
OSBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMKPiA+ID4gYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+IGluZGV4IDVmMGNiOTkuLjcyM2JiZTUg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNj
YXBlLWVwLmMKPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVy
c2NhcGUtZXAuYwo+ID4gPiBAQCAtMjAsMjcgKzIwLDI5IEBACj4gPiA+Cj4gPiA+ICAjZGVmaW5l
IFBDSUVfREJJMl9PRkZTRVQJCTB4MTAwMAkvKiBEQkkyIGJhc2UgYWRkcmVzcyovCj4gPiA+Cj4g
PiA+IC1zdHJ1Y3QgbHNfcGNpZV9lcCB7Cj4gPiA+IC0Jc3RydWN0IGR3X3BjaWUJCSpwY2k7Cj4g
PiA+IC0Jc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMJKmxzX2VwYzsKPiA+ID4gKyNkZWZpbmUgdG9f
bHNfcGNpZV9lcCh4KQlkZXZfZ2V0X2RydmRhdGEoKHgpLT5kZXYpCj4gPiA+ICsKPiA+ID4gK3N0
cnVjdCBsc19wY2llX2VwX2RydmRhdGEgewo+ID4gPiArCXUzMgkJCQlmdW5jX29mZnNldDsKPiA+
ID4gKwljb25zdCBzdHJ1Y3QgZHdfcGNpZV9lcF9vcHMJKm9wczsKPiA+ID4gKwljb25zdCBzdHJ1
Y3QgZHdfcGNpZV9vcHMJKmR3X3BjaWVfb3BzOwo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gLSNkZWZp
bmUgdG9fbHNfcGNpZV9lcCh4KQlkZXZfZ2V0X2RydmRhdGEoKHgpLT5kZXYpCj4gPiA+ICtzdHJ1
Y3QgbHNfcGNpZV9lcCB7Cj4gPiA+ICsJc3RydWN0IGR3X3BjaWUJCQkqcGNpOwo+ID4gPiArCXN0
cnVjdCBwY2lfZXBjX2ZlYXR1cmVzCQkqbHNfZXBjOwo+ID4gPiArCWNvbnN0IHN0cnVjdCBsc19w
Y2llX2VwX2RydmRhdGEgKmRydmRhdGE7IH07Cj4gPiA+Cj4gPiA+ICBzdGF0aWMgaW50IGxzX3Bj
aWVfZXN0YWJsaXNoX2xpbmsoc3RydWN0IGR3X3BjaWUgKnBjaSkgIHsKPiA+ID4gIAlyZXR1cm4g
MDsKPiA+ID4gIH0KPiA+ID4KPiA+ID4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMg
bHNfcGNpZV9lcF9vcHMgPSB7Cj4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfb3Bz
IGR3X2xzX3BjaWVfZXBfb3BzID0gewo+ID4gPiAgCS5zdGFydF9saW5rID0gbHNfcGNpZV9lc3Rh
Ymxpc2hfbGluaywgIH07Cj4gPiA+Cj4gPiA+IC1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBsc19wY2llX2VwX29mX21hdGNoW10gPSB7Cj4gPiA+IC0JeyAuY29tcGF0aWJsZSA9ICJm
c2wsbHMtcGNpZS1lcCIsfSwKPiA+ID4gLQl7IH0sCj4gPiA+IC19Owo+ID4gPiAtCj4gPiA+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMqICBsc19wY2llX2VwX2dldF9mZWF0
dXJlcyhzdHJ1Y3QKPiA+ID4gZHdfcGNpZV9lcCAqZXApICB7IEBAIC04NywxMCArODksMzkgQEAg
c3RhdGljIGludAo+ID4gPiBsc19wY2llX2VwX3JhaXNlX2lycShzdHJ1Y3QgZHdfcGNpZV9lcCAq
ZXAsIHU4IGZ1bmNfbm8sCj4gPiA+ICAJfQo+ID4gPiAgfQo+ID4gPgo+ID4gPiAtc3RhdGljIGNv
bnN0IHN0cnVjdCBkd19wY2llX2VwX29wcyBwY2llX2VwX29wcyA9IHsKPiA+ID4gK3N0YXRpYyB1
bnNpZ25lZCBpbnQgbHNfcGNpZV9lcF9mdW5jX2NvbmZfc2VsZWN0KHN0cnVjdCBkd19wY2llX2Vw
ICplcCwKPiA+ID4gKwkJCQkJCXU4IGZ1bmNfbm8pCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IGR3
X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9lcChlcCk7Cj4gPiA+ICsJc3RydWN0IGxzX3Bj
aWVfZXAgKnBjaWUgPSB0b19sc19wY2llX2VwKHBjaSk7Cj4gPiA+ICsKPiA+ID4gKwlXQVJOX09O
KGZ1bmNfbm8gJiYgIXBjaWUtPmRydmRhdGEtPmZ1bmNfb2Zmc2V0KTsKPiA+ID4gKwlyZXR1cm4g
cGNpZS0+ZHJ2ZGF0YS0+ZnVuY19vZmZzZXQgKiBmdW5jX25vOyB9Cj4gPiA+ICsKPiA+ID4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9lcF9vcHMgbHNfcGNpZV9lcF9vcHMgPSB7Cj4gPiA+
ICAJLmVwX2luaXQgPSBsc19wY2llX2VwX2luaXQsCj4gPiA+ICAJLnJhaXNlX2lycSA9IGxzX3Bj
aWVfZXBfcmFpc2VfaXJxLAo+ID4gPiAgCS5nZXRfZmVhdHVyZXMgPSBsc19wY2llX2VwX2dldF9m
ZWF0dXJlcywKPiA+ID4gKwkuZnVuY19jb25mX3NlbGVjdCA9IGxzX3BjaWVfZXBfZnVuY19jb25m
X3NlbGVjdCwgfTsKPiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBsc19wY2llX2Vw
X2RydmRhdGEgbHMxX2VwX2RydmRhdGEgPSB7Cj4gPiA+ICsJLm9wcyA9ICZsc19wY2llX2VwX29w
cywKPiA+ID4gKwkuZHdfcGNpZV9vcHMgPSAmZHdfbHNfcGNpZV9lcF9vcHMsCj4gPiA+ICt9Owo+
ID4gPiArCj4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSBsczJf
ZXBfZHJ2ZGF0YSA9IHsKPiA+ID4gKwkuZnVuY19vZmZzZXQgPSAweDIwMDAwLAo+ID4gPiArCS5v
cHMgPSAmbHNfcGNpZV9lcF9vcHMsCj4gPiA+ICsJLmR3X3BjaWVfb3BzID0gJmR3X2xzX3BjaWVf
ZXBfb3BzLAo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgbHNfcGNpZV9lcF9vZl9tYXRjaFtdID0gewo+ID4gPiArCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGxzMTA0NmEtcGNpZS1lcCIsIC5kYXRhID0gJmxzMV9lcF9kcnZkYXRhIH0sCj4gPiA+
ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDg4YS1wY2llLWVwIiwgLmRhdGEgPSAmbHMyX2Vw
X2RydmRhdGEgfSwKPiA+ID4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxsczIwODhhLXBjaWUtZXAi
LCAuZGF0YSA9ICZsczJfZXBfZHJ2ZGF0YSB9LAo+ID4gPiArCXsgfSwKPiA+IAo+ID4gVGhpcyBy
ZW1vdmVzIHN1cHBvcnQgZm9yICJmc2wsbHMtcGNpZS1lcCIgLSB3YXMgdGhhdCBpbnRlbnRpb25h
bD8gSWYgeW91IGRvIHBsYW4KPiA+IHRvIGRyb3AgaXQgcGxlYXNlIG1ha2Ugc3VyZSB5b3UgZXhw
bGFpbiB3aHkgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBTZWUgYWxzbwo+ID4gbXkgY29tbWVudHMg
aW4geW91ciBkdC1iaW5kaW5nIHBhdGNoLgo+IAo+IEluIGZhY3QsIHRoZSB1LWJvb3Qgd2lsbCBm
aXh1cCB0aGUgc3RhdHVzIHByb3BlcnR5IHRvICdzdGF0dXMgPSBlbmFibGVkJyBpbiBQQ0kgbm9k
ZSBvZiAKPiB0aGUgRFRTIGJhc2Ugb24gImZzbCxscy1wY2llLWVwIiBjb21wYXRpYmxlLCBzbyAi
ZnNsLGxzLXBjaWUtZXAiIGlzIHVzZWQsIEkgdXNlZCB0aGlzCj4gY29tcGF0aWJsZSBiZWZvcmUs
IGJlY2F1c2UgdGhlIGRyaXZlciBvbmx5IHN1cHBvcnQgdGhlIExTMTA0NmEsIGJ1dCB0aGlzIHRp
bWUsIEkgYWRkCj4gdGhlIExTMTA4OGEgYW5kIExTMjA4OGEgc3VwcG9ydCwgYW5kIHRoZXNlIHR3
byBib2FyZHMgaGF2ZSBzb21lIGRpZmZlcmVuY2UgZm9ybQo+IExTMTA0NmEsIHNvIEkgY2hhbmdl
ZCB0aGUgY29tcGF0aWJsZS4gSSBhbSBub3Qgc3VyZSB3aGV0aGVyIG5lZWQgdG8gYWRkICJmc2ws
bHMtcGNpZS1lcCIKPiBpbiB0aGVyZSwgY291bGQgeW91IGdpdmUgc29tZSBhZHZpY2UsIHRoYW5r
cyBhIGxvdC4KCkl0IHNvdW5kcyBsaWtlICJmc2wsbHMtcGNpZS1lcCIgY2FuIGJlIGEgZmFsbGJh
Y2sgZm9yICJmc2wsbHMxMDQ2YS1wY2llLWVwIi4KCkknbSBhc3N1bWluZyB0aGF0IGlmIHNvbWVv
bmUgdXNlZCAiZnNsLGxzMTA0NmEtcGNpZS1lcCIgb24gbHMxMDg4YSBvciBsczIwODhhCmhhcmR3
YXJlIGl0IHdvdWxkIHN0aWxsIHdvcmssIGJ1dCB3aXRob3V0IHRoZSBtdWx0aXBsZSBQRiBzdXBw
b3J0LgoKSS5lLiBpZiAiZnNsLGxzLXBjaWUtZXAiIGlzIGdpdmVuLCB0cmVhdCBpdCBhcyBsczEw
NDZhLgoKVGhhbmtzLAoKQW5kcmV3IE11cnJheQoKPiAKPiBUaGFua3MgCj4gWGlhb3dlaQo+ICAK
PiA+IAo+ID4gVGhhbmtzLAo+ID4gCj4gPiBBbmRyZXcgTXVycmF5Cj4gPiAKPiA+ID4gIH07Cj4g
PiA+Cj4gPiA+ICBzdGF0aWMgaW50IF9faW5pdCBsc19hZGRfcGNpZV9lcChzdHJ1Y3QgbHNfcGNp
ZV9lcCAqcGNpZSwgQEAgLTEwMyw3Cj4gPiA+ICsxMzQsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBs
c19hZGRfcGNpZV9lcChzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSwKPiA+ID4gIAlpbnQgcmV0Owo+
ID4gPgo+ID4gPiAgCWVwID0gJnBjaS0+ZXA7Cj4gPiA+IC0JZXAtPm9wcyA9ICZwY2llX2VwX29w
czsKPiA+ID4gKwllcC0+b3BzID0gcGNpZS0+ZHJ2ZGF0YS0+b3BzOwo+ID4gPgo+ID4gPiAgCXJl
cyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sCj4g
PiAiYWRkcl9zcGFjZSIpOwo+ID4gPiAgCWlmICghcmVzKQo+ID4gPiBAQCAtMTQyLDIwICsxNzMs
MjMgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9iZShzdHJ1Y3QKPiA+IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiA+ID4gIAlpZiAoIWxzX2VwYykKPiA+ID4gIAkJcmV0dXJuIC1F
Tk9NRU07Cj4gPiA+Cj4gPiA+IC0JZGJpX2Jhc2UgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnlu
YW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLAo+ID4gInJlZ3MiKTsKPiA+ID4gLQlwY2ktPmRiaV9i
YXNlID0gZGV2bV9wY2lfcmVtYXBfY2ZnX3Jlc291cmNlKGRldiwgZGJpX2Jhc2UpOwo+ID4gPiAt
CWlmIChJU19FUlIocGNpLT5kYmlfYmFzZSkpCj4gPiA+IC0JCXJldHVybiBQVFJfRVJSKHBjaS0+
ZGJpX2Jhc2UpOwo+ID4gPiArCXBjaWUtPmRydmRhdGEgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2Rh
dGEoZGV2KTsKPiA+ID4KPiA+ID4gLQlwY2ktPmRiaV9iYXNlMiA9IHBjaS0+ZGJpX2Jhc2UgKyBQ
Q0lFX0RCSTJfT0ZGU0VUOwo+ID4gPiAgCXBjaS0+ZGV2ID0gZGV2Owo+ID4gPiAtCXBjaS0+b3Bz
ID0gJmxzX3BjaWVfZXBfb3BzOwo+ID4gPiAtCXBjaWUtPnBjaSA9IHBjaTsKPiA+ID4gKwlwY2kt
Pm9wcyA9IHBjaWUtPmRydmRhdGEtPmR3X3BjaWVfb3BzOwo+ID4gPgo+ID4gPiAgCWxzX2VwYy0+
YmFyX2ZpeGVkXzY0Yml0ID0gKDEgPDwgQkFSXzIpIHwgKDEgPDwgQkFSXzQpLAo+ID4gPgo+ID4g
PiArCXBjaWUtPnBjaSA9IHBjaTsKPiA+ID4gIAlwY2llLT5sc19lcGMgPSBsc19lcGM7Cj4gPiA+
Cj4gPiA+ICsJZGJpX2Jhc2UgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElP
UkVTT1VSQ0VfTUVNLAo+ID4gInJlZ3MiKTsKPiA+ID4gKwlwY2ktPmRiaV9iYXNlID0gZGV2bV9w
Y2lfcmVtYXBfY2ZnX3Jlc291cmNlKGRldiwgZGJpX2Jhc2UpOwo+ID4gPiArCWlmIChJU19FUlIo
cGNpLT5kYmlfYmFzZSkpCj4gPiA+ICsJCXJldHVybiBQVFJfRVJSKHBjaS0+ZGJpX2Jhc2UpOwo+
ID4gPiArCj4gPiA+ICsJcGNpLT5kYmlfYmFzZTIgPSBwY2ktPmRiaV9iYXNlICsgUENJRV9EQkky
X09GRlNFVDsKPiA+ID4gKwo+ID4gPiAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHBjaWUp
Owo+ID4gPgo+ID4gPiAgCXJldCA9IGxzX2FkZF9wY2llX2VwKHBjaWUsIHBkZXYpOwo+ID4gPiAt
LQo+ID4gPiAyLjkuNQo+ID4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
