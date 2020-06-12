Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1327C1F7248
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 04:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KU0ctGm+DaCz8tXczwCbBHvOi8VvhD9Xok+xXLEvXMk=; b=r0vw4ey2iGW0h06venVfBo48J
	OL12nt8uwFbiqMUU98uJGcLvLob0TV9i8/V8/ZN19k5CrSLpz4033p5noccyTDaZ+sjoCFDHVh6HL
	nRqoKzC1XGOJzIzOB34CKi88tXNcyFr1jjLW8hu738t4Q59iuRv3G0050jen8oe5K3sOlNeOgKBmU
	/NY8JpQHq57tQyrG9XQNmPhK7pP4bjWHo3/Dpr7aGWeltoTgkrpwKxgb3UO42GMWjAvZ1ty2D7Q/4
	oGGtiggjlfUeSJIuesCrdcJCdfFzb/4i5gfekJnWviBtMG92u1X7PICszyVSYzUsB0a+kV7eppyLb
	Fc9KhmLMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjZfk-0001c7-JE; Fri, 12 Jun 2020 02:44:00 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjZfb-0001bh-D1
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 02:43:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 13C4C20076FA;
 Fri, 12 Jun 2020 10:43:45 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjGXRXNLMy65; Fri, 12 Jun 2020 10:43:44 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id E6B0D2004675;
 Fri, 12 Jun 2020 10:43:44 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.189.183])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 9E950C019F9;
 Fri, 12 Jun 2020 10:43:44 +0800 (HKT)
Subject: Re: arm64: el1_error when copy rawdata to a partition
To: linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
References: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
 <601da1b5-4137-4a5d-0d42-0d46af1045dd@arm.com>
 <75d4f767-7af2-dee1-a1a8-e9467651a4e3@gtsys.com.hk>
 <83b058a6-9552-67ae-2994-1ca04519521f@arm.com>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <e3d2a5e3-6a8c-5280-38d9-b5d6c746efeb@gtsys.com.hk>
Date: Fri, 12 Jun 2020 10:43:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <83b058a6-9552-67ae-2994-1ca04519521f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_194351_749304_9551FDC2 
X-CRM114-Status: GOOD (  19.99  )
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

