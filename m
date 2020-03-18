Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06C818A2CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:01:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QXkylmFb0ist1p22ybf0gu8KujXxL8WybJ4MA4KN1Uk=; b=O+26SFmGv5gKOjwvUvcVHMAez
	shSGtbMmSf/VN5RUl9wldpSui5sYHzhc1gWFzrMwlmRYiNVN5nVuaqmssod8vkpzIX06yX4x07bI9
	wjEQlWgtQ3lmS375D62Kgj/qyDZGuUHUwlHlVIW0BSC7sk4XSLqHDyW5ofpbDApID5NLCoBrJk9rG
	CpY1rPzWgjV7FOPMZBj8lUyCC/+Gs0JF7U0Xl++pk4EMi/7AtaAwYxdixLYj8k/uEjX+O8lS3vCsr
	AioZMEzrsZTRBczVS33M6fvd1U5fGpgMHIywB0cngqUZPhN8WWlrhEiyrm+IxeO7Ms81E7j858oaB
	1/Dm0Uaug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdw6-0006md-7D; Wed, 18 Mar 2020 19:01:02 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdvx-0006lx-2A
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 19:00:54 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 2DBE48E3E47C5998BBDF;
 Wed, 18 Mar 2020 19:00:42 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Mar 2020 19:00:41 +0000
Received: from [127.0.0.1] (10.210.167.248) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Wed, 18 Mar
 2020 19:00:40 +0000
From: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <d3a6435b-bc1f-e518-6461-2ebff72bbc59@huawei.com>
 <d74f9cb3df708335a56aec62963aa281@kernel.org>
 <894aabcc-9676-3945-7a62-70fb930fd8a5@huawei.com>
 <a24fad17d178209d35bbcb9f270c84ff@kernel.org>
Message-ID: <a5132a5f-efe8-4305-07dd-d120b51b1360@huawei.com>
Date: Wed, 18 Mar 2020 19:00:27 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <a24fad17d178209d35bbcb9f270c84ff@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.210.167.248]
X-ClientProxiedBy: lhreml704-chm.china.huawei.com (10.201.108.53) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_120053_249017_0BF45593 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, luojiaxing <luojiaxing@huawei.com>,
 linux-kernel@vger.kernel.org, Ming Lei <ming.lei@redhat.com>, "Wangzhou
 \(B\)" <wangzhou1@hisilicon.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCj4+IEFuZCBmb3Igc29tZSByZWFzb24gZmFuY2llZCBjcHU2Mi4KPiAKPiBIbW1t
