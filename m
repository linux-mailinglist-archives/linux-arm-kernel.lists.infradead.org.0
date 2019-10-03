Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2456BC99F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XefpdOhkOf/28OaxzdgR9VGgoVmiamOjbWSWrvV7iJA=; b=svQmy0rhOOq70x
	MRiPbQ5Mq47tKGVPfcnpXBt3cNLdXMShNS1AfYiPUr5rQo0QEtR3137uDXZlOT50HO3xn3bTlugr2
	autUrHHd/COatbOycdTmAQYZqjcvBUCPjqD3hkXNUpCOtwr0Ykgaf9li9MUJMJD4/GT/ScguxZjB+
	vWjEOWeLW9rGZUBX+3zC3LTu0JAH5HrJKiLv9rIod4pIjfIewdGvyDyrPg51TNkEaXkjr2zb1IyKI
	KC5K6yej1VZOxgM5DIFnzFQNaZXi9hJQSPFLpaZv9gtovFmgqjnmvQ/Y6Iwe/Uz/njEpUikYXlsVN
	QT6eKQwE8Jbw7QPaYPAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwZJ-0003pm-1Y; Thu, 03 Oct 2019 08:34:37 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwZB-0003mo-4P
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 08:34:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x938YIS3039241;
 Thu, 3 Oct 2019 03:34:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570091658;
 bh=wC+n3OENdEJ2IsQgFjMkRTLzwLiPOKYcYONX3Y1jgtU=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=QBspVv8HfOBkUrfWYQCvaNnIy27aioTckz/SMrSDkArh7nK5JMRFhG03E7MF/jiFz
 2s9WYAkoJdLtwYTZrhWv89A5tJcjgsPXH1YaK7nmuaWixskJZksIsJDfdVRrtnW5kl
 osvlF7806n9kY2QdMr4TUHuDiYf8szKYNpx2U6Ws=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x938YIkE066573;
 Thu, 3 Oct 2019 03:34:18 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 3 Oct
 2019 03:34:17 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 3 Oct 2019 03:34:17 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x938YEqD014611;
 Thu, 3 Oct 2019 03:34:14 -0500
