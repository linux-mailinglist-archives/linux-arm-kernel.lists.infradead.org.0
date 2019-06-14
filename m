Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A386645E98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AGtv/zoEjVdR4FDaWlvZazL18I5uVQSpOO5BGh/SvA=; b=bgK8TL7MsFcxgo
	j5OoxC/E+3VB+rsMb6ASYaM5C3xZ5ZA1syAyT7ohjcTGKQl6tCBuqFJ2/6MWzR6v1TNbzv6UZfxOa
	imw+wZlLw2aCfVPWhZP58N7CiVDUYN3LvYy/6lBCKlTj7FmxumYUfsYOpOTgnKIES+RnxMTmBg+nu
	4EYnKtt8n7SJ/YwhKBacR2Izw7vuLJydopt8ben4Xe97doTAe0uWCduiWmlaNEilro00F9YuinNOG
	mUyoxGuUhxkOzBxKUoFHLtjcZt38oGtKQjB/aZjYktpCw1pEteCie3e8c68jwu+qMgXvvyWt4eqPi
	1d8Jelw89d/KFc+GYshA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmTt-0000Zs-WF; Fri, 14 Jun 2019 13:43:02 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmTj-0000ZP-N3
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:42:53 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EDgjcU015726;
 Fri, 14 Jun 2019 08:42:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560519765;
 bh=JTrKAS5DxBlxyr/RUcG7xCZZCkjwEovfo2qd+cpbq7o=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HEpkw3CrAA6B+lRcszpV93/Y16UTfxTK16V1R8rSpRtlNuPfp4MuPbeje6tJaOzv5
 fLdJFQ9otRoony+Lme3E13MenSQy4LEqEfVsXt7mou3/cYyqI1RR0wYBEpi47ZEC48
 vJVGouhBNOuc0lWGVRF9c2Y/XVhzbzCnR+kY2Cn8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EDgjTi018675
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 08:42:45 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 08:42:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 08:42:45 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EDggeV100780;
 Fri, 14 Jun 2019 08:42:43 -0500
Subject: Re: [PATCH 09/16] dt-bindings: dma: ti: Add document for K3 UDMA
To: Rob Herring <robh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-10-peter.ujfalusi@ti.com> <20190613181626.GA7039@bogus>
 <e0d6a264-96b5-31a6-e70b-3b1c2d863988@ti.com>
 <CAL_JsqJNMkKL_FubZfjKY6jLebMetmgR24EoendHoPM2ckrUQA@mail.gmail.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <e811d674-b79f-4da8-c632-c7a90844b6c5@ti.com>
Date: Fri, 14 Jun 2019 16:43:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJNMkKL_FubZfjKY6jLebMetmgR24EoendHoPM2ckrUQA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_064251_859346_DDD4CD92 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, "open
 list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDE0LzA2LzIwMTkgMTYuMjAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFRodSwgSnVuIDEz
