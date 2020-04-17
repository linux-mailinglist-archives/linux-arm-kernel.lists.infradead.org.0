Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31391AD63E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 08:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kBn0VySzgC6q3cVsSHkrF2Dob+thzQBsgZJsTGbKE8M=; b=DaqreFcXAEnLq2DawqhdCKUYf
	5iviPu/krM8eLMzRpTQEke7lSwLSnGiuBfDooAlm5kr2Sk2LiQHQr8lIAoFxyX+zlhpEop8kK0dlM
	9QKSM9r5Fv08PfRGPBJD04kQO6CNWOnkWqTD5fte3NDBrkJmxcTv/+Ff0hIoE4NrPEydWXmjshM52
	EjVrhb5YVHq9smlQ5H5c4b/CEe/esNTTlVx+BFJDacOCLxU7SzeFGPZYCQab43AoIRhGDUAg4jLWy
	AR/tF8zvnDxGQGTPzwRuUVMfV/kyhuKDKvQ5e9gxZMBZrjeMbakeq3JrupAXKr9Tybk5DBvXj2Rsv
	Osjz6Wppg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPKgW-0002RE-HH; Fri, 17 Apr 2020 06:41:08 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPKgM-0002NH-C1
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 06:41:00 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CB58F782E7D097BE4BA6;
 Fri, 17 Apr 2020 14:40:42 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 14:40:32 +0800
Subject: Re: [PATCH 2/2] KVM: arm64: vgic-its: Fix memory leak on the error
 path of vgic_add_lpi()
To: Marc Zyngier <maz@kernel.org>
References: <20200414030349.625-1-yuzenghui@huawei.com>
 <20200414030349.625-3-yuzenghui@huawei.com>
 <610f2195-f85d-4beb-b711-47d63bb393d0@huawei.com>
 <2173e13527cc9578838f0364ad29f6cc@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <de03883a-179f-fbe5-e5f4-6138e5684660@huawei.com>
