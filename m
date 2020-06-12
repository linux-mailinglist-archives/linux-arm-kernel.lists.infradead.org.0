Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47E1F735D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 07:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2X4EljeDAfb6ZiRJ+3QIPzt4Cohlw6SWWtfiASvM1m0=; b=WHFYy+ge0+mh39oWldHPJtp6f
	PALhZ7tiAU3l2pfD9BYs/YdnbxlzQlcsQzo9v6P97rmnBBhxheNcv8xBSoV++LULPJ68vGqT9iRYP
	VUsP1x4eaOl+vnz0qMth7CO4m6R5T+UORnewSZEI2fNO9Zbz8lXXgD5KFuAB2qUdhNynGRtmoBqzQ
	MxFwEDMHUqwq8sNkTJka9O9SxqFhv/NzrON9v45ZwfucSCG+MMSnIDx8j/UQ//NND/+zoSnewHSlB
	ffSwmkLw9loSvs3/3I1y2akeq9UE49iG0g1m8BtN1gIf0+op4NN9ibIKaBTaMqVwz7OEh9mFJF2Mi
	FT1r0KrUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjc3i-0005wM-NF; Fri, 12 Jun 2020 05:16:54 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjc3a-0005vk-2G
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 05:16:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 7400E20076FA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 13:16:41 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uYe8f_TkLh1B for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 13:16:41 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 516652004675
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 13:16:41 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.189.183])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 3017BC019F9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 13:16:41 +0800 (HKT)
Subject: Re: arm64: el1_error when copy rawdata to a partition
To: linux-arm-kernel@lists.infradead.org
References: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
 <601da1b5-4137-4a5d-0d42-0d46af1045dd@arm.com>
 <75d4f767-7af2-dee1-a1a8-e9467651a4e3@gtsys.com.hk>
 <83b058a6-9552-67ae-2994-1ca04519521f@arm.com>
 <e3d2a5e3-6a8c-5280-38d9-b5d6c746efeb@gtsys.com.hk>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <6d5e0238-f1e0-6b99-b6cd-63e2cfad1671@gtsys.com.hk>
