Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55721E3C56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qSw/sB7H1MHxdiyppFqbvvjQw636RxnnUcv7aTD9BLk=; b=a9/IVJH9X7SgCs5oHrl3ZBh96
	wtmnwfYWSh6uMN42g+i3yq2KAtN7bt0FnJYXt0Dt8zGpXnEH1mf9xkeghBXHo6Se4Ep3GZDRKUmcN
	aPaZotQwq9a/cFi/oPN4ZB/x9AWN0BZvyjZbTIhaxKJ+uQZ+z8sley5IZc8sOu9QL1fiXDjKXRH58
	F+V3aCfNY69oSMO8lCXsKgdzgmw344RchC/6EmXK2CDEw7tkkU0xiNvMugxRNXu2+3uK2RyRlV3Iu
	SpnT3BR6nTqXcRwV4/7cKQ9/iy9tcOdKzb3+hEWV2qy7ErvHH2nRO6pWsxcAfmMr5tRd7kRXV9/LX
	4wTCWTZmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrel-0007Yd-F5; Wed, 27 May 2020 08:43:23 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrds-0006zh-EB
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:42:30 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BB54F1344ACB74EED863;
 Wed, 27 May 2020 16:42:21 +0800 (CST)
Received: from [10.173.222.27] (10.173.222.27) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Wed, 27 May 2020 16:42:14 +0800
Subject: Re: [PATCH] KVM: arm64: Allow in-atomic injection of SPIs
To: Marc Zyngier <maz@kernel.org>
References: <20200526161136.451312-1-maz@kernel.org>
 <47d6d521-f05e-86fe-4a94-ce21754100ae@huawei.com>
 <1d3658f4b92a690ba05367f2a22a7331@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <628e9f4b-0587-bde6-05f3-6877e37bd659@huawei.com>
