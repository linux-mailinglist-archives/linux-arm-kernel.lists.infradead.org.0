Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EBE13A7A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:43:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yj5b7vH1D9SVe94qEHdphZr5yj7PhhwRJBrt7Vy3T7o=; b=JSNEjC5fXe8Dd3
	gZOH7eFDUw8/BXcnRM+VCWqHR5T21YDQdGLw69q09Ye2tJZ0v2A66B+Jh5HR5M/5juhhXMOaMeoJN
	Fa5RlG9kROvyuJPdXIN8o7vkQxG09imyk6vscHhJKoOQS7JtQuKH9NYqSq99oXZpXxnF2pKXCZUBw
	f1hoNaiSWOqXY42WgTou+9OmUb4CIDJMcpR24UtdD2qB3cUVCvmVKAIan+W/Uw9N3GPH3TcLl5flL
	38Q78TOd9SaHaI1FZOVLgLpbYmKE7J6w/gBvmP5p0fT9gBePE8yn0wsV0Ps9NO49Yqjk3qDLTu+Ti
	/3k4Hl/JxI7mYe4Tmu1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJfN-000622-SV; Tue, 14 Jan 2020 10:43:21 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJf7-000605-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:43:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00EAgnwS041639;
 Tue, 14 Jan 2020 04:42:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578998569;
 bh=JLcVJs7e0hOu4k2stftcoKk4ShLk+uTqAozz7jx60yk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OogEDyteXrThJSj1elrWamSELePK44hwj+d1RqL81zgM/5d+S7oOzh4xAsRMdYErN
 f7wR7wLkofbKlDIYKKUhcgl+pFSzEyw59rEjiH53tx9j0l8pEFtOhLIkBIaF0woVaw
 nw1cUqnRHmpRcqAiRVB8uzKwvukLc51amDJs7O+w=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00EAgnMY077375
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jan 2020 04:42:49 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 14
 Jan 2020 04:42:48 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 14 Jan 2020 04:42:48 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00EAgk80039702;
 Tue, 14 Jan 2020 04:42:46 -0600
Subject: Re: [PATCH 2/2] arm: use swiotlb for bounce buffer on LPAE configs
To: Christoph Hellwig <hch@lst.de>, Robin Murphy <robin.murphy@arm.com>
References: <20190709142011.24984-1-hch@lst.de>
 <20190709142011.24984-3-hch@lst.de>
 <9bbd87c2-5b6c-069c-dd22-5105dc827428@ti.com> <20191219150259.GA3003@lst.de>
 <20106a84-8247-fa78-2381-2c94fad9cb6a@ti.com>
 <eca457b6-c685-59ac-1dec-5b28e4430e1d@ti.com>
 <d3921764-840c-4d1c-f240-b974b9b83ec8@arm.com>
 <27450c0e-c8aa-d59b-aa32-37f23c232eb7@ti.com>
 <0e6decce-c54e-9791-473e-0aef05650f39@arm.com>
 <20200109144920.GB22907@lst.de>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
