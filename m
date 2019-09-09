Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4775BAD347
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 08:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXt/jTexF2SoSTSRYq2uXTrSH9PcSVGmcojm8qsnIMA=; b=VDO+k+F0In6aBQ
	40s5q0PV7b9lVMGMK+Xinr5ZXB9ekvO0NcMQKKgncoaLN4e9K1omfGsWyzONO2YrvA2+8c7NmKJzq
	L62UFIIVC45hhxr8j/52OBvkCjy6Weg4GtqzWKt5a7YYOB5+iXswwsmP/vC3WJkJSs0YdtJ32ACPV
	otgH3ng1b9AbQGG3+KbNeCXRsIJY/bPFP3SVBexLCt1f6rgbs9AmWNUAme/cNfH2Yzg1HiAIyOh6R
	8UjG4fJAVvRzTRxLDGx5fUbLFBX0yzbZ3Wltvb8rRTD0tFRmjoQEPkHHB1LpmP9V/in66zNW9vwFv
	R9XFMq7XOrR4TjiYFFfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7DXa-0001LI-6z; Mon, 09 Sep 2019 06:52:46 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7DX9-0001Kw-Ee
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 06:52:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x896qB1N051914;
 Mon, 9 Sep 2019 01:52:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568011931;
 bh=zG7j/FKdnKJGi5S4/+DCXgAmeaLRvacq3SV1zBDjDK8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WKgZcs86xvkImDeZTlWxI+8ij8tctOXjcls20eW2N/bICrWbMQ8eXxRNUA6WGaDpd
 UzRXpMUYomZH4/+IIuvhgioZDGynFptCHw5uKdFxLnliospaaChQs+WX8DzUHc2q5S
 5StTng57b+ELtdUOKiZ9lnxXUmb9eldTeMb3K9Ww=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x896qARe005981
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Sep 2019 01:52:11 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 9 Sep
 2019 01:52:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 9 Sep 2019 01:52:10 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x896q69W031378;
 Mon, 9 Sep 2019 01:52:07 -0500
Subject: Re: [PATCH v2 04/14] dmaengine: Add metadata_ops for
 dma_async_tx_descriptor
To: Vinod Koul <vkoul@kernel.org>, Radhey Shyam Pandey <radheys@xilinx.com>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
 <20190730093450.12664-5-peter.ujfalusi@ti.com>
 <20190908141207.GO2672@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <0ccf3880-935f-be54-0f62-e57762141af1@ti.com>
Date: Mon, 9 Sep 2019 09:52:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190908141207.GO2672@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_235219_807197_74F9A342 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Menon, Nishanth" <nm@ti.com>, devicetree@vger.kernel.org,
 grygorii.strashko@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOC8wOS8yMDE5IDE3LjEyLCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDMwLTA3LTE5LCAx
MjozNCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IFRoZSBtZXRhZGF0YSBpcyBiZXN0IGRlc2Ny
aWJlZCBhcyBzaWRlIGJhbmQgZGF0YSBvciBwYXJhbWV0ZXJzIHRyYXZlbGluZwo+PiBhbG9uZ3Np
ZGUgdGhlIGRhdGEgRE1BZCBieSB0aGUgRE1BIGVuZ2luZS4gSXQgaXMgZGF0YQo+PiB3aGljaCBp
cyB1bmRlcnN0b29kIGJ5IHRoZSBwZXJpcGhlcmFsIGFuZCB0aGUgcGVyaXBoZXJhbCBkcml2ZXIg
b25seSwgdGhlCj4+IERNQSBlbmdpbmUgc2VlIGl0IG9ubHkgYXMgZGF0YSBibG9jayBhbmQgaXQg
aXMgbm90IGludGVycHJldGluZyBpdCBpbiBhbnkKPj4gd2F5Lgo+Pgo+PiBUaGUgbWV0YWRhdGEg
Y2FuIGJlIGRpZmZlcmVudCBwZXIgZGVzY3JpcHRvciBhcyBpdCBpcyBhIHBhcmFtZXRlciBmb3Ig
dGhlCj4+IGRhdGEgYmVpbmcgdHJhbnNmZXJyZWQuCj4+Cj4+IElmIHRoZSBETUEgc3VwcG9ydHMg
cGVyIGRlc2NyaXB0b3IgbWV0YWRhdGEgaXQgY2FuIGltcGxlbWVudCB0aGUgYXR0YWNoLAo+PiBn
ZXRfcHRyL3NldF9sZW4gY2FsbGJhY2tzLgo+Pgo+PiBDbGllbnQgZHJpdmVycyBtdXN0IG9ubHkg
dXNlIGVpdGhlciBhdHRhY2ggb3IgZ2V0X3B0ci9zZXRfbGVuIHRvIGF2b2lkCj4+IG1pc2NvbmZp
Z3VyYXRpb24uCj4+Cj4+IENsaWVudCBkcml2ZXIgY2FuIGNoZWNrIGlmIGEgZ2l2ZW4gbWV0YWRh
dGEgbW9kZSBpcyBzdXBwb3J0ZWQgYnkgdGhlCj4+IGNoYW5uZWwgZHVyaW5nIHByb2JlIHRpbWUg
d2l0aAo+PiBkbWFlbmdpbmVfaXNfbWV0YWRhdGFfbW9kZV9zdXBwb3J0ZWQoY2hhbiwgREVTQ19N
RVRBREFUQV9DTElFTlQpOwo+PiBkbWFlbmdpbmVfaXNfbWV0YWRhdGFfbW9kZV9zdXBwb3J0ZWQo
Y2hhbiwgREVTQ19NRVRBREFUQV9FTkdJTkUpOwo+Pgo+PiBhbmQgYmFzZWQgb24gdGhpcyBpbmZv
cm1hdGlvbiBjYW4gdXNlIGVpdGhlciBtb2RlLgo+Pgo+PiBXcmFwcGVycyBhcmUgYWxzbyBhZGRl
ZCBmb3IgdGhlIG1ldGFkYXRhX29wcy4KPj4KPj4gVG8gYmUgdXNlZCBpbiBERVNDX01FVEFEQVRB
X0NMSUVOVCBtb2RlOgo+PiBkbWFlbmdpbmVfZGVzY19hdHRhY2hfbWV0YWRhdGEoKQo+Pgo+PiBU
byBiZSB1c2VkIGluIERFU0NfTUVUQURBVEFfRU5HSU5FIG1vZGU6Cj4+IGRtYWVuZ2luZV9kZXNj
X2dldF9tZXRhZGF0YV9wdHIoKQo+PiBkbWFlbmdpbmVfZGVzY19zZXRfbWV0YWRhdGFfbGVuKCkK
Pj4KPj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNv
bT4KPj4gLS0tCj4+ICBkcml2ZXJzL2RtYS9kbWFlbmdpbmUuYyAgIHwgIDczICsrKysrKysrKysr
KysrKysrKysrKysrKysrCj4+ICBpbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oIHwgMTA4ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDE4
MSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9kbWFlbmdpbmUu
YyBiL2RyaXZlcnMvZG1hL2RtYWVuZ2luZS5jCj4+IGluZGV4IDAzYWM0Yjk2MTE3Yy4uNmJhZGRm
N2RjYmZkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RtYS9kbWFlbmdpbmUuYwo+PiArKysgYi9k
cml2ZXJzL2RtYS9kbWFlbmdpbmUuYwo+PiBAQCAtMTMwMiw2ICsxMzAyLDc5IEBAIHZvaWQgZG1h
X2FzeW5jX3R4X2Rlc2NyaXB0b3JfaW5pdChzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3Ig
KnR4LAo+PiAgfQo+PiAgRVhQT1JUX1NZTUJPTChkbWFfYXN5bmNfdHhfZGVzY3JpcHRvcl9pbml0
KTsKPj4gIAo+PiArc3RhdGljIGlubGluZSBpbnQgZGVzY19jaGVja19hbmRfc2V0X21ldGFkYXRh
X21vZGUoCj4+ICsJc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpkZXNjLCBlbnVtIGRt
YV9kZXNjX21ldGFkYXRhX21vZGUgbW9kZSkKPj4gK3sKPj4gKwkvKiBNYWtlIHN1cmUgdGhhdCB0
aGUgbWV0YWRhdGEgbW9kZSBpcyBub3QgbWl4ZWQgKi8KPj4gKwlpZiAoIWRlc2MtPmRlc2NfbWV0
YWRhdGFfbW9kZSkgewo+PiArCQlpZiAoZG1hZW5naW5lX2lzX21ldGFkYXRhX21vZGVfc3VwcG9y
dGVkKGRlc2MtPmNoYW4sIG1vZGUpKQo+PiArCQkJZGVzYy0+ZGVzY19tZXRhZGF0YV9tb2RlID0g
bW9kZTsKPiAKPiBTbyBkbyB3ZSBoYXZlIGRpZmZlcmVudCBkZXNjcmlwdG9ycyBzdXBwb3J0aW5n
IGRpZmZlcmVudCBtb2RlcyBvciBpcyBpdAo+IGNvbnRyb2xsZWQgYmFzZWQ/IEZvciBsYXR0ZXIg
d2UgY2FuIGRvIHRoaXMgY2hlY2sgYXQgY29udHJvbGxlcgo+IHJlZ2lzdHJhdGlvbiEKCkl0IGlz
IGFjdHVhbGx5IG9uIGNoYW5uZWwgYmFzaXMgKGluIFVETUFQKToKVFIgY2hhbm5lbCBkb2VzIG5v
dCBzdXBwb3J0IG1ldGFkYXRhIGF0IGFsbC4KUGFja2V0IE1vZGUgY2hhbm5lbCBoYXZlIHN1cHBv
cnQgZm9yIG1ldGFkYXRhLCBidXQgaXQgbWlnaHQgbm90IGJlCmF2YWlsYWJsZSBmb3IgY2VydGFp
biByZW1vdGUgcGVyaXBoZXJhbHMuIFBETUFzIGZvciBleGFtcGxlIGRvZXMgbm90IHVzZQptZXRh
ZGF0YS4KQW55IGNoYW5uZWwgY2FuIGJlIGNvbmZpZ3VyZWQgYXMgVFIgb3IgUGFja2V0IE1vZGUs
IGFueSBjaGFubmVsIGNhbgpzZXJ2aWNlIGEgcGVyaXBoZXJhbCB3aGljaCBuZWVkcyBvciBkb2Vz
IG5vdCBuZWVkIG1ldGFkYXRhLgoKVGhlIHJlYXNvbiB3ZSBlbmRlZCB1cCBwZXIgZGVzY3JpcHRv
ciBjYWxsYmFja3Mgd2l0aCBSYWRoZXkgKGFkZGVkIHRvCkNDKSBpcyB0aGF0IGFsbCBmdW5jdGlv
bnMgb3BlcmF0ZSBvbiB0aGUgZGVzY3JpcHRvciBhbmQgaXQgd2FzIG5hdHVyYWwKdG8gaGF2ZSB0
aGVtIGF0dGFjaGVkIHRvIHRoZSBkZXNjcmlwdG9yIHJhdGhlciB0aGFuIGFkZCBjaGFubmVsIGJh
c2VkCmNhbGxiYWNrcyB3aGljaCBtdXN0IGFsc28gdGFrZSB0aGUgZGVzY3JpcHRvciBwb2ludGVy
IGluIGFkZGl0aW9uLiBUaGUKZGVzY3JpcHRvciBoYXZlIHBvaW50ZXIgdG8gdGhlIGNoYW5uZWwg
aXQgaXMgaXNzdWVkIG9uLgoKSSBvbmx5IGtub3cgaWYgbWV0YWRhdGEgaXMgZ29pbmcgdG8gYmUg
c3VwcG9ydGVkIHdoZW4gdGhlIGNoYW5uZWwgaXMKcmVxdWVzdGVkLCBiYXNlZCBvbiB0aGUgcHNp
bC1jb25maWcgb2YgdGhlIHJlbW90ZSB0aHJlYWQuCgpDbGllbnRzIHN0aWxsIGNhbiBjaGVjayBh
bmQgcGxhbiBhaGVhZCBvbiBob3cgdG8gdXNlIHRoZSBtZXRhZGF0YS4KCi0gUMOpdGVyCgpUZXhh
cyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5r
aS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTog
SGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
