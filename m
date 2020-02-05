Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4A9152900
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 11:19:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjMBjf+Hx1WKEYVQQzZ/L3W3c21etzc5nyM6FVXhGMQ=; b=jY/IFn4MUhUUoO
	k6ZtOOTBzchfpt12Bds3vhO6tmFmR2Cp4ubvQm2a77X/IpnTSEY01xVHiP06KtBo2suP0nQq9Zlwo
	YLburHyjP6Dgri3Elyt6ux6jxD8io3m07s4y0Wdefzt4gQCaeMh6uoIYuAxB3sjsF1OVp+TavvMtP
	DaLPfDyUxa2RYYVojwt4ynq69yW6AYXXVI24YpNaI4Fpk1FQDwJyidRJadjAQVTdhi90VI2bPPgWP
	WIe7w0dyL4fAxh1bBQ27VbzpADDTh+8DGJkdWAuXpxD2oWrKpCGkDZGfKnQ/hQtbDeYP/wxKL/F9s
	ZC5Eg8KFhT8GzyDEbRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izHmQ-0006Fi-Od; Wed, 05 Feb 2020 10:19:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izHmJ-0006EL-Sk
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 10:19:29 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 015AJAWT038813;
 Wed, 5 Feb 2020 04:19:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580897950;
 bh=a4B3Bqd5Pf17C8VTQl7PRrNSGniXRgvhSLeM1x0d+hk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=byogR5Y93N6sxhLZuK2obDyLC3hmzVNNSkPNhl2ry7ZEcrYkt8Hqq8IySduCmkPtB
 ohzI1jKztmbskV4V7+4t9v6xsAEHReAeS1KcuOg+pfCOipcjcKomxqyKJ64H4kQq/o
 E3K6QUFcAKw8gAI++17jnsbO91gCzSVdho02fGa4=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 015AJA6F008867;
 Wed, 5 Feb 2020 04:19:10 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 5 Feb
 2020 04:19:09 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 5 Feb 2020 04:19:09 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 015AJ7R3091177;
 Wed, 5 Feb 2020 04:19:07 -0600
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when it
 is valid
To: Christoph Hellwig <hch@lst.de>
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
 <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
 <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com> <20200130075332.GA30735@lst.de>
 <b2b1cb21-3aae-2181-fd79-f63701f283c0@ti.com> <20200130164010.GA6472@lst.de>
 <c37b12e4-0e0c-afa2-a8e4-782ccd57542d@ti.com> <20200203170809.GA19293@lst.de>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <af52fd8e-4991-cbf1-2b55-c2b4496f4703@ti.com>
