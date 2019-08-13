Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F380F8AF72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/uCHImLZpa8VTsZDqQjNtZ0Dhx6nhKuR5+pXM/wL5QM=; b=CsDr6b9LbZR3lMDjfCshVUydF
	I1ygtEPcZ0rgkAI6VzUum4wYHqhpyx1vpSChts3vfGcFvRuZlEjeQj1AqyxiW31naXFvsBqQxFozP
	r7aLQl3OFT2gTntiVOtuX/TlxATyqQlvAuULp0hBkOGOi9OJZynMqPP6610WeoDojpNf5uoejxRnh
	ZUU6ntly/GVuOqNhaHFgtMwSa4D49jTBiTSkp/7s/S5bNeL/CB2WPC6PJSGF3CBnD94rcvCRWF8mw
	ZV+Qb/1Ypm9rqgq1Nj3h6QLrmXDNI1tejhgRd5B2NragxD0FCiLq2mmX9N0DPaavSRrXb9HmznVWy
	6KWIgB87g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQ2j-0002yX-MR; Tue, 13 Aug 2019 06:12:25 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQ2S-0002wE-NL
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:12:10 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D5DD77C092C7A2CF99D1;
 Tue, 13 Aug 2019 14:11:58 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 13 Aug 2019
 14:11:52 +0800
Subject: Re: [PATCH 9/9] arm64: Retrieve stolen time as paravirtualized guest
To: Steven Price <steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-10-steven.price@arm.com>
 <5d763c8e-9c06-c448-2644-25bfa0e57e8c@huawei.com>
 <07075994-3a32-8f20-23d8-1759ec2874e3@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <42698e3c-c382-8621-7d9e-af09398f4aef@huawei.com>
