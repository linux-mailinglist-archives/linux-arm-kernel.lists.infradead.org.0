Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D7D13F7C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PvUFNIEvskYJ4ogXCTAsRhcLJe2QcFddVH5X9wuCMrY=; b=jTVboTPLe0n5tu8xI5k5dyuZ/
	EGrPdLT30KApzFKfLLnPsre1UXzUlo1SU4uBskhue8fB0k/L1+2uNeZ5tscxwIytb7l7LKUd2ThfV
	xGxh23RF13xiIOyRVgl3ErTDXLgolDdPsmI1Q8TxruaOsUcRgaTophrK5EKG3zJ1R7mS2UmwHOudc
	GLhyq6i7DjFzOoCxEWE/aDacBewzdRbKdaxFDWauHnQx+UTDH5hJ02+s8Z00O2GiYmRmaVXlVj+bK
	dMZxzho6pXeUtOofBlYEd1LmX89IDjWxM2c4CZsKZikvHae3TJCAcPKAJoN7/m65X0t+L9NnoaKGG
	O37thklnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAaW-0000Mv-Md; Thu, 16 Jan 2020 19:13:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isAaL-0000Jz-MS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:13:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F021113E;
 Thu, 16 Jan 2020 11:13:37 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B37EE3F534;
 Thu, 16 Jan 2020 11:13:35 -0800 (PST)
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when it
 is valid
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, hch@lst.de
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
Date: Thu, 16 Jan 2020 19:13:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_111341_919838_DC9CC305 
X-CRM114-Status: GOOD (  35.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 rogerq@ti.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDEvMjAyMCAxMTo1MCBhbSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gCj4gCj4gT24g
MTQvMDEvMjAyMCAyMC4xOSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAxNC8wMS8yMDIwIDQ6
NDMgcG0sIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+Pj4gVGhlIGRtYV9wZm5fb2Zmc2V0IHNob3Vs
ZCBvbmx5IGJlIGFwcGxpZWQgdG8gYW4gYWRkcmVzcyB3aGljaCBpcwo+Pj4gd2l0aGluIHRoZQo+
Pj4gZG1hLXJhbmdlcyByYW5nZS4gQW55IGFkZHJlc3Mgb3V0c2lkZSBzaG91bGQgaGF2ZSBvZmZz
ZXQgYXMgMC4KPj4KPj4gTm8sIHRoYXQncyB3cm9uZy4gSWYgYSBub24tZW1wdHkgZG1hLXJhbmdl
cyBpcyBwcmVzZW50LCB0aGVuIGFkZHJlc3Nlcwo+PiB3aGljaCBkbyBub3QgZmFsbCB3aXRoaW4g
YW55IHNwZWNpZmllZCByYW5nZSBhcmUgaW52YWxpZCBhbHRvZ2V0aGVyLgo+IAo+IEl0IGlzIG5v
dCBleHBsaWNpdGx5IHN0YXRlZCBieSB0aGUgc3BlY2lmaWNhdGlvbiwgYnV0IGNhbiBiZSBpbnRl
cnByZXRlZAo+IGxpa2UgdGhhdCBhbmQgZnJvbSBhIHBvdyBpdCBkb2VzIG1ha2Ugc2Vuc2UgdG8g
dHJlYXQgdGhpbmdzIGxpa2UgdGhhdC4KClllcywgRFRzcGVjIGRvZXNuJ3QgZXhwbGljaXRseSBz
YXkgc28sIGJ1dCBpdCBkb2VzIGZvbGxvdyBmYWlybHkgCmxvZ2ljYWxseSBmcm9tIHRoZSBkZWZp
bml0aW9uIG9mICJyYW5nZXMiLyJkbWEtcmFuZ2VzIiBhcyBhIHRyYW5zbGF0aW9uIApiZXR3ZWVu
IGFkZHJlc3Mgc3BhY2VzIHRoYXQgYW4gYWRkcmVzcyBub3QgbWF0Y2hpbmcgYW55IHJhbmdlIGNh
bm5vdCAKcGFzcyBiZXR3ZWVuIHRob3NlIGFkZHJlc3Mgc3BhY2VzIGF0IGFsbC4gQ2FzZSBpbiBw
b2ludCBiZWluZyB0aGF0IGFuIAphYnNlbnQgInJhbmdlcyIgcHJvcGVydHkgbWVhbnMgIm5vIHRy
YW5zbGF0aW9uIGF0IGFsbCIgKHNhZGx5IHRoZSBzaGlwIApzYWlsZWQgdG9vIGxvbmcgYWdvIHRv
IHRyZWF0ICJkbWEtcmFuZ2VzIiBzaW1pbGFybHkgc3RyaWN0bHksIHNvIHdlJ3JlIApzdHVjayB3
aXRoIHRoZSBhc3N1bXB0aW9uIHRoYXQgYWJzZW50ID0gZW1wdHkgaW4gdGhhdCBkaXJlY3Rpb24p
Cgo+PiBUaGUgY3VycmVudCBsb25nLXRlcm0gcGxhbiBpcyBpbmRlZWQgdG8gdHJ5IHRvIG1vdmUg
dG8gc29tZSBzb3J0IG9mCj4+IGludGVybmFsICJETUEgcmFuZ2UgZGVzY3JpcHRvciIgaW4gb3Jk
ZXIgdG8gcHJvcGVybHkgY29wZSB3aXRoIHRoZSBraW5kCj4+IG9mIGVzb3RlcmljIGludGVncmF0
aW9ucyB3aGljaCBoYXZlIG11bHRpcGxlIGRpc2pvaW50IHdpbmRvd3MsCj4+IHBvdGVudGlhbGx5
IGV2ZW4gd2l0aCBkaWZmZXJlbnQgb2Zmc2V0cywgYnV0IGFzIHlvdSBwb2ludCBvdXQgdGhlcmUg
YXJlCj4+IHN0aWxsIG1hbnkgaHVyZGxlcyBiZXR3ZWVuIG5vdyBhbmQgdGhhdCBiZWNvbWluZyBy
ZWFsaXR5LiBTbyBhbHRob3VnaAo+PiB0aGlzIHBhdGNoIGRvZXMgcmVwcmVzZW50IHRoZSAicmln
aHQiIHRoaW5nLCBpdCdzIGZvciBlbnRpcmVseSB0aGUgd3JvbmcKPj4gcmVhc29uLiBBRkFJQ1Qg
Zm9yIHlvdXIgY2FzZSBpdCBiYXNpY2FsbHkganVzdCB3b3JrcyBvdXQgYXMgYSB2ZXJ5Cj4+IGJh
cm9xdWUgd2F5IHRvIGhhY2sgZG1hX2RpcmVjdF9zdXBwb3J0ZWQoKSBhZ2FpbiAtIHdlIHNob3Vs
ZG4ndCBuZWVkIGEKPj4gc3BlY2lhbCBjYXNlIHRvIG1hcCBhIGJvZ3VzIHBoeXNpY2FsIGFkZHJl
c3MgdG8gdmFsaWQgRE1BIGFkZHJlc3MsIHdlCj4+IHNob3VsZCBiZSBmaXhpbmcgdGhlIHNvdXJj
ZSBvZiB0aGUgYm9ndXMgUEEgaW4gdGhlIGZpcnN0IHBsYWNlLgo+IAo+IERNQV9CSVRfTUFTSygz
MikgaXMgcHJldHR5IGNsZWFyOiBUaGUgRE1BIGNhbiBoYW5kbGUgYWRkcmVzc2VzIHdpdGhpbgo+
IDMyYml0IHNwYWNlLiBETUFfQklUX01BU0soMjQpIGlzIGFsc28gY2xlYXI6IFRoZSBETUEgY2Fu
IGhhbmRsZQo+IGFkZHJlc3NlcyB3aXRoaW4gMjRiaXQgc3BhY2UuCgpDYXJlZnVsIHRoZXJlIC0g
RE1BICptYXNrcyogYXJlIGFib3V0IGhvdyB3aWRlIGFuIGFkZHJlc3MgdGhlIGRldmljZSBtYXkg
CmdlbmVyYXRlLCBidXQgaXQncyBub3QgbmVjZXNzYXJpbHkgdHJ1ZSB0aGF0IHRoZSBpbnRlcmNv
bm5lY3QgYmV5b25kIAp3aWxsIGFjdHVhbGx5IGFjY2VwdCBldmVyeSBwb3NzaWJsZSBhZGRyZXNz
IHRoYXQgdGhhdCBtYW55IGJpdHMgY2FuIAplbmNvZGUgKHNlZSB0aGUgYWZvcmVtZW50aW9uZWQg
Y2FzZSBvZiBQQ0kgaG9zdCBicmlkZ2Ugd2luZG93cywgb3IgdGhlIApyZWNlbnQgY2hhbmdlIG9m
IGJ1c19kbWFfbWFzayB0byBhIG5vdC1uZWNlc3NhcmlseS1wb3dlci1vZi10d28gCmJ1c19kbWFf
bGltaXQpLi4uCgo+IGRtYS1yYW5nZXMgZG9lcyBub3QgY2hhbmdlIHRoYXQuIFRoZSBETUEgY2Fu
IHN0aWxsIGFkZHJlc3MgdGhlIHNhbWUKPiBzcGFjZS4KCi4uLnRodXMgdGhhdCBhc3N1bXB0aW9u
IGlzIGluY29ycmVjdC4gSG93ZXZlciBpdCdzIG5vdCBwYXJ0aWN1bGFybHkgCmltcG9ydGFudCB0
byB0aGUgaW1tZWRpYXRlIHByb2JsZW0gYXQgaGFuZC4KCj4gV2hhdCBkbWEtcmFuZ2VzIHdpbGwg
dGVsbCBpcyB0aGF0IGEgcGh5c2ljYWwgYWRkcmVzcyByYW5nZSAnWCcKPiBjYW4gYmUgYWNjZXNz
ZWQgb24gdGhlIGJ1cyB1bmRlciByYW5nZSAnWScuCj4gRm9yIHRoZSBETUEgd2l0aGluIHRoZSBi
dXMgdGhlIHBoeXNpY2FsIGFkZHJlc3Mgd2l0aGluICdYJyBkb2VzIG5vdAo+IG1hdHRlci4gV2hh
dCBtYXR0ZXJzIGlzIHRoZSBtYXRjaGluZyBhZGRyZXNzIHdpdGhpbiAnWScKPiAKPiBXZSBzaG91
bGQgZG8gZG1hX3Bmbl9vZmZzZXQgY29udmVyc2lvbiBfb25seV8gZm9yIHRoZSByYW5nZSBpdCBh
cHBsaWVzCj4gdG8uIE91dHNpZGUgb2YgaXQgaXMgbm90IHZhbGlkIHRvIGFwcGx5IGl0LgoKVGhh
dCBtdWNoIGlzIGFncmVlZC4gRm9yIGEgcGh5c2ljYWwgYWRkcmVzcyBBIGluIFksIHBoeXNfdG9f
ZG1hKEEpIApzaG91bGQgcmV0dXJuIHRoZSBjb3JyZXNwb25kaW5nIERNQSBhZGRyZXNzIEEnIGlu
IFguIFdoYXQgeW91J3JlIApwcm9wb3NpbmcgaXMgdGhhdCBmb3IgYWRkcmVzcyBCIG5vdCBpbiBZ
LCBwaHlzX3RvX2RtYShCKSBzaG91bGQganVzdCAKcmV0dXJuIEIsIGJ1dCBteSBwb2ludCBpcyB0
aGF0IGV2ZW4gZG9pbmcgdGhhdCBpcyB3cm9uZywgYmVjYXVzZSB0aGVyZSAKaXMgbm8gcG9zc2li
bGUgRE1BIGFkZHJlc3MgY29ycmVzcG9uZGluZyB0byBCLCBzbyB0aGVyZSBpcyBubyB2YWxpZCAK
dmFsdWUgdG8gcmV0dXJuIGF0IGFsbC4KCk5vYm9keSdzIGRpc3B1dGluZyB0aGF0IHRoZSBjdXJy
ZW50IGRtYV9kaXJlY3Rfc3VwcG9ydGVkKCkgCmltcGxlbWVudGF0aW9uIGlzIGJyb2tlbiBmb3Ig
dGhlIGNhc2Ugd2hlcmUgWk9ORV9ETUEgaXRzZWxmIGlzIG9mZnNldCAKZnJvbSBQQSAwOyB0aGUg
bW9yZSBwcmVzc2luZyBxdWVzdGlvbiBpcyB3aHkgQ2hyaXN0b3BoJ3MgZGlmZiwgd2hpY2ggd2Fz
IAp0cnlpbmcgdG8gdGFrZSB0aGF0IGludG8gYWNjb3VudCwgc3RpbGwgZGlkbid0IHdvcmsuCgpS
b2Jpbi4KCj4gVGhlIGRtYSBBUEkgd2lsbCBjaGVjawo+ICh3aXRob3V0IGFwcGx5aW5nIGRtYV9w
Zm5fb2Zmc2V0KSBhZGRyZXNzZXMgb3V0c2lkZSBvZiBhbnkgcmFuZ2UgKG9ubHkKPiBvbmUgY3Vy
cmVudGx5IGluIExpbnV4KSBhbmQgaWYgaXQgaXMgbm90IE9LIGZvciB0aGUgbWFzayB0aGVuIGl0
IHdpbGwgZmFpbC4KPiAKPj4KPj4+IFRoaXMgaXMgYSBwcm9vZiBvZiBjb25jZXB0IHBhdGNoIHdo
aWNoIHdvcmtzIG9uIGsyZyB3aGVyZSB3ZSBoYXZlCj4+PiBkbWEtcmFuZ2VzID0gPDB4ODAwMDAw
MDAgMHg4IDB4MDAwMDAwMDAgMHg4MDAwMDAwMD47Cj4+PiBmb3IgdGhlIFNvQy4KPj4KPj4gVEJI
IGl0J3MgcHJvYmFibHkgZXh0cmEtY29uZnVzaW5nIHRoYXQgeW91J3JlIG9uIEtleXN0b25lIDIs
IHdoZXJlCj4+IHRlY2huaWNhbGx5IHRoaXMgZW5kcyB1cCBjbG9zZXItdG8tT0sgdGhhbiBtb3N0
LCBzaW5jZSBJSVJDIHRoZSAwLTJHQgo+PiBNTUlPIHJlZ2lvbiBpcyB0aGUgc2FtZSBvbiBhbGwg
Myg/KSBpbnRlcmNvbm5lY3QgbWFwcy4gVGh1cyB0aGUgMTAwJQo+PiBob25lc3QgZGVzY3JpcHRp
b24gd291bGQgcmVhbGx5IGJlOgo+Pgo+PiBkbWEtcmFuZ2VzID0gPDB4MCAweDAgMHgwIDB4ODAw
MDAwMDA+LAo+PiAgwqDCoMKgwqDCoMKgwqDCoCA8MHg4MDAwMDAwMCAweDggMHgwMDAwMDAwMCAw
eDgwMDAwMDAwPjsKPj4KPj4gYnV0IHllYWgsIHRoYXQgd291bGQganVzdCBnbyBob3JyaWJseSB3
cm9uZyB3aXRoIExpbnV4IHRvZGF5Lgo+IAo+IEl0IGRvZXMgOykgVGhpcyB3YXMgdGhlIGZpcnN0
IHRoaW5nIEkgaGF2ZSB0cmllZC4KPiAKPj4gVGhlCj4+IHN1YnRlbHR5IHRoYXQgZG1hX21hcF9y
ZXNvdXJjZSgpIGlnbm9yZXMgdGhlIHBmbl9vZmZzZXQgaGFwcGVucyB0byBiZSBhCj4+ICJmZWF0
dXJlIiBpbiB0aGlzIHJlZ2FyZCA7KQo+IAo+IFJpZ2h0LCBidXQgS2V5c3RvbmUgMiBpcyBicm9r
ZW4gc2luY2UgNS4zLXJjMyBieSBjb21taXQKPiBhZDNjN2IxOGM1YjM2MmJlNWRiZDBmMmMwYmNm
MWZkNWZkNjU5MzE1Lgo+IAo+IENhbiB5b3UgcHJvcG9zZSBhIGZpeCB3aGljaCB3ZSBjYW4gdXNl
IHVudGlsIHRoaW5ncyBnZXQgc29ydGVkIG91dD8KPiAKPiBUaGFua3MsCj4gLSBQw6l0ZXIKPiAK
Pj4KPj4gUm9iaW4uCj4+Cj4+PiBXaXRob3V0IHRoaXMgcGF0Y2ggZXZlcnl0aGluZyB3aGljaCB0
cmllcyB0byBzZXQgRE1BX0JJVF9NQVNLKDMyKSBvciBsZXNzCj4+PiBmYWlscyAtPiBETUEgYW5k
IHBlcmlwaGVyYWxzIHdpdGggYnVpbHQgaW4gRE1BIChTRCB3aXRoIEFETUEpIHdpbGwgbm90Cj4+
PiBwcm9iZSBvciBmYWxsIGJhY2sgdG8gUElPIG1vZGUuCj4+Pgo+Pj4gV2l0aCB0aGlzIHBhdGNo
IEVETUEgcHJvYmVzLCBTRCdzIEFETUEgaXMgd29ya2luZy4KPj4+IEF1ZGlvIGFuZCBkbWEtdGVz
dCBpcyB3b3JraW5nIGp1c3QgZmluZSB3aXRoIEVETUEsIG1tYyBhY2Nlc3NlcyB3aXRoIEFETUEK
Pj4+IGFsc28gb3BlcmF0aW9uYWwuCj4+Pgo+Pj4gVGhlIHBhdGNoIGRvZXMgbm90IHRyaWVkIHRv
IGFkZHJlc3MgdGhlIGluY29tcGxldGUgaGFuZGxpbmcgb2YgZG1hLXJhbmdlcwo+Pj4gZnJvbSBE
VCBhbmQgaXQgaXMgbm90IGZpeGluZy91cGRhdGluZyBhcmNoIGNvZGUgb3IgZHJpdmVycyB3aGlj
aCB1c2VzCj4+PiBkbWFfcGZuX29mZnNldC4KPj4+IE5laXRoZXIgcHJvdmlkZXMgZmFsbGJhY2sg
c3VwcG9ydCBmb3Iga2VybmVsIHNldHRpbmcgb25seQo+Pj4gZG1hX3Bmbl9vZmZzZXQgdG8KPj4+
IGFyYml0cmFyeSBudW1iZXIgd2l0aG91dCBwYWRkci9kbWFfYWRkci9zaXplLgo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4+PiAt
LS0KPj4+IEhpIENocmlzdG9waCwgUm9iaW4sCj4+Pgo+Pj4gSSBrbm93IGl0IGlzIGEgYml0IG1v
cmUgY29tcGxpY2F0ZWQsIGJ1dCB3aXRoIHRoaXMgcGF0Y2ggazJnIGlzCj4+PiB3b3JraW5nIGZp
bmUuLi4KPj4+Cj4+PiBJIHdhbnRlZCB0byB0ZXN0IHRoZSBjb25jZXB0IEkgd2FzIGRlc2NyaWJp
bmcgYW5kIGEgcGF0Y2ggc3BlYWtzCj4+PiBiZXR0ZXIgdGhhbgo+Pj4gd29yZHMuCj4+Pgo+Pj4g
S2luZCByZWdhcmRzLAo+Pj4gUGV0ZXIKPj4+Cj4+PiAgwqAgYXJjaC9hcm0vaW5jbHVkZS9hc20v
ZG1hLW1hcHBpbmcuaCB8IDI1ICsrKysrKysrKysrKysrKysrKysrLS0KPj4+ICDCoCBkcml2ZXJz
L29mL2RldmljZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA3ICsrKysrKy0K
Pj4+ICDCoCBpbmNsdWRlL2xpbnV4L2RldmljZS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oCA4ICsrKysrKysrCj4+PiAgwqAgaW5jbHVkZS9saW51eC9kbWEtZGlyZWN0LmjCoMKgwqDCoMKg
wqDCoMKgIHwgMzMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4+PiAgwqAga2VybmVs
L2RtYS9jb2hlcmVudC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDkgKysrKystLS0K
Pj4+ICDCoCA1IGZpbGVzIGNoYW5nZWQsIDc0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2RtYS1tYXBwaW5nLmgK
Pj4+IGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vZG1hLW1hcHBpbmcuaAo+Pj4gaW5kZXggYmRkODBk
ZGJjYTM0Li45YmZmNmFkMmQ4YzggMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9kbWEtbWFwcGluZy5oCj4+PiArKysgYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9kbWEtbWFwcGlu
Zy5oCj4+PiBAQCAtMzMsMTAgKzMzLDMxIEBAIHN0YXRpYyBpbmxpbmUgY29uc3Qgc3RydWN0IGRt
YV9tYXBfb3BzCj4+PiAqZ2V0X2FyY2hfZG1hX29wcyhzdHJ1Y3QgYnVzX3R5cGUgKmJ1cykKPj4+
ICDCoMKgICogYWRkcmVzc2VzLiBUaGV5IG11c3Qgbm90IGJlIHVzZWQgYnkgZHJpdmVycy4KPj4+
ICDCoMKgICovCj4+PiAgwqAgI2lmbmRlZiBfX2FyY2hfcGZuX3RvX2RtYQo+Pj4gKwo+Pj4gK3N0
YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBfX3BoeXNfdG9fZG1hX3Bmbl9vZmZzZXQoc3RydWN0
IGRldmljZSAqZGV2LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHBoeXNfYWRkcl90IHBhZGRyKQo+Pj4gK3sKPj4+ICvCoMKgwqAg
aWYgKHBhZGRyID49IGRldi0+ZG1hX3Jhbmdlcy5wYWRkciAmJgo+Pj4gK8KgwqDCoMKgwqDCoMKg
IHBhZGRyIDw9IChkZXYtPmRtYV9yYW5nZXMucGFkZHIgKyBkZXYtPmRtYV9yYW5nZXMuc2l6ZSkp
Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRldi0+ZG1hX3Jhbmdlcy5wZm5fb2Zmc2V0Owo+
Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gMDsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIGlubGlu
ZSB1bnNpZ25lZCBsb25nIF9fZG1hX3RvX3BoeXNfcGZuX29mZnNldChzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZG1hX2FkZHJfdCBkbWFfYWRkcikKPj4+ICt7Cj4+PiArwqDCoMKgIGlmIChkbWFf
YWRkciA+PSBkZXYtPmRtYV9yYW5nZXMuZG1hX2FkZHIgJiYKPj4+ICvCoMKgwqDCoMKgwqDCoCBk
bWFfYWRkciA8PSAoZGV2LT5kbWFfcmFuZ2VzLmRtYV9hZGRyICsgZGV2LT5kbWFfcmFuZ2VzLnNp
emUpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBkZXYtPmRtYV9yYW5nZXMucGZuX29mZnNl
dDsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+PiArfQo+Pj4gKwo+Pj4gIMKgIHN0YXRp
YyBpbmxpbmUgZG1hX2FkZHJfdCBwZm5fdG9fZG1hKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWdu
ZWQKPj4+IGxvbmcgcGZuKQo+Pj4gIMKgIHsKPj4+ICDCoMKgwqDCoMKgIGlmIChkZXYpCj4+PiAt
wqDCoMKgwqDCoMKgwqAgcGZuIC09IGRldi0+ZG1hX3Bmbl9vZmZzZXQ7Cj4+PiArwqDCoMKgwqDC
oMKgwqAgcGZuIC09IF9fcGh5c190b19kbWFfcGZuX29mZnNldChkZXYsIF9fcGZuX3RvX3BoeXMo
cGZuKSk7Cj4+PiAgwqDCoMKgwqDCoCByZXR1cm4gKGRtYV9hZGRyX3QpX19wZm5fdG9fYnVzKHBm
bik7Cj4+PiAgwqAgfQo+Pj4gIMKgIEBAIC00NSw3ICs2Niw3IEBAIHN0YXRpYyBpbmxpbmUgdW5z
aWduZWQgbG9uZyBkbWFfdG9fcGZuKHN0cnVjdAo+Pj4gZGV2aWNlICpkZXYsIGRtYV9hZGRyX3Qg
YWRkcikKPj4+ICDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgcGZuID0gX19idXNfdG9fcGZuKGFk
ZHIpOwo+Pj4gIMKgIMKgwqDCoMKgwqAgaWYgKGRldikKPj4+IC3CoMKgwqDCoMKgwqDCoCBwZm4g
Kz0gZGV2LT5kbWFfcGZuX29mZnNldDsKPj4+ICvCoMKgwqDCoMKgwqDCoCBwZm4gKz0gX19kbWFf
dG9fcGh5c19wZm5fb2Zmc2V0KGRldiwgYWRkcik7Cj4+PiAgwqAgwqDCoMKgwqDCoCByZXR1cm4g
cGZuOwo+Pj4gIMKgIH0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29mL2RldmljZS5jIGIvZHJp
dmVycy9vZi9kZXZpY2UuYwo+Pj4gaW5kZXggMjcyMDNiZmQwYjIyLi4wN2E4Y2MxYTdkN2YgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL29mL2RldmljZS5jCj4+PiArKysgYi9kcml2ZXJzL29mL2Rl
dmljZS5jCj4+PiBAQCAtMTA1LDcgKzEwNSw3IEBAIGludCBvZl9kbWFfY29uZmlndXJlKHN0cnVj
dCBkZXZpY2UgKmRldiwgc3RydWN0Cj4+PiBkZXZpY2Vfbm9kZSAqbnAsIGJvb2wgZm9yY2VfZG1h
KQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWZvcmNlX2RtYSkKPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0ID09IC1FTk9ERVYgPyAwIDogcmV0Owo+Pj4gIMKg
IC3CoMKgwqDCoMKgwqDCoCBkbWFfYWRkciA9IG9mZnNldCA9IDA7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgZG1hX2FkZHIgPSBvZmZzZXQgPSBwYWRkciA9IDA7Cj4+PiAgwqDCoMKgwqDCoCB9IGVsc2Ug
ewo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBvZmZzZXQgPSBQRk5fRE9XTihwYWRkciAtIGRtYV9h
ZGRyKTsKPj4+ICDCoCBAQCAtMTQ0LDYgKzE0NCwxMSBAQCBpbnQgb2ZfZG1hX2NvbmZpZ3VyZShz
dHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdAo+Pj4gZGV2aWNlX25vZGUgKm5wLCBib29sIGZvcmNl
X2RtYSkKPj4+ICDCoCDCoMKgwqDCoMKgIGRldi0+ZG1hX3Bmbl9vZmZzZXQgPSBvZmZzZXQ7Cj4+
PiAgwqAgK8KgwqDCoCBkZXYtPmRtYV9yYW5nZXMucGFkZHIgPSBwYWRkcjsKPj4+ICvCoMKgwqAg
ZGV2LT5kbWFfcmFuZ2VzLmRtYV9hZGRyID0gZG1hX2FkZHI7Cj4+PiArwqDCoMKgIGRldi0+ZG1h
X3Jhbmdlcy5zaXplID0gc2l6ZTsKPj4+ICvCoMKgwqAgZGV2LT5kbWFfcmFuZ2VzLnBmbl9vZmZz
ZXQgPSBvZmZzZXQ7Cj4+PiArCj4+PiAgwqDCoMKgwqDCoCAvKgo+Pj4gIMKgwqDCoMKgwqDCoCAq
IExpbWl0IGNvaGVyZW50IGFuZCBkbWEgbWFzayBiYXNlZCBvbiBzaXplIGFuZCBkZWZhdWx0IG1h
c2sKPj4+ICDCoMKgwqDCoMKgwqAgKiBzZXQgYnkgdGhlIGRyaXZlci4KPj4+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2RldmljZS5oIGIvaW5jbHVkZS9saW51eC9kZXZpY2UuaAo+Pj4gaW5k
ZXggY2U2ZGI2OGMzZjI5Li41NzAwNmI1MWE5ODkgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL2xp
bnV4L2RldmljZS5oCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RldmljZS5oCj4+PiBAQCAtMjkz
LDYgKzI5MywxMyBAQCBzdHJ1Y3QgZGV2aWNlX2RtYV9wYXJhbWV0ZXJzIHsKPj4+ICDCoMKgwqDC
oMKgIHVuc2lnbmVkIGxvbmcgc2VnbWVudF9ib3VuZGFyeV9tYXNrOwo+Pj4gIMKgIH07Cj4+PiAg
wqAgK3N0cnVjdCBkbWFfcmFuZ2VzIHsKPj4+ICvCoMKgwqAgdTY0IHBhZGRyOwo+Pj4gK8KgwqDC
oCB1NjQgZG1hX2FkZHI7Cj4+PiArwqDCoMKgIHU2NCBzaXplOwo+Pj4gK8KgwqDCoCB1bnNpZ25l
ZCBsb25nIHBmbl9vZmZzZXQ7Cj4+PiArfTsKPj4+ICsKPj4+ICDCoCAvKioKPj4+ICDCoMKgICog
c3RydWN0IGRldmljZV9jb25uZWN0aW9uIC0gRGV2aWNlIENvbm5lY3Rpb24gRGVzY3JpcHRvcgo+
Pj4gIMKgwqAgKiBAZndub2RlOiBUaGUgZGV2aWNlIG5vZGUgb2YgdGhlIGNvbm5lY3RlZCBkZXZp
Y2UKPj4+IEBAIC01ODEsNiArNTg4LDcgQEAgc3RydWN0IGRldmljZSB7Cj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhbGxvY2F0aW9ucyBz
dWNoIGRlc2NyaXB0b3JzLiAqLwo+Pj4gIMKgwqDCoMKgwqAgdTY0wqDCoMKgwqDCoMKgwqAgYnVz
X2RtYV9saW1pdDvCoMKgwqAgLyogdXBzdHJlYW0gZG1hIGNvbnN0cmFpbnQgKi8KPj4+ICDCoMKg
wqDCoMKgIHVuc2lnbmVkIGxvbmfCoMKgwqAgZG1hX3Bmbl9vZmZzZXQ7Cj4+PiArwqDCoMKgIHN0
cnVjdCBkbWFfcmFuZ2VzIGRtYV9yYW5nZXM7Cj4+PiAgwqAgwqDCoMKgwqDCoCBzdHJ1Y3QgZGV2
aWNlX2RtYV9wYXJhbWV0ZXJzICpkbWFfcGFybXM7Cj4+PiAgwqAgZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvZG1hLWRpcmVjdC5oIGIvaW5jbHVkZS9saW51eC9kbWEtZGlyZWN0LmgKPj4+IGlu
ZGV4IDI0Yjg2ODRhYTIxZC4uNGE0NmExNTk0NWVhIDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtZGlyZWN0LmgKPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWRpcmVjdC5oCj4+
PiBAQCAtMTEsMTggKzExLDQ3IEBAIGV4dGVybiB1bnNpZ25lZCBpbnQgem9uZV9kbWFfYml0czsK
Pj4+ICDCoCAjaWZkZWYgQ09ORklHX0FSQ0hfSEFTX1BIWVNfVE9fRE1BCj4+PiAgwqAgI2luY2x1
ZGUgPGFzbS9kbWEtZGlyZWN0Lmg+Cj4+PiAgwqAgI2Vsc2UKPj4+ICsKPj4+ICtzdGF0aWMgaW5s
aW5lIHVuc2lnbmVkIGxvbmcgX19waHlzX3RvX2RtYV9wZm5fb2Zmc2V0KHN0cnVjdCBkZXZpY2Ug
KmRldiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwaHlzX2FkZHJfdCBwYWRkcikKPj4+ICt7Cj4+PiArwqDCoMKgIGlmICghZGV2
KQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4gKwo+Pj4gK8KgwqDCoCBpZiAocGFk
ZHIgPj0gZGV2LT5kbWFfcmFuZ2VzLnBhZGRyICYmCj4+PiArwqDCoMKgwqDCoMKgwqAgcGFkZHIg
PD0gKGRldi0+ZG1hX3Jhbmdlcy5wYWRkciArIGRldi0+ZG1hX3Jhbmdlcy5zaXplKSkKPj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2LT5kbWFfcmFuZ2VzLnBmbl9vZmZzZXQKPj4+ICsKPj4+
ICvCoMKgwqAgcmV0dXJuIDA7Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBpbmxpbmUgdW5zaWdu
ZWQgbG9uZyBfX2RtYV90b19waHlzX3Bmbl9vZmZzZXQoc3RydWN0IGRldmljZSAqZGV2LAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGRtYV9hZGRyX3QgZG1hX2FkZHIpCj4+PiArewo+Pj4gK8KgwqDCoCBpZiAoIWRldikKPj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+ICsKPj4+ICvCoMKgwqAgaWYgKGRtYV9hZGRyID49
IGRldi0+ZG1hX3Jhbmdlcy5kbWFfYWRkciAmJgo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9hZGRy
IDw9IChkZXYtPmRtYV9yYW5nZXMuZG1hX2FkZHIgKyBkZXYtPmRtYV9yYW5nZXMuc2l6ZSkpCj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRldi0+ZG1hX3Jhbmdlcy5wZm5fb2Zmc2V0Cj4+PiAr
Cj4+PiArwqDCoMKgIHJldHVybiAwOwo+Pj4gK30KPj4+ICsKPj4+ICDCoCBzdGF0aWMgaW5saW5l
IGRtYV9hZGRyX3QgX19waHlzX3RvX2RtYShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiBwaHlzX2Fk
ZHJfdCBwYWRkcikKPj4+ICDCoCB7Cj4+PiAgwqDCoMKgwqDCoCBkbWFfYWRkcl90IGRldl9hZGRy
ID0gKGRtYV9hZGRyX3QpcGFkZHI7Cj4+PiArwqDCoMKgIHVuc2lnbmVkIGxvbmcgb2Zmc2V0ID0g
X19waHlzX3RvX2RtYV9wZm5fb2Zmc2V0KGRldiwgcGFkZHIpOwo+Pj4gIMKgIC3CoMKgwqAgcmV0
dXJuIGRldl9hZGRyIC0gKChkbWFfYWRkcl90KWRldi0+ZG1hX3Bmbl9vZmZzZXQgPDwgUEFHRV9T
SElGVCk7Cj4+PiArwqDCoMKgIHJldHVybiBkZXZfYWRkciAtICgoZG1hX2FkZHJfdClvZmZzZXQg
PDwgUEFHRV9TSElGVCk7Cj4+PiAgwqAgfQo+Pj4gIMKgIMKgIHN0YXRpYyBpbmxpbmUgcGh5c19h
ZGRyX3QgX19kbWFfdG9fcGh5cyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiBkbWFfYWRkcl90IGRl
dl9hZGRyKQo+Pj4gIMKgIHsKPj4+ICDCoMKgwqDCoMKgIHBoeXNfYWRkcl90IHBhZGRyID0gKHBo
eXNfYWRkcl90KWRldl9hZGRyOwo+Pj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIG9mZnNldCA9IF9f
ZG1hX3RvX3BoeXNfcGZuX29mZnNldChkZXYsIGRldl9hZGRyKTsKPj4+ICDCoCAtwqDCoMKgIHJl
dHVybiBwYWRkciArICgocGh5c19hZGRyX3QpZGV2LT5kbWFfcGZuX29mZnNldCA8PCBQQUdFX1NI
SUZUKTsKPj4+ICvCoMKgwqAgcmV0dXJuIHBhZGRyICsgKChwaHlzX2FkZHJfdClvZmZzZXQgPDwg
UEFHRV9TSElGVCk7Cj4+PiAgwqAgfQo+Pj4gIMKgICNlbmRpZiAvKiAhQ09ORklHX0FSQ0hfSEFT
X1BIWVNfVE9fRE1BICovCj4+PiAgwqAgZGlmZiAtLWdpdCBhL2tlcm5lbC9kbWEvY29oZXJlbnQu
YyBiL2tlcm5lbC9kbWEvY29oZXJlbnQuYwo+Pj4gaW5kZXggNTUxYjBlYjcwMjhhLi43YTY4ZmQw
OWY1ZDAgMTAwNjQ0Cj4+PiAtLS0gYS9rZXJuZWwvZG1hL2NvaGVyZW50LmMKPj4+ICsrKyBiL2tl
cm5lbC9kbWEvY29oZXJlbnQuYwo+Pj4gQEAgLTMxLDEwICszMSwxMyBAQCBzdGF0aWMgaW5saW5l
IHN0cnVjdCBkbWFfY29oZXJlbnRfbWVtCj4+PiAqZGV2X2dldF9jb2hlcmVudF9tZW1vcnkoc3Ry
dWN0IGRldmljZSAqZGUKPj4+ICDCoCBzdGF0aWMgaW5saW5lIGRtYV9hZGRyX3QgZG1hX2dldF9k
ZXZpY2VfYmFzZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2NvaGVyZW50X21lbSAq
IG1lbSkKPj4+ICDCoCB7Cj4+PiAtwqDCoMKgIGlmIChtZW0tPnVzZV9kZXZfZG1hX3Bmbl9vZmZz
ZXQpCj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIChtZW0tPnBmbl9iYXNlIC0gZGV2LT5kbWFf
cGZuX29mZnNldCkgPDwgUEFHRV9TSElGVDsKPj4+IC3CoMKgwqAgZWxzZQo+Pj4gK8KgwqDCoCBp
ZiAobWVtLT51c2VfZGV2X2RtYV9wZm5fb2Zmc2V0KSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgdW5z
aWduZWQgbG9uZyBvZmZzZXQgPSBfX3BoeXNfdG9fZG1hX3Bmbl9vZmZzZXQoZGV2LAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19wZm5fdG9fcGh5
cyhtZW0tPnBmbl9iYXNlKSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIChtZW0tPnBmbl9i
YXNlIC0gb2Zmc2V0KSA8PCBQQUdFX1NISUZUOwo+Pj4gK8KgwqDCoCB9IGVsc2Ugewo+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gbWVtLT5kZXZpY2VfYmFzZTsKPj4+ICvCoMKgwqAgfQo+
Pj4gIMKgIH0KPj4+ICDCoCDCoCBzdGF0aWMgaW50IGRtYV9pbml0X2NvaGVyZW50X21lbW9yeShw
aHlzX2FkZHJfdCBwaHlzX2FkZHIsCj4+Pgo+IAo+IFRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQg
T3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+IFktdHVubnVzL0J1c2luZXNz
IElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