Date: Fri, 12 Jun 2020 13:16:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <e3d2a5e3-6a8c-5280-38d9-b5d6c746efeb@gtsys.com.hk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_221646_425501_44FCC76B 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvNi8yMDIwIDEwOjQzIGFtLCBDaHJpcyBSdWVobCB3cm90ZToKPiBPbiAxMS82LzIwMjAg
NzozOCBwbSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIwLTA2LTExIDAzOjIxLCBDaHJp
cyBSdWVobCB3cm90ZToKPj4+IEhpIFJvYmluLAo+Pj4KPj4+IE9uIDEwLzYvMjAyMCA3OjU4IHBt
LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+Pj4gSGkgQ2hyaXMsCj4+Pj4KPj4+PiBPbiAyMDIwLTA2
LTEwIDA0OjQ5LCBDaHJpcyBSdWVobCB3cm90ZToKPj4+Pj4gSGksCj4+Pj4+Cj4+Pj4+IGp1c3Qg
aGl0IGEgcGFuaWMgb24gbXkgcmszMzk5LW9yYW5nZXBpIHdoaWxlIHJ1bm5pbmcKPj4+Pj4KPj4+
Pj4geHogLWQgLWMgaW1hZ2UueHogfCBkZCBvZj0vZGV2L21tY2JsazJwMiBicz0xTQo+Pj4+Pgo+
Pj4+PiBUaGlzIGNhbiByZXByb2R1Y2UuCj4+Pj4KPj4+PiBXaGF0J3MgeW91ciBmaXJtd2FyZSBz
ZXR1cD8gVGhlcmUncyBhIGtub3duIHNuYWcgd2hlbiBtaXhpbmcgbWFpbmxpbmUgCj4+Pj4gVS1C
b290IHdpdGggUm9ja2NoaXAncyBUcnVzdGVkIEZpcm13YXJlIGJpbmFyaWVzIC0gdGhlICJ0cnVz
dC5pbWciIGJsb2JzIAo+Pj4+IHRlbmQgdG8gaW5jbHVkZSBhbiBPUC1URUUgcGF5bG9hZCB0aGF0
IGNhcnZlcyBvdXQgc29tZSBEUkFNIGZvciB0aGUgU2VjdXJlIAo+Pj4+IHdvcmxkLCBhbmQgdGhl
IEJTUCBVLUJvb3QgaGFzIHNvbWUgaGFyZC1jb2RlZCBoYW5kbGluZyBmb3IgdGhhdCB3aGVyZWFz
IAo+Pj4+IG1haW5saW5lIGRvZXNuJ3QuIEFzIGEgcmVzdWx0LCBpbiB0aGF0IGNvbmZpZ3VyYXRp
b24gTGludXggZW5kcyB1cCB1bmF3YXJlIAo+Pj4+IHRoYXQgc29tZSBvZiB0aGUgbWVtb3J5IGl0
J3MgYmVlbiB0b2xkIGFib3V0IGlzbid0IGFjdHVhbGx5IGFjY2Vzc2libGUgYW5kIAo+Pj4+IHdp
bGwgdHJpZ2dlciBhbiBleHRlcm5hbCBhYm9ydCBpZiB0b3VjaGVkICh3aGljaCBkdWUgdG8gdGhl
IG5hdHVyZSBvZiB0aGUgCj4+Pj4gcGFnZSBhbGxvY2F0b3IgdHlwaWNhbGx5IG9ubHkgc2VlbXMg
dG8gaGFwcGVuIHVuZGVyIG1lbW9yeSBwcmVzc3VyZSwgbGlrZSBhIAo+Pj4+IGxhcmdlIGNvcHkg
b3BlcmF0aW9uIHRoYXQgY2h1cm5zIGEgbG90IG9mIGRhdGEgdGhyb3VnaCB0aGUgcGFnZSBjYWNo
ZSkuCj4+Pj4KPj4+PiBSb2Jpbi4KPj4+IFllcywgSSdtIHVzaW5nIHRoZSBtaW5pLWxvYWRlciBm
cm9tIFJvY2tjaGlwIGFuZCB0aGUgdHJ1c3RlZC5pbWcgd2l0aCB0aGUgCj4+PiBtYWlubGluZSB1
Ym9vdCAyMDIwLjQKPj4+IGFuZCB3aGF0IHlvdSB0ZWxsIG1lIG1ha2VzIHNlbnNlIQo+Pj4KPj4+
IEkgdHJpZWQgdG8gdXNlIHRoZSBvcGVuLXNvdXJjZSBvbmx5IGJ1dCBmYWlsZWQgZW5kIHVwIHdp
dGg6Cj4+PiAiVHJ5IGJvb3RpbmcgZnJvbSBNTUMxIgo+Pj4gYW5kIHRoZW4gdGltZW91dCBvbiB0
aGUgU0QgJiBlTU1DLCBJIHRoaW5rIHRoZSBjbG9jayBub3QgY29tZSB1cAo+Pj4gb3IgaXNuJ3Qg
aW5pdGlhbGl6ZWQgaW4gdGhlIFNQTC4KPj4+Cj4+PiBVQk9PVCBjb25maWc6Cj4+PiDCoMKgTGlz
dCBvZiBkZXZpY2UgdHJlZSBwcm9wZXJ0aWVzIHRvIGRyb3AgZm9yIFNQTDoKPj4+IC4uLiBjbG9j
ay1uYW1lcyAuLiBhc3NpZ25lZC1jbG9ja3MgYXNzaWduZWQtY2xvY2stcmF0ZXMgYXNzaWduZWQt
Y2xvY2stcGFyZW50cwo+Pj4KPj4+IHdoaWxlIEkgd3JpdGUgdGhpcywgSSByZWFkIGFib3V0IHRo
ZSAidS1ib290LGRtLXByZS1yZWxvYyIgaW4gdGhlIGhlbHAgdGV4dCAKPj4+IC0gaG1tCj4+PiBs
ZXQgbWUgYWRkIHRoaXMgdG8gdGhlIHJrMzM5OS1vcmFuZ2VwaS5kdHMgYW5kIGdpdmUgdGhlIHB1
cmUgb3Blbi1zb3VyY2UgCj4+PiBzb2x1dGlvbgo+Pj4gb25lIG1vcmUgdHJ5Lgo+Pgo+PiBJIGRv
IHJlY2FsbCBoYXZpbmcgdG8gZG8gc29tZSBmaWRkbGluZyB0byBnZXQgVFBML1NQTCB0byBib290
IGZyb20gZU1NQyAKPj4gcmVsaWFibHkgb24gbXkgTmFub1BDLVQ0IC0gdGhlIG9ubHkgY2hhbmdl
IEkgaGF2ZSBjb21taXR0ZWQgbG9jYWxseSBpcyBhZGRpbmcgCj4+IGEgInUtYm9vdCxzcGwtYm9v
dC1vcmRlciIgcHJvcGVydHksIGJ1dCBJIGNhbid0IG5vdyByZW1lbWJlciB3aGV0aGVyIHRoZSAK
Pj4gaW1hZ2UgSSdtIGN1cnJlbnRseSB1c2luZyBoYWQgYW55IGZ1cnRoZXIgdGVtcG9yYXJ5IGhh
Y2tzIG9uIHRvcCBvZiB0aGF0Lgo+Pgo+PiBBbiBhbHRlcm5hdGl2ZSB3b3JrYXJvdW5kIGlzIGp1
c3QgdG8gaGFjayB0aGUga2VybmVsIERUIHRvIGV4cGxpY2l0bHkgcmVzZXJ2ZSAKPj4gdGhlIG9m
ZmVuZGluZyByZWdpb24gLSB1bnRpbCBJIGdvdCBtYWlubGluZSBUUEwvU1BMIGFuZCBUcnVzdGVk
IEZpcm13YXJlIAo+PiB3b3JraW5nLCB0aGlzIGlzIHdoYXQgSSBoYWQ6Cj4+Cj4+IMKgwqDCoMKg
cmVzZXJ2ZWQtbWVtb3J5IHsKPj4gwqDCoMKgwqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47
Cj4+IMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDI+Owo+PiDCoMKgwqDCoMKgwqDCoCBy
YW5nZXM7Cj4+Cj4+IMKgwqDCoMKgwqDCoMKgIGV4dGVybmFsLWFib3J0QDg0MDAwMDAgewo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwwIDB4ODQwMDAwMCAwIDB4MTIwMDAwMD47Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbm8tbWFwOwo+PiDCoMKgwqDCoMKgwqDCoCB9Owo+PiDC
oMKgwqDCoH07Cj4+Cj4+IFJvYmluLiAKPiBUaGF0J3MgYSBnb29kIHdvcmthcm91bmQsIGFuZCBi
dXkgbWUgc29tZSB0aW1lIHVudGlsIEkgZm91bmQgYSBwcm9wZXIgc29sdXRpb24uCj4gSSdkIHNh
dyB0aGUgInUtYm9vdCxzcGwtYm9vdC1vcmRlciIgaW4gdGhlIG90aGVyICotdS1ib290LmR0c2kg
ZmlsZXMgYW5kIGFkZCAKPiBpdCB0byBteQo+IHNvbHV0aW9uLiBCdXQgYWxsIEkgZ290IGlzCj4g
VHJ5IHRvIGJvb3QgZnJvbSBNTUMyCj4gYW5kIHRoZW4gYSBtbWNfaW5pdCBlcnJvciAtOTUgKG5v
IHJlc3BvbnNlIGZyb20gdGhlIHNkL2VtbWMpCj4KPiBJIHdhaXQgZm9yIG15IG5ldyBwcm90b3R5
cGVzLCByazMzOTkgKyBMUEREUjQgLi4gbGV0cyBob3BlIHRoYXQgaXQgd2lsbCBiZSAKPiBib290
IGJldHRlciB0aGVuIHRoZSBPcmFuZ2UtcGkuCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgaGVscC4K
Pgo+IENocmlzCgpUaGUgZGVmaW5pdGlvbiBmb3IgMHg4NDAwMDAwIGluIHRoZSBEVCB3b3JrcyBm
b3IgbWUuCgpbwqDCoMKgIDAuMDAwMDAwXSBFYXJseSBtZW1vcnkgbm9kZSByYW5nZXMKW8KgwqDC
oCAwLjAwMDAwMF3CoMKgIG5vZGXCoMKgIDA6IFttZW0gMHgwMDAwMDAwMDAwMjAwMDAwLTB4MDAw
MDAwMDAwODNmZmZmZl0KW8KgwqDCoCAwLjAwMDAwMF3CoMKgIG5vZGXCoMKgIDA6IFttZW0gMHgw
MDAwMDAwMDA5NjAwMDAwLTB4MDAwMDAwMDA3ZmZmZmZmZl0KW8KgwqDCoCAwLjAwMDAwMF0gSW5p
dG1lbSBzZXR1cCBub2RlIDAgW21lbSAweDAwMDAwMDAwMDAyMDAwMDAtMHgwMDAwMDAwMDdmZmZm
ZmZmXQoKbm8gbW9yZSBjcmFzaC4KClRoYW5rcyBSb2JpbiEKCkNoZWVycwpDaHJpcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
