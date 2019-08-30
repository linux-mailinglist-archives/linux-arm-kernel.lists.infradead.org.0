Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E96AA3372
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GFW7nhl28aIC4ECuUJJJ7wysgYRpfSCSq2hAPkYDBdk=; b=kXoBWBVs/iOHqfHQJuVOakJ8k
	WnD85ytva+0ilyQAneZ640Q/FAObVG6jIIwtK198dYygnqRHgtY7JN04meWgwLmazR31/9eII02iY
	lpk9F4hYE4cji67GF869l/BmrrOow7Vef/W2fyntHvnCW2e6H1LAq9vMchG9xIdMkDwwRcb1q50IU
	51P2bKs44N6NuJnPtfqrnoVznFpkvR15Q6oNXjMKCLtD6/KCOwyms9t+ltw/wIY9FU8p6NqU30wEb
	mKpxNiIqnFiX7yGOy0QX+it8zmDsI9wFmtxQMqWzF1arj8M2Hfq6J9aOZA+5dTfF2d7eMC99LMWAy
	0S+j2mMVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cwl-00057z-Qd; Fri, 30 Aug 2019 09:11:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cwa-00057d-UR
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:11:46 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7U9BfWW059779;
 Fri, 30 Aug 2019 04:11:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567156301;
 bh=OtXMxri5W+7xhTSgK5b0Vzq5/gd7fFmm+bEt3fupLqQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=zTgmDV9Q/NldjyKWuoRTvZrdi6fxNNypfUAREAEOZSpsqq8kASInGw5+G4zcJtcV+
 vmNse6XPBX6pHNLjx9vu3IBbakbqqGTWoRAzOcfUmv2ccUIxwqCkI1oSHUuxuufH5g
 /Igos2qRNF2R4hA9qwujZEZLOpV5lvsVHDnhHaN0=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7U9BfY1052178
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 04:11:41 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 04:11:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 04:11:41 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7U9Bcdv120663;
 Fri, 30 Aug 2019 04:11:39 -0500
Subject: Re: [PATCHv2 02/11] soc: ti: add initial PRM driver with reset
 control support
To: Philipp Zabel <p.zabel@pengutronix.de>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <20190828071941.32378-1-t-kristo@ti.com>
 <20190828071941.32378-3-t-kristo@ti.com>
 <1567084339.5345.7.camel@pengutronix.de>
 <049da607-c352-4ed1-9a2d-2374d7a7e372@ti.com>
 <1567155748.3714.1.camel@pengutronix.de>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <11b891ea-7f5c-40fa-89b6-7e5b924cfb99@ti.com>
