Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C418319396B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 08:12:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDlwQJVMOLzX9CeHidNphZ6EGFZlg+ofbSo+00Xy+gg=; b=nYMjFyrtOMCHsO
	WFqKYmi36SXJ0We/on9u4HZfppvjz9CkKW7J7JwF7BAcQnLX+QtD7Yw7CewXspsI8zLF3Z9wulUUa
	19ZtpdKBr3sRbJTGPP0gYJ/hfVEP6x2GKrkMUz2qy6+tvz4ats4LMYTpJE2v/WNEbqNOca96BzWSi
	UXnHX1SPVRS9EpHlu0D2oBmkdT2mcGKXMHs3H+Am7Ykm1g/12Pq2TJMEcyR23SORoQSsyD6J4yShO
	7sp+nM9pZ9XIWCn/pP9WNBwXsZ1dMt6sh1q/ClKwzUpYJ2RNT98OiD8aJ/bI9E6tM5ZJ7xXwPyGvo
	Qdl/ik7GK1dujE9Yk8Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMgE-000218-Je; Thu, 26 Mar 2020 07:11:54 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMg2-00020K-8K
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 07:11:44 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5CE04B5CB84A1637917B;
 Thu, 26 Mar 2020 15:11:34 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Thu, 26 Mar 2020
 15:11:25 +0800
Subject: Re: [RFC PATCH v4 5/6] arm64: tlb: Use translation level hint in
 vm_flags
To: Marc Zyngier <maz@kernel.org>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324134534.1570-6-yezhenyu2@huawei.com> <20200324144514.340c78d9@why>
 <986be927-02c6-3cc2-ca39-30ccad60eae0@huawei.com>
 <2f4cb3ef52c5589b388225e487651a2b@kernel.org>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <6e2fece0-a7d7-a470-6911-5891fd09a140@huawei.com>
Date: Thu, 26 Mar 2020 15:11:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <2f4cb3ef52c5589b388225e487651a2b@kernel.org>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_001142_628170_FD132E17 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, aneesh.kumar@linux.ibm.com,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 suzuki.poulose@arm.com, npiggin@gmail.com, zhangshaokun@hisilicon.com,
 broonie@kernel.org, rostedt@goodmis.org, prime.zeng@hisilicon.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMy8yNSAyMjoxMywgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+Cj4+
