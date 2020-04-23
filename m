Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F087A1B5B3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 14:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WhuVn2IXVfeP6MajMuHR28LRT+Qp4C4UePIFjPqy15Y=; b=ByIwoR8CMuI8SF6TsGc9xEcou
	WSQFvj37VsGgGKjtl2l4HH9jg5mdWc4/cLQ1HlrXpd31grZh6/bkB2Udidyoibhfu4O/RmHEl5BAJ
	0SMDtJof9kDVmFEpVYfmBP93XiQBYjkIbmo8IxDLHfSqnJrwOoIqnWT0ylieoHgB3Qh/CJvlLFnWu
	8npMuIyhIVE0Am4O2NSpc33v7hHSxI0wYhfypJuJ7wQB7MJbXyzc+qCnM1eiGhwt6knJPAYu900jJ
	YuI7WZW9c/rKbkUKyacdsEDGLFQjvrsvVQmLJwb9WG3iyhNtHuqMfQUL30N6X3Os5avWntFAfwlr8
	+haXYPuXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRaoV-0005Pa-Q9; Thu, 23 Apr 2020 12:18:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRaoN-0005Nw-6K
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 12:18:36 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B62D4A5E8B3BB75455A8;
 Thu, 23 Apr 2020 20:18:31 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Thu, 23 Apr 2020
 20:18:25 +0800
Subject: Re: [PATCH v3 5/6] KVM: arm64: vgic-v3: Retire all pending LPIs on
 vcpu destroy
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>
References: <20200422161844.3848063-1-maz@kernel.org>
 <20200422161844.3848063-6-maz@kernel.org>
 <2a0d1542-1964-c818-aae8-76f9227676b8@arm.com>
 <c4b89164d79b733bcc38801c9483417d@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5e611150-ce2a-7e90-ba9c-80275269b436@huawei.com>
Date: Thu, 23 Apr 2020 20:18:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <c4b89164d79b733bcc38801c9483417d@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_051835_399040_089B53FA 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC80LzIzIDIwOjAzLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gCj4gSSB0aGluayB0aGlz
IGlzIHNsaWdodGx5IG1vcmUgY29uY2VybmluZy4gVGhlIGlzc3VlIGlzIHRoYXQgd2UgaGF2ZQo+
IHN0YXJ0ZWQgZnJlZWluZyBwYXJ0cyBvZiB0aGUgaW50ZXJydXB0IHN0YXRlIGFscmVhZHkgKHdl
IGZyZWUgdGhlCj4gU1BJcyBlYXJseSBpbiBrdm1fdmdpY19kaXN0X2Rlc3Ryb3koKSkuCj4gCj4g
SWYgYSBTUEkgd2FzIHBlbmRpbmcgb3IgYWN0aXZlIGF0IHRoaXMgc3RhZ2UgKGkuZS4gcHJlc2Vu
dCBpbiB0aGUKPiBhcF9saXN0KSwgd2UgYXJlIGdvaW5nIHRvIGl0ZXJhdGUgb3ZlciBtZW1vcnkg
dGhhdCBoYXMgYmVlbiBmcmVlZAo+IGFscmVhZHkuIFRoaXMgaXMgYmFkLCBhbmQgdGhpcyBjYW4g
aGFwcGVuIG9uIEdJQ3YzIGFzIHdlbGwuCgpBaCwgSSB0aGluayB0aGlzIHNob3VsZCBiZSB0aGUg
Y2FzZS4KCj4gCj4gSSB0aGluayB0aGlzIHNob3VsZCBzb2x2ZSBpdCwgYnV0IEkgbmVlZCB0byB0
ZXN0IGl0IG9uIGEgR0lDdjIgc3lzdGVtOgoKQWdyZWVkLgoKPiAKPiBkaWZmIC0tZ2l0IGEvdmly
dC9rdm0vYXJtL3ZnaWMvdmdpYy1pbml0LmMgYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLWluaXQu
Ywo+IGluZGV4IDUzZWM5YjlkOWJjNDMuLjMwZGJlYzlmZTBiNGEgMTAwNjQ0Cj4gLS0tIGEvdmly
dC9rdm0vYXJtL3ZnaWMvdmdpYy1pbml0LmMKPiArKysgYi92aXJ0L2t2bS9hcm0vdmdpYy92Z2lj
LWluaXQuYwo+IEBAIC0zNjUsMTAgKzM2NSwxMCBAQCBzdGF0aWMgdm9pZCBfX2t2bV92Z2ljX2Rl
c3Ryb3koc3RydWN0IGt2bSAqa3ZtKQo+IAo+ICDCoMKgwqDCoCB2Z2ljX2RlYnVnX2Rlc3Ryb3ko
a3ZtKTsKPiAKPiAtwqDCoMKgIGt2bV92Z2ljX2Rpc3RfZGVzdHJveShrdm0pOwo+IC0KPiAgwqDC
oMKgwqAga3ZtX2Zvcl9lYWNoX3ZjcHUoaSwgdmNwdSwga3ZtKQo+ICDCoMKgwqDCoMKgwqDCoMKg
IGt2bV92Z2ljX3ZjcHVfZGVzdHJveSh2Y3B1KTsKPiArCj4gK8KgwqDCoCBrdm1fdmdpY19kaXN0
X2Rlc3Ryb3koa3ZtKTsKPiAgwqB9Cj4gCj4gIMKgdm9pZCBrdm1fdmdpY19kZXN0cm95KHN0cnVj
dCBrdm0gKmt2bSkKClRoYW5rcyBmb3IgdGhlIGZpeCwKWmVuZ2h1aQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