Date: Tue, 14 Jan 2020 12:43:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200109144920.GB22907@lst.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_024305_537166_3D042D77 
X-CRM114-Status: GOOD (  33.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoLCBSb2JpbiwKCk9uIDA5LzAxLzIwMjAgMTYuNDksIENocmlzdG9waCBIZWxsd2ln
IHdyb3RlOgo+IE9uIFdlZCwgSmFuIDA4LCAyMDIwIGF0IDAzOjIwOjA3UE0gKzAwMDAsIFJvYmlu
IE11cnBoeSB3cm90ZToKPj4+IFRoZSBwcm9ibGVtIC0gSSB0aGluayAtIGlzIHRoYXQgdGhlIERN
QV9CSVRfTUFTSygzMikgZnJvbQo+Pj4gZG1hX3NldF9tYXNrX2FuZF9jb2hlcmVudChkZXYsIERN
QV9CSVRfTUFTSygzMikpIGlzIHRyZWF0ZWQgYXMgcGh5c2ljYWwKPj4+IGFkZHJlc3MgYWxvbmcg
dGhlIGNhbGwgcGF0aCBzbyB0aGUgZG1hX3Bmbl9vZmZzZXQgaXMgYXBwbGllZCB0byBpdCBhbmQK
Pj4+IHRoZSBjaGVjayB3aWxsIGZhaWwsIHNheWluZyB0aGF0IERNQV9CSVRfTUFTSygzMikgY2Fu
IG5vdCBiZSBzdXBwb3J0ZWQuCj4+Cj4+IEJ1dCB0aGF0J3MgdGhlIHRoaW5nIC0gaW4gaXNvbGF0
aW9uLCB0aGF0IGlzIGVudGlyZWx5IGNvcnJlY3QuIENvbnNpZGVyaW5nIAo+PiBaT05FX0RNQTMy
IGZvciBzaW1wbGljaXR5LCBpbiBnZW5lcmFsIHRoZSB6b25lIGlzIGV4cGVjdGVkIHRvIGNvdmVy
IHRoZSAKPj4gcGh5c2ljYWwgYWRkcmVzcyByYW5nZSAweDAwMDBfMDAwMCAtIDB4ZmZmZl9mZmZm
IChiZWNhdXNlIERNQSBvZmZzZXRzIGFyZSAKPj4gcmVsYXRpdmVseSByYXJlKSwgYW5kIGEgZGV2
aWNlIHdpdGggYSBkbWFfcGZuX29mZnNldCBvZiBtb3JlIHRoYW4gCj4+ICgweDFfMDAwMF8wMDAw
ID4+IFBBR0VfU0hJRlQpICpjYW5ub3QqIHN1cHBvcnQgdGhhdCByYW5nZSB3aXRoIGFueSBtYXNr
LCAKPj4gYmVjYXVzZSB0aGUgRE1BIGFkZHJlc3MgaXRzZWxmIHdvdWxkIGhhdmUgdG8gYmUgbmVn
YXRpdmUuCj4gCj4gTm90ZSB0aGF0IFpPTkVfRE1BMzIgaXMgaXJyZWxldmFudCBpbiB0aGlzIHBh
cnRpY3VsYXIgY2FzZSwgYXMgd2UgYXJlCj4gdGFsa2luZyBhYm91dCBhcm0zMi4gIEJ1dCB3aXRo
IFpPTkVfRE1BIGluc3RlYWQgdGhpcyByb3VnaGx5IG1ha2VzIHNlbnNlLgo+IAo+PiBUaGUgcHJv
YmxlbSBpcyB0aGF0IHBsYXRmb3JtcyB3aXRoIGVzb3RlcmljIG1lbW9yeSBtYXBzIGhhdmUgbm8g
cmlnaHQgdGhpbmcgCj4+IHRvIGRvLiBJZiB0aGUgYmFzZSBvZiBSQU0gaXMgYXQgYXQgMHgxXzAw
MDBfMDAwMCBvciBoaWdoZXIsIHRoZSAiY29ycmVjdCIgCj4+IFpPTkVfRE1BMzIgd291bGQgYmUg
ZW1wdHkgd2hpbGUgWk9ORV9OT1JNQUwgYWJvdmUgaXQgd291bGQgbm90LCBhbmQgbGFzdCAKPj4g
dGltZSBJIGxvb2tlZCB0aGF0IG1ha2VzIHRoZSBwYWdlIGFsbG9jYXRvciBicmVhayBiYWRseS4g
U28gdGhlIHN0YW5kYXJkIAo+PiBib2RnZSBvbiBzdWNoIHBsYXRmb3JtcyBpcyB0byBtYWtlIFpP
TkVfRE1BMzIgY292ZXIgbm90IHRoZSBmaXJzdCA0R0Igb2YgCj4+ICpQQSBzcGFjZSosIGJ1dCB0
aGUgZmlyc3QgNEdCIG9mICpSQU0qLCB3aGVyZXZlciB0aGF0IGhhcHBlbnMgdG8gYmUuIFRoYXQg
Cj4+IHRoZW4gYnJpbmdzIGRpZmZlcmVudCBwcm9ibGVtcyAtIG5vdyB0aGUgcGFnZSBhbGxvY2F0
b3IgaXMgaGFwcHkgYW5kIAo+PiBzdWNjZXNzZnVsbHkgcmV0dXJucyBHRlBfRE1BMzIgYWxsb2Nh
dGlvbnMgZnJvbSB0aGUgcmFuZ2UgMHg4XzAwMDBfMDAwMCAtIAo+PiAweDhfZmZmZl9mZmZmIHRo
YXQgYXJlIHV0dGVybHkgdXNlbGVzcyB0byAzMi1iaXQgZGV2aWNlcyB3aXRoIHplcm8gCj4+IGRt
YV9wZm5fb2Zmc2V0IC0gc2VlIHRoZSBBTUQgU2VhdHRsZSBTb0MgZm9yIHRoZSBwcmltZSBleGFt
cGxlIG9mIHRoYXQuIElmIAo+PiBvbiB0aGUgb3RoZXIgaGFuZCBhbGwgZGV2aWNlcyBhcmUgZ3Vh
cmFudGVlZCB0byBoYXZlIGEgZG1hX3Bmbl9vZmZzZXQgdGhhdCAKPj4gcHV0cyB0aGUgYmFzZSBv
ZiBSQU0gYXQgRE1BIGFkZHJlc3MgMCB0aGVuIEdGUF9ETUEzMiBhbGxvY2F0aW9ucyBkbyBlbmQg
dXAgCj4+IHdvcmtpbmcgYXMgZXhwZWN0ZWQsIGJ1dCBub3cgdGhlIG9yaWdpbmFsIGFzc3VtcHRp
b24gb2Ygd2hlcmUgWk9ORV9ETUEzMiAKPj4gYWN0dWFsbHkgaXMgaXMgYnJva2VuLCBzbyBnZW5l
cmljIGNvZGUgdW5hd2FyZSBvZiB0aGUgCj4+IHBsYXRmb3JtL2FyY2hpdGVjdHVyZS1zcGVjaWZp
YyBib2RnZSB3aWxsIGJlIG1pc2xlZCAtIHRoYXQncyB0aGUgY2FzZSAKPj4geW91J3JlIHJ1bm5p
bmcgaW50by4KPj4KPj4gSGF2aW5nIHRob3VnaHQgdGhpcyBmYXIsIGlmIHRoZXJlJ3MgYSBub24t
aGFja3kgd2F5IHRvIHJlYWNoIGluIGFuZCBncmFiIAo+PiBaT05FX0RNQXszMn0gc3VjaCB0aGF0
IGRtYV9kaXJlY3Rfc3VwcG9ydGVkKCkgY291bGQgdXNlIHpvbmVfZW5kX3BmbigpIAo+PiBpbnN0
ZWFkIG9mIHRyeWluZyB0byBhc3N1bWUgZWl0aGVyIHdheSwgdGhhdCBtaWdodCBiZSB0aGUgbW9z
dCByb2J1c3QgCj4+IGdlbmVyYWwgc29sdXRpb24uCj4gCj4gem9uZV9kbWFfYml0cyBpcyBvdXIg
c29tZXdoYXQgdWdseSB3YXkgdG8gdHJ5IHRvIHBva2UgaW50byB0aGlzCj4gaW5mb3JtYXRpb24s
IGFsdGhvdWdoIHRoZSB3YXkgaXQgaXMgZG9uZSByaWdodCBub3cgc3Vja3MgcHJldHR5IGJhZGx5
LgoKSW4gbXkgdmlldyB0aGUgaGFuZGxpbmcgb2YgZG1hX3Bmbl9vZmZzZXQgaXMganVzdCBpbmNv
cnJlY3QgYXMgaXQgaXMgYXBwbGllZCB0byBfYW55XyBhZGRyZXNzLgpBY2NvcmRpbmcgdG8gRFQg
c3BlY2lmaWNhdGlvbiBkbWEtcmFuZ2VzOgoiVmFsdWUgdHlwZTogPGVtcHR5PiBvciA8cHJvcC1l
bmNvZGVkLWFycmF5PiBlbmNvZGVkIGFzIGFuIGFyYml0cmFyeQpudW1iZXIgb2YgKGNoaWxkLWJ1
cy1hZGRyZXNzLCBwYXJlbnQtYnVzLWFkZHJlc3MsIGxlbmd0aCkgdHJpcGxldHMuIgoKWWV0IGlu
IGRyaXZlcnMvb2YvIHdlIG9ubHkgdGFrZSB0aGUgX2ZpcnN0XyB0cmlwbGV0IGFuZCBpZ25vcmUg
dGhlIHJlc3QuCgpUaGUgZG1hX3Bmbl9vZmZzZXQgc2hvdWxkIGJlIG9ubHkgYXBwbGllZCB0byBw
YWRkciBpbiB0aGUgcmFuZ2U6CnBhcmVudC1idXMtYWRkcmVzcyB0byBwYXJlbnQtYnVzLWFkZHJl
c3MrbGVuZ3RoCmZvciBhbnl0aGluZyBvdXRzaWRlIG9mIHRoaXMgdGhlIGRtYV9wZm5fb2Zmc2V0
IGlzIDAuCgpjb252ZXJzaW9uIGJhY2sgZnJvbSBkbWEgdG8gcGFkZHIgc2hvdWxkIGNvbnNpZGVy
IHRoZSBvZmZzZXQgaW4gcmFuZ2U6CmNoaWxkLWJ1cy1hZGRyZXNzIHRvIGNoaWxkLWJ1cy1hZGRy
ZXNzK2xlbmd0aAphbmQgMCBmb3IgZXZlcnl0aGluZyBvdXRzaWRlIG9mIHRoaXMuCgpUbyBjb3Jy
ZWN0bHkgaGFuZGxlIHRoZSBkbWEtcmFuZ2VzIHdlIHdvdWxkIG5lZWQgc29tZXRoaW5nIGxpa2Ug
dGhpcyBpbiBkZXZpY2UuaDoKK3N0cnVjdCBkbWFfcmFuZ2VzIHsKKyAgICAgICB1NjQgcGFkZHI7
CisgICAgICAgdTY0IGRtYV9hZGRyOworICAgICAgIHU2NCBzaXplOworCXVuc2lnbmVkIGxvbmcg
cGZuX29mZnNldDsKK307CisKCnN0cnVjdCBkZXZpY2UgewoJLi4uCi0JdW5zaWduZWQgbG9uZwlk
bWFfcGZuX29mZnNldDsKKyAgICAgICBzdHJ1Y3QgZG1hX3JhbmdlcyAqZG1hX3JhbmdlczsKCWlu
dCBkbWFfcmFuZ2VzX2NudDsKCS4uLgp9OwoKVGhlbiB3aGVuIHdlIGN1cnJlbnRseSB1c2UgZG1h
X3Bmbl9vZmZzZXQgd2Ugd291bGQgaGF2ZToKCnVuc2lnbmVkIGxvbmcgX19waHlzX3RvX2RtYV9w
Zm5fb2Zmc2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgcGh5c19hZGRyX3QgcGFkZHIpCnsKCWludCBp
OwoKCWlmICghZGV2LT5kbWFfcmFuZ2VzKQoJCXJldHVybiAwOwoKCWZvciAoaSA9IDA7IGkgPCBk
ZXYtPmRtYV9yYW5nZXNfY250OyBpKyspIHsKCQlzdHJ1Y3QgZG1hX3JhbmdlcyAqcmFuZ2UgPSAm
ZGV2LT5kbWFfcmFuZ2VzW2ldOwoJCWlmIChwYWRkciA+PSByYW5nZS0+cGFkZHIgJiYKCQkgICAg
cGFkZHIgPD0gKHJhbmdlLT5wYWRkciArIHJhbmdlLT5zaXplKSkKCQkJcmV0dXJuIHJhbmdlLT5w
Zm5fb2Zmc2V0OwoJfQoKCXJldHVybiAwOwp9Cgp1bnNpZ25lZCBsb25nIF9fZG1hX3RvX3BoeXNf
cGZuX29mZnNldChzdHJ1Y3QgZGV2aWNlICpkZXYsIGRtYV9hZGRyX3QgZG1hX2FkZHIpCnsKCWlu
dCBpOwoKCWZvciAoaSA9IDA7IGkgPCBkZXYtPmRtYV9yYW5nZXNfY250OyBpKyspIHsKCQlzdHJ1
Y3QgZG1hX3JhbmdlcyAqcmFuZ2UgPSAmZGV2LT5kbWFfcmFuZ2VzW2ldOwoJCWlmIChkbWFfYWRk
ciA+PSByYW5nZS0+ZG1hX2FkZHIgJiYKCQkgICAgZG1hX2FkZHIgPD0gKHJhbmdlLT5kbWFfYWRk
ciArIHJhbmdlLT5zaXplKSkKCQkJcmV0dXJuIHJhbmdlLT5wZm5fb2Zmc2V0OwoJfQoKCXJldHVy
biAwOwp9CgpGb3IgZXhpc3RpbmcgZHJpdmVycy9hcmNocyBzZXR0aW5nIGRtYV9wZm5fb2Zmc2V0
IHdlIGNhbjoKaWYgKGRldi0+ZG1hX3Jhbmdlc19jbnQgPT0gMSAmJiBkZXYtPmRtYV9yYW5nZXNb
MF0ucGZuX29mZnNldCAmJiAhZGV2LT5kbWFfcmFuZ2VzWzBdLnNpemUpCglyZXR1cm4gZGV2LT5k
bWFfcmFuZ2VzWzBdLnBmbl9vZmZzZXQ7CgphbmQgdGhleSB3b3VsZCBoYXZlIHRvIHNldCB1cCBv
bmUgc3RydWN0IGRtYV9yYW5nZXMuCgpPbmUgb2YgdGhlIGlzc3VlIHdpdGggdGhpcyBpcyB0aGF0
IHRoZSBzdHJ1Y3QgZG1hX3JhbmdlcyB3b3VsZCBuZWVkIHRvIGJlIGFsbG9jYXRlZCBmb3IKYWxs
IGRldmljZXMsIHNvIHRoZXJlIHNob3VsZCBiZSBhIHNvbWUgY2xldmVyIHdheSBuZWVkIHRvIGJl
IGludmVudGVkIHRvIHVzZSBwb2ludGVycwphcyBtdWNoIGFzIHdlIGNhbi4KCj4gVGhlIHBhdGNo
IEkgc2VudCB0byBQZXRlciBpbiBEZWNlbWJlciB3YXMgdHJ5aW5nIHRvIGNvbnZleSB0aGF0Cj4g
aW5mb3JtYXRpb24gaW4gYSB3YXkgc2ltaWxhciB0byB3aGF0IHRoZSBhcm0zMiBsZWdhY3kgZG1h
IGNvZGUgZG9lcywgYnV0Cj4gaXQgZGlkbid0IHdvcmssIHNvIEknbGwgbmVlZCB0byBmaW5kIHNv
bWUgdGltZSB0byBzaXQgZG93biBhbmQgZmlndXJlIG91dAo+IHdoeS4KCkJ1dCwgd2hpbGUgd2Ug
Z2V0IGEgcHJvcGVyIHNvbHV0aW9uIGNhbiB3ZSBnZXQgdGhlIGZvbGxvd2luZyBwYXRjaCBpbiB0
byBmaXggdGhlIHJlZ3Jlc3Npb24/CkJhc2ljYWxseSB3ZSBhcmUgZmFsbGluZyBiYWNrIHRvIHdo
YXQgd29ya3MgKGFuZCB3YXMgdXNlZCBiZWZvcmUgY29tbWl0IGFkM2M3YjE4YzViMzYyYmU1ZGJk
MGYyYzBiY2YxZmQ1ZmQ2NTkzMTUpLgoKY29tbWl0IDhjM2MzNmIzNzdjMTM5NjAzYTlkZmY1YzU4
ZGFjNTk4NjVmMWFjMGYKQXV0aG9yOiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGku
Y29tPgpEYXRlOiAgIFRodSBEZWMgMTkgMTU6MDc6MjUgMjAxOSArMDIwMAoKICAgIGFybTogbW06
IGRtYS1tYXBwaW5nOiBGaXggZG1hX3N1cHBvcnRlZCgpIHdoZW4gZGV2LT5kbWFfcGZuX29mZnNl
dCBpcyBub3QgMAogICAgCiAgICBXZSBjYW4gb25seSB1c2UgZGlyZWN0IG1hcHBpbmcgd2hlbiBM
UEFFIGlzIGVuYWJsZWQgaWYgdGhlIGRtYV9wZm5fb2Zmc2V0CiAgICBpcyAwLCBvdGhlcndpc2Ug
dmFsaWQgZG1hX21hc2tzIHdpbGwgYmUgcmVqZWN0ZWQgYW5kIHRoZSBETUEgc3VwcG9ydCBpcwog
ICAgZ29pbmcgdG8gYmUgZGVuaWVkIGZvciBwZXJpcGhlcmFscywgb3IgRE1BIGRyaXZlcnMuCiAg
ICAKICAgIENjOiBTdGFibGUgPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICN2NS4zKwogICAgU2ln
bmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9tbS9kbWEtbWFwcGluZy5jIGIvYXJjaC9hcm0vbW0vZG1hLW1hcHBp
bmcuYwppbmRleCA5NDE0ZDcyZjY2NGIuLmUwN2VjMWVhMzg2NSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vbW0vZG1hLW1hcHBpbmcuYworKysgYi9hcmNoL2FybS9tbS9kbWEtbWFwcGluZy5jCkBAIC0x
MTAwLDE1ICsxMTAwLDYgQEAgaW50IGFybV9kbWFfc3VwcG9ydGVkKHN0cnVjdCBkZXZpY2UgKmRl
diwgdTY0IG1hc2spCiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX21hcF9vcHMgKmFybV9nZXRf
ZG1hX21hcF9vcHMoYm9vbCBjb2hlcmVudCkKIHsKLQkvKgotCSAqIFdoZW4gQ09ORklHX0FSTV9M
UEFFIGlzIHNldCwgcGh5c2ljYWwgYWRkcmVzcyBjYW4gZXh0ZW5kIGFib3ZlCi0JICogMzItYml0
cywgd2hpY2ggdGhlbiBjYW4ndCBiZSBhZGRyZXNzZWQgYnkgZGV2aWNlcyB0aGF0IG9ubHkgc3Vw
cG9ydAotCSAqIDMyLWJpdCBETUEuCi0JICogVXNlIHRoZSBnZW5lcmljIGRtYS1kaXJlY3QgLyBz
d2lvdGxiIG9wcyBjb2RlIGluIHRoYXQgY2FzZSwgYXMgdGhhdAotCSAqIGhhbmRsZXMgYm91bmNl
IGJ1ZmZlcmluZyBmb3IgdXMuCi0JICovCi0JaWYgKElTX0VOQUJMRUQoQ09ORklHX0FSTV9MUEFF
KSkKLQkJcmV0dXJuIE5VTEw7CiAJcmV0dXJuIGNvaGVyZW50ID8gJmFybV9jb2hlcmVudF9kbWFf
b3BzIDogJmFybV9kbWFfb3BzOwogfQogCkBAIC0yMzEzLDYgKzIzMDQsMTUgQEAgdm9pZCBhcmNo
X3NldHVwX2RtYV9vcHMoc3RydWN0IGRldmljZSAqZGV2LCB1NjQgZG1hX2Jhc2UsIHU2NCBzaXpl
LAogCiAJaWYgKGFybV9zZXR1cF9pb21tdV9kbWFfb3BzKGRldiwgZG1hX2Jhc2UsIHNpemUsIGlv
bW11KSkKIAkJZG1hX29wcyA9IGFybV9nZXRfaW9tbXVfZG1hX21hcF9vcHMoY29oZXJlbnQpOwor
CWVsc2UgaWYgKElTX0VOQUJMRUQoQ09ORklHX0FSTV9MUEFFKSAmJiAhZGV2LT5kbWFfcGZuX29m
ZnNldCkKKwkJLyoKKwkJICogV2hlbiBDT05GSUdfQVJNX0xQQUUgaXMgc2V0LCBwaHlzaWNhbCBh
ZGRyZXNzIGNhbiBleHRlbmQKKwkJICogYWJvdmUgKiAzMi1iaXRzLCB3aGljaCB0aGVuIGNhbid0
IGJlIGFkZHJlc3NlZCBieSBkZXZpY2VzCisJCSAqIHRoYXQgb25seSBzdXBwb3J0IDMyLWJpdCBE
TUEuCisJCSAqIFVzZSB0aGUgZ2VuZXJpYyBkbWEtZGlyZWN0IC8gc3dpb3RsYiBvcHMgY29kZSBp
biB0aGF0IGNhc2UsCisJCSAqIGFzIHRoYXQgaGFuZGxlcyBib3VuY2UgYnVmZmVyaW5nIGZvciB1
cy4KKwkJICovCisJCWRtYV9vcHMgPSBOVUxMOwogCWVsc2UKIAkJZG1hX29wcyA9IGFybV9nZXRf
ZG1hX21hcF9vcHMoY29oZXJlbnQpOwoKLS0tIAotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMg
RmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1
c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