Subject: Re: [PATCH v3 09/14] dmaengine: ti: New driver for K3 UDMA - split#2:
 probe/remove, xlate and filter_fn
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-10-peter.ujfalusi@ti.com>
Message-ID: <a183aa24-572f-483d-a60c-1e721b981e65@ti.com>
Date: Thu, 3 Oct 2019 11:35:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191001061704.2399-10-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_013429_260901_5AC1EA1E 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMS8xMC8yMDE5IDkuMTYsIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+IFNwbGl0IHBhdGNo
IGZvciByZXZpZXcgY29udGFpbmluZzogbW9kdWxlIHByb2JlL3JlbW92ZSBmdW5jdGlvbnMsIG9m
X3hsYXRlCj4gYW5kIGZpbHRlcl9mbiBmb3Igc2xhdmUgY2hhbm5lbCByZXF1ZXN0cy4KPiAKPiBE
TUEgZHJpdmVyIGZvcgo+IFRleGFzIEluc3RydW1lbnRzIEszIE5BVlNTIFVuaWZpZWQgRE1BIOKA
kyBQZXJpcGhlcmFsIFJvb3QgQ29tcGxleCAoVURNQS1QKQo+IAo+IFRoZSBVRE1BLVAgaXMgaW50
ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQgc2lnbmlmaWNhbnRseSB1cGdyYWRlZCkgZnVu
Y3Rpb25zCj4gYXMgdGhlIHBhY2tldC1vcmllbnRlZCBETUEgdXNlZCBvbiBwcmV2aW91cyBTb0Mg
ZGV2aWNlcy4gVGhlIFVETUEtUCBtb2R1bGUKPiBzdXBwb3J0cyB0aGUgdHJhbnNtaXNzaW9uIGFu
ZCByZWNlcHRpb24gb2YgdmFyaW91cyBwYWNrZXQgdHlwZXMuIFRoZSBVRE1BLVAgaXMKPiBhcmNo
aXRlY3RlZCB0byBmYWNpbGl0YXRlIHRoZSBzZWdtZW50YXRpb24gYW5kIHJlYXNzZW1ibHkgb2Yg
U29DIERNQSBkYXRhCj4gc3RydWN0dXJlIGNvbXBsaWFudCBwYWNrZXRzIHRvL2Zyb20gc21hbGxl
ciBkYXRhIGJsb2NrcyB0aGF0IGFyZSBuYXRpdmVseQo+IGNvbXBhdGlibGUgd2l0aCB0aGUgc3Bl
Y2lmaWMgcmVxdWlyZW1lbnRzIG9mIGVhY2ggY29ubmVjdGVkIHBlcmlwaGVyYWwuIE11bHRpcGxl
Cj4gVHggYW5kIFJ4IGNoYW5uZWxzIGFyZSBwcm92aWRlZCB3aXRoaW4gdGhlIERNQSB3aGljaCBh
bGxvdyBtdWx0aXBsZSBzZWdtZW50YXRpb24KPiBvciByZWFzc2VtYmx5IG9wZXJhdGlvbnMgdG8g
YmUgb25nb2luZy4gVGhlIERNQSBjb250cm9sbGVyIG1haW50YWlucyBzdGF0ZQo+IGluZm9ybWF0
aW9uIGZvciBlYWNoIG9mIHRoZSBjaGFubmVscyB3aGljaCBhbGxvd3MgcGFja2V0IHNlZ21lbnRh
dGlvbiBhbmQKPiByZWFzc2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0
aXBsZXhlZCBiZXR3ZWVuIGNoYW5uZWxzIGluIG9yZGVyCj4gdG8gc2hhcmUgdGhlIHVuZGVybHlp
bmcgRE1BIGhhcmR3YXJlLiBBbiBleHRlcm5hbCBETUEgc2NoZWR1bGVyIGlzIHVzZWQgdG8KPiBj
b250cm9sIHRoZSBvcmRlcmluZyBhbmQgcmF0ZSBhdCB3aGljaCB0aGlzIG11bHRpcGxleGluZyBv
Y2N1cnMgZm9yIFRyYW5zbWl0Cj4gb3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9m
IFJlY2VpdmUgb3BlcmF0aW9ucyBpcyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKPiBieSB0aGUgb3Jk
ZXIgaW4gd2hpY2ggYmxvY2tzIGFyZSBwdXNoZWQgaW50byB0aGUgRE1BIG9uIHRoZSBSeCBQU0kt
TCBpbnRlcmZhY2UuCj4gCj4gVGhlIFVETUEtUCBhbHNvIHN1cHBvcnRzIGFjdGluZyBhcyBib3Ro
IGEgVVRDIGFuZCBVRE1BLUMgZm9yIGl0cyBpbnRlcm5hbAo+IGNoYW5uZWxzLiBDaGFubmVscyBp
biB0aGUgVURNQS1QIGNhbiBiZSBjb25maWd1cmVkIHRvIGJlIGVpdGhlciBQYWNrZXQtQmFzZWQg
b3IKPiBUaGlyZC1QYXJ0eSBjaGFubmVscyBvbiBhIGNoYW5uZWwgYnkgY2hhbm5lbCBiYXNpcy4K
PiAKPiBUaGUgaW5pdGlhbCBkcml2ZXIgc3VwcG9ydHM6Cj4gLSBNRU1fVE9fTUVNIChUUiBtb2Rl
KQo+IC0gREVWX1RPX01FTSAoUGFja2V0IC8gVFIgbW9kZSkKPiAtIE1FTV9UT19ERVYgKFBhY2tl
dCAvIFRSIG1vZGUpCj4gLSBDeWNsaWMgKFBhY2tldCAvIFRSIG1vZGUpCj4gLSBNZXRhZGF0YSBm
b3IgZGVzY3JpcHRvcnMKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIu
dWpmYWx1c2lAdGkuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMgfCA2MTcg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2MTcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS90aS9rMy11
ZG1hLmMgYi9kcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMKPiBpbmRleCA2MjgxMjBmZmZhMmYuLmQ0
MGZkMjY4YjQ3NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMKPiArKysg
Yi9kcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMKCi4uLgoKPiArc3RhdGljIGludCB1ZG1hX3NldHVw
X3Jlc291cmNlcyhzdHJ1Y3QgdWRtYV9kZXYgKnVkKQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSB1ZC0+ZGV2Owo+ICsJaW50IGNoX2NvdW50LCByZXQsIGksIGo7Cj4gKwl1MzIgY2FwMiwg
Y2FwMzsKPiArCXN0cnVjdCB0aV9zY2lfcmVzb3VyY2VfZGVzYyAqcm1fZGVzYzsKPiArCXN0cnVj
dCB0aV9zY2lfcmVzb3VyY2UgKnJtX3JlcywgaXJxX3JlczsKPiArCXN0cnVjdCB1ZG1hX3Rpc2Np
X3JtICp0aXNjaV9ybSA9ICZ1ZC0+dGlzY2lfcm07Cj4gKwlzdGF0aWMgY29uc3QgY2hhciAqIGNv
bnN0IHJhbmdlX25hbWVzW10gPSB7ICJ0aSxzY2ktcm0tcmFuZ2UtdGNoYW4iLAo+ICsJCQkJCQkg
ICAgInRpLHNjaS1ybS1yYW5nZS1yY2hhbiIsCj4gKwkJCQkJCSAgICAidGksc2NpLXJtLXJhbmdl
LXJmbG93IiB9Owo+ICsKPiArCWNhcDIgPSB1ZG1hX3JlYWQodWQtPm1tcnNbTU1SX0dDRkddLCAw
eDI4KTsKPiArCWNhcDMgPSB1ZG1hX3JlYWQodWQtPm1tcnNbTU1SX0dDRkddLCAweDJjKTsKPiAr
Cj4gKwl1ZC0+cmZsb3dfY250ID0gY2FwMyAmIDB4M2ZmZjsKPiArCXVkLT50Y2hhbl9jbnQgPSBj
YXAyICYgMHgxZmY7Cj4gKwl1ZC0+ZWNoYW5fY250ID0gKGNhcDIgPj4gOSkgJiAweDFmZjsKPiAr
CXVkLT5yY2hhbl9jbnQgPSAoY2FwMiA+PiAxOCkgJiAweDFmZjsKPiArCWNoX2NvdW50ICA9IHVk
LT50Y2hhbl9jbnQgKyB1ZC0+cmNoYW5fY250Owo+ICsKPiArCXVkLT50Y2hhbl9tYXAgPSBkZXZt
X2ttYWxsb2NfYXJyYXkoZGV2LCBCSVRTX1RPX0xPTkdTKHVkLT50Y2hhbl9jbnQpLAo+ICsJCQkJ
CSAgIHNpemVvZih1bnNpZ25lZCBsb25nKSwgR0ZQX0tFUk5FTCk7Cj4gKwl1ZC0+dGNoYW5zID0g
ZGV2bV9rY2FsbG9jKGRldiwgdWQtPnRjaGFuX2NudCwgc2l6ZW9mKCp1ZC0+dGNoYW5zKSwKPiAr
CQkJCSAgR0ZQX0tFUk5FTCk7Cj4gKwl1ZC0+cmNoYW5fbWFwID0gZGV2bV9rbWFsbG9jX2FycmF5
KGRldiwgQklUU19UT19MT05HUyh1ZC0+cmNoYW5fY250KSwKPiArCQkJCQkgICBzaXplb2YodW5z
aWduZWQgbG9uZyksIEdGUF9LRVJORUwpOwo+ICsJdWQtPnJjaGFucyA9IGRldm1fa2NhbGxvYyhk
ZXYsIHVkLT5yY2hhbl9jbnQsIHNpemVvZigqdWQtPnJjaGFucyksCj4gKwkJCQkgIEdGUF9LRVJO
RUwpOwo+ICsJdWQtPnJmbG93X2dwX21hcCA9IGRldm1fa21hbGxvY19hcnJheShkZXYsIEJJVFNf
VE9fTE9OR1ModWQtPnJmbG93X2NudCksCj4gKwkJCQkJICAgICAgc2l6ZW9mKHVuc2lnbmVkIGxv
bmcpLAo+ICsJCQkJCSAgICAgIEdGUF9LRVJORUwpOwo+ICsJdWQtPnJmbG93X2dwX21hcF9hbGxv
Y2F0ZWQgPSBkZXZtX2tjYWxsb2MoZGV2LAo+ICsJCQkJCQkgIEJJVFNfVE9fTE9OR1ModWQtPnJm
bG93X2NudCksCj4gKwkJCQkJCSAgc2l6ZW9mKHVuc2lnbmVkIGxvbmcpLAo+ICsJCQkJCQkgIEdG
UF9LRVJORUwpOwo+ICsJdWQtPnJmbG93X2luX3VzZSA9IGRldm1fa2NhbGxvYyhkZXYsIEJJVFNf
VE9fTE9OR1ModWQtPnJmbG93X2NudCksCj4gKwkJCQkJc2l6ZW9mKHVuc2lnbmVkIGxvbmcpLAo+
ICsJCQkJCUdGUF9LRVJORUwpOwo+ICsJdWQtPnJmbG93cyA9IGRldm1fa2NhbGxvYyhkZXYsIHVk
LT5yZmxvd19jbnQsIHNpemVvZigqdWQtPnJmbG93cyksCj4gKwkJCQkgIEdGUF9LRVJORUwpOwo+
ICsKPiArCWlmICghdWQtPnRjaGFuX21hcCB8fCAhdWQtPnJjaGFuX21hcCB8fCAhdWQtPnJmbG93
X2dwX21hcCB8fAo+ICsJICAgICF1ZC0+cmZsb3dfZ3BfbWFwX2FsbG9jYXRlZCB8fCAhdWQtPnRj
aGFucyB8fCAhdWQtPnJjaGFucyB8fAo+ICsJICAgICF1ZC0+cmZsb3dzIHx8ICF1ZC0+cmZsb3df
aW5fdXNlKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCS8qCj4gKwkgKiBSWCBmbG93cyB3
aXRoIHRoZSBzYW1lIElkcyBhcyBSWCBjaGFubmVscyBhcmUgcmVzZXJ2ZWQgdG8gYmUgdXNlZAo+
ICsJICogYXMgZGVmYXVsdCBmbG93cyBpZiByZW1vdGUgSFcgY2FuJ3QgZ2VuZXJhdGUgZmxvd19p
ZHMuIFRob3NlCj4gKwkgKiBSWCBmbG93cyBjYW4gYmUgcmVxdWVzdGVkIG9ubHkgZXhwbGljaXRs
eSBieSBpZC4KPiArCSAqLwo+ICsJYml0bWFwX3NldCh1ZC0+cmZsb3dfZ3BfbWFwX2FsbG9jYXRl
ZCwgMCwgdWQtPnJjaGFuX2NudCk7Cj4gKwo+ICsJLyogYnkgZGVmYXVsdCBubyBHUCByZmxvd3Mg
YXJlIGFzc2lnbmVkIHRvIExpbnV4ICovCj4gKwliaXRtYXBfc2V0KHVkLT5yZmxvd19ncF9tYXAs
IDAsIHVkLT5yZmxvd19jbnQpOwo+ICsKPiArCS8qIEdldCByZXNvdXJjZSByYW5nZXMgZnJvbSB0
aXNjaSAqLwo+ICsJZm9yIChpID0gMDsgaSA8IFJNX1JBTkdFX0xBU1Q7IGkrKykKPiArCQl0aXNj
aV9ybS0+cm1fcmFuZ2VzW2ldID0KPiArCQkJZGV2bV90aV9zY2lfZ2V0X29mX3Jlc291cmNlKHRp
c2NpX3JtLT50aXNjaSwgZGV2LAo+ICsJCQkJCQkgICAgdGlzY2lfcm0tPnRpc2NpX2Rldl9pZCwK
PiArCQkJCQkJICAgIChjaGFyICopcmFuZ2VfbmFtZXNbaV0pOwo+ICsKPiArCS8qIHRjaGFuIHJh
bmdlcyAqLwo+ICsJcm1fcmVzID0gdGlzY2lfcm0tPnJtX3Jhbmdlc1tSTV9SQU5HRV9UQ0hBTl07
Cj4gKwlpZiAoSVNfRVJSKHJtX3JlcykpIHsKPiArCQliaXRtYXBfemVybyh1ZC0+dGNoYW5fbWFw
LCB1ZC0+dGNoYW5fY250KTsKPiArCX0gZWxzZSB7Cj4gKwkJYml0bWFwX2ZpbGwodWQtPnRjaGFu
X21hcCwgdWQtPnRjaGFuX2NudCk7Cj4gKwkJZm9yIChpID0gMDsgaSA8IHJtX3Jlcy0+c2V0czsg
aSsrKSB7Cj4gKwkJCXJtX2Rlc2MgPSAmcm1fcmVzLT5kZXNjW2ldOwo+ICsJCQliaXRtYXBfY2xl
YXIodWQtPnRjaGFuX21hcCwgcm1fZGVzYy0+c3RhcnQsCj4gKwkJCQkgICAgIHJtX2Rlc2MtPm51
bSk7Cj4gKwkJCWRldl9kYmcoZGV2LCAidGktc2NpLXJlczogdGNoYW46ICVkOiVkXG4iLAo+ICsJ
CQkJcm1fZGVzYy0+c3RhcnQsIHJtX2Rlc2MtPm51bSk7Cj4gKwkJfQo+ICsJfQo+ICsJaXJxX3Jl
cy5zZXRzID0gcm1fcmVzLT5zZXRzOwo+ICsKPiArCS8qIHJjaGFuIGFuZCBtYXRjaGluZyBkZWZh
dWx0IGZsb3cgcmFuZ2VzICovCj4gKwlybV9yZXMgPSB0aXNjaV9ybS0+cm1fcmFuZ2VzW1JNX1JB
TkdFX1JDSEFOXTsKPiArCWlmIChJU19FUlIocm1fcmVzKSkgewo+ICsJCWJpdG1hcF96ZXJvKHVk
LT5yY2hhbl9tYXAsIHVkLT5yY2hhbl9jbnQpOwo+ICsJfSBlbHNlIHsKPiArCQliaXRtYXBfZmls
bCh1ZC0+cmNoYW5fbWFwLCB1ZC0+cmNoYW5fY250KTsKPiArCQlmb3IgKGkgPSAwOyBpIDwgcm1f
cmVzLT5zZXRzOyBpKyspIHsKPiArCQkJcm1fZGVzYyA9ICZybV9yZXMtPmRlc2NbaV07Cj4gKwkJ
CWJpdG1hcF9jbGVhcih1ZC0+cmNoYW5fbWFwLCBybV9kZXNjLT5zdGFydCwKPiArCQkJCSAgICAg
cm1fZGVzYy0+bnVtKTsKPiArCQkJZGV2X2RiZyhkZXYsICJ0aS1zY2ktcmVzOiByY2hhbjogJWQ6
JWRcbiIsCj4gKwkJCQlybV9kZXNjLT5zdGFydCwgcm1fZGVzYy0+bnVtKTsKPiArCQl9Cj4gKwl9
Cj4gKwo+ICsJaXJxX3Jlcy5zZXRzICs9IHJtX3Jlcy0+c2V0czsKPiArCWlycV9yZXMuZGVzYyA9
IGtjYWxsb2MoaXJxX3Jlcy5zZXRzLCBzaXplb2YoKmlycV9yZXMuZGVzYyksIEdGUF9LRVJORUwp
Owo+ICsJcm1fcmVzID0gdGlzY2lfcm0tPnJtX3Jhbmdlc1tSTV9SQU5HRV9UQ0hBTl07Cj4gKwlm
b3IgKGkgPSAwOyBpIDwgcm1fcmVzLT5zZXRzOyBpKyspIHsKPiArCQlpcnFfcmVzLmRlc2NbaV0u
c3RhcnQgPSBybV9yZXMtPmRlc2NbaV0uc3RhcnQ7Cj4gKwkJaXJxX3Jlcy5kZXNjW2ldLm51bSA9
IHJtX3Jlcy0+ZGVzY1tpXS5udW07Cj4gKwl9Cj4gKwlybV9yZXMgPSB0aXNjaV9ybS0+cm1fcmFu
Z2VzW1JNX1JBTkdFX1JDSEFOXTsKPiArCWZvciAoaiA9IDA7IGogPCBybV9yZXMtPnNldHM7IGor
KywgaSsrKSB7Cj4gKwkJaXJxX3Jlcy5kZXNjW2ldLnN0YXJ0ID0gcm1fcmVzLT5kZXNjW2pdLnN0
YXJ0ICsgMHgyMDAwOwoKcy8weDIwMDAvdWQtPm1hdGNoX2RhdGEtPnJjaGFuX29lc19vZmZzZXQK
CnNpbmNlIHRoZSByY2hhbiBvZXMgb2Zmc2V0IGlzIGFsc28gbmVlZGVkIHRvIGJlIHVzZWQgd2hl
biBhbGxvY2F0aW5nIHRoZQpNU0kgZG9tYWluLgoKPiArCQlpcnFfcmVzLmRlc2NbaV0ubnVtID0g
cm1fcmVzLT5kZXNjW2pdLm51bTsKPiArCX0KPiArCXJldCA9IHRpX3NjaV9pbnRhX21zaV9kb21h
aW5fYWxsb2NfaXJxcyh1ZC0+ZGV2LCAmaXJxX3Jlcyk7Cj4gKwlrZnJlZShpcnFfcmVzLmRlc2Mp
Owo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIodWQtPmRldiwgIkZhaWxlZCB0byBhbGxvY2F0
ZSBNU0kgaW50ZXJydXB0c1xuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KCi0gUMOpdGVyCgpU
ZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxz
aW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2ls
ZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
