Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B0414A598
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdozgKX6nPlXzBRgYfwK70gG5vYbDrvtHRvoWgf7tqM=; b=tmv8Yl3n4XGHFJ
	Xv7fP6EdFgZTHhG3P/xy0IPOzjwR3i3H2VKySUwJiJhmXkyiDAdePZrJQgrOeZ6GiEyZWZi1DERi4
	7o7KKSUCOkpKKeUfltWNk6PGCI8qkDclWc7MFlVx3CaRtZS621OfJqNXmL1VKMkzlXoVzgVXrSMu4
	fD0IsZkqfEjZx93iF37yBmayovVHCghAo0+OX6wISQUiVo+RLwIBnx2j5uFoVYUEVmL2KBs6w3bo9
	jNS1FnXNu3+JIN5b4R+VbiHF4OSKT5rMesvVMN2xP5bvGqP+wsv7SXY+SoZvHfudpyp7p1LmZpySV
	118PR2bCB0SWCH+FGzJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4w6-0005li-MD; Mon, 27 Jan 2020 14:00:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4vu-0004cJ-Jy
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:00:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00RDxlYL057095;
 Mon, 27 Jan 2020 07:59:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580133587;
 bh=13B9b908UVUbvOyxiJ58ECaxp0yhYxfCuSddmMPdXQo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=byMYjQ5axRrtxupLYKROYKVt8+IuRrCfDAxUd1qyo+R+/6pCmypBcK3Igp/v/iw/A
 lRKu+H7M/KnacRahNE8QWJXwKsK03GsCVj1lwDBQLGK/+wAwfHrS30u9cIeGGOFk6R
 rIW5OnTYhpCBAscc2yC6dyHMxsAYJ3Bp1PuJ+60g=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00RDxlA0046759;
 Mon, 27 Jan 2020 07:59:47 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 27
 Jan 2020 07:59:46 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 27 Jan 2020 07:59:46 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00RDxiK6043723;
 Mon, 27 Jan 2020 07:59:44 -0600
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when it
 is valid
To: Robin Murphy <robin.murphy@arm.com>, <hch@lst.de>
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
 <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com>
