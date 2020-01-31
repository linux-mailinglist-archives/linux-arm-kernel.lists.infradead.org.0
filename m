Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785D214EE1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 15:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFcELaxMmXDgVSjMSASAdvj23B3IlkB1uyRlHrjFSpE=; b=KMVbfQebKd7dj1
	D9vThylcS87sszmHUwWERshLQxNFfL27sQxqPVSIxrsc0eGe6vVyXBRU/fuWejXpn0n32Z3YbhtnA
	KNT9J7Q/0YCc24IE9Y1O1v6OHd9a1eh9CbHoNcTbXdaCGayZS8K+FSzsrem+/vE4KkAtYjdnM4KvS
	f7e77uSjrAZ71GVv9QexUda1GjqAH0U7wF4+nG/eQOdKmzJdW/+81zElr9Xw1VqVOCMWXA5uG7uRZ
	arieCv4bk1jerB7waO2vJSe3xnEpJ47UpGuovDUA5/p7I9TqbwiQC1BcD8Wox9jte35Lwhz+Ns1kq
	sH3Viu9DX9sgH2D1VJ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWqV-0003OL-NV; Fri, 31 Jan 2020 14:00:31 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWpn-0001sl-6N
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:59:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00VDxYt3123047;
 Fri, 31 Jan 2020 07:59:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580479174;
 bh=FZkmyQeJn+oLDzNu06HRcH5Nr4tmBi5aWzdR9kdWsAU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ddyok1uQqwJvlnHbdjPnnY4L7hAdtfNvUfOpFkLhJmTQyKXc1NUToORqWsWzp7BJQ
 61RCP2plo2QNHsyo09qXSIh/l1Vo9jrVWRPReeiGTtni2yrgB82kjRslgeCpwWUxn1
 d/7VBBdNKXEE0peZTyARw8BGgsb++2sOeUBlugHU=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00VDxYfl042094
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 31 Jan 2020 07:59:34 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 31
 Jan 2020 07:59:34 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 31 Jan 2020 07:59:34 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00VDxWsV022023;
 Fri, 31 Jan 2020 07:59:32 -0600
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
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <c37b12e4-0e0c-afa2-a8e4-782ccd57542d@ti.com>
Date: Fri, 31 Jan 2020 16:00:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130164010.GA6472@lst.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_055947_362202_671A7D4A 
X-CRM114-Status: GOOD (  29.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLAoKT24gMzAvMDEvMjAyMCAxOC40MCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4gT24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMDM6MDQ6MzdQTSArMDIwMCwgUGV0ZXIgVWpm
YWx1c2kgdmlhIGlvbW11IHdyb3RlOgo+PiBPbiAzMC8wMS8yMDIwIDkuNTMsIENocmlzdG9waCBI
ZWxsd2lnIHdyb3RlOgo+Pj4gW3NraXBwaW5nIHRoZSBEVCBiaXRzLCBhcyBJJ20gZXZlcnl0aGlu
ZyBidXQgYW4gZXhwZXJ0IG9uIHRoYXQuLl0KPj4+Cj4+PiBPbiBNb24sIEphbiAyNywgMjAyMCBh
dCAwNDowMDozMFBNICswMjAwLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4+PiBJIGFncmVlIG9u
IHRoZSBwaHlzX3RvX2RtYSgpLiBJdCBzaG91bGQgZmFpbCBmb3IgYWRkcmVzc2VzIHdoaWNoIGRv
ZXMKPj4+PiBub3QgZmFsbCBpbnRvIGFueSBvZiB0aGUgcmFuZ2VzLgo+Pj4+IEl0IGlzIGp1c3Qg
YSB0aGF0IHdlIGluIExpbnV4IGRvbid0IGhhdmUgdGhlIGNvbmNlcHQgYXRtIGZvciByYW5nZXMs
IHdlCj4+Pj4gaGF2ZSBvbmx5IF9vbmVfIHJhbmdlIHdoaWNoIGFwcGxpZXMgdG8gZXZlcnkgbWVt
b3J5IGFkZHJlc3MuCj4+Pgo+Pj4gd2hhdCBkb2VzIGF0bSBoZXJlIG1lYW4/Cj4+Cj4+IHN0cnVj
dCBkZXZpY2UgaGF2ZSBvbmx5IHNpbmdsZSBkbWFfcGZuX29mZnNldCwgb25lIGNhbiBub3QgaGF2
ZSBtdWx0aXBsZQo+PiByYW5nZXMgZGVmaW5lZC4gSWYgd2UgaGF2ZSB0aGVuIG9ubHkgdGhlIGZp
cnN0IGlzIHRha2VuIGFuZCB0aGUgcGh5c2ljYWwKPj4gYWRkcmVzcyBhbmQgZG1hIGFkZHJlc3Mg
aXMgZGlzY2FyZGVkLCBvbmx5IHRoZSBkbWFfcGZuX29mZnNldCBpcyBzdG9yZWQKPj4gYW5kIHVz
ZWQuCj4+Cj4+PiBXZSBoYXZlIG5lZWRlZCBtdWx0aS1yYW5nZSBzdXBwb3J0IGZvciBxdWl0ZSBh
IHdoaWxlLCBhcyBjb21tb24gYnJvYWRjb20KPj4+IFNPQ3MgZG8gbmVlZCBpdC4gIFNvIHBhdGNo
ZXMgZm9yIHRoYXQgYXJlIHdlbGNvbWUgYXQgbGVhc3QgZnJvbSB0aGUKPj4+IERNQSBsYXllciBw
ZXJzcGVjdGl2ZSAoa2luZGEgc2ltaWxhciB0byB5b3VyIHBzZXVkbyBjb2RlIGVhcmxpZXIpCj4+
Cj4+IEJ1dCBkbyB0aGV5IGhhdmUgZG1hX3Bmbl9vZmZzZXQgIT0gMD8KPiAKPiBXZWxsLCB3aXRo
IHRoYXQgSSBtZWFuIG11bHRpcGxlIHJhbmdlcyB3aXRoIGRpZmZlcmVudCBvZmZzZXRzLiAgVGFr
ZQo+IGEgbG9vayBhdCBhcmNoL21pcHMvYm1pcHMvZG1hLmM6X19waHlzX3RvX2RtYSgpIGFuZCBm
cmllbmRzLiAgVGhpcwo+IGlzIGFuIGV4aXN0aW5nIGltcGxlbWVudGF0aW9uIGZvciBtaXBzLCBi
dXQgdGhlcmUgYXJlIGFybSBhbmQgYXJtNjQKPiBTT0NzIHVzaW5nIHRoZSBzYW1lIGxvZ2ljIG9u
IHRoZSBtYXJrZXQgYXMgd2VsbCwgYW5kIHdlJ2xsIHdhbnQgdG8KPiBzdXBwb3J0IHRoZW0gZXZl
bnR1YWxseS4KCkkgc2VlLiBNeSBQb0MgcGF0Y2ggd2FzIG5vdCB0b28gb2ZmIHRoZW4gOykKU28g
dGhlIHBsYW4gaXMgdG8gaGF2ZSBhIGdlbmVyaWMgaW1wbGVtZW50YXRpb24gZm9yIGFsbCBvZiB0
aGUKYXJjaGl0ZWN0dXJlLCByaWdodD8KCj4+IFRoZSBkbWFfcGZuX29mZnNldCBpcyBfc3RpbGxf
IGFwcGxpZWQgdG8gdGhlIG1hc2sgd2UgYXJlIHRyeWluZyB0byBzZXQKPj4gKGFuZCB2YWxpZGF0
ZSkgdmlhIGRtYS1kaXJlY3QuCj4gCj4gQW5kIGZvciB0aGUgZ2VuZXJhbCBjYXNlIHRoYXQgaXMg
ZXhhY3RseSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8sIHdlCj4ganVzdCBuZWVkIHRvIGRlYWwgd2l0
aCByZWFsbHkgb2RkIFpPTkVfRE1BIHBsYWNlbWVudHMgbGlrZSB5b3Vycy4KCkknbSBzdGlsbCBu
b3QgY29udmluY2VkLCB0aGUgcG9pbnQgb2YgdGhlIERNQSBtYXNrLCBhdCBsZWFzdCBob3cgSSBz
ZWUKaXQsIHRvIGNoZWNrIHRoYXQgdGhlIGRtYSBhZGRyZXNzIGNhbiBiZSBoYW5kbGVkIGJ5IHRo
ZSBkZXZpY2UgKERNQSwKcGVyaXBoZXJhbCB3aXRoIGJ1aWx0IGluIERNQSwgZXRjKSwgaXQgaXMg
bm90IGFnYWluc3QgcGh5c2ljYWwgYWRkcmVzcy4KRG9pbmcgcGh5c190b19kbWEoKSBvbiB0aGUg
bWFzayBmcm9tIHRoZSBkbWFfc2V0X21hc2soKSBpcyBqdXN0IHdyb25nLgoKPj4+IFdlJ2xsIG5l
ZWQgdG8gZmluZCB0aGUgbWluaW11bSBjaGFuZ2UgdG8gbWFrZSBpdCB3b3JrCj4+PiBmb3Igbm93
IHdpdGhvdXQgc3dpdGNoaW5nIG9wcywgZXZlbiBpZiBpdCBpc24ndCB0aGUgY29ycmVjdCBvbmUs
IGFuZAo+Pj4gdGhlbiB3b3JrIGZyb20gdGhlcmUuCj4+Cj4+IFN1cmUsIGJ1dCBjYW4gd2UgZml4
IHRoZSByZWdyZXNzaW9uIGJ5IHJldmVydGluZyB0byBhcm1fb3BzIGZvciBub3cgb25seQo+PiBp
ZiBkbWFfcGZuX29mZnNldCBpcyBub3QgMD8gSXQgdXNlZCB0byB3b3JrIGZpbmUgaW4gdGhlIHBh
c3QgYXQgbGVhc3QgaXQKPj4gYXBwZWFyZWQgdG8gd29yayBvbiBLMiBwbGF0Zm9ybXMuCj4gCj4g
QnV0IHRoYXQgd2lsbCBjYXVzZSB5ZXQgYW5vdGhlciByZWdyZXNzaW9uIGluIHdoYXQgd2UgaGF2
ZSBqdXN0IGZpeGVkCj4gd2l0aCB1c2luZyB0aGUgZ2VuZXJpYyBkaXJlY3Qgb3BzLCBhdCB3aGlj
aCBwb2ludHMgaXQgdHVybnMgaW50byB3aG8KPiBzY3JlYW1zIGxvdWRlci4KCkhlaGUsIEkgc2Vl
LgpJIGdlbnVpbmVseSBjdXJpb3VzIHdoeSBrMiBwbGF0Zm9ybSB3b3JrZWQganVzdCBmaW5lIHdp
dGggTFBBRSAoaXQgbmVlZHMKaXQpLCBidXQgZ3V5cyBoYWQgaXNzdWVzIHdpdGggTFBBRSBvbiBk
cmE3L2FtNS4KVGhlIGZpeCBmb3IgZHJhNy9hbTUgYnJva2UgazIuCkFzIGZhciBhcyBJIGNhbiBz
ZWUgdGhlIG1haW4gKG9ubHkpIGRpZmZlcmVuY2UgaXMgdGhhdCBrMiBoYXZlCmRtYV9wZm5fb2Zm
c2V0ID0gMHg3ODAwMDAsIHdoaWxlIGRyYTcvYW01IGhhdmUgaXQgMCAocmVhbGx5IGRpcmVjdCBt
YXBwaW5nKS4KCj4gRm9yIG5vdyBJJ20gdGVtcHRlZCB0byB0aHJvdyBzb21ldGhpbmcgbGlrZSB0
aGlzIGluLCB3aGljaCBpcyBhIGJpdAo+IG9mIGEgaGFjaywgYnV0IGFjdHVhbGx5IDEwMCUgbWF0
Y2hlcyB3aGF0IHZhcmlvdXMgYXJjaGl0ZWN0dXJlcyBoYXZlCj4gaGlzdG9yaWNhbGx5IGRvbmU6
Cj4gCj4gCj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9kbWEvZGlyZWN0LmMgYi9rZXJuZWwvZG1hL2Rp
cmVjdC5jCj4gaW5kZXggNmFmN2FlODNjNGFkLi42YmE5ZWU2ZTIwYmQgMTAwNjQ0Cj4gLS0tIGEv
a2VybmVsL2RtYS9kaXJlY3QuYwo+ICsrKyBiL2tlcm5lbC9kbWEvZGlyZWN0LmMKPiBAQCAtNDgy
LDYgKzQ4Miw5IEBAIGludCBkbWFfZGlyZWN0X3N1cHBvcnRlZChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHU2NCBtYXNrKQo+ICB7Cj4gIAl1NjQgbWluX21hc2s7Cj4gIAo+ICsJaWYgKG1hc2sgPj0gRE1B
X0JJVF9NQVNLKDMyKSkKPiArCQlyZXR1cm4gMTsKPiArCgpSaWdodCwgc28gc2tpcHBpbmcgcGh5
c190b19kbWEoKSBmb3IgdGhlIG1hc2sgYW5kIGJlbGlldmluZyB0aGF0IGl0IHdpbGwKd29yay4u
CgpJdCBkb2VzOiBhdWRpbyBhbmQgZG1hdGVzdCBtZW1jcHkgdGVzdHMgYXJlIGp1c3QgZmluZSB3
aXRoIHRoaXMsIE1NQwphbHNvIHByb2JlZCB3aXRoIEFETUEgZW5hYmxlZC4KCkFzIGZhciBhcyBJ
IGNhbiB0ZWxsIGl0IHdvcmtzIGFzIHdlbGwgYXMgZmFsbGluZyBiYWNrIHRvIHRoZSBvbGQgYXJt
IG9wcwppbiBjYXNlIG9mIExQQUUgJiYgZG1hX3Bmbl9vZmZzZXQgIT0gMAoKRndpdzoKVGVzdGVk
LWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgoKV291bGQgeW91IGJl
IGNvbWZvcnRhYmxlIHRvIHNlbmQgdGhpcyBwYXRjaCBmb3IgbWFpbmxpbmUgd2l0aApGaXhlczog
YWQzYzdiMThjNWIzICgiYXJtOiB1c2Ugc3dpb3RsYiBmb3IgYm91bmNlIGJ1ZmZlcmluZyBvbiBM
UEFFCmNvbmZpZ3MiKQoKU28gaXQgZ2V0cyBwaWNrZWQgZm9yIHN0YWJsZSBrZXJuZWxzIGFzIHdl
bGw/Cgo+ICAJaWYgKElTX0VOQUJMRUQoQ09ORklHX1pPTkVfRE1BKSkKPiAgCQltaW5fbWFzayA9
IERNQV9CSVRfTUFTSyh6b25lX2RtYV9iaXRzKTsKPiAgCWVsc2UKPiAKClRoYW5rIHlvdSwKLSBQ
w6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAw
MTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2th
L0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