Date: Wed, 27 May 2020 16:42:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <1d3658f4b92a690ba05367f2a22a7331@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014228_739903_E9EF17FC 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvNS8yNyAxNTo1NSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFpl
bmdodWksCj4gCj4gT24gMjAyMC0wNS0yNyAwODo0MSwgWmVuZ2h1aSBZdSB3cm90ZToKPj4gT24g
MjAyMC81LzI3IDA6MTEsIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IE9uIGEgc3lzdGVtIHRoYXQg
dXNlcyBTUElzIHRvIGltcGxlbWVudCBNU0lzIChhcyBpdCB3b3VsZCBiZQo+Pj4gdGhlIGNhc2Ug
b24gYSBHSUN2MiBzeXN0ZW0gZXhwb3NpbmcgYSBHSUN2Mm0gdG8gaXRzIGd1ZXN0cyksCj4+PiB3
ZSBkZW55IHRoZSBwb3NzaWJpbGl0eSBvZiBpbmplY3RpbmcgU1BJcyBvbiB0aGUgaW4tYXRvbWlj
Cj4+PiBmYXN0LXBhdGguCj4+Pgo+Pj4gVGhpcyByZXN1bHRzIGluIGEgdmVyeSBsYXJnZSBhbW91
bnQgb2YgY29udGV4dC1zd2l0Y2hlcwo+Pj4gKHJvdWdobHkgZXF1aXZhbGVudCB0byB0d2ljZSB0
aGUgaW50ZXJydXB0IHJhdGUpIG9uIHRoZSBob3N0LAo+Pj4gYW5kIHN1Ym9wdGltYWwgcGVyZm9y
bWFuY2UgZm9yIHRoZSBndWVzdCAoYXMgbWVhc3VyZWQgd2l0aAo+Pj4gYSB0ZXN0IHdvcmtsb2Fk
IGludm9sdmluZyBhIHZpcnRpbyBpbnRlcmZhY2UgYmFja2VkIGJ5IHZob3N0LW5ldCkuCj4+PiBH
aXZlbiB0aGF0IEdJQ3YyIHN5c3RlbXMgYXJlIHVzdWFsbHkgb24gdGhlIGxvdy1lbmQgb2YgdGhl
IHNwZWN0cnVtCj4+PiBwZXJmb3JtYW5jZSB3aXNlLCB0aGV5IGNvdWxkIGRvIHdpdGhvdXQgdGhl
IGFnZ3JhdmF0aW9uLgo+Pj4KPj4+IFdlIHNvbHZlZCB0aGlzIGZvciBHSUN2MytJVFMgYnkgaGF2
aW5nIGEgdHJhbnNsYXRpb24gY2FjaGUuIEJ1dAo+Pj4gU1BJcyBkbyBub3QgbmVlZCBhbnkgZXh0
cmEgaW5mcmFzdHJ1Y3R1cmUsIGFuZCBjYW4gYmUgaW1tZWRpYXRlbHkKPj4+IGluamVjdGVkIGlu
IHRoZSB2aXJ0dWFsIGRpc3RyaWJ1dG9yIGFzIHRoZSBsb2NraW5nIGlzIGFscmVhZHkKPj4+IGhl
YXZ5IGVub3VnaCB0aGF0IHdlIGRvbid0IG5lZWQgdG8gd29ycnkgYWJvdXQgYW55dGhpbmcuCj4+
Pgo+Pj4gVGhpcyBoYWx2ZXMgdGhlIG51bWJlciBvZiBjb250ZXh0IHN3aXRjaGVzIGZvciB0aGUg
c2FtZSB3b3JrbG9hZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBr
ZXJuZWwub3JnPgo+Pj4gLS0tCj4+PiDCoCBhcmNoL2FybTY0L2t2bS92Z2ljL3ZnaWMtaXJxZmQu
YyB8IDIwICsrKysrKysrKysrKysrKystLS0tCj4+PiDCoCBhcmNoL2FybTY0L2t2bS92Z2ljL3Zn
aWMtaXRzLmPCoMKgIHzCoCAzICstLQo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2
bS92Z2ljL3ZnaWMtaXJxZmQuYyAKPj4+IGIvYXJjaC9hcm02NC9rdm0vdmdpYy92Z2ljLWlycWZk
LmMKPj4+IGluZGV4IGQ4Y2RmZWE1Y2M5Ni4uMTFhOWY4MTExNWFiIDEwMDY0NAo+Pj4gLS0tIGEv
YXJjaC9hcm02NC9rdm0vdmdpYy92Z2ljLWlycWZkLmMKPj4+ICsrKyBiL2FyY2gvYXJtNjQva3Zt
L3ZnaWMvdmdpYy1pcnFmZC5jCj4+PiBAQCAtMTA3LDE1ICsxMDcsMjcgQEAgaW50IGt2bV9hcmNo
X3NldF9pcnFfaW5hdG9taWMoc3RydWN0IAo+Pj4ga3ZtX2tlcm5lbF9pcnFfcm91dGluZ19lbnRy
eSAqZSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBr
dm0gKmt2bSwgaW50IGlycV9zb3VyY2VfaWQsIGludCBsZXZlbCwKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgbGluZV9zdGF0dXMpCj4+Cj4+IC4uLiBhbmQg
eW91IG1heSBhbHNvIG5lZWQgdG8gdXBkYXRlIHRoZSBjb21tZW50IG9uIHRvcCBvZiBpdCB0bwo+
PiByZWZsZWN0IHRoaXMgY2hhbmdlLgo+Pgo+PiAvKioKPj4gwqAqIGt2bV9hcmNoX3NldF9pcnFf
aW5hdG9taWM6IGZhc3QtcGF0aCBmb3IgaXJxZmQgaW5qZWN0aW9uCj4+IMKgKgo+PiDCoCogQ3Vy
cmVudGx5IG9ubHkgZGlyZWN0IE1TSSBpbmplY3Rpb24gaXMgc3VwcG9ydGVkLgo+PiDCoCovCj4g
Cj4gQXMgZmFyIGFzIEkgY2FuIHRlbGwsIGl0IGlzIHN0aWxsIHZhbGlkIChhdCBsZWFzdCBmcm9t
IHRoZSBndWVzdCdzCj4gcGVyc3BlY3RpdmUpLiBZb3UgY291bGQgaW4gcHJhY3RpY2UgdXNlIHRo
YXQgdG8gZGVhbCB3aXRoIGxldmVsCj4gaW50ZXJydXB0cywgYnV0IHdlIG9ubHkgaW5qZWN0IHRo
ZSByaXNpbmcgZWRnZSBvbiB0aGlzIHBhdGgsIG5ldmVyCj4gdGhlIGZhbGxpbmcgZWRnZS4gU28g
ZWZmZWN0aXZlbHksIHRoaXMgaXMgbGltaXRlZCB0byBlZGdlIGludGVycnVwdHMsCj4gd2hpY2gg
aXMgbW9zdGx5IE1TSXMuCgpPb3BzLi4uIEkgaGFkIHdyb25nbHkgbWl4ZWQgTVNJIHdpdGggdGhl
IGFyY2hpdGVjdHVyZS1kZWZpbmVkIExQSSwgYW5kCndhcyB0aGluayB0aGF0IHdlIHNob3VsZCBh
ZGQgc29tZXRoaW5nIGxpa2UgImRpcmVjdCBTUEkgaW5qZWN0aW9uIGlzCmFsc28gc3VwcG9ydGVk
IG5vdyIuIFNvcnJ5LgoKPiAKPiBVbmxlc3MgeW91IGFyZSB0aGlua2luZyBvZiBzb21ldGhpbmcg
ZWxzZSB3aGljaCBJIHdvdWxkIGhhdmUgbWlzc2VkPwoKTm8sIHBsZWFzZSBpZ25vcmUgdGhlIG5v
aXN5LgoKClRoYW5rcywKWmVuZ2h1aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