Date: Mon, 27 Jan 2020 16:00:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_060006_754685_FC634EF4 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 rogerq@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNi8wMS8yMDIwIDIxLjEzLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMTUvMDEvMjAy
MCAxMTo1MCBhbSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDE0LzAxLzIwMjAg
MjAuMTksIFJvYmluIE11cnBoeSB3cm90ZToKPj4+IE9uIDE0LzAxLzIwMjAgNDo0MyBwbSwgUGV0
ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Pj4gVGhlIGRtYV9wZm5fb2Zmc2V0IHNob3VsZCBvbmx5IGJl
IGFwcGxpZWQgdG8gYW4gYWRkcmVzcyB3aGljaCBpcwo+Pj4+IHdpdGhpbiB0aGUKPj4+PiBkbWEt
cmFuZ2VzIHJhbmdlLiBBbnkgYWRkcmVzcyBvdXRzaWRlIHNob3VsZCBoYXZlIG9mZnNldCBhcyAw
Lgo+Pj4KPj4+IE5vLCB0aGF0J3Mgd3JvbmcuIElmIGEgbm9uLWVtcHR5IGRtYS1yYW5nZXMgaXMg
cHJlc2VudCwgdGhlbiBhZGRyZXNzZXMKPj4+IHdoaWNoIGRvIG5vdCBmYWxsIHdpdGhpbiBhbnkg
c3BlY2lmaWVkIHJhbmdlIGFyZSBpbnZhbGlkIGFsdG9nZXRoZXIuCj4+Cj4+IEl0IGlzIG5vdCBl
eHBsaWNpdGx5IHN0YXRlZCBieSB0aGUgc3BlY2lmaWNhdGlvbiwgYnV0IGNhbiBiZSBpbnRlcnBy
ZXRlZAo+PiBsaWtlIHRoYXQgYW5kIGZyb20gYSBwb3cgaXQgZG9lcyBtYWtlIHNlbnNlIHRvIHRy
ZWF0IHRoaW5ncyBsaWtlIHRoYXQuCj4gCj4gWWVzLCBEVHNwZWMgZG9lc24ndCBleHBsaWNpdGx5
IHNheSBzbywgYnV0IGl0IGRvZXMgZm9sbG93IGZhaXJseQo+IGxvZ2ljYWxseSBmcm9tIHRoZSBk
ZWZpbml0aW9uIG9mICJyYW5nZXMiLyJkbWEtcmFuZ2VzIiBhcyBhIHRyYW5zbGF0aW9uCj4gYmV0
d2VlbiBhZGRyZXNzIHNwYWNlcyB0aGF0IGFuIGFkZHJlc3Mgbm90IG1hdGNoaW5nIGFueSByYW5n
ZSBjYW5ub3QKPiBwYXNzIGJldHdlZW4gdGhvc2UgYWRkcmVzcyBzcGFjZXMgYXQgYWxsLiBDYXNl
IGluIHBvaW50IGJlaW5nIHRoYXQgYW4KPiBhYnNlbnQgInJhbmdlcyIgcHJvcGVydHkgbWVhbnMg
Im5vIHRyYW5zbGF0aW9uIGF0IGFsbCIgKHNhZGx5IHRoZSBzaGlwCj4gc2FpbGVkIHRvbyBsb25n
IGFnbyB0byB0cmVhdCAiZG1hLXJhbmdlcyIgc2ltaWxhcmx5IHN0cmljdGx5LCBzbyB3ZSdyZQo+
IHN0dWNrIHdpdGggdGhlIGFzc3VtcHRpb24gdGhhdCBhYnNlbnQgPSBlbXB0eSBpbiB0aGF0IGRp
cmVjdGlvbikKCkFncmVlLgoKPiAKPj4+IFRoZSBjdXJyZW50IGxvbmctdGVybSBwbGFuIGlzIGlu
ZGVlZCB0byB0cnkgdG8gbW92ZSB0byBzb21lIHNvcnQgb2YKPj4+IGludGVybmFsICJETUEgcmFu
Z2UgZGVzY3JpcHRvciIgaW4gb3JkZXIgdG8gcHJvcGVybHkgY29wZSB3aXRoIHRoZSBraW5kCj4+
PiBvZiBlc290ZXJpYyBpbnRlZ3JhdGlvbnMgd2hpY2ggaGF2ZSBtdWx0aXBsZSBkaXNqb2ludCB3
aW5kb3dzLAo+Pj4gcG90ZW50aWFsbHkgZXZlbiB3aXRoIGRpZmZlcmVudCBvZmZzZXRzLCBidXQg
YXMgeW91IHBvaW50IG91dCB0aGVyZSBhcmUKPj4+IHN0aWxsIG1hbnkgaHVyZGxlcyBiZXR3ZWVu
IG5vdyBhbmQgdGhhdCBiZWNvbWluZyByZWFsaXR5LiBTbyBhbHRob3VnaAo+Pj4gdGhpcyBwYXRj
aCBkb2VzIHJlcHJlc2VudCB0aGUgInJpZ2h0IiB0aGluZywgaXQncyBmb3IgZW50aXJlbHkgdGhl
IHdyb25nCj4+PiByZWFzb24uIEFGQUlDVCBmb3IgeW91ciBjYXNlIGl0IGJhc2ljYWxseSBqdXN0
IHdvcmtzIG91dCBhcyBhIHZlcnkKPj4+IGJhcm9xdWUgd2F5IHRvIGhhY2sgZG1hX2RpcmVjdF9z
dXBwb3J0ZWQoKSBhZ2FpbiAtIHdlIHNob3VsZG4ndCBuZWVkIGEKPj4+IHNwZWNpYWwgY2FzZSB0
byBtYXAgYSBib2d1cyBwaHlzaWNhbCBhZGRyZXNzIHRvIHZhbGlkIERNQSBhZGRyZXNzLCB3ZQo+
Pj4gc2hvdWxkIGJlIGZpeGluZyB0aGUgc291cmNlIG9mIHRoZSBib2d1cyBQQSBpbiB0aGUgZmly
c3QgcGxhY2UuCj4+Cj4+IERNQV9CSVRfTUFTSygzMikgaXMgcHJldHR5IGNsZWFyOiBUaGUgRE1B
IGNhbiBoYW5kbGUgYWRkcmVzc2VzIHdpdGhpbgo+PiAzMmJpdCBzcGFjZS4gRE1BX0JJVF9NQVNL
KDI0KSBpcyBhbHNvIGNsZWFyOiBUaGUgRE1BIGNhbiBoYW5kbGUKPj4gYWRkcmVzc2VzIHdpdGhp
biAyNGJpdCBzcGFjZS4KPiAKPiBDYXJlZnVsIHRoZXJlIC0gRE1BICptYXNrcyogYXJlIGFib3V0
IGhvdyB3aWRlIGFuIGFkZHJlc3MgdGhlIGRldmljZSBtYXkKPiBnZW5lcmF0ZQoKV2hpY2ggaXMg
aW4gYSBzaW1wbGlmaWVkIHZpZXcgaXMgd2hhdCBhZGRyZXNzIHJhbmdlIHRoZSBETUEgY2FuIGFk
ZHJlc3MuClRoZSBETUEgY2FuIG5vdCBnZW5lcmF0ZSBhZGRyZXNzIGJleW9uZCB0aGUgbWFzay4K
Cj4gYnV0IGl0J3Mgbm90IG5lY2Vzc2FyaWx5IHRydWUgdGhhdCB0aGUgaW50ZXJjb25uZWN0IGJl
eW9uZAo+IHdpbGwgYWN0dWFsbHkgYWNjZXB0IGV2ZXJ5IHBvc3NpYmxlIGFkZHJlc3MgdGhhdCB0
aGF0IG1hbnkgYml0cyBjYW4KPiBlbmNvZGUKClRydWUuCgo+IChzZWUgdGhlIGFmb3JlbWVudGlv
bmVkIGNhc2Ugb2YgUENJIGhvc3QgYnJpZGdlIHdpbmRvd3MsIG9yIHRoZQo+IHJlY2VudCBjaGFu
Z2Ugb2YgYnVzX2RtYV9tYXNrIHRvIGEgbm90LW5lY2Vzc2FyaWx5LXBvd2VyLW9mLXR3bwo+IGJ1
c19kbWFfbGltaXQpLi4uCgpJIHNlZS4KCj4+IGRtYS1yYW5nZXMgZG9lcyBub3QgY2hhbmdlIHRo
YXQuIFRoZSBETUEgY2FuIHN0aWxsIGFkZHJlc3MgdGhlIHNhbWUKPj4gc3BhY2UuCj4gCj4gLi4u
dGh1cyB0aGF0IGFzc3VtcHRpb24gaXMgaW5jb3JyZWN0LgoKSHJtLCB3aHkgaXQgaXMgbm90IGNv
cnJlY3Q/ClRoZSBETUEgY2FuIGdlbmVyYXRlIGFkZHJlc3NlcyB1cCB0byAzMiBiaXRzLiBBbnl0
aGluZyBiZXlvbmQgdGhhdCBpcwpub3QgYWNjZXNzaWJsZSBieSBETUEuClRoZSBpbnRlcmNvbm5l
Y3QgbWFrZXMgcGFydCBvZiBhIGhpZ2hlciAobm90IGFkZHJlc3NhYmxlIG1lbW9yeSBzcGFjZSkK
YXZhaWxhYmxlIHdpdGhpbiB0aGUgMzIgYml0cyByYW5nZSwgdGh1cyB0aGUgRE1BIGNhbiBhZGRy
ZXNzIHRoYXQuCldlIHRlbGwgdGhpcyB2aWEgdGhlIGRtYS1yYW5nZXMuCkkgYWdyZWUgdGhhdCBm
b3IgYSBjb3JyZWN0IGRtYS1yYW5nZXMgZm9yIGsyZyBzaG91bGQgYmU6CmRtYS1yYW5nZXMgPSA8
MHgwIDB4MCAweDAgMHg4MDAwMDAwMD4sCiAgICAgICAgICAgICA8MHg4MDAwMDAwMCAweDggMHgw
MDAwMDAwMCAweDgwMDAwMDAwPjsKCj4gSG93ZXZlciBpdCdzIG5vdCBwYXJ0aWN1bGFybHkKPiBp
bXBvcnRhbnQgdG8gdGhlIGltbWVkaWF0ZSBwcm9ibGVtIGF0IGhhbmQuCj4gCj4+IFdoYXQgZG1h
LXJhbmdlcyB3aWxsIHRlbGwgaXMgdGhhdCBhIHBoeXNpY2FsIGFkZHJlc3MgcmFuZ2UgJ1gnCj4+
IGNhbiBiZSBhY2Nlc3NlZCBvbiB0aGUgYnVzIHVuZGVyIHJhbmdlICdZJy4KPj4gRm9yIHRoZSBE
TUEgd2l0aGluIHRoZSBidXMgdGhlIHBoeXNpY2FsIGFkZHJlc3Mgd2l0aGluICdYJyBkb2VzIG5v
dAo+PiBtYXR0ZXIuIFdoYXQgbWF0dGVycyBpcyB0aGUgbWF0Y2hpbmcgYWRkcmVzcyB3aXRoaW4g
J1knCj4+Cj4+IFdlIHNob3VsZCBkbyBkbWFfcGZuX29mZnNldCBjb252ZXJzaW9uIF9vbmx5XyBm
b3IgdGhlIHJhbmdlIGl0IGFwcGxpZXMKPj4gdG8uIE91dHNpZGUgb2YgaXQgaXMgbm90IHZhbGlk
IHRvIGFwcGx5IGl0Lgo+IAo+IFRoYXQgbXVjaCBpcyBhZ3JlZWQuIEZvciBhIHBoeXNpY2FsIGFk
ZHJlc3MgQSBpbiBZLCBwaHlzX3RvX2RtYShBKQo+IHNob3VsZCByZXR1cm4gdGhlIGNvcnJlc3Bv
bmRpbmcgRE1BIGFkZHJlc3MgQScgaW4gWC4gV2hhdCB5b3UncmUKPiBwcm9wb3NpbmcgaXMgdGhh
dCBmb3IgYWRkcmVzcyBCIG5vdCBpbiBZLCBwaHlzX3RvX2RtYShCKSBzaG91bGQganVzdAo+IHJl
dHVybiBCLCBidXQgbXkgcG9pbnQgaXMgdGhhdCBldmVuIGRvaW5nIHRoYXQgaXMgd3JvbmcsIGJl
Y2F1c2UgdGhlcmUKPiBpcyBubyBwb3NzaWJsZSBETUEgYWRkcmVzcyBjb3JyZXNwb25kaW5nIHRv
IEIsIHNvIHRoZXJlIGlzIG5vIHZhbGlkCj4gdmFsdWUgdG8gcmV0dXJuIGF0IGFsbC4KCkkgYWdy
ZWUgb24gdGhlIHBoeXNfdG9fZG1hKCkuIEl0IHNob3VsZCBmYWlsIGZvciBhZGRyZXNzZXMgd2hp
Y2ggZG9lcwpub3QgZmFsbCBpbnRvIGFueSBvZiB0aGUgcmFuZ2VzLgpJdCBpcyBqdXN0IGEgdGhh
dCB3ZSBpbiBMaW51eCBkb24ndCBoYXZlIHRoZSBjb25jZXB0IGF0bSBmb3IgcmFuZ2VzLCB3ZQpo
YXZlIG9ubHkgX29uZV8gcmFuZ2Ugd2hpY2ggYXBwbGllcyB0byBldmVyeSBtZW1vcnkgYWRkcmVz
cy4KCkkgZ3Vlc3Mgd2hhdCBJJ20gcHJvcG9zaW5nIGlzIHRvIF9ub3RfIGFwcGx5IHRoZSBwaHlz
X3RvX2RtYSgpIHRvIHRoZQpETUEgbWFzayBpdHNlbGY/CgpPciByZXZlcnNlIGNoZWNrIHRoZSBk
bWEtcmFuZ2VzIGFnYWluc3QgdGhlIGRtYV9tYXNrPwoKMHgwIC0gMHg4MDAwIDAwMDAgOiBkaXJl
Y3QgbWFwcGVkIHcvbyBwZm5fb2Zmc2V0CjB4ODAwMCAwMDAwIC0gMHhGRkZGIEZGRkYgOiBtYXBw
ZWQgZnJvbSAweDggMDAwMCAwMDAwIHcvIHBmbl9vZmZzZXQKCmFuZCB0aGlzIGlzIHRoZSB3aG9s
ZSBhZGRyZXNzIHJhbmdlIHRoZSBETUEgY2FuIGFkZHJlc3MuCgo+IE5vYm9keSdzIGRpc3B1dGlu
ZyB0aGF0IHRoZSBjdXJyZW50IGRtYV9kaXJlY3Rfc3VwcG9ydGVkKCkKPiBpbXBsZW1lbnRhdGlv
biBpcyBicm9rZW4gZm9yIHRoZSBjYXNlIHdoZXJlIFpPTkVfRE1BIGl0c2VsZiBpcyBvZmZzZXQK
PiBmcm9tIFBBIDA7IHRoZSBtb3JlIHByZXNzaW5nIHF1ZXN0aW9uIGlzIHdoeSBDaHJpc3RvcGgn
cyBkaWZmLCB3aGljaCB3YXMKPiB0cnlpbmcgdG8gdGFrZSB0aGF0IGludG8gYWNjb3VudCwgc3Rp
bGwgZGlkbid0IHdvcmsuCgpJIHVuZGVyc3RhbmQgdGhhdCB0aGlzIGlzIGEgYml0IG1vcmUgY29t
cGxleCB0aGFuIEkgaW50ZXJwcmV0IGl0LCBidXQKdGhlIGsyZyBpcyBicm9rZW4gYW5kIGN1cnJl
bnRseSB0aGUgc2ltcGxlc3Qgd2F5IHRvIG1ha2UgaXQgd29yayBpcyB0bwp1c2UgdGhlIGFybSBk
bWFfb3BzIGluIGNhc2UgdGhlIHBmbl9vZmZzZXQgaXMgbm90IDAuCkl0IHdpbGwgYmUgZWFzeSB0
byB0ZXN0IGRtYS1kaXJlY3QgY2hhbmdlcyB0cnlpbmcgdG8gYWRkcmVzcyB0aGUgaXNzdWUKaW4g
aGFuZCwgYnV0IHdpbGwgYWxsb3cgazJnIHRvIGJlIHVzYWJsZSBhdCB0aGUgc2FtZSB0aW1lLgoK
QSBwYXRjaCBsaWtlIEkgZmlyc3QgcHJvcG9zZWQgaW46Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xrbWwvOGViNjgxNDAtOTdiMi02MmNlLTNlMDYtMzc2MTk4NGFhNWIxQHRpLmNvbS8KCi0gUMOp
dGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4
MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9E
b21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