Date: Fri, 30 Aug 2019 12:11:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567155748.3714.1.camel@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_021145_067906_B18D0EF0 
X-CRM114-Status: GOOD (  27.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDgvMjAxOSAxMjowMiwgUGhpbGlwcCBaYWJlbCB3cm90ZToKPiBIaSBUZXJvLAo+IAo+
IE9uIEZyaSwgMjAxOS0wOC0zMCBhdCAxMDoyOCArMDMwMCwgVGVybyBLcmlzdG8gd3JvdGU6Cj4+
IE9uIDI5LzA4LzIwMTkgMTY6MTIsIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4gWy4uLl0KPj4+IEkg
d29uZGVyIGlmIHNwbGl0dGluZyByc3RjdHJsL3JzdHN0L3JzdG1hcCBvdXQgaW50byBhIHNlcGFy
YXRlIHN0cnVjdHVyZQo+Pj4gd291bGQgbWFrZSBzZW5zZS4gVGhhdCBjb3VsZCBiZSBsaW5rZWQg
ZnJvbSBvbWFwX3Jlc2V0X2RhdGEgZGlyZWN0bHkuCj4+PiBUaGF0IG9ubHkgbWFrZXMgc2Vuc2Ug
aWYgdGhlcmUnZCBiZSBlbm91Z2ggY2FzZXMgd2hlcmUgaXQgY2FuIGJlIHJldXNlZAo+Pj4gZm9y
IG11bHRpcGxlIFBSTXMgaW5zdGFuY2VzLgo+Pgo+PiBIbW0sIHNwbGl0dGluZyB0aGVzZSBvdXQg
d291bGQgbWFrZSBpdCBwb3NzaWJsZSB0byBzaGFyZSB0aGUgYml0cyBmb3IKPj4gaXB1OnMgYWNy
b3NzIGRldmljZXMsIHNhbWUgZm9yIGRzcDpzIGFuZCBldmU6cy4KPj4KPj4gSG93ZXZlciwgYWRk
aW5nIHRvbyBtYW55IGxldmVscyBvZiBhYnN0cmFjdGlvbiBtYWtlcyBpdCBraW5kIG9mCj4+IGRp
ZmZpY3VsdCB0byBmb2xsb3cgd2hhdCBpcyBoYXBwZW5pbmcgd2l0aCB0aGUgY29kZSwgYW5kIGl0
IHdvdWxkIG9ubHkKPj4gc2F2ZSBtYXliZSB+MTAwIGJ5dGVzIG9mIG1lbW9yeSBhdCB0aGUgbW9t
ZW50Lgo+IAo+IEdvb2QgcG9pbnQsIHRoYXQgaXMgbGlrZWx5IG5vdCB3b3J0aCB0aGUgYWRkaXRp
b25hbCBjb21wbGV4aXR5Lgo+IAo+IFsuLi5dCj4+PiBXaGF0IGRvZXMgdGhlIHZhbHVlIHJlYWQg
ZnJvbSB0aGUgcnN0c3QgcmVnaXN0ZXIgaW5kaWNhdGU/IElzIGl0IHRoZQo+Pj4gY3VycmVudCBz
dGF0ZSBvZiB0aGUgcmVzZXQgbGluZT8gSXMgaXQgMCB1bnRpbCBkZWFzc2VydGlvbiBpcyBjb21w
bGV0ZWQsCj4+PiBhbmQgdGhlbiBpdCB0dXJucyB0byAxPwo+Pgo+PiBWYWx1ZSBvZiAxIGluZGlj
YXRlcyB0aGF0IHRoZSBjb3JyZXNwb25kaW5nIElQIGhhcyBiZWVuIHJlc2V0Cj4+IHN1Y2Nlc3Nm
dWxseS4gV3JpdGluZyBiYWNrIDEgdG8gdGhlIHNhbWUgYml0IGNsZWFycyBpdCBvdXQsIHNvIHRo
ZQo+PiBzdGF0dXMgY2FuIGJlIHBvbGxlZCBsYXRlciBvbi4KPiAKPiBUaGVuIHRoaXMgc2hvdWxk
IG5vdCBiZSByZXR1cm5lZCBkaXJlY3RseSBieSByZXNldF9jb250cm9sX3N0YXR1czoKPiAKPiAv
KioKPiAgwqAqIHJlc2V0X2NvbnRyb2xfc3RhdHVzIC0gcmV0dXJucyBhIG5lZ2F0aXZlIGVycm5v
IGlmIG5vdCBzdXBwb3J0ZWQsIGEKPiAgwqAqIHBvc2l0aXZlIHZhbHVlIGlmIHRoZSByZXNldCBs
aW5lIGlzIGFzc2VydGVkLCBvciB6ZXJvIGlmIHRoZSByZXNldAo+ICDCoCogbGluZSBpcyBub3Qg
YXNzZXJ0ZWQgb3IgaWYgdGhlIGRlc2MgaXMgTlVMTCAob3B0aW9uYWwgcmVzZXQpLgo+ICDCoCov
Cj4gCj4gVGhpcyBzaG91bGQgcmV0dXJuIDAgb25seSBpZiB0aGUgY29udHJvbCBiaXQgaXMgZGVh
c3NlcnRlZCBhbmQgdGhlCj4gc3RhdHVzIGJpdCBpcyBhbHJlYWR5IHNldC4KPiAKPiBJZiBlaXRo
ZXIgdGhlIGNvbnRyb2wgYml0IGlzIGFzc2VydGVkLCBvciBpZiB0aGUgc3RhdHVzIGJpdCBpcyBz
dGlsbAo+IGNsZWFyZWQsIHRoaXMgc2hvdWxkIHJldHVybiAxLgoKSG1tIG9rLCBsZXQgbWUgZml4
IHRoYXQgYSBiaXQgYWxzby4KCj4gCj4gWy4uLl0KPj4+PiArCXJlcyA9IHBsYXRmb3JtX2dldF9y
ZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4+Pj4gKwlpZiAoIXJlcykKPj4+PiAr
CQlyZXR1cm4gLUVOT0RFVjsKPj4+Cj4+PiBUaGlzIGNhbiBiZSBtZXJnZWQgd2l0aMKgZGV2bV9p
b3JlbWFwX3Jlc291cmNlIGJlbG93Lgo+Pgo+PiBXZWxsLCBJIGFjdHVhbGx5IHVzZSB0aGUgInJl
cyIgbGF0ZXIgb24gdG8gbWFwIHRoZSBEVCBub2RlIHRvIHRoZQo+PiBjb3JyZXNwb25kaW5nIHBy
bV9kYXRhIGJhc2VkIG9uIGFkZHJlc3MuCj4gCj4gT2suIEkgZ2xhbmNlZCBvdmVyIHRoZSBkYXRh
LT5iYXNlIGxvb3AgYmVsb3cgYWZ0ZXIgcXVlc3Rpb25pbmcgd2hldGhlcgo+IGl0IGlzIG5lZWRl
ZCBhdCBhbGwuCj4gCj4+Pgo+Pj4+ICsJbWF0Y2ggPSBvZl9tYXRjaF9kZXZpY2Uob21hcF9wcm1f
aWRfdGFibGUsICZwZGV2LT5kZXYpOwo+Pj4+ICsJaWYgKCFtYXRjaCkKPj4+PiArCQlyZXR1cm4g
LUVOT1RTVVBQOwo+Pj4+ICsKPj4+PiArCXBybSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBz
aXplb2YoKnBybSksIEdGUF9LRVJORUwpOwo+Pj4+ICsJaWYgKCFwcm0pCj4+Pj4gKwkJcmV0dXJu
IC1FTk9NRU07Cj4+Pj4gKwo+Pj4+ICsJZGF0YSA9IG1hdGNoLT5kYXRhOwo+Pj4+ICsKPj4+PiAr
CXdoaWxlIChkYXRhLT5iYXNlICE9IHJlcy0+c3RhcnQpIHsKPj4+PiArCQlpZiAoIWRhdGEtPmJh
c2UpCj4+Pj4gKwkJCXJldHVybiAtRUlOVkFMOwo+Pj4+ICsJCWRhdGErKzsKPj4+PiArCX0KPj4+
Cj4+PiBJcyB0aGlzIG5vdCBzb21ldGhpbmcgdGhhdCB5b3Ugd2FudCB0byBoYXZlIGVuY29kZWQg
aW4gdGhlIGNvbXBhdGlibGUKPj4+IHN0cmluZz8gVGhleSBhbGwgaGF2ZSBhIGRpZmZlcmVudCBy
ZWdpc3RlciBsYXlvdXQuCj4+Cj4+IFdpdGggdGhlIGFkZGl0aW9uIG9mIGFsbCB0aGUgcHJtIGlu
c3RhbmNlcyBsYXRlciBvbiwgdGhpcyBjaGFuZ2VzLiBNb3N0Cj4+IG9mIHRoZSBwcm0gaW5zdGFu
Y2VzIHdpbGwgaGF2ZSBzYW1lIHJlZ2lzdGVyIGxheW91dCB0aGVuLiBTZWUgdjEgZGF0YQo+PiB0
aGF0IHdhcyBwb3N0ZWQgZWFybGllciBbMV0sIGJ1dCB3aGljaCBJIGRyb3BwZWQgZm9yIG5vdyB0
byBrZWVwIHRoaXMKPj4gc2VyaWVzIGlzb2xhdGVkIGZvciByZXNldCBoYW5kbGluZyBvbmx5LiBJ
biB0aGlzIHBhdGNoLCB5b3Ugc2VlIHRoYXQgZm9yCj4+IERSQTcsIGFsbCB0aGUgcG93ZXIgZG9t
YWluIGhhbmRsaW5nIHJlbGF0ZWQgUFJNIGluc3RhbmNlcyBoYXZlIGlkZW50aWNhbAo+PiByZWdp
c3RlciBsYXlvdXQsIHRoZXkganVzdCBkaWZmZXIgYmFzZWQgb24gYmFzZSBhZGRyZXNzLgo+Pgo+
PiBbMV0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtb21hcC9tc2cxNDk4NzIu
aHRtbAo+Pgo+PiBJdCB3b3VsZCBiZSBwb3NzaWJsZSB0byBlbmNvZGUgYWxsIG9mIHRoaXMgYmFz
ZWQgb24gZGlmZmVyZW50Cj4+IGNvbXBhdGlibGVzLCBidXQgdGhlbiB0aGUgYW1vdW50IG9mIGRp
ZmZlcmVudCBjb21wYXRpYmxlIHN0cmluZ3Mgd291bGQKPj4gZXhwbG9kZS4uLiBEUkE3IGlzIGp1
c3Qgb25lIFNvQy4KPiAKPiBJIHNlZSBvbmx5IDMgZGlmZmVyZW50IGxheW91dHMgaW4gdGhhdCBw
YXRjaC4gQWxsIGluc3RhbmNlcyB3aXRoCj4gaWRlbnRpY2FsIGxheW91dCBjb3VsZCBzaGFyZSB0
aGUgc2FtZSBjb21wYXRpYmxlLgo+IAo+IEVpdGhlciB3YXksIHRoYXQgaXMgRFQgYmluZGluZ3Mg
dGVycml0b3J5LCBhbmQgbm90IGZvciBtZSB0byBkZWNpZGUuIEkKPiBqdXN0IGZvdW5kIGl0IHVu
dXN1YWwgdG8gZW5jb2RlIHRoZSBkZXZpY2UgdHlwZSBieSBpdHMgYmFzZSBhZGRyZXNzIGluCj4g
dGhlIGRyaXZlci4KCkknbGwgdHJ5IHRvIHBva2UgUm9iIGZvciBjb21tZW50IG9uIHRoYXQgb24g
dGhlIGJpbmRpbmdzIHBhdGNoLgoKPiAKPj4+Cj4+Pj4gKwo+Pj4+ICsJcHJtLT5kYXRhID0gZGF0
YTsKPj4+PiArCj4+Pj4gKwlwcm0tPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYt
PmRldiwgcmVzKTsKPj4+Cj4+PiAJcHJtLT5iYXNlID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jl
c291cmNlKHBkZXYsIDApOwo+Pgo+PiBJIHN0aWxsIG5lZWQgdGhlICJyZXMiIHBvaW50ZXIgYXMg
aW5kaWNhdGVkIGFib3ZlLgo+IAo+IEdvdCBpdC4gSWYgdGhlIGxvb2t1cCBieSBiYXNlIGFkZHJl
c3MgaXMgbmVlZGVkLCB0aGlzIGhhcyB0byBzdGF5IHNwbGl0LgoKT2sgdGhhbmtzIGZvciB0aGUg
cmV2aWV3cywgbXVjaCBhcHByZWNpYXRlZC4gSSdsbCBzZWUgaWYgSSBjYW4gZ2V0IHJlcGx5IApm
cm9tIFJvYiBvbiB0aGUgYmluZGluZyBpdGVtLCBvdGhlcndpc2UgSSBtaWdodCBqdXN0IHNlbmQg
djIgd2l0aCB0aGUgCmV4aXN0aW5nIGJpbmRpbmdzIG91dCBhbmQgc2VuZCBhIHYzIHdpdGggdXBk
YXRlZCBiaW5kaW5ncyBpZiBuZWNlc3NhcnkuCgotVGVybwotLQpUZXhhcyBJbnN0cnVtZW50cyBG
aW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4gWS10dW5udXMvQnVz
aW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
