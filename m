Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B646129CED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nj0TyTkjE+X8TZethxAIwF1oEKZqbHoyrHvbIMKX9DM=; b=jWJV0wRWkE6zlCZLprRMKicMI
	lcj/OCIX0T8K7Ytct2BGVNjGy0fRnIVeI1KYfIDO+cwAkwR+HKADg4w/z68APewU6eXehResqvN/T
	MSx3wYr4hi95YRhBygPTQ9aQrAYqkusslgIpW7EhnMCFGFqScZwiBiXra7RJwdfwzEaj+yiLWrnmQ
	uL4ybWsgYhu5wJCoQgd6aoDWUCBeemRsKdnFSovTqNtt5SUOHfPzKuK1e9cpn9hPTeRjyScjK3zBJ
	3VaWea1OfLF1zms1yhjc6rFSj4dxFqOahZ7vNYpJgU5nEtoXIpUd9eWqMm08OoR3tvZQInCKExiba
	+Zm5WmYwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijaJX-0001ao-TX; Tue, 24 Dec 2019 02:52:51 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijaJN-0001Zz-TA
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 02:52:43 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1582691D5E6EDCC03903;
 Tue, 24 Dec 2019 10:52:35 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 24 Dec 2019
 10:52:27 +0800
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
To: Marc Zyngier <maz@kernel.org>
References: <20191220111833.1422-1-yuzenghui@huawei.com>
 <3a729559-d0eb-e042-d6bd-b69bacb0dd23@huawei.com>
 <c084aa29c029f97cdfb1b5dc9e6b29ac@www.loen.fr>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <1225d839-3cf7-d513-778e-698e12e94875@huawei.com>