Pj4gK2lubGluZSB1bnNpZ25lZCBpbnQgZ2V0X3ZtYV9sZXZlbChzdHJ1Y3Qgdm1fYXJlYV9zdHJ1
Y3QgKnZtYSkKPj4+PiArewo+Pj4+ICvCoMKgwqAgdW5zaWduZWQgaW50IGxldmVsID0gMDsKPj4+
PiArwqDCoMKgIGlmICh2bWEtPnZtX2ZsYWdzICYgVk1fTEVWRUxfUFVEKQo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBsZXZlbCA9IDE7Cj4+Pj4gK8KgwqDCoCBlbHNlIGlmICh2bWEtPnZtX2ZsYWdzICYg
Vk1fTEVWRUxfUE1EKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBsZXZlbCA9IDI7Cj4+Pj4gK8KgwqDC
oCBlbHNlIGlmICh2bWEtPnZtX2ZsYWdzICYgVk1fTEVWRUxfUFRFKQo+Pj4+ICvCoMKgwqDCoMKg
wqDCoCBsZXZlbCA9IDM7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgdm1hLT52bV9mbGFncyAmPSB+KFZN
X0xFVkVMX1BVRCB8IFZNX0xFVkVMX1BNRCB8IFZNX0xFVkVMX1BURSk7Cj4+Pj4gK8KgwqDCoCBy
ZXR1cm4gbGV2ZWw7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gwqB2b2lkIHNldF9zd2FwcGVyX3BnZChw
Z2RfdCAqcGdkcCwgcGdkX3QgcGdkKQo+Pj4+IMKgewo+Pj4+IMKgwqDCoMKgIHBnZF90ICpmaXht
YXBfcGdkcDsKPj4+Cj4+Pgo+Pj4gSWYgZmVlbHMgYml6YXJyZSBhIFRMQkkgaXMgbm93IGEgZGVz
dHJ1Y3RpdmUgb3BlcmF0aW9uOiB5b3UndmUgbG9zdCB0aGUKPj4+IGZsYWdzIGJ5IGhhdmluZyBj
bGVhcmVkIHRoZW0uIEV2ZW4gaWYgdGhhdCdzIG5vdCByZWFsbHkgYSBwcm9ibGVtIGluCj4+PiBw
cmFjdGljZSAoeW91IGlzc3VlIFRMQkkgYmVjYXVzZSB5b3UndmUgdW5tYXBwZWQgdGhlIFZNQSks
IGl0IHJlbWFpbnMKPj4+IHRoYXQgdGhlIGFjdCBvZiBpbnZhbGlkYXRpbmcgVExCcyBpc24ndCBl
eHBlY3RlZCB0byBjaGFuZ2UgYSBrZXJuZWwKPj4+IHN0cnVjdHVyZSAoYW5kIEknbSBub3QgZXZl
biB0aGlua2luZyBhYm91dCBwb3RlbnRpYWwgcmFjZXMgaGVyZSkuCj4+Cj4+IEkgY2xlYXJlZCB2
bV9mbGFncyBoZXJlIGp1c3Qgb3V0IG9mIGNhdXRpb24sIGJlY2F1c2UgZXZlcnkgVExCSSBmbHVz
aAo+PiBhY3Rpb24gc2hvdWxkIHNldCB2bV9mbGFncyB0aGVtc2VsZi4gQXMgSSBrbm93LCB0aGUg
VExCX0xFVkVMIG9mIGFuIHZtYQo+PiB3aWxsIG9ubHkgYmUgY2hhbmdlZCBieSB0cmFuc3BhcmVu
dCBodWdlcGFnZSBjb2xsYXBzZSBhbmQgbWVyZ2Ugd2hlbgo+PiB0aGUgcGFnZSBpcyBub3QgbWFw
cGVkLCBzbyB0aGVyZSBtYXkgbm90IGhhdmUgcG90ZW50aWFsIHJhY2VzLgo+Pgo+PiBCdXQgeW91
IGFyZSByaWdodCB0aGF0IFRMQkkgc2hvdWxkJ3QgY2hhbmdlIGEga2VybmVsIHN0cnVjdHVyZS4K
Pj4gSSB3aWxsIHJlbW92ZSB0aGUgY2xlYXIgYWN0aW9uIGFuZCBhZGQgc29tZSBub3RpY2VzIGhl
cmUuCj4gCj4gTW9yZSB0aGFuIHRoYXQuIFlvdSBhcmUgY2hhbmdpbmcgdGhlIFZNQSBmbGFncyBh
dCBUTEJJIHRpbWUgYWxyZWFkeSwKPiB3aGVuIGNhbGxpbmcgZ2V0X3ZtYV9sZXZlbCgpLiBUaGF0
IGlzIGFscmVhZHkgdW5hY2NlcHRhYmxlIC0tIEkgZG9uJ3QKPiB0aGluayAoYW5kIFBldGVyIHdp
bGwgY2VydGFpbmx5IGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nKSB0aGF0IHlvdQo+IGFyZSBhbGxv
d2VkIHRvIGNoYW5nZSB0aGUgZmxhZ3Mgb24gdGhhdCBjb2RlIHBhdGgsIGFzIHlvdSBwcm9iYWJs
eQo+IGRvbid0IGhvbGQgdGhlIHdyaXRlX2xvY2suCj4KClRoYW5rcyBmb3IgeW91ciByZXZpZXcu
ICBJIHdpbGwgYXZvaWQgdGhpcyBwcm9ibGVtIGluIG5leHQgdmVyc2lvbi4KCj4+PiBJZiBhbnl0
aGluZywgSSBmZWVsIHRoaXMgc2hvdWxkIGJlIGJhc2VkIGFyb3VuZCB0aGUgbW11X2dhdGhlcgo+
Pj4gc3RydWN0dXJlLCB3aGljaCBhbHJlYWR5IHRyYWNrcyB0aGUgcmlnaHQgbGV2ZWwgb2YgaW5m
b3JtYXRpb24gYW5kCj4+PiBhZGRpdGlvbmFsbHkga25vd3MgYWJvdXQgdGhlIFA0RCBsZXZlbCB3
aGljaCBpcyBtaXNzaW5nIGluIHlvdXIgcGF0Y2hlcwo+Pj4gKGV2ZW4gaWYgYXJtNjQgaXMgc28g
ZmFyIGxpbWl0ZWQgdG8gNCBsZXZlbHMpLgo+Pj4KPj4+IFRoYW5rcywKPj4+Cj4+PiDCoMKgwqDC
oE0uCj4+Pgo+Pgo+PiBtbXVfZ2F0aGVyIHN0cnVjdHVyZSBoYXMgdHJhY2tlZCB0aGUgbGV2ZWwg
aW5mb3JtYXRpb24sIGJ1dCB3ZSBjYW4gb25seQo+PiB1c2UgdGhlIGluZm8gaW4gdGhlIHRsYl9m
bHVzaCBpbnRlcmZhY2UuIElmIHdlIHdhbnQgdG8gdXNlIHRoZSBpbmZvIGluCj4+IGZsdXNoX3Rs
Yl9yYW5nZSwgd2UgbWF5IHNob3VsZCBoYXZlIHRvIGFkZCBhIHBhcmFtZXRlciB0byB0aGlzIGlu
dGVyZmFjZSwKPj4gc3VjaCBhczoKPj4KPj4gwqDCoMKgwqBmbHVzaF90bGJfcmFuZ2Uodm1hLCBz
dGFydCwgZW5kLCBmbGFncyk7Cj4+Cj4+IEhvd2V2ZXIsIHRoZSBmbHVzaF90bGJfcmFuZ2UgaXMg
YSBjb21tb24gaW50ZXJmYWNlIHRvIGFsbCBhcmNoaXRlY3R1cmVzLAo+PiBJJ20gbm90IHN1cmUg
aWYgdGhpcyBpcyBmZWFzaWJsZSBiZWNhdXNlIHRoaXMgZmVhdHVyZSBpcyBvbmx5IHN1cHBvcnRl
ZAo+PiBieSBBUk02NCBjdXJyZW50bHkuCj4gCj4gWW91IGNvdWxkIGFsd2F5cyBidWlsZCBhbiBv
bi1zdGFjayBtbXVfZ2F0aGVyIHN0cnVjdHVyZSBhbmQgcGFzcyBpdCBkb3duCj4gdG8gdGhlIFRM
QiBpbnZhbGlkYXRpb24gaGVscGVycy4KPiAKPiBBbmQgZnJhbmtseSwgeW91IGFyZSBub3QgZ29p
bmcgdG8gYmUgYWJsZSB0byBmaXQgc3VjaCBhIGNoYW5nZSBpbiB0aGUKPiB3YXkgTGludXggZGVh
bHMgd2l0aCBUTEJzIGJ5IGFkZGluZyBoYWNrcyBhdCB0aGUgcGVyaXBoZXJ5LiBZb3UnbGwgbmVl
ZAo+IHRvIGNoYW5nZSBzb21lIG9mIHRoZSBjb3JlIGFic3RyYWN0aW9ucy4KPiAKPiBGaW5hbGx5
LCBhcyBQZXRlciBtZW50aW9uZWQgc2VwYXJhdGVseSwgdGhlcmUgaXMgUG93ZXI5IHdoaWNoIGhh
cyBzaW1pbGFyCj4gaW5zdHJ1Y3Rpb25zLCBhbmQgY291bGQgbWFrZSB1c2Ugb2YgaXQgdG9vLiBT
byB0aGF0J3MgeWV0IGFub3RoZXIgcmVhc29uCj4gdG8gc3RvcCBoYWNraW5nIGF0IHRoZSBhcmNo
IGxldmVsLgo+IAoKT0ssIEkgd2lsbCB0cnkgdG8gYWRkIHN0cnVjdCBtbXVfZ2F0aGVyIHRvIGZs
dXNoX3RsYl9yYW5nZSwgc3VjaCBhczoKCgl2b2lkIGZsdXNoX3RsYl9yYW5nZShzdHJ1Y3QgbW11
X2dhdGhlciAqdGxiLAoJCQkgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAoJCQkgICAg
IHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgZW5kKTsKClRoaXMgd2lsbCBpbnZv
bHZlIGFsbCBhcmNoaXRlY3R1cmVzLCBJIHdpbGwgZG8gaXQgY2FyZWZ1bGx5LgoKPj4KPj4gT3Ig
Y2FuIHdlIGlnbm9yZSB0aGUgZmx1c2hfdGxiX3JhbmdlIGFuZCBvbmx5IHNldCB0aGUgVFRMIGZp
ZWxkIGluCj4+IHRsYl9mbHVzaD/CoCBXYWl0aW5nIGZvciB5b3VyIHN1Z2dlc3Rpb24uLi4KPiAK
PiBZb3UgY291bGQsIGJ1dCB5b3UgY291bGQgYWxzbyBpZ25vcmUgVFRMIGFsdG9nZXRoZXIgKHdo
YXQncyB0aGUgcG9pbnQKPiBpbiBvbmx5IGhhdmluZyBoYWxmIG9mIGl0PykuIFNlZSBteSBzdWdn
ZXN0aW9uIGFib3ZlLgo+IAo+PiBGb3IgUDREIGxldmVsLCB0aGUgVFRMIGZpZWxkIGlzIGxpbWl0
ZWQgdG8gNCBiaXQoMiBmb3IgdHJhbnNsYXRpb24gZ3JhbnVsZQo+PiBhbmQgMiBmb3IgcGFnZSB0
YWJsZSBsZXZlbCksIHNvIHdlIGNhbiBubyBsb25nZXIgYWZmb3JkIG1vcmUgbGV2ZWxzIDopLgo+
IAo+IFlvdSBjbGVhcmx5IGRpZG4ndCByZWFkIHRoZSBiaXQgdGhhdCBzYWlkICJldmVuIGlmIGFy
bTY0IGlzIHNvIGZhciBsaW1pdGVkCj4gdG8gNCBsZXZlbHMiLiBCdXQgYWdhaW4sIHRoaXMgaXMg
TGludXgsIGEgbXVsdGktYXJjaGl0ZWN0dXJlIGtlcm5lbCwgYW5kCj4gbm90IGFuIGFybTY0LXNw
ZWNpYWwuIENoYW5nZXMgeW91IG1ha2UgaGF2ZSB0byB3b3JrIGZvciBhbGwgYXJjaGl0ZWN0dXJl
cywKPiBhbmQgYmUgZXh0ZW5zaWJsZSBlbm91Z2ggZm9yIGZ1dHVyZSBjaGFuZ2VzLgo+IAoKVXNp
bmcgdGhlIHN0cnVjdCBtbXVfZ2F0aGVyIHRvIHBhc3MgdGhlIFRUTCB2YWx1ZSB3aWxsIG5vdCBo
YXZlCnRoaXMgcHJvYmxlbSA6KS4KCgpUaGFua3MsClpoZW55dQoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
