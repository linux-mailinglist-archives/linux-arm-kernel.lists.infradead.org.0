Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A445841A03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 03:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KamvliqXqhPzK//xPiWxdvgWijuNCFIkWHCI3bpR/64=; b=saFDozHcH53roykdXady1JnxR
	4i5vPjng9JN4WIXKmlWfD8U1TLJZdiOVM/MeNkp5FGhuH83iTRHznwPeBG12IFrNqUs5pWw5omy/z
	nSxEkTcifebBxYFq3YRMA/osxMP32bA2rx8zSSmC4S14EyIgL2/ogfP3xTJraRggKRrAeMhOFn12Q
	1dkTZSrGxgi/gemUsBdi2cLzt2zdhuCVcYXHPceppdB8yabMrTCWDS0g4yZL0x8rtPrem3NxkFWiK
	qQQBd601Rg73tGklBVyyqPgqmbhtKRsaHvKsopywHwnAAviijEDwl/SM7nGUNkpctTSmzqOOsS/Z2
	K1Rz6GdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hasKF-0003xS-Sa; Wed, 12 Jun 2019 01:45:19 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hasK5-0002be-FE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 01:45:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5C1iw8g037740;
 Tue, 11 Jun 2019 20:44:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560303898;
 bh=2NCPKUbRarLqkAlzqq9qkjBHRnMGcpEhq9GuD3nrYSI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YVINHl5LXFoyn566/EfAsjdlqLMXy6I4GY4r/cdxwk/sWREBjZquPX/4r4q0VpoCs
 7d4SzNulgxzBwJCXZ0EU+FYWINkkSDIuyNVq8SbunYKNztH6GBKO41RAVjECssVGE4
 0c2E1UttRWoby5Qcx+o2Vs6TmW3wdeVtEOIwa1Ho=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5C1iwc0072627
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 20:44:58 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 20:44:58 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 20:44:58 -0500
Received: from [172.22.218.126] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5C1isWO065965;
 Tue, 11 Jun 2019 20:44:55 -0500
Subject: Re: [PATCH] arm64: configs: Enable GPIO_DAVINCI
To: Tero Kristo <t-kristo@ti.com>, <will.deacon@arm.com>,
 <catalin.marinas@arm.com>, <shawnguo@kernel.org>
References: <20190605061401.25806-1-j-keerthy@ti.com>
 <09a60289-2747-a570-54e0-822b0ea4b01a@ti.com>
From: keerthy <j-keerthy@ti.com>
Message-ID: <f32dc8da-7c17-6cb4-be31-53a59b7cea35@ti.com>
Date: Wed, 12 Jun 2019 07:14:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <09a60289-2747-a570-54e0-822b0ea4b01a@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_184509_800426_DA953BBE 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, nm@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzExLzIwMTkgMTE6NDkgUE0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+IE9uIDA1LzA2LzIw
MTkgMDk6MTQsIEtlZXJ0aHkgd3JvdGU6Cj4+IEVuYWJsZSBHUElPX0RBVklOQ0kgYW5kIHJlbGF0
ZWQgY29uZmlncyBmb3IgVEkgSzMgQU02IHBsYXRmb3Jtcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
S2VlcnRoeSA8ai1rZWVydGh5QHRpLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvY29uZmln
cy9kZWZjb25maWcgfCAzICsrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZwo+PiBpbmRleCBkMWI3MmY5OWUyZjQuLjU3ZDdhNGMyMDdi
ZCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwo+PiArKysgYi9h
cmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4+IEBAIC0zODUsNiArMzg1LDkgQEAgQ09ORklH
X1BJTkNUUkxfUUNTNDA0PXkKPj4gwqAgQ09ORklHX1BJTkNUUkxfUURGMlhYWD15Cj4+IMKgIENP
TkZJR19QSU5DVFJMX1FDT01fU1BNSV9QTUlDPXkKPj4gwqAgQ09ORklHX1BJTkNUUkxfU0RNODQ1
PXkKPj4gK0NPTkZJR19ERUJVR19HUElPPXkKPiAKPiBXaHkgREVCVUdfR1BJTz8KCk9rYXkgdGhp
cyBjYW4gYmUgbGVmdCBvdXQuCgo+IAo+PiArQ09ORklHX0dQSU9fU1lTRlM9eQo+IAo+IEFsc28s
IHdoeSBHUElPX1NZU0ZTPwoKVGhpcyBoYXMgYmVlbiB0aGVyZSBmb3IgcHJldHR5IG11Y2ggYWxs
IHRoZSBTb0NzIGluIHRoZSBwYXN0CmFuZCBvbmUgb2YgdGhlIHdheXMgdG8gdmFsaWRhdGUgR1BJ
T3MgYXJlIGZ1bmN0aW9uYWwuIFRoaXMgaXMgdmVyeSBtdWNoIApuZWVkZWQgSU1ITy4KCj4gCj4g
Qm90aCBvZiB0aGUgYWJvdmUgYXJlIG5pY2UgZm9yIGRlYnVnZ2luZyBwdXJwb3NlcywgYnV0IHNo
b3VsZCBub3QgYmUgCj4gZW5hYmxlZCBieSBkZWZhdWx0IGltaG8sIGFzIHRoZXkgYXJlIG5vdCBu
ZWVkZWQgYnkgZHJpdmVycy4KPiAKPj4gK0NPTkZJR19HUElPX0RBVklOQ0k9eQo+IAo+IEkgdGhp
bmsgeW91IHNob3VsZCBub3QgbW9kaWZ5IGRlZmNvbmZpZywgcmF0aGVyIGFkZCB0aGVzZSBhcyBw
bGF0Zm9ybSAKPiByZXF1aXJlZCBmZWF0dXJlcyB1bmRlciBhcmNoL2FybTY0L0tjb25maWcucGxh
dGZvcm1zPwoKSSBvYnNlcnZlZCBDT05GSUdfUkVTRVRfVElfU0NJLCBDT05GSUdfVElfU0NJX1BS
T1RPQ09MIHdoaWNoIGFyZSAKcGxhdGZvcm0gc3BlY2lmaWMgaW4gdGhlIGRlZmNvbmZpZyBhbmQg
YWRkZWQgdGhlbSBoZXJlLiBBbHJlYWR5IHRoZXJlIAphcmUgbiBudW1iZXIgb2YgR1BJTyBjb25m
aWcgb3B0aW9ucyBhcyB3ZWxsIHVuZGVyIGRlZmNvbmZpZy4gSWYgdGhlIG5vcm0gCmlzIHRvIGFk
ZCBzZWxlY3RzIHVuZGVyIGFyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMgdGhlbiBpIGFtIGZp
bmUgd2l0aCAKdGhhdCBhcyB3ZWxsLiBLaW5kbHkgbGV0IG1lIGtub3cuCgotIEtlZXJ0aHkKPiAK
PiAtVGVybwo+IAo+PiDCoCBDT05GSUdfR1BJT19EV0FQQj15Cj4+IMKgIENPTkZJR19HUElPX01C
ODZTN1g9eQo+PiDCoCBDT05GSUdfR1BJT19QTDA2MT15Cj4+Cj4gCj4gLS0gCj4gVGV4YXMgSW5z
dHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuIAo+
IFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhl
bHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