Date: Tue, 13 Aug 2019 14:06:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <07075994-3a32-8f20-23d8-1759ec2874e3@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_231208_943059_2D616A3D 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS84LzEyIDE4OjM5LCBTdGV2ZW4gUHJpY2Ugd3JvdGU6Cj4gT24gMDkvMDgvMjAxOSAx
NDo1MSwgWmVuZ2h1aSBZdSB3cm90ZToKPiBbLi4uXQo+PiBIaSBTdGV2ZW4sCj4+Cj4+IFNpbmNl
IHVzZXJzcGFjZSBpcyBub3QgaW52b2x2ZWQgeWV0IChyaWdodD8pLCBubyBvbmUgd2lsbCBjcmVh
dGUgdGhlCj4+IFBWX1RJTUUgZGV2aWNlIGZvciBndWVzdCAoYW5kIG5vIG9uZSB3aWxsIHNwZWNp
ZnkgdGhlIElQQSBvZiB0aGUgc2hhcmVkCj4+IHN0b2xlbiB0aW1lIHJlZ2lvbiksIGFuZCBJIGd1
ZXNzIHdlIHdpbGwgZ2V0IGEgIm5vdCBzdXBwb3J0ZWQiIGVycm9yCj4+IGhlcmUuCj4+Cj4+IFNv
IHdoYXQgc2hvdWxkIHdlIGRvIGlmIHdlIHdhbnQgdG8gdGVzdCB0aGlzIHNlcmllcyBub3c/wqAg
QW55IHVzZXJzcGFjZQo+PiB0b29scz/CoCBJZiBubywgZG8geW91IGhhdmUgYW55IHBsYW5zIGZv
ciB1c2Vyc3BhY2UgZGV2ZWxvcGluZz8gOy0pCj4gCj4gQXQgdGhlIG1vbWVudCBJIGhhdmUgdGhl
IGZvbGxvd2luZyBwYXRjaCB0byBrdm10b29sIHdoaWNoIGNyZWF0ZXMgdGhlCj4gUFZfVElNRSBk
ZXZpY2UgLSB0aGlzIGlzbid0IGluIGEgc3RhdGUgdG8gZ28gdXBzdHJlYW0sIGFuZCBNYXJjIGhh
cwo+IGFza2VkIHRoYXQgSSByZXdvcmsgdGhlIG1lbW9yeSBhbGxvY2F0aW9uLCBzbyB0aGlzIHdp
bGwgbmVlZCB0byBjaGFuZ2UuCj4gCj4gSXQncyBhIGxpdHRsZSB1Z2x5IGFzIGl0IHNpbXBseSBy
ZXNlcnZlcyB0aGUgZmlyc3QgcGFnZSBvZiBSQU0gdG8gdXNlCj4gZm9yIHRoZSBQViB0aW1lIHN0
cnVjdHVyZXMuCgpUaGFua3MgZm9yIHNoYXJpbmcgdGhlIGNvZGUuIEl0J3MgZ29vZCBlbm91Z2gg
dG8gc2hvdyB3aGF0IGlzIHJlcXVpcmVkCmluIHVzZXItc3BhY2UuCgooSSdtIG5vdCBmYW1pbGlh
ciB3aXRoIGt2bXRvb2wuIEkgd2lsbCBmaXJzdCB0YWtlIHNvbWUgdGltZSB0byBtb3ZlIHRoZQpz
dGVhbCB0aW1lIHBhcnQgdG8gUWVtdSBhbmQgc2VlIHdoYXQgd2lsbCBoYXBwZW4uKQoKClRoYW5r
cywKemVuZ2h1aQoKPiAtLS0tODwtLS0tCj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZp
bGUKPiBpbmRleCAzODYyMTEyLi5hNzk5NTZiIDEwMDY0NAo+IC0tLSBhL01ha2VmaWxlCj4gKysr
IGIvTWFrZWZpbGUKPiBAQCAtMTU4LDcgKzE1OCw3IEBAIGVuZGlmCj4gICAjIEFSTQo+ICAgT0JK
U19BUk1fQ09NTU9OCQk6PSBhcm0vZmR0Lm8gYXJtL2dpYy5vIGFybS9naWN2Mm0ubyBhcm0vaW9w
b3J0Lm8gXAo+ICAgCQkJICAgYXJtL2t2bS5vIGFybS9rdm0tY3B1Lm8gYXJtL3BjaS5vIGFybS90
aW1lci5vIFwKPiAtCQkJICAgYXJtL3BtdS5vCj4gKwkJCSAgIGFybS9wbXUubyBhcm0vcHZ0aW1l
Lm8KPiAgIEhEUlNfQVJNX0NPTU1PTgkJOj0gYXJtL2luY2x1ZGUKPiAgIGlmZXEgKCQoQVJDSCks
IGFybSkKPiAgIAlERUZJTkVTCQkrPSAtRENPTkZJR19BUk0KPiBkaWZmIC0tZ2l0IGEvYXJtL2Zk
dC5jIGIvYXJtL2ZkdC5jCj4gaW5kZXggYzgwZTZkYS4uMTllY2NiYyAxMDA2NDQKPiAtLS0gYS9h
cm0vZmR0LmMKPiArKysgYi9hcm0vZmR0LmMKPiBAQCAtMTE5LDYgKzExOSw3IEBAIHN0YXRpYyBp
bnQgc2V0dXBfZmR0KHN0cnVjdCBrdm0gKmt2bSkKPiAgIAo+ICAgCS8qIENyZWF0ZSBuZXcgdHJl
ZSB3aXRob3V0IGEgcmVzZXJ2ZSBtYXAgKi8KPiAgIAlfRkRUKGZkdF9jcmVhdGUoZmR0LCBGRFRf
TUFYX1NJWkUpKTsKPiArCV9GRFQoZmR0X2FkZF9yZXNlcnZlbWFwX2VudHJ5KGZkdCwga3ZtLT5h
cmNoLm1lbW9yeV9ndWVzdF9zdGFydCwgNDA5NikpOwo+ICAgCV9GRFQoZmR0X2ZpbmlzaF9yZXNl
cnZlbWFwKGZkdCkpOwo+ICAgCj4gICAJLyogSGVhZGVyICovCj4gZGlmZiAtLWdpdCBhL2FybS9r
dm0uYyBiL2FybS9rdm0uYwo+IGluZGV4IDFmODVmYzYuLjhiYmZlZjEgMTAwNjQ0Cj4gLS0tIGEv
YXJtL2t2bS5jCj4gKysrIGIvYXJtL2t2bS5jCj4gQEAgLTExLDYgKzExLDggQEAKPiAgICNpbmNs
dWRlIDxsaW51eC9rdm0uaD4KPiAgICNpbmNsdWRlIDxsaW51eC9zaXplcy5oPgo+ICAgCj4gK2lu
dCBwdnRpbWVfY3JlYXRlKHN0cnVjdCBrdm0gKmt2bSk7Cj4gKwo+ICAgc3RydWN0IGt2bV9leHQg
a3ZtX3JlcV9leHRbXSA9IHsKPiAgIAl7IERFRklORV9LVk1fRVhUKEtWTV9DQVBfSVJRQ0hJUCkg
fSwKPiAgIAl7IERFRklORV9LVk1fRVhUKEtWTV9DQVBfT05FX1JFRykgfSwKPiBAQCAtODYsNiAr
ODgsMTAgQEAgdm9pZCBrdm1fX2FyY2hfaW5pdChzdHJ1Y3Qga3ZtICprdm0sIGNvbnN0IGNoYXIg
Kmh1Z2V0bGJmc19wYXRoLCB1NjQgcmFtX3NpemUpCj4gICAJLyogQ3JlYXRlIHRoZSB2aXJ0dWFs
IEdJQy4gKi8KPiAgIAlpZiAoZ2ljX19jcmVhdGUoa3ZtLCBrdm0tPmNmZy5hcmNoLmlycWNoaXAp
KQo+ICAgCQlkaWUoIkZhaWxlZCB0byBjcmVhdGUgdmlydHVhbCBHSUMiKTsKPiArCj4gKwkvKiBT
ZXR1cCBQViB0aW1lICovCj4gKwlpZiAocHZ0aW1lX2NyZWF0ZShrdm0pKQo+ICsJCWRpZSgiRmFp
bGVkIHRvIGluaXRpYWxpc2UgUFYgdGltZSIpOwo+ICAgfQo+ICAgCj4gICAjZGVmaW5lIEZEVF9B
TElHTglTWl8yTQo+IGRpZmYgLS1naXQgYS9hcm0vcHZ0aW1lLmMgYi9hcm0vcHZ0aW1lLmMKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLmFiY2FhYjMKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvYXJtL3B2dGltZS5jCj4gQEAgLTAsMCArMSw3NyBAQAo+ICsjaW5jbHVkZSAi
a3ZtL2t2bS5oIgo+ICsKPiArI2RlZmluZSBLVk1fREVWX1RZUEVfQVJNX1BWX1RJTUUgKEtWTV9E
RVZfVFlQRV9BUk1fVkdJQ19JVFMrMikKPiArCj4gKy8qIERldmljZSBDb250cm9sIEFQSTogUFZf
VElNRSAqLwo+ICsjZGVmaW5lIEtWTV9ERVZfQVJNX1BWX1RJTUVfUEFERFIJMAo+ICsjZGVmaW5l
IEtWTV9ERVZfQVJNX1BWX1RJTUVfRlJFUVVFTkNZCTMKPiArCj4gKyNkZWZpbmUgS1ZNX0RFVl9B
Uk1fUFZfVElNRV9TVAkJMAo+ICsjZGVmaW5lIEtWTV9ERVZfQVJNX1BWX1RJTUVfTFBUCQkxCj4g
Kwo+ICtzdGF0aWMgaW50IHB2dGltZV9mZDsKPiArCj4gK2ludCBwdnRpbWVfY3JlYXRlKHN0cnVj
dCBrdm0gKmt2bSk7Cj4gKwo+ICtpbnQgcHZ0aW1lX2NyZWF0ZShzdHJ1Y3Qga3ZtICprdm0pCj4g
K3sKPiArCWludCBlcnI7Cj4gKwl1NjQgbHB0X3BhZGRyID0gMHgxMDAwMDAwMDsKPiArCXU2NCBz
dF9wYWRkciA9IGxwdF9wYWRkciArIDQwOTY7Cj4gKwl1MzIgZnJlcXVlbmN5ID0gMTAwICogMTAw
MCAqIDEwMDA7Cj4gKwo+ICsJcHJpbnRmKCJscHRfcGFkZHI9JWxseFxuIiwgbHB0X3BhZGRyKTsK
PiArCj4gKwlzdHJ1Y3Qga3ZtX2NyZWF0ZV9kZXZpY2UgcHZ0aW1lX2RldmljZSA9IHsKPiArCQku
dHlwZSA9IEtWTV9ERVZfVFlQRV9BUk1fUFZfVElNRSwKPiArCQkuZmxhZ3MgPSAwLAo+ICsJfTsK
PiArCj4gKwllcnIgPSBpb2N0bChrdm0tPnZtX2ZkLCBLVk1fQ1JFQVRFX0RFVklDRSwgJnB2dGlt
ZV9kZXZpY2UpOwo+ICsJaWYgKGVycikgewo+ICsJCXByaW50ZigiRmFpbGVkIHRvIGNyZWF0ZSBQ
ViBkZXZpY2VcbiIpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICsKPiArCXB2dGltZV9mZCA9IHB2
dGltZV9kZXZpY2UuZmQ7Cj4gKwo+ICsJc3RydWN0IGt2bV9kZXZpY2VfYXR0ciBscHRfYmFzZSA9
IHsKPiArCQkuZ3JvdXAgPSBLVk1fREVWX0FSTV9QVl9USU1FX1BBRERSLAo+ICsJCS5hdHRyID0g
S1ZNX0RFVl9BUk1fUFZfVElNRV9MUFQsCj4gKwkJLmFkZHIgPSAodTY0KSh1bnNpZ25lZCBsb25n
KSZscHRfcGFkZHIKPiArCX07Cj4gKwlzdHJ1Y3Qga3ZtX2RldmljZV9hdHRyIHN0X2Jhc2UgPSB7
Cj4gKwkJLmdyb3VwID0gS1ZNX0RFVl9BUk1fUFZfVElNRV9QQUREUiwKPiArCQkuYXR0ciA9IEtW
TV9ERVZfQVJNX1BWX1RJTUVfU1QsCj4gKwkJLmFkZHIgPSAodTY0KSh1bnNpZ25lZCBsb25nKSZz
dF9wYWRkcgo+ICsJfTsKPiArCj4gKwlzdHJ1Y3Qga3ZtX2RldmljZV9hdHRyIGxwdF9mcmVxID0g
ewo+ICsJCS5ncm91cCA9IEtWTV9ERVZfQVJNX1BWX1RJTUVfRlJFUVVFTkNZLAo+ICsJCS5hdHRy
ID0gS1ZNX0RFVl9BUk1fUFZfVElNRV9MUFQsCj4gKwkJLmFkZHIgPSAodTY0KSh1bnNpZ25lZCBs
b25nKSZmcmVxdWVuY3kKPiArCX07Cj4gKwo+ICsJZXJyID0gaW9jdGwocHZ0aW1lX2ZkLCBLVk1f
U0VUX0RFVklDRV9BVFRSLCAmbHB0X2Jhc2UpOwo+ICsJaWYgKGVycikgewo+ICsJCXBlcnJvcigi
aW9jdGwgbHB0X2Jhc2UgZmFpbGVkIik7Cj4gKwkJcHJpbnRmKCJJZ25vcmluZyBMUFQuLi5cbiIp
Owo+ICsJfQo+ICsJZXJyID0gaW9jdGwocHZ0aW1lX2ZkLCBLVk1fU0VUX0RFVklDRV9BVFRSLCAm
c3RfYmFzZSk7Cj4gKwlpZiAoZXJyKSB7Cj4gKwkJcGVycm9yKCJpb2N0bCBzdF9iYXNlIGZhaWxl
ZCIpOwo+ICsJCWdvdG8gb3V0X2VycjsKPiArCX0KPiArCWVyciA9IGlvY3RsKHB2dGltZV9mZCwg
S1ZNX1NFVF9ERVZJQ0VfQVRUUiwgJmxwdF9mcmVxKTsKPiArCWlmIChlcnIpIHsKPiArCQlwZXJy
b3IoImlvY3RsIGxwdF9mcmVxIGZhaWxlZCIpOwo+ICsJCXByaW50ZigiSWdub3JpbmcgTFBULi4u
XG4iKTsKPiArCX0KPiArCj4gKwlwcmludGYoIlBWIHRpbWUgc2V0dXBcbiIpOwo+ICsKPiArCXJl
dHVybiAwOwo+ICtvdXRfZXJyOgo+ICsJY2xvc2UocHZ0aW1lX2ZkKTsKPiArCXJldHVybiBlcnI7
Cj4gK30KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