T24gMTEvNi8yMDIwIDc6MzggcG0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMDIwLTA2LTEx
IDAzOjIxLCBDaHJpcyBSdWVobCB3cm90ZToKPj4gSGkgUm9iaW4sCj4+Cj4+IE9uIDEwLzYvMjAy
MCA3OjU4IHBtLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+PiBIaSBDaHJpcywKPj4+Cj4+PiBPbiAy
MDIwLTA2LTEwIDA0OjQ5LCBDaHJpcyBSdWVobCB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+IGp1
c3QgaGl0IGEgcGFuaWMgb24gbXkgcmszMzk5LW9yYW5nZXBpIHdoaWxlIHJ1bm5pbmcKPj4+Pgo+
Pj4+IHh6IC1kIC1jIGltYWdlLnh6IHwgZGQgb2Y9L2Rldi9tbWNibGsycDIgYnM9MU0KPj4+Pgo+
Pj4+IFRoaXMgY2FuIHJlcHJvZHVjZS4KPj4+Cj4+PiBXaGF0J3MgeW91ciBmaXJtd2FyZSBzZXR1
cD8gVGhlcmUncyBhIGtub3duIHNuYWcgd2hlbiBtaXhpbmcgbWFpbmxpbmUgVS1Cb290IAo+Pj4g
d2l0aCBSb2NrY2hpcCdzIFRydXN0ZWQgRmlybXdhcmUgYmluYXJpZXMgLSB0aGUgInRydXN0Lmlt
ZyIgYmxvYnMgdGVuZCB0byAKPj4+IGluY2x1ZGUgYW4gT1AtVEVFIHBheWxvYWQgdGhhdCBjYXJ2
ZXMgb3V0IHNvbWUgRFJBTSBmb3IgdGhlIFNlY3VyZSB3b3JsZCwgCj4+PiBhbmQgdGhlIEJTUCBV
LUJvb3QgaGFzIHNvbWUgaGFyZC1jb2RlZCBoYW5kbGluZyBmb3IgdGhhdCB3aGVyZWFzIG1haW5s
aW5lIAo+Pj4gZG9lc24ndC4gQXMgYSByZXN1bHQsIGluIHRoYXQgY29uZmlndXJhdGlvbiBMaW51
eCBlbmRzIHVwIHVuYXdhcmUgdGhhdCBzb21lIAo+Pj4gb2YgdGhlIG1lbW9yeSBpdCdzIGJlZW4g
dG9sZCBhYm91dCBpc24ndCBhY3R1YWxseSBhY2Nlc3NpYmxlIGFuZCB3aWxsIAo+Pj4gdHJpZ2dl
ciBhbiBleHRlcm5hbCBhYm9ydCBpZiB0b3VjaGVkICh3aGljaCBkdWUgdG8gdGhlIG5hdHVyZSBv
ZiB0aGUgcGFnZSAKPj4+IGFsbG9jYXRvciB0eXBpY2FsbHkgb25seSBzZWVtcyB0byBoYXBwZW4g
dW5kZXIgbWVtb3J5IHByZXNzdXJlLCBsaWtlIGEgbGFyZ2UgCj4+PiBjb3B5IG9wZXJhdGlvbiB0
aGF0IGNodXJucyBhIGxvdCBvZiBkYXRhIHRocm91Z2ggdGhlIHBhZ2UgY2FjaGUpLgo+Pj4KPj4+
IFJvYmluLgo+PiBZZXMsIEknbSB1c2luZyB0aGUgbWluaS1sb2FkZXIgZnJvbSBSb2NrY2hpcCBh
bmQgdGhlIHRydXN0ZWQuaW1nIHdpdGggdGhlIAo+PiBtYWlubGluZSB1Ym9vdCAyMDIwLjQKPj4g
YW5kIHdoYXQgeW91IHRlbGwgbWUgbWFrZXMgc2Vuc2UhCj4+Cj4+IEkgdHJpZWQgdG8gdXNlIHRo
ZSBvcGVuLXNvdXJjZSBvbmx5IGJ1dCBmYWlsZWQgZW5kIHVwIHdpdGg6Cj4+ICJUcnkgYm9vdGlu
ZyBmcm9tIE1NQzEiCj4+IGFuZCB0aGVuIHRpbWVvdXQgb24gdGhlIFNEICYgZU1NQywgSSB0aGlu
ayB0aGUgY2xvY2sgbm90IGNvbWUgdXAKPj4gb3IgaXNuJ3QgaW5pdGlhbGl6ZWQgaW4gdGhlIFNQ
TC4KPj4KPj4gVUJPT1QgY29uZmlnOgo+PiDCoMKgTGlzdCBvZiBkZXZpY2UgdHJlZSBwcm9wZXJ0
aWVzIHRvIGRyb3AgZm9yIFNQTDoKPj4gLi4uIGNsb2NrLW5hbWVzIC4uIGFzc2lnbmVkLWNsb2Nr
cyBhc3NpZ25lZC1jbG9jay1yYXRlcyBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCj4+Cj4+IHdoaWxl
IEkgd3JpdGUgdGhpcywgSSByZWFkIGFib3V0IHRoZSAidS1ib290LGRtLXByZS1yZWxvYyIgaW4g
dGhlIGhlbHAgdGV4dCAtIAo+PiBobW0KPj4gbGV0IG1lIGFkZCB0aGlzIHRvIHRoZSByazMzOTkt
b3JhbmdlcGkuZHRzIGFuZCBnaXZlIHRoZSBwdXJlIG9wZW4tc291cmNlIAo+PiBzb2x1dGlvbgo+
PiBvbmUgbW9yZSB0cnkuCj4KPiBJIGRvIHJlY2FsbCBoYXZpbmcgdG8gZG8gc29tZSBmaWRkbGlu
ZyB0byBnZXQgVFBML1NQTCB0byBib290IGZyb20gZU1NQyAKPiByZWxpYWJseSBvbiBteSBOYW5v
UEMtVDQgLSB0aGUgb25seSBjaGFuZ2UgSSBoYXZlIGNvbW1pdHRlZCBsb2NhbGx5IGlzIGFkZGlu
ZyAKPiBhICJ1LWJvb3Qsc3BsLWJvb3Qtb3JkZXIiIHByb3BlcnR5LCBidXQgSSBjYW4ndCBub3cg
cmVtZW1iZXIgd2hldGhlciB0aGUgaW1hZ2UgCj4gSSdtIGN1cnJlbnRseSB1c2luZyBoYWQgYW55
IGZ1cnRoZXIgdGVtcG9yYXJ5IGhhY2tzIG9uIHRvcCBvZiB0aGF0Lgo+Cj4gQW4gYWx0ZXJuYXRp
dmUgd29ya2Fyb3VuZCBpcyBqdXN0IHRvIGhhY2sgdGhlIGtlcm5lbCBEVCB0byBleHBsaWNpdGx5
IHJlc2VydmUgCj4gdGhlIG9mZmVuZGluZyByZWdpb24gLSB1bnRpbCBJIGdvdCBtYWlubGluZSBU
UEwvU1BMIGFuZCBUcnVzdGVkIEZpcm13YXJlIAo+IHdvcmtpbmcsIHRoaXMgaXMgd2hhdCBJIGhh
ZDoKPgo+IMKgwqDCoMKgcmVzZXJ2ZWQtbWVtb3J5IHsKPiDCoMKgwqDCoMKgwqDCoCAjYWRkcmVz
cy1jZWxscyA9IDwyPjsKPiDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwyPjsKPiDCoMKg
wqDCoMKgwqDCoCByYW5nZXM7Cj4KPiDCoMKgwqDCoMKgwqDCoCBleHRlcm5hbC1hYm9ydEA4NDAw
MDAwIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwwIDB4ODQwMDAwMCAwIDB4MTIw
MDAwMD47Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuby1tYXA7Cj4gwqDCoMKgwqDCoMKgwqAg
fTsKPiDCoMKgwqDCoH07Cj4KPiBSb2Jpbi4gClRoYXQncyBhIGdvb2Qgd29ya2Fyb3VuZCwgYW5k
IGJ1eSBtZSBzb21lIHRpbWUgdW50aWwgSSBmb3VuZCBhIHByb3BlciBzb2x1dGlvbi4KSSdkIHNh
dyB0aGUgInUtYm9vdCxzcGwtYm9vdC1vcmRlciIgaW4gdGhlIG90aGVyICotdS1ib290LmR0c2kg
ZmlsZXMgYW5kIGFkZCBpdCAKdG8gbXkKc29sdXRpb24uIEJ1dCBhbGwgSSBnb3QgaXMKVHJ5IHRv
IGJvb3QgZnJvbSBNTUMyCmFuZCB0aGVuIGEgbW1jX2luaXQgZXJyb3IgLTk1IChubyByZXNwb25z
ZSBmcm9tIHRoZSBzZC9lbW1jKQoKSSB3YWl0IGZvciBteSBuZXcgcHJvdG90eXBlcywgcmszMzk5
ICsgTFBERFI0IC4uIGxldHMgaG9wZSB0aGF0IGl0IHdpbGwgYmUgYm9vdCAKYmV0dGVyIHRoZW4g
dGhlIE9yYW5nZS1waS4KClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwLgoKQ2hyaXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