LCAyMDE5IGF0IDI6MzMgUE0gUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4g
d3JvdGU6Cj4+Cj4+IFJvYiwKPj4KPj4gT24gMTMvMDYvMjAxOSAyMS4xNiwgUm9iIEhlcnJpbmcg
d3JvdGU6Cj4+Pj4gK1JlbW90ZSBQU0ktTCBlbmRwb2ludAo+Pj4+ICsKPj4+PiArUmVxdWlyZWQg
cHJvcGVydGllczoKPj4+PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiArLSB0aSxwc2lsLWJh
c2U6ICAgICAgICAgICAgIFBTSS1MIHRocmVhZCBJRCBiYXNlIG9mIHRoZSBlbmRwb2ludAo+Pj4+
ICsKPj4+PiArV2l0aGluIHRoZSBQU0ktTCBlbmRwb2ludCBub2RlIHRocmVhZCBjb25maWd1cmF0
aW9uIHN1Ym5vZGVzIG11c3QgcHJlc2VudCB3aXRoOgo+Pj4+ICt0aSxwc2lsLWNvbmZpZ1ggbmFt
aW5nIGNvbnZlbnRpb24sIHdoZXJlIFggaXMgdGhlIHRocmVhZCBJRCBvZmZzZXQuCj4+Pgo+Pj4g
RG9uJ3QgdXNlIHZlbmRvciBwcmVmaXhlcyBvbiBub2RlIG5hbWVzLgo+Pgo+PiBPSy4KPj4KPj4+
PiArCj4+Pj4gK0NvbmZpZ3VyYXRpb24gbm9kZSBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+Pj4+ICst
LS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+ICstIGxpbnV4LHVkbWEtbW9kZTogIENoYW5uZWwgbW9k
ZSwgY2FuIGJlOgo+Pj4+ICsgICAgICAgICAgICAgICAgICAgIC0gVURNQV9QS1RfTU9ERTogZm9y
IFBhY2tldCBtb2RlIGNoYW5uZWxzIChwZXJpcGhlcmFscykKPj4+PiArICAgICAgICAgICAgICAg
ICAgICAtIFVETUFfVFJfTU9ERTogZm9yIFRoaXJkLVBhcnR5IG1vZGUKPj4+Cj4+PiBUaGlzIGlz
IGhhcmRseSBhIGNvbW1vbiBsaW51eCB0aGluZy4gV2hhdCBkZXRlcm1pbmVzIHRoZSB2YWx1ZSBo
ZXJlLgo+Pgo+PiBVbmZvcnR1bmF0ZWx5IGl0IGlzLgo+IAo+IE5vLCBpdCdzIGEgZmVhdHVyZSBv
ZiB5b3VyIGgvdyBhbmQgaW4gbm8gd2F5IGlzIHNvbWV0aGluZyBsaW51eAo+IGRlZmluZWQgd2hp
Y2ggaXMgdGhlIHBvaW50IG9mICdsaW51eCcgcHJlZml4LgoKVGhlIGNoYW5uZWwgY2FuIGJlIGVp
dGhlciBQYWNrZXQgb3IgVFIgbW9kZS4gVGhlIEhXIGlzIHJlYWxseSBmbGV4aWJsZQpvbiB0aGlz
IChhbmQgb24gb3RoZXIgdGhpbmdzIGFzIHdlbGwpLgpJdCBqdXN0IGhhcHBlbnMgdGhhdCBMaW51
eCBuZWVkIHRvIHVzZSBzcGVjaWZpYyBjaGFubmVscyBpbiBhIHNwZWNpZmljIG1vZGUuCgpXb3Vs
ZCBpdCBoZWxwIGlmIHdlIGFzc3VtZSB0aGF0IGFsbCBjaGFubmVscyBhcmUgdXNlZCBpbiBQYWNr
ZXQgbW9kZSwKYnV0IHdlIGhhdmUgbGludXgsdHItbW9kZSBib29sIHRvIGluZGljYXRlIHRoYXQg
dGhlIGdpdmVuIGNoYW5uZWwgaW4KTGludXggbmVlZCB0byBiZSB1c2VkIGluIFRSIG1vZGUuCgo+
PiBFYWNoIGNoYW5uZWwgY2FuIGJlIGNvbmZpZ3VyZWQgdG8gUGFja2V0IG9yIFRSIG1vZGUuIEZv
ciBzb21lCj4+IHBlcmlwaGVyYWxzIGl0IGlzIHRydWUgdGhhdCB0aGV5IG9ubHkgc3VwcG9ydCBw
YWNrZXQgbW9kZSwgdGhlc2UgYXJlIHRoZQo+PiBuZXdlciBQU0ktTCBuYXRpdmUgcGVyaXBoZXJh
bHMuCj4+IEZvciB0aGVzZSBjaGFubmVscyBhIHVkbWEtbW9kZSBwcm9wZXJ0eSB3b3VsZCBiZSBj
b3JyZWN0Lgo+Pgo+PiBCdXQgd2UgaGF2ZSBsZWdhY3kgcGVyaXBoZXJhbHMgYXMgd2VsbCBhbmQg
dGhleSBhcmUgc2VydmljZWQgYnkgUERNQQo+PiAod2hpY2ggaXMgYSBuYXRpdmUgcGVyaXBoZXJh
bCBkZXNpZ25lZCB0byB0YWxrIHRvIHRoZSBnaXZlbiBsZWdhY3kgSVApLgo+PiBXZSBjYW4gdXNl
IGVpdGhlciBwYWNrZXQgb3IgVFIgbW9kZSBpbiBVRE1BUCB0byB0YWxrIHRvIFBETUFzLCBpdCBp
cyBpbgo+PiBtb3N0IGNhc2VzIGNsZWFyIHdoYXQgdG8gdXNlLCBidXQgZm9yIGV4YW1wbGUgZm9y
IGF1ZGlvIChNY0FTUCkgY2hhbm5lbHMKPj4gTGludXggaXMgdXNpbmcgVFIgY2hhbm5lbCBiZWNh
dXNlIHdlIG5lZWQgY3ljbGljIERNQSB3aGlsZSBmb3IgZXhhbXBsZQo+PiBSVE9TIGlzIHVzaW5n
IFBhY2tldCBtb2RlIGFzIGl0IGZpdHMgdGhlaXIgbmVlZHMgYmV0dGVyLgo+Pgo+PiBIZXJlIEkg
bmVlZCB0byBwcmVmaXggdGhlIHVkbWEtbW9kZSB3aXRoIGxpbnV4IGFzIHRoZSBtb2RlIGlzIHVz
ZWQgYnkKPj4gTGludXgsIGJ1dCBvdGhlciBPUyBtaWdodCBvcHQgdG8gdXNlIGRpZmZlcmVudCBj
aGFubmVsIG1vZGUuCj4gCj4gU28geW91J2QgbmVlZCA8b3M+LHVkbWEtbW9kZT8gVGhhdCBkb2Vz
bid0IHdvcmsuLi4gSWYgdGhlIHNldHRpbmcgaXMKPiBwZXIgT1MsIHRoZW4gaXQgYmVsb25ncyBp
biB0aGUgT1MgYmVjYXVzZSB0aGUgc2FtZSBkdGIgc2hvdWxkIHdvcmsKPiBhY3Jvc3MgT1Mncy4K
ClNvIEkgc2hvdWxkIGhhdmUgYSB0YWJsZSBmb3IgdGhlIHRocmVhZCBJRHMgaW4gdGhlIERNQSBk
cml2ZXIgYW5kIG1hcmsKY2hhbm5lbHMgYXMgVFIgb3IgUGFja2V0IGluIHRoZXJlIGZvciBMaW51
eCB1c2U/Ck9yIGp1c3QgYW4gYXJyYXkgd2hpY2ggd291bGQgbWFyayB0aGUgbm9uIHBhY2tldCBQ
U0ktTCB0aHJlYWQgSURzPwoKSSBzdGlsbCBwcmVmZXIgdG8gaGF2ZSB0aGlzIGNvbWluZyB2aWEg
RFQgYXMgYSBMaW51eCBwYXJhbWV0ZXIgYXMgb3RoZXIKT1MgaXMgZnJlZSB0byBpZ25vcmUgdGhl
IGxpbnV4LHVkbWEtbW9kZSwgYnV0IGFzIEkgc2FpZCB0aGVyZSBhcmUKY2VydGFpbiBjaGFubmVs
cyB3aGljaCBtdXN0IGJlIHVzZWQgaW4gTGludXggaW4gY2VydGFpbiBtb2RlIHdoaWxlCm90aGVy
cyBpbiBkaWZmZXJlbnQgbW9kZS4KCj4+IFRoZSByZWFzb24gd2h5IHRoaXMgbmVlZHMgdG8gYmUg
aW4gdGhlIERUIGlzIHRoYXQgd2hlbiB0aGUgY2hhbm5lbCBpcwo+PiByZXF1ZXN0ZWQgd2UgbmVl
ZCB0byBjb25maWd1cmUgdGhlIG1vZGUgYW5kIGl0IGNhbiBub3QgYmUgc3dhcHBlZAo+PiBydW50
aW1lIGVhc2lseSBiZXR3ZWVuIFBhY2tldCBhbmQgVFIgbW9kZS4KPiAKPiBTbyB3aGVuIHRoZSBj
bGllbnQgbWFrZXMgdGhlIGNoYW5uZWwgcmVxdWVzdCwgd2h5IGRvZXNuJ3QgaXQgc3BlY2lmeSB0
aGUgbW9kZT8KClRoaXMgaXMgVURNQVAgaW50ZXJuYWwgaW5mb3JtYXRpb24gb24gd2hhdCB0eXBl
IG9mIERlc2NyaXB0b3JzIHRoZQpjaGFubmVsIHdpbGwgZXhwZWN0IGFuZCBob3cgaXQgaXMgZ29p
bmcgdG8gZGlzcGF0Y2ggdGhlIHdvcmsuCgpQYWNrZXQgYW5kIFRSIG1vZGUgYXQgdGhlIGVuZCBk
b2VzIHRoZSBzYW1lIHRoaW5nLCBidXQgaW4gYSBjb21wbGV0ZWx5CmRpZmZlcmVudCB3YXkuCgot
IFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwg
MDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlr
a2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