Date: Wed, 5 Feb 2020 12:19:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200203170809.GA19293@lst.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_021928_068589_6363C70F 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8wMi8yMDIwIDE5LjA4LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBGcmks
IEphbiAzMSwgMjAyMCBhdCAwNDowMDoyMFBNICswMjAwLCBQZXRlciBVamZhbHVzaSB3cm90ZToK
Pj4gSSBzZWUuIE15IFBvQyBwYXRjaCB3YXMgbm90IHRvbyBvZmYgdGhlbiA7KQo+PiBTbyB0aGUg
cGxhbiBpcyB0byBoYXZlIGEgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbiBmb3IgYWxsIG9mIHRoZQo+
PiBhcmNoaXRlY3R1cmUsIHJpZ2h0Pwo+IAo+INCGIGRvbid0IGtub3cgb2YgYSBjb25jcmV0ZSBw
bGFuLCBidXQgdGhhdCdzIGRlZmludGl2ZWx5IHdoYXQgSSdkIGxpa2UKPiB0byBzZWUuCj4gCj4+
Pj4gVGhlIGRtYV9wZm5fb2Zmc2V0IGlzIF9zdGlsbF8gYXBwbGllZCB0byB0aGUgbWFzayB3ZSBh
cmUgdHJ5aW5nIHRvIHNldAo+Pj4+IChhbmQgdmFsaWRhdGUpIHZpYSBkbWEtZGlyZWN0Lgo+Pj4K
Pj4+IEFuZCBmb3IgdGhlIGdlbmVyYWwgY2FzZSB0aGF0IGlzIGV4YWN0bHkgdGhlIHJpZ2h0IHRo
aW5nIHRvIGRvLCB3ZQo+Pj4ganVzdCBuZWVkIHRvIGRlYWwgd2l0aCByZWFsbHkgb2RkIFpPTkVf
RE1BIHBsYWNlbWVudHMgbGlrZSB5b3Vycy4KPj4KPj4gSSdtIHN0aWxsIG5vdCBjb252aW5jZWQs
IHRoZSBwb2ludCBvZiB0aGUgRE1BIG1hc2ssIGF0IGxlYXN0IGhvdyBJIHNlZQo+PiBpdCwgdG8g
Y2hlY2sgdGhhdCB0aGUgZG1hIGFkZHJlc3MgY2FuIGJlIGhhbmRsZWQgYnkgdGhlIGRldmljZSAo
RE1BLAo+PiBwZXJpcGhlcmFsIHdpdGggYnVpbHQgaW4gRE1BLCBldGMpLCBpdCBpcyBub3QgYWdh
aW5zdCBwaHlzaWNhbCBhZGRyZXNzLgo+PiBEb2luZyBwaHlzX3RvX2RtYSgpIG9uIHRoZSBtYXNr
IGZyb20gdGhlIGRtYV9zZXRfbWFzaygpIGlzIGp1c3Qgd3JvbmcuCj4gCj4gV2UgaGF2ZSBhIHRy
YW5zbGF0aW9uIGJldHdlZW4gdGhlIGFkZHJlc3NlcyB0aGF0IHRoZSBkZXZpY2Ugc2VlcywgYW5k
Cj4gdGhvc2UgdGhhdCB0aGUgQ1BVIHNlZXMuICBUaGUgZGV2aWNlIGNhbiBhZGRyZXNzIE4gYml0
cyBvZiBhZGRyZXNzIHNwYWNlCj4gYXMgc2VlbiBmcm9tIHRoZSBkZXZpY2UuICBUaGUgYWRkcmVz
c2VzIGVuY29kZWQgaW4gbWF4X3BmbiwKPiB6b25lX2RtYV9iaXRzIG9yIHRoZSBoYXJjb2RlZCAz
MiBpbiB0aGUgem9uZSBkbWEgMzIgY2FzZSBhcmUgQ1BVIGFkZHJlc3MuCj4gU28gbm8sIHdlIGNh
bid0IGJsaW5kbHkgY29tcGFyZSB0aG9zZS4KClJpZ2h0LCB0aGFua3MgZm9yIHRoZSBleHBsYW5h
dGlvbi4KCj4+PiBCdXQgdGhhdCB3aWxsIGNhdXNlIHlldCBhbm90aGVyIHJlZ3Jlc3Npb24gaW4g
d2hhdCB3ZSBoYXZlIGp1c3QgZml4ZWQKPj4+IHdpdGggdXNpbmcgdGhlIGdlbmVyaWMgZGlyZWN0
IG9wcywgYXQgd2hpY2ggcG9pbnRzIGl0IHR1cm5zIGludG8gd2hvCj4+PiBzY3JlYW1zIGxvdWRl
ci4KPj4KPj4gSGVoZSwgSSBzZWUuCj4+IEkgZ2VudWluZWx5IGN1cmlvdXMgd2h5IGsyIHBsYXRm
b3JtIHdvcmtlZCBqdXN0IGZpbmUgd2l0aCBMUEFFIChpdCBuZWVkcwo+PiBpdCksIGJ1dCBndXlz
IGhhZCBpc3N1ZXMgd2l0aCBMUEFFIG9uIGRyYTcvYW01Lgo+PiBUaGUgZml4IGZvciBkcmE3L2Ft
NSBicm9rZSBrMi4KPj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGUgbWFpbiAob25seSkgZGlmZmVy
ZW5jZSBpcyB0aGF0IGsyIGhhdmUKPj4gZG1hX3Bmbl9vZmZzZXQgPSAweDc4MDAwMCwgd2hpbGUg
ZHJhNy9hbTUgaGF2ZSBpdCAwIChyZWFsbHkgZGlyZWN0IG1hcHBpbmcpLgo+IAo+IEhvdyBtdWNo
IG1lbW9yeSBkb2VzIHRoZSBwbGF0Zm9ybSBoYXZlPwoKVGhlIGJvYXJkcyB3aGljaCBpcyBib290
YWJsZSBpbiBtYWlubGluZSBoYXZlIG1heGltdW0gb2YgMkcsIHRoZXJlIG1pZ2h0CmJlIGN1c3Rv
bSBib2FyZHMgd2l0aCBtb3JlIFJBTSwgYnV0IEknbSBub3QgYXdhcmUgb2YgdGhlbS4KCj4gT25j
ZSB5b3UgYXJlIGFib3ZlIDMyLWJpdHMgd29ydGgKPiBvZiBhZGRyZXNzIHNwYWNlIGRldmljZXMg
d2l0aCBhIDMyLWJpdCBETUEgbWFzayBjYW4ndCBhZGRyZXNzIGFsbCB0aGUKPiBtZW1vcnkuICBO
b3cgaWYgazIgZm9yIGV4YW1wbGUgb25seSBoYWQgbGVzcyB0aGFuIDRHIG9mIG1lbW9yeSwgYnV0
IGF0Cj4gYWRkcmVzc2VzIG92ZXIgNEcsIGFuZCB0aGUgb2Zmc2V0IGNvbXBlbnNhdGVzIGZvciB0
aGUgb2Zmc2V0IG9mIHRoZSBEUkFNCj4gaXQgd29ya3Mgd2l0aG91dCBib3VuY2UgYnVmZmVyaW5n
IGFuZCB0aHVzIGRpZG4ndCBuZWVkIHN3aW90bGIuICBCdXQgYW55Cj4gcGxhdGZvcm0gdGhhdCBo
YXMgRFJBTSB0aGF0IGlzIG5vdCBhZGRyZXNzYWJsZSB3aWxsIG5lZWQgc3dpb3RsYi4KCkkgc2Vl
LCBzaW5jZSB3ZSBoYXZlIG1heGltdW0gb2YgMkcsIHdoaWNoIGlzIG1pcnJvcmVkIGF0IDB4ODAw
MDAwMDAgZm9yCmRldmljZXMgd2UgbmV2ZXIgbmVlZGVkIHRoZSBhc3Npc3RhbmNlIGZyb20gc3dp
b3RsYiBmb3IgYm91bmNlIGJ1ZmZlcmluZwphbmQgdGhhdCdzIHdoeSB0aGUgYXJtIG9wcyB3b3Jr
ZWQgZmluZS4KCj4gCj4+PiAgCXU2NCBtaW5fbWFzazsKPj4+ICAKPj4+ICsJaWYgKG1hc2sgPj0g
RE1BX0JJVF9NQVNLKDMyKSkKPj4+ICsJCXJldHVybiAxOwo+Pj4gKwo+Pgo+PiBSaWdodCwgc28g
c2tpcHBpbmcgcGh5c190b19kbWEoKSBmb3IgdGhlIG1hc2sgYW5kIGJlbGlldmluZyB0aGF0IGl0
IHdpbGwKPj4gd29yay4uCj4+Cj4+IEl0IGRvZXM6IGF1ZGlvIGFuZCBkbWF0ZXN0IG1lbWNweSB0
ZXN0cyBhcmUganVzdCBmaW5lIHdpdGggdGhpcywgTU1DCj4+IGFsc28gcHJvYmVkIHdpdGggQURN
QSBlbmFibGVkLgo+Pgo+PiBBcyBmYXIgYXMgSSBjYW4gdGVsbCBpdCB3b3JrcyBhcyB3ZWxsIGFz
IGZhbGxpbmcgYmFjayB0byB0aGUgb2xkIGFybSBvcHMKPj4gaW4gY2FzZSBvZiBMUEFFICYmIGRt
YV9wZm5fb2Zmc2V0ICE9IDAKPj4KPj4gRndpdzoKPj4gVGVzdGVkLWJ5OiBQZXRlciBVamZhbHVz
aSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+Pgo+PiBXb3VsZCB5b3UgYmUgY29tZm9ydGFibGUg
dG8gc2VuZCB0aGlzIHBhdGNoIGZvciBtYWlubGluZSB3aXRoCj4+IEZpeGVzOiBhZDNjN2IxOGM1
YjMgKCJhcm06IHVzZSBzd2lvdGxiIGZvciBib3VuY2UgYnVmZmVyaW5nIG9uIExQQUUKPj4gY29u
ZmlncyIpCj4gCj4gVGhhdCBpcyB0aGUgYmlnIHF1ZXN0aW9uLiAgSSBkb24ndCBmZWVsIG92ZXJs
eSBjb21mb3J0YWJsZSBhcyBJJ3ZlIGJlZW4KPiB0cnlpbmcgdG8gZ2V0IHRoaXMgcmlnaHQsIGJ1
dCBzbyBmYXIgaXQgc2VlbXMgbGlrZSB0aGUgbGVhc3QgYmFkIG9wdGlvbi4KPiBJJ2xsIHNlbmQg
b3V0IGEgcHJvcGVyIHBhdGNoIHdpdGggdXBkYXRlZCBjb21tZW50cyBhbmQgd2lsbCBzZWUgd2hh
dAo+IHBlb3BsZSB0aGluay4KCkkgdW5kZXJzdGFuZCBhbmQgdGhhbmsgeW91IGZvciB0aGUgcGF0
Y2gsIGl0IG1ha2VzIGsyIHBsYXRmb3JtIHdvcmtpbmcKYWdhaW4hCgotIFDDqXRlcgoKVGV4YXMg
SW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2ku
ClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhl
bHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