LiBPSy4gSSdtIHN1cnByaXNlZCB0aGF0IGlycWJhbGFuY2UgZHJpZXMgdG8gc2V0IGEgcmFuZ2Ug
b2YgQ1BVcywgCj4gaW5zdGVhZCBvZgo+IGEgcGFydGljdWxhciBDUFUgdGhvdWdoLgoKSXQgZG9l
cyBzZWVtIHN0cmFuZ2UuIEJ1dCBhbHNvIHF1aXRlIGNvbnNpc3RlbnQuIEkgd2lsbCBjaGVjayBh
Z2FpbiBvbiB0aGF0LgoKPj4+Cj4+PiBCdXQgaXQgaGFzIHRoZSBtYXNrIGZvciBDUFVzIHRoYXQg
YXJlIGJlc3Qgc3VpdGVkIGZvciB0aGlzIGludGVycnVwdCwKPj4+IHJpZ2h0Pwo+Pj4gSWYgSSB1
bmRlcnN0YW5kIHRoZSB0b3BvbG9neSBvZiB5b3VyIG1hY2hpbmUsIGl0IGhhcyBhbiBJVFMgcGVy
IDY0IENQVXMsCj4+PiBhbmQKPj4+IHRoaXMgZGV2aWNlIGlzIGNvbm5lY3RlZCB0byB0aGUgSVRT
IHRoYXQgc2VydmVzIHRoZSBzZWNvbmQgc29ja2V0Lgo+Pgo+PiBObywgdGhpcyBvbmUgKEQwNkVT
KSBoYXMgYSBzaW5nbGUgSVRTOgo+Pgo+PiBqb2huQHVidW50dTp+L2tlcm5lbC1kZXYkIGRtZXNn
IHwgZ3JlcCBJVFMKPj4gW8KgwqDCoCAwLjAwMDAwMF0gU1JBVDogUFhNIDAgLT4gSVRTIDAgLT4g
Tm9kZSAwCj4+IFvCoMKgwqAgMC4wMDAwMDBdIElUUyBbbWVtIDB4MjAyMTAwMDAwLTB4MjAyMTFm
ZmZmXQo+PiBbwqDCoMKgIDAuMDAwMDAwXSBJVFNAMHgwMDAwMDAwMjAyMTAwMDAwOiBVc2luZyBJ
VFMgbnVtYmVyIDAKPj4gW8KgwqDCoCAwLjAwMDAwMF0gSVRTQDB4MDAwMDAwMDIwMjEwMDAwMDog
YWxsb2NhdGVkIDgxOTIgRGV2aWNlcwo+PiBAMjNlYTlmMDAwMCAoaW5kaXJlY3QsIGVzeiA4LCBw
c3ogMTZLLCBzaHIgMSkKPj4gW8KgwqDCoCAwLjAwMDAwMF0gSVRTQDB4MDAwMDAwMDIwMjEwMDAw
MDogYWxsb2NhdGVkIDIwNDggVmlydHVhbCBDUFVzCj4+IEAyM2VhOWQ4MDAwIChpbmRpcmVjdCwg
ZXN6IDE2LCBwc3ogNEssIHNociAxKQo+PiBbwqDCoMKgIDAuMDAwMDAwXSBJVFNAMHgwMDAwMDAw
MjAyMTAwMDAwOiBhbGxvY2F0ZWQgMjU2IEludGVycnVwdAo+PiBDb2xsZWN0aW9ucyBAMjNlYTlk
MzAwMCAoZmxhdCwgZXN6IDE2LCBwc3ogNEssIHNociAxKQo+PiBbwqDCoMKgIDAuMDAwMDAwXSBJ
VFM6IFVzaW5nIERpcmVjdExQSSBmb3IgVlBFIGludmFsaWRhdGlvbgo+PiBbwqDCoMKgIDAuMDAw
MDAwXSBJVFM6IEVuYWJsaW5nIEdJQ3Y0IHN1cHBvcnQKPj4gW8KgwqDCoCAwLjA0NDAzNF0gUGxh
dGZvcm0gTVNJOiBJVFNAMHgyMDIxMDAwMDAgZG9tYWluIGNyZWF0ZWQKPj4gW8KgwqDCoCAwLjA0
NDA0Ml0gUENJL01TSTogSVRTQDB4MjAyMTAwMDAwIGRvbWFpbiBjcmVhdGVkCj4gCj4gVGhlcmUn
cyBzb21ldGhpbmcgSSdtIG1pc3NpbmcgaGVyZS4gSWYgdGhlcmUncyBhIHNpbmdsZSBJVFMgaW4g
dGhlIHN5c3RlbSwKPiBub2RlIGFmZmluaXR5IG11c3QgY292ZXIgdGhlIHdob2xlIHN5c3RlbSwg
bm90IGhhbGYgb2YgaXQuCj4gCj4+IEQwNkNTIGhhcyAyeCBJVFMsIGFzIHlvdSBtYXkga25vdyA6
KQo+Pgo+PiBBbmQsIEZXSVcsIHRoZSBkZXZpY2UgaXMgb24gdGhlIDJuZCBzb2NrZXQsIG51bWEg
bm9kZSAjMi4KPiAKPiBZb3UndmUgbG9zdCBtZS4gU2luZ2xlIElUUywgYnV0IHR3byBzb2NrZXRz
PwoKWWVhaCwgcmlnaHQsIHNvIEkgdGhpbmsgdGhhdCBhIHNpbmdsZSBJVFMgaXMgdXNlZCBkdWUg
dG8gc29tZSBIVyBidWcgaW4gCnRoZSBFUyBjaGlwLCBmaXhlZCBpbiB0aGUgQ1MgY2hpcC4KCkFu
ZCBzb21lIG1vcmUgYmFja2dyb3VuZCBvbiB0aGUgRDA1LCBEMDZFUywgRDA2Q1MgdG9wb2xvZ3k6
CgpFdmVuIHRob3VnaCB0aGUgc3lzdGVtIGlzIDJ4IHNvY2tldCwgd2UgbW9kZWwgYXMgNHggTlVN
QSBub2RlcywgaS5lLiAyeCAKbm9kZXMgcGVyIHNvY2tldC4gVGhpcyBpcyBiZWNhdXNlIGVhY2gg
bm9kZSBoYXMgYW4gYXNzb2NpYXRlZCBtZW1vcnkgCmNvbnRyb2xsZXIgaW4gdGhlIHNvY2tldCwg
aS5lLiAyeCBtZW1vcnkgY29udHJvbGxlcnMgcGVyIHNvY2tldC4gQXMgCnN1Y2gsIGZvciB0aGlz
IEQwNkVTIHN5c3RlbSwgYSBOVU1BIG5vZGUgaXMgMjQgY29yZXMuCgpJIHdpbGwgYmUgdGhlIGZp
cnN0IHRvIGFkbWl0IHRoYXQgaXQgZG9lcyBtYWtlIHRoaW5ncyBtb3JlIGNvbXBsaWNhdGVkLiAK
RXZlbiBtb3JlIGVzcGVjaWFsbHkgKGFuZCBhcmd1YWJseSBicm9rZW4pIHdoZW4gd2UgbmVlZCB0
byBhc3NpZ24gYSAKcHJveGltaXR5IGRvbWFpbiB0byBkZXZpY2VzIGluIGVpdGhlciBzb2NrZXQs
IGNvbnNpZGVyaW5nIHRoZXkgYXJlIAplcXVpZGlzdGFudCBmcm9tIGVpdGhlciBtZW1vcnkgY29u
dHJvbGxlci9DUFUgY2x1c3RlciBpbiB0aGF0IHNvY2tldC4KCj4gCj4+Cj4+IFNvIHRoZSBjcHUg
bWFzayBvZiBub2RlICMwICh3aGVyZSB0aGUgSVRTIGxpdmVzKSBpcyAwLTIzLiBTbyBubwo+PiBp
bnRlcnNlY3Rpb24gd2l0aCB3aGF0IHVzZXJzcGFjZSByZXF1ZXN0ZWQuCj4+Cj4+Pj4gwqDCoMKg
wqBpZiAoY3B1IDwgMCB8fCBjcHUgPj0gbnJfY3B1X2lkcykKPj4+PiDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gLUVJTlZBTDsKPj4+Pgo+Pj4+IMKgwqDCoMKgaWYgKGNwdSAhPSBpdHNfZGV2LT5ldmVu
dF9tYXAuY29sX21hcFtpZF0pIHsKPj4+PiDCoMKgwqDCoMKgwqDCoCBpdHNfaW5jX2xwaV9jb3Vu
dChkLCBjcHUpOwo+Pj4+IMKgwqDCoMKgwqDCoMKgIGl0c19kZWNfbHBpX2NvdW50KGQsIGl0c19k
ZXYtPmV2ZW50X21hcC5jb2xfbWFwW2lkXSk7Cj4+Pj4gwqDCoMKgwqDCoMKgwqAgdGFyZ2V0X2Nv
bCA9ICZpdHNfZGV2LT5pdHMtPmNvbGxlY3Rpb25zW2NwdV07Cj4+Pj4gwqDCoMKgwqDCoMKgwqAg
aXRzX3NlbmRfbW92aShpdHNfZGV2LCB0YXJnZXRfY29sLCBpZCk7Cj4+Pj4gwqDCoMKgwqDCoMKg
wqAgaXRzX2Rldi0+ZXZlbnRfbWFwLmNvbF9tYXBbaWRdID0gY3B1Owo+Pj4+IMKgwqDCoMKgwqDC
oMKgIGlycV9kYXRhX3VwZGF0ZV9lZmZlY3RpdmVfYWZmaW5pdHkoZCwgY3B1bWFza19vZihjcHUp
KTsKPj4+PiDCoMKgwqDCoH0KPj4+Pgo+Pj4+IFNvIGNwdSBtYXkgbm90IGJlIGEgbWVtYmVyIG9m
IG1hc2tfdmFsLiBIZW5jZSB0aGUgaW5jb25zaXN0ZW5jeSBvZiB0aGUKPj4+PiBhZmZpbml0eSBs
aXN0IGFuZCBlZmZlY3RpdmUgYWZmaW5pdHkuIFdlIGNvdWxkIGp1c3QgZHJvcCB0aGUgQU5EIG9m
Cj4+Pj4gdGhlIElUUyBub2RlIG1hc2sgaW4gaXRzX3NlbGVjdF9jcHUoKS4KPj4+Cj4+PiBUaGF0
IHdvdWxkIGJlIGEgZGVwYXJ0dXJlIGZyb20gdGhlIGFsZ29yaXRobSBUaG9tYXMgcHJvcG9zZWQs
IHdoaWNoIG1hZGUKPj4+IGEgbG90IG9mIHNlbnNlIGluIG15IG9waW5pb24uIFdoYXQgaXRzX3Nl
bGVjdF9jcHUoKSBkb2VzIGluIHRoaXMgY2FzZSBpcwo+Pj4gcHJvYmFibHkgdGhlIGJlc3QgdGhh
dCBjYW4gYmUgYWNoaWV2ZWQgZnJvbSBhIGxhdGVuY3kgcGVyc3BlY3RpdmUsCj4+PiBhcyBpdCBr
ZWVwcyB0aGUgaW50ZXJydXB0IGxvY2FsIHRvIHRoZSBzb2NrZXQgdGhhdCBnZW5lcmF0ZWQgaXQu
Cj4+Cj4+IFdlIHNlZW0gdG8gYmUgZm9sbG93aW5nIHdoYXQgVGhvbWFzIGRlc2NyaWJlZCBmb3Ig
YSBub24tbWFuYWdlZAo+PiBpbnRlcnJ1cHQgYm91bmQgdG8gYSBub2RlLiBCdXQgaXMgdGhpcyBp
bnRlcnJ1cHQgYm91bmQgdG8gdGhlIG5vZGU/Cj4gCj4gSWYgdGhlIElUUyBhZHZlcnRpemVzIGFm
ZmluaXR5IHRvIGEgbm9kZSAodGhyb3VnaCBTUkFULCBmb3IgZXhhbXBsZSksCj4gd2Ugc2hvdWxk
IHVzZSB0aGF0LiBBbmQgdGhhdCdzIHdoYXQgd2UgaGF2ZSBpbiB0aGlzIHBhdGNoLgoKUmlnaHQs
IGJ1dCBteSBzeXN0ZW0gaXMgaW5jb21wYXRpYmxlLiBSZWFzb24gYmVpbmcsIFNSQVQgc2F5cyBJ
VFMgaXMgCk5VTUEgbm9kZSAjMCAoSSB0aGluayBjaG9vc2luZyBub2RlICMwIG92ZXIgIzEgbWF5
IGJlIGp1c3QgYXJiaXRyYXJ5KSwgCmFuZCB0aGUgY3B1IG1hc2sgZm9yIE5VTUEgbm9kZSAjMCBp
cyAwLTIzLCBhcyBhYm92ZS4gQW5kIEkgZmlndXJlIGV2ZW4gCmZvciBEMDZDUyB3aXRoIDJ4IElU
UywgYWdhaW4sIGlzIGluY29tcGF0aWJsZSBmb3IgdGhlIHNhbWUgcmVhc29uLgoKU28geW91ciBl
eHBlY3RhdGlvbiBmb3IgYSBzaW5nbGUgSVRTIHN5c3RlbSB3b3VsZCBiZSB0aGF0IHRoZSBOVU1B
IG5vZGUgCmNwdSBtYXNrIGZvciB0aGUgSVRTIHdvdWxkIGNvdmVyIGFsbCBjcHVzLiBTYWRseSwg
aXQgZG9lc24ndCBoZXJlLi4uCgpNdWNoIGFwcHJlY2lhdGVkLApKb2huCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