Date: Tue, 24 Dec 2019 10:52:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <c084aa29c029f97cdfb1b5dc9e6b29ac@www.loen.fr>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_185242_112821_38ABE857 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: andre.przywara@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywgRXJpYywKCk9uIDIwMTkvMTIvMjMgMjI6MDcsIE1hcmMgWnluZ2llciB3cm90ZToK
PiBIaSBaZW5naHVpLAo+IAo+IE9uIDIwMTktMTItMjMgMTM6NDMsIFplbmdodWkgWXUgd3JvdGU6
Cj4+IE9uIDIwMTkvMTIvMjAgMTk6MTgsIFplbmdodWkgWXUgd3JvdGU6Cj4+PiBBbHRob3VnaCBn
dWVzdCB3aWxsIGhhcmRseSByZWFkIGFuZCB1c2UgdGhlIFBUWiAoUGVuZGluZyBUYWJsZSBaZXJv
KQo+Pj4gYml0IGluIEdJQ1JfUEVOREJBU0VSLCBsZXQgdXMgZW11bGF0ZSB0aGUgYXJjaGl0ZWN0
dXJlIHN0cmljdGx5Lgo+Pj4gQXMgcGVyIElISSAwMDY5RSA5LjExLjMwLCBQVFogZmllbGQgaXMg
V08sIGFuZCByZWFkcyBhcyAwLgo+Pj4gU2lnbmVkLW9mZi1ieTogWmVuZ2h1aSBZdSA8eXV6ZW5n
aHVpQGh1YXdlaS5jb20+Cj4+PiAtLS0KPj4+IE5vdGljZWQgd2hlbiBjaGVja2luZyBhbGwgZmll
bGRzIG9mIEdJQ1JfUEVOREJBU0VSIHJlZ2lzdGVyLgo+Pj4gQnV0IF9ub3RfIHN1cmUgd2hldGhl
ciBpdCdzIHdvcnRoIGEgZml4LCBhcyBMaW51eCBuZXZlciBzZXRzCj4+PiB0aGUgUFRaIGJpdCBi
ZWZvcmUgZW5hYmxpbmcgTFBJIChzZXQgR0lDUl9DVExSX0VOQUJMRV9MUElTKS4KPj4+IEFuZCBJ
IHdvbmRlciB1bmRlciB3aGljaCBzY2VuYXJpb3MgY2FuIHRoaXMgYml0IGJlIHdyaXR0ZW4gYXMg
MS4KPj4+IEl0IHNlZW1zIGRpZmZpY3VsdCBmb3Igc29mdHdhcmUgdG8gZGV0ZXJtaW5lIHdoZXRo
ZXIgdGhlIHBlbmRpbmcKPj4+IHRhYmxlIGNvbnRhaW5zIGFsbCB6ZXJvcyB3aGVuIHdyaXRpbmcg
dGhpcyBiaXQuCj4+PiB2aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYyB8IDUgKysrKy0K
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+
IGRpZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8tdjMuYyAKPj4+IGIvdmly
dC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYzLmMKPj4+IGluZGV4IDdkZmQxNWRiYjMwOC4uZWJj
MjE4ODQwZmMyIDEwMDY0NAo+Pj4gLS0tIGEvdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYz
LmMKPj4+ICsrKyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12My5jCj4+PiBAQCAtNDE0
LDggKzQxNCwxMSBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyAKPj4+IHZnaWNfbW1pb19yZWFkX3Bl
bmRiYXNlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3BhX3QgYWRkciwgdW5zaWduZWQgaW50IGxl
bikKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHZnaWNfY3B1ICp2Z2ljX2NwdSA9ICZ2
Y3B1LT5hcmNoLnZnaWNfY3B1Owo+Pj4gK8KgwqDCoCB1NjQgdmFsdWUgPSB2Z2ljX2NwdS0+cGVu
ZGJhc2VyOwo+Pj4gwqAgLcKgwqDCoCByZXR1cm4gZXh0cmFjdF9ieXRlcyh2Z2ljX2NwdS0+cGVu
ZGJhc2VyLCBhZGRyICYgNywgbGVuKTsKPj4+ICvCoMKgwqAgdmFsdWUgJj0gfkdJQ1JfUEVOREJB
U0VSX1BUWjsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIGV4dHJhY3RfYnl0ZXModmFsdWUsIGFk
ZHIgJiA3LCBsZW4pOwo+Pj4gwqAgfQo+Pj4gwqAgc3RhdGljIHZvaWQgdmdpY19tbWlvX3dyaXRl
X3BlbmRiYXNlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4+Cj4+Cj4+IEkgbm90aWNlZCB0aGVy
ZSBpcyBubyB1c2Vyc3BhY2UgYWNjZXNzIGNhbGxiYWNrcyBmb3IgR0lDUl9QRU5EQkFTRVIsCj4+
IHNvIHRoaXMgcGF0Y2ggd2lsbCBtYWtlIHRoZSBQVFogZmllbGQgYWxzbyAnUmVhZCBBcyBaZXJv
JyBieSB1c2Vyc3BhY2UuCj4+IFNob3VsZCB3ZSBjb25zaWRlciBhZGRpbmcgYSB1YWNjZXNzX3Jl
YWQgY2FsbGJhY2sgZm9yIEdJQ1JfUEVOREJBU0VSCj4+IHdoaWNoIGp1c3QgcmV0dXJucyB0aGUg
dW5jaGFuZ2VkIHZnaWNfY3B1LT5wZW5kYmFzZXIgdG8gdXNlcnNwYWNlPwo+PiAoVGhvdWdoIHRo
aXMgaXMgcmVhbGx5IG5vdCBhIGJpZyBkZWFsLiBXZSBub3cgYWx3YXlzIGVtdWxhdGUgdGhlIFBU
Wgo+PiBmaWVsZCB0byBndWVzdCBhcyBSQVouIEFuZCAndmdpY19jcHUtPnBlbmRiYXNlciAmIEdJ
Q1JfUEVOREJBU0VSX1BUWicKPj4gb25seSBpbmRpY2F0ZXMgd2hldGhlciBLVk0gd2lsbCBvcHRp
bWl6ZSB0aGUgTFBJIGVuYWJsaW5nIHByb2Nlc3MsCj4+IHdoZXJlIFJlYWQgQXMgWmVybyBpbmRp
Y2F0ZXMgbmV2ZXIgb3B0aW1pemUuLikKPiAKPiBJIGRvbid0IHRoaW5rIGFkZGluZyBhIHVzZXJz
cGFjZSBhY2Nlc3NvciB3b3VsZCBoZWxwIG11Y2guIEFsbCB0aGlzCj4gYml0IHRlbGxzIHVzZXJz
cGFjZSBpcyB0aGF0IHRoZSBndWVzdCBoYXMgcHJvZ3JhbW1lZCBhIHplcm8gZmlsbGVkCj4gdGFi
bGUuIE9uIHJlc3RvcmUsIHdlJ2QgYXZvaWQgYSByZXNjYW4gb2YgdGhlIHRhYmxlIGlmIHRoZXJl
IHdhcwo+IG5vIExQSSBtYXBwZWQuCgpZZXMsIEkgYWdyZWUuCgo+IEFuZCB0aGlua2luZyBvZiBp
dCwgdGhpcyBmaXhlcyBhIGJ1ZyBmb3Igbm9uLUxpbnV4IGd1ZXN0czogSWYgeW91IHdyaXRlCj4g
UFRaPTEsIHdlIG5ldmVyIGNsZWFyIGl0LiBXaGljaCBtZWFucyB0aGF0IGlmIHVzZXJzcGFjZSBz
YXZlcyBhbmQgcmVzdG9yZXMKPiBQRU5EQkFTRVIgd2l0aCBQVFogc2V0LCB3ZSdsbCBuZXZlciBy
ZXN0b3JlIHRoZSBwZW5kaW5nIGJpdHMsIHdoaWNoIGlzCj4gcHJldHR5IGJhZCAoc2VlIHZnaWNf
ZW5hYmxlX2xwaXMoKSkuCgpCdXQgSSdtIGFmcmFpZCBJIGNhbid0IGZvbGxvdyB0aGlzIHBvaW50
LiBBZnRlciByZWFkaW5nIHRoZSBjb2RlICh3aXRoClFlbXUpIGEgYml0IGZ1cnRoZXIsIHRoZSBS
ZWRpc3RyaWJ1dG9ycyBhcmUgcmVzdG9yZWQgYmVmb3JlIHRoZSBJVFMuIFNvCnRoZXJlIHNob3Vs
ZCBiZSBfbm9fIExQSSBoYXMgYmVlbiBtYXBwZWQgd2hlbiB3ZSdyZSByZXN0b3JpbmcgR0lDUl9D
VExSCmFuZCBlbmFibGluZyBMUEksIHdoaWNoIHNheXMgd2Ugd2lsbCBub3Qgc2NhbiB0aGUgd2hv
bGUgcGVuZGluZyB0YWJsZQphbmQgcmVzdG9yZSBwZW5kaW5nIGJ5IHZnaWNfZW5hYmxlX2xwaXMo
KS9pdHNfc3luY19scGlfcGVuZGluZ190YWJsZSgpLApyZWdhcmRsZXNzIG9mIHdoYXQgdGhlIFBU
WiBpcy4KCkluc3RlYWQsIHZnaWNfaXRzX3Jlc3RvcmVfaXRlKCkvdmdpY192M19scGlfc3luY19w
ZW5kaW5nX3N0YXR1cygpIGlzCndoZXJlIHdlIGFjdHVhbGx5IHJlYWQgdGhlIGd1ZXN0IFJBTSBh
bmQgcmVzdG9yZSB0aGUgTFBJIHBlbmRpbmcgc3RhdGUuCldoaWNoIG1lYW5zIHdlIHdpbGwgc3Rp
bGwgZG8gdGhlIHJpZ2h0IHRoaW5nIGV2ZW4gZm9yIG5vbi1MaW51eCBndWVzdHMuCk5vdCBzdXJl
IGlmIEkndmUgZ290IHRoaW5ncyBjb3JyZWN0bHkgaGVyZS4KCkluIHRoZSBlbmQsIGxldCdzIGtl
ZXAgdGhlIHBhdGNoIGFzIGl0IGlzLgoKPiAKPiBUaGlzIHBhdGNoIG9uIGl0cyBvd24gZml4ZXMg
bW9yZSB0aGFuIG9uZSBidWchCj4gCgpJZiBzbywganVzdCBieSBsdWNrIDstKQoKClRoYW5rcywK
WmVuZ2h1aQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
