Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BFBB4147
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 21:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0gy1nNNPpVYKPdLCNIDyTiCi+Q9udBVconafuLsUKFY=; b=iT2MpjoHpaErFldM2wuUCOsxl
	cuKmBqH5YPhWX4L2v+R3hJixEu6LVQeUKDuUTYcBBxanMW8nxOBnXX9LNqSGJRCH6hllBvs51b3B4
	74DxbgrRITRdnMJ+tzLdOqX5Gw29eomhKNoOKMhs7qVCMi9NMsMKSqOEJ9Udv11t7YtvzxJ+0nZzf
	vL4IZAjCG3W2SW5kOe4MoLaXVJ6U/hY6VzvkOpo1sT8LTr8Y0ZufqhICAn8oepVdMBXSy3OpxNKEQ
	i2Fevn/nnzywb8oZ9qEpaLHtmGzzrTS7h4+QNnD8Njufbj+2xpr3gwEjuhzENFCxuazkhw8EeMY21
	WqFCGJf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wuy-0001qB-Cx; Mon, 16 Sep 2019 19:44:12 +0000
Received: from smtp11.smtpout.orange.fr ([80.12.242.133]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wuf-0001pL-6k
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 19:43:59 +0000
Received: from [192.168.1.41] ([90.126.97.183]) by mwinf5d90 with ME
 id 2Kjj2100R3xPcdm03Kjj1q; Mon, 16 Sep 2019 21:43:47 +0200
X-ME-Helo: [192.168.1.41]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 16 Sep 2019 21:43:47 +0200
X-ME-IP: 90.126.97.183
Subject: Re: [PATCH] iommu/arm-smmu: Axe a useless test in
 'arm_smmu_master_alloc_smes()'
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org
References: <20190915193401.27426-1-christophe.jaillet@wanadoo.fr>
 <de9ee628-9efb-3078-590c-6852be61c7d2@arm.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <5babe7b3-07ba-cb07-82b0-4105d8e8b4fc@wanadoo.fr>
Date: Mon, 16 Sep 2019 21:43:43 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <de9ee628-9efb-3078-590c-6852be61c7d2@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_124353_526912_FBA71E3F 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.133 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTYvMDkvMjAxOSDDoCAxMjo0NiwgUm9iaW4gTXVycGh5IGEgw6ljcml0wqA6Cj4gT24gMTUv
MDkvMjAxOSAyMDozNCwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+PiAnb21tdV9ncm91cF9n
ZXRfZm9yX2RldigpJyBuZXZlciByZXR1cm5zIE5VTEwsIHNvIHRoaXMgdGVzdCBjYW4gYmUgCj4+
IHJlbW92ZWQuCj4KPiBOaXQ6IHR5cG8gaW4gdGhlIGZ1bmN0aW9uIG5hbWUuCj4KPiBPdGhlcndp
c2UsIHRoZXJlIGRlZmluaXRlbHkgdXNlZCB0byBiZSBzb21lIHBhdGggd2hlcmUgYSBOVUxMIHJl
dHVybiAKPiBjb3VsZCBsZWFrIG91dCwgc28gSSB3b3VsZCBoYXZlIGhhZCB0aGF0IGluIG1pbmQg
YXQgdGhlIHRpbWUgSSB3cm90ZSAKPiB0aGlzLCBidXQgYXBwYXJlbnRseSBJIG5ldmVyIG5vdGlj
ZWQgdGhhdCB0aGF0IGhhZCBhbHJlYWR5IGJlZW4gCj4gY2xlYW5lZCB1cCBieSB0aGUgdGltZSB0
aGlzIGdvdCBtZXJnZWQuCj4KSGksCgpNYXliZSBmaXhlZCBieSA3MmRjYWM2MzM0NzUgKCJpb21t
dTogV2FybiBvbmNlIHdoZW4gZGV2aWNlX2dyb3VwIApjYWxsYmFjayByZXR1cm5zIE5VTEwiKQoK
CkNKCgo+IFJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgo+
Cj4gVGhhbmtzLAo+IFJvYmluLgo+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExF
VCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2lv
bW11L2FybS1zbW11LmMgfCAyIC0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS5jIGIvZHJpdmVycy9p
b21tdS9hcm0tc21tdS5jCj4+IGluZGV4IGMzZWYwY2M4Zjc2NC4uNmZhZThjZGJlOTg1IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMKPj4gKysrIGIvZHJpdmVycy9pb21t
dS9hcm0tc21tdS5jCj4+IEBAIC0xMDM4LDggKzEwMzgsNiBAQCBzdGF0aWMgaW50IGFybV9zbW11
X21hc3Rlcl9hbGxvY19zbWVzKHN0cnVjdCAKPj4gZGV2aWNlICpkZXYpCj4+IMKgwqDCoMKgwqAg
fQo+PiDCoCDCoMKgwqDCoMKgIGdyb3VwID0gaW9tbXVfZ3JvdXBfZ2V0X2Zvcl9kZXYoZGV2KTsK
Pj4gLcKgwqDCoCBpZiAoIWdyb3VwKQo+PiAtwqDCoMKgwqDCoMKgwqAgZ3JvdXAgPSBFUlJfUFRS
KC1FTk9NRU0pOwo+PiDCoMKgwqDCoMKgIGlmIChJU19FUlIoZ3JvdXApKSB7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCByZXQgPSBQVFJfRVJSKGdyb3VwKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdv
dG8gb3V0X2VycjsKPj4KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