Date: Fri, 17 Apr 2020 14:40:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <2173e13527cc9578838f0364ad29f6cc@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_234058_578765_E0E886F3 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, yezengruan@huawei.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC80LzE3IDE6MjMsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAyMDIwLTA0LTE2IDAy
OjE3LCBaZW5naHVpIFl1IHdyb3RlOgo+PiBPbiAyMDIwLzQvMTQgMTE6MDMsIFplbmdodWkgWXUg
d3JvdGU6Cj4+PiBJZiB3ZSdyZSBnb2luZyB0byBmYWlsIG91dCB0aGUgdmdpY19hZGRfbHBpKCks
IGxldCdzIG1ha2Ugc3VyZSB0aGUKPj4+IGFsbG9jYXRlZCB2Z2ljX2lycSBtZW1vcnkgaXMgYWxz
byBmcmVlZC4gVGhvdWdoIGl0IHNlZW1zIHRoYXQgYm90aAo+Pj4gY2FzZXMgYXJlIHVubGlrZWx5
IHRvIGZhaWwuCj4+Pgo+Pj4gQ2M6IFplbmdydWFuIFllIDx5ZXplbmdydWFuQGh1YXdlaS5jb20+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBaZW5naHVpIFl1IDx5dXplbmdodWlAaHVhd2VpLmNvbT4KPj4+
IC0tLQo+Pj4gwqAgdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1pdHMuYyB8IDggKysrKysrLS0KPj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtaXRzLmMgYi92aXJ0L2t2bS9h
cm0vdmdpYy92Z2ljLWl0cy5jCj4+PiBpbmRleCBkNTNkMzRhMzNlMzUuLjNjM2I2YTBmMmRjZSAx
MDA2NDQKPj4+IC0tLSBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtaXRzLmMKPj4+ICsrKyBiL3Zp
cnQva3ZtL2FybS92Z2ljL3ZnaWMtaXRzLmMKPj4+IEBAIC05OCwxMiArOTgsMTYgQEAgc3RhdGlj
IHN0cnVjdCB2Z2ljX2lycSAqdmdpY19hZGRfbHBpKHN0cnVjdCBrdm0gCj4+PiAqa3ZtLCB1MzIg
aW50aWQsCj4+PiDCoMKgwqDCoMKgwqAgKiB0aGUgcmVzcGVjdGl2ZSBjb25maWcgZGF0YSBmcm9t
IG1lbW9yeSBoZXJlIHVwb24gbWFwcGluZyB0aGUgCj4+PiBMUEkuCj4+PiDCoMKgwqDCoMKgwqAg
Ki8KPj4+IMKgwqDCoMKgwqAgcmV0ID0gdXBkYXRlX2xwaV9jb25maWcoa3ZtLCBpcnEsIE5VTEws
IGZhbHNlKTsKPj4+IC3CoMKgwqAgaWYgKHJldCkKPj4+ICvCoMKgwqAgaWYgKHJldCkgewo+Pj4g
K8KgwqDCoMKgwqDCoMKgIGtmcmVlKGlycSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IEVSUl9QVFIocmV0KTsKPj4+ICvCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoMKgwqAgcmV0ID0gdmdp
Y192M19scGlfc3luY19wZW5kaW5nX3N0YXR1cyhrdm0sIGlycSk7Cj4+PiAtwqDCoMKgIGlmIChy
ZXQpCj4+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBrZnJlZShpcnEp
Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKHJldCk7Cj4+PiArwqDCoMKg
IH0KPj4KPj4gTG9va2luZyBhdCBpdCBhZ2FpbiwgSSByZWFsaXplZCB0aGF0IHRoaXMgZXJyb3Ig
aGFuZGxpbmcgaXMgc3RpbGwgbm90Cj4+IGNvbXBsZXRlLiBNYXliZSB3ZSBzaG91bGQgdXNlIGEg
dmdpY19wdXRfaXJxKCkgaW5zdGVhZCBzbyB0aGF0IHdlIGNhbgo+PiBhbHNvIHByb3Blcmx5IGRl
bGV0ZSB0aGUgdmdpY19pcnEgZnJvbSBscGlfbGlzdC4KPiAKPiBZZXMsIHRoaXMgaXMgYSBtb3Jl
IGNvcnJlY3QgZml4IGluZGVlZC4gVGhlcmUgaXMgc3RpbGwgYSBiaXQgb2YgYSBiaXphcnJlCj4g
YmVoYXZpb3VyIGlmIHlvdSBoYXZlIHR3byB2Z2ljX2FkZF9scGkoKSByYWNpbmcgdG8gY3JlYXRl
IHRoZSBzYW1lIAo+IGludGVycnVwdCwKPiB3aGljaCBpcyBwcmV0dHkgZG9kZ3kgYW55d2F5IChp
dCBtZWFucyB3ZSBoYXZlIHR3byBNQVBJIGF0IHRoZSBzYW1lIAo+IHRpbWUuLi4pLgo+IFlvdSBl
bmQtdXAgd2l0aCByZS1yZWFkaW5nIHRoZSBzdGF0ZSBmcm9tIG1lbW9yeS4uLiBPaCB3ZWxsLgo+
IAo+PiBNYXJjLCB3aGF0IGRvIHlvdSB0aGluaz8gQ291bGQgeW91IHBsZWFzZSBoZWxwIHRvIGZp
eCBpdCwgb3IgSSBjYW4KPj4gcmVzZW5kIGl0Lgo+IAo+IEkndmUgZml4ZWQgaXQgYXMgc3VjaCAo
d2l0aCBhIGNvbW1lbnQgZm9yIGEgZ29vZCBtZWFzdXJlKToKPiAKPiBkaWZmIC0tZ2l0IGEvdmly
dC9rdm0vYXJtL3ZnaWMvdmdpYy1pdHMuYyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtaXRzLmMK
PiBpbmRleCAzYzNiNmEwZjJkY2UuLmMwMTJhNTJiMTlmNSAxMDA2NDQKPiAtLS0gYS92aXJ0L2t2
bS9hcm0vdmdpYy92Z2ljLWl0cy5jCj4gKysrIGIvdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1pdHMu
Ywo+IEBAIC05NiwxNiArOTYsMTkgQEAgc3RhdGljIHN0cnVjdCB2Z2ljX2lycSAqdmdpY19hZGRf
bHBpKHN0cnVjdCBrdm0gCj4gKmt2bSwgdTMyIGludGlkLAo+ICDCoMKgwqDCoMKgICogV2UgImNh
Y2hlIiB0aGUgY29uZmlndXJhdGlvbiB0YWJsZSBlbnRyaWVzIGluIG91ciBzdHJ1Y3QgCj4gdmdp
Y19pcnEncy4KPiAgwqDCoMKgwqDCoCAqIEhvd2V2ZXIgd2Ugb25seSBoYXZlIHRob3NlIHN0cnVj
dHMgZm9yIG1hcHBlZCBJUlFzLCBzbyB3ZSByZWFkIGluCj4gIMKgwqDCoMKgwqAgKiB0aGUgcmVz
cGVjdGl2ZSBjb25maWcgZGF0YSBmcm9tIG1lbW9yeSBoZXJlIHVwb24gbWFwcGluZyB0aGUgTFBJ
Lgo+ICvCoMKgwqDCoCAqCj4gK8KgwqDCoMKgICogU2hvdWxkIGFueSBvZiB0aGVzZSBmYWlsLCBi
ZWhhdmUgYXMgaWYgd2UgY291bGRuJ3QgY3JlYXRlIHRoZSBMUEkKPiArwqDCoMKgwqAgKiBieSBk
cm9wcGluZyB0aGUgcmVmY291bnQgYW5kIHJldHVybmluZyB0aGUgZXJyb3IuCj4gIMKgwqDCoMKg
wqAgKi8KPiAgwqDCoMKgwqAgcmV0ID0gdXBkYXRlX2xwaV9jb25maWcoa3ZtLCBpcnEsIE5VTEws
IGZhbHNlKTsKPiAgwqDCoMKgwqAgaWYgKHJldCkgewo+IC3CoMKgwqDCoMKgwqDCoCBrZnJlZShp
cnEpOwo+ICvCoMKgwqDCoMKgwqDCoCB2Z2ljX3B1dF9pcnEoa3ZtLCBpcnEpOwo+ICDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKHJldCk7Cj4gIMKgwqDCoMKgIH0KPiAKPiAgwqDCoMKg
wqAgcmV0ID0gdmdpY192M19scGlfc3luY19wZW5kaW5nX3N0YXR1cyhrdm0sIGlycSk7Cj4gIMKg
wqDCoMKgIGlmIChyZXQpIHsKPiAtwqDCoMKgwqDCoMKgwqAga2ZyZWUoaXJxKTsKPiArwqDCoMKg
wqDCoMKgwqAgdmdpY19wdXRfaXJxKGt2bSwgaXJxKTsKPiAgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm4gRVJSX1BUUihyZXQpOwo+ICDCoMKgwqDCoCB9Cj4gCj4gCj4gTGV0IG1lIGtub3cgaWYgeW91
IGFncmVlIHdpdGggdGhhdC4KCkFncmVlZC4gVGhhbmtzIGZvciB0aGUgZml4IQoKClplbmdodWkK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
