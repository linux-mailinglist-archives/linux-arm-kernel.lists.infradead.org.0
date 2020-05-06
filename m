Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D124D1C741F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0MiipgmKbru5wZX72DFL+wUV7tiKSP3hHYrLkbw1s6Y=; b=ACXcckGfXOrAYgMq4OJQtpH0L
	Gm0yb4zWVA50cdhJwsb0WhutyVW8c4cpRDarxw5omQwUkII1z0NP/EI6p70/BbJiDnsE1ghDjjye9
	MrWk4UY35YJ975Qw4j9Z7b3F0kZlW6ulUh1H4jWt1XGSdOCl5E+9EDK5cr9aMLVHslee4XIElyT/e
	3IkdJKTk35zk0An5gfBj9XOxsVEpcPgxBTUHxEUH3KbrVdsHaWa+a2Rre2wmc21neZv/H6G1QuGgt
	8Tv0T6xoc2m2Fig9IOXXl4BYfzy1s3oeZoukj7YuaFAnK9PEQ5NF0PIVfMN7v2uK2xoTpJp0EBq6k
	CLNziTR4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLqM-00009X-BT; Wed, 06 May 2020 15:20:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLmA-0004Ss-05
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:16:00 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 046FDS8W009222; Wed, 6 May 2020 17:15:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Ap15MPHcoYctXjMf5Y8WHHSTo+SEtaHh9qwzyWsGQCc=;
 b=WZeZYFkPheWSzjxGiTLbwhh5iOXmg39I6EGPYZmhHXNKNt6WdG2mDkmIL3Y0pFuGkYJm
 NclZP+No0rnC3savnoc9DSzNnAYLEkl9TnVNXlNZtCCzfaDa8t00Xy+Js6aRUNx6bGJG
 fRQDld8r7Qso3hHjQigf2CDxMRVJBP16hwD5AcFQNZ7PIyl6i1XbQ+9mD54H0NmZ9+o0
 ze8X3G8pq6sik/Z+kDSMoNlBsD7jlBfHhH5uxX5ByTL7ncJPBnFBAOQyEKpALS+r5plT
 2YiRo10p1Cdfjs/SJjAnLAFmWe5fPzfuLNSuIkJKYw6ErIkfDlUfzb4xgUwae+hAvQLE nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxmvpt6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 May 2020 17:15:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6D35710002A;
 Wed,  6 May 2020 17:15:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 60B852C5FCA;
 Wed,  6 May 2020 17:15:54 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 6 May
 2020 17:15:50 +0200
Subject: Re: [PATCH 01/12] ARM: dts: stm32: Add alternate pinmux for I2C2 pins
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200429163743.67854-1-marex@denx.de>
 <13aabff1-d4d0-7afb-6a57-a8136e35c6a4@st.com>
 <1d9cbde1-2be1-f54e-7c65-202f2bc7e0a9@denx.de>
 <b100645c-32ac-325d-5838-0fab2c93df22@st.com>
 <6dc6b79f-2a20-3899-e42f-eabaeb33a829@denx.de>
 <c012b356-c935-3536-a3eb-0683f4339dda@st.com>
 <dde82c6c-ec30-ad28-406d-4bd955c670c0@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <ea7c0254-f955-8636-8c62-326b8d07cb4f@st.com>
Date: Wed, 6 May 2020 17:15:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <dde82c6c-ec30-ad28-406d-4bd955c670c0@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-06_08:2020-05-05,
 2020-05-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_081558_470314_03848C3D 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzYvMjAgNDo1OCBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gNS82LzIwIDQ6NTUg
UE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDUvNi8yMCA0OjM5IFBNLCBN
YXJlayBWYXN1dCB3cm90ZToKPj4+IE9uIDUvNi8yMCA0OjI2IFBNLCBBbGV4YW5kcmUgVG9yZ3Vl
IHdyb3RlOgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+PiBBbGwgcmlnaHQsIHRoYW5rcy4KPj4+Pj4KPj4+
Pj4gYnR3IEkgaGFkIHRoaXMgaW50ZXJuYWwgZGlzY3Vzc2lvbiBub3cgYWJvdXQgaGFuZGxpbmcg
dGhlIGNvbWJpbmF0b3JpYWwKPj4+Pj4gZXhwbG9zaW9uIG9mIGJvYXJkIERUcyBoZXJlLiBJZiB3
ZSBzdXBwb3J0IHRoZW0gYWxsLCBieSB0aGUgZW5kIG9mIHRoZQo+Pj4+PiBsaWZlc3BhbiBvZiB0
aGVzZSBkZXZpY2VzLCB3ZSBlbmQgdXAgd2l0aDoKPj4+Pj4KPj4+Pj4gU1RNMzJNUDE1ezEsMyw3
fXthLGMsZCxmfSBTb00gcmV2LiB7MC4uN30wMCBvbiBiYXNlYm9hcmQgcmV2LiB7MC4uN30wMC4K
Pj4+Pj4KPj4+Pj4gVGhlcmUgd29uJ3QgYmUgZXZlcnkgU29NIGFuZCBiYXNlYm9hcmQgcmV2aXNp
b24gY29tYmluYXRpb24gYWxsIHJpZ2h0Lgo+Pj4+PiBCdXQgZXZlbiB0aGUgYW1vdW50IG9mIFNv
TSBvcHRpb25zIGdpdmVzIG1lIDEyIERUcy4gVGhhdCBpcyBub3QgYSBsb3cKPj4+Pj4gbnVtYmVy
LiBEb2VzIFNUIGhhdmUgc29tZSBwbGFuIHRvIGhhbmRsZSBzdWNoIHNpdHVhdGlvbiA/Cj4+Pj4K
Pj4+PiBZZXMgSSBoYXZlIHRoZSBzYW1lIHBvaW50IGluIG1pbmQuIEhvdyB0byBtYWludGFpbiBh
bGwgYm9hcmRzID8gU2hvdWxkCj4+Pj4gd2UgcmVmdXNlIHNvbWUgYm9hcmRzIGFuZCBvbmx5IGtl
ZXAgb25lIGFzIGV4YW1wbGUgPwo+Pj4KPj4+IEJ1dCB3aGljaCBvbmVzIGRvIHlvdSB3YW50IHRv
IGRyb3A/IFRoZSBwZGsyIGlzIGEgZGV2a2l0ICwgc28geW91IGNhbgo+Pj4gcHV0IGluIGFueSBT
b00gb3B0aW9uLCB0aGF0J3MgdGhlIHByb2JsZW0uCj4+Cj4+IE9rIGJ1dCB3ZSBjb3VsZCBjaG9p
Y2UgdG8gYnVpbGQgb25seSBvbmUgKG9yIGZldykgcG9zc2liaWxpdGllcy4gSSBtZWFuCj4+IG1h
eWJlIG9ubHkgbXAxNTcgPwo+IAo+IEJ1dCB0aGF0IG9uZSBpc24ndCBnb25uYSB3b3JrIGZvciBl
LmcuIDE1MyB0aGVuLCB3b3VsZCBpdD8KCk5vIGJ1dCB3ZSBjb3VsZCBsZXQgdXNlciBvZiAxNTMg
ZG8gaGlzIG93biBkdHMgYnkgaGFuZC4gV2l0aCBhIGdvb2QgCnNwbGl0IGlzIG5vdCBkaWZmaWN1
bHQgdG8gZG8uCgpGb3IgZS5nIEkgZG9uJ3QgcGxhbiB0byB1cHN0cmVhbSBzdG0zMm1wMTUzYy1k
azIgKEkgZG9uJ3Qga25vdyBpZiBpdCAKcmVhbGx5IGV4aXN0KSwgYnV0IHVzZXIgY291bGQgZWFz
aWx5IGNyZWF0ZSBoaXMgb3duIHN0bTMybXAxNTNjLWRrMi5kdHMgCmJ5IGFzc2VtYmxpbmcgd2Vs
bCBkdHNpIGZpbGVzIGFuZCB0YWtpbmcgc3RtMzJtcDE1N2MtZGsyIChvciBkazEpIGFzIApleGFt
cGxlLgoKPj4+Pj4gSSBjYW4gaW1hZ2luZSB0aGF0IFUtQm9vdCBjYW4gcGF0Y2ggdGhlIERUIGFu
ZCBlbmFibGUvZGlzYWJsZQo+Pj4+PiBmdW5jdGlvbmFsaXR5ICwgd2hpY2ggY291bGQgaGFuZGxl
IHRoZSB7YSxjLGQsZn0gb3B0aW9ucyBhbmQgcmVkdWNlIHRoZQo+Pj4+PiBhbW91bnQgb2YgRFRz
LiBJdCBjb3VsZCBwb3NzaWJseSBhbHNvIGhhbmRsZSB0aGUgezEsMyw3fSBvcHRpb25zLgo+Pj4+
Pgo+Pj4+Cj4+Pj4gSXQgaXMgc29tZXRoaW5nIEkgZGlzY3Vzc2VkIHdpdGggS2V2aW4gSGlsbWFu
IGF0IEVMQ0UgYW5kIHNvbWV0aW1lIHdpdGgKPj4+PiBSb2Igb24gSUlSYy4gV2UgY291bGQgdXNl
IHUtYm9vdCB0byBoYW5kbGUgZGlmZmVyZW5jZXMgYmV0d2VlbiBTb0MsIGFuZAo+Pj4+IGJvYXJk
cy4gVGVjaG5pY2FsbHkgaXQncyBwb3NzaWJsZSBidXQgdGhlIG1haW4gaXNzdWUgZG9pbmcgdGhh
dCBpcyzCoCB5b3UKPj4+PiB3aWxsIGhpZGUgc29tZSB1cGRhdGVzIGluIHlvdXIgYm9vdGxvYWRl
ciBhbmQgdGhlbiB5b3VyIGR0YiB1c2VkIGJ5Cj4+Pj4ga2VybmVsIHdpbGwgbm90IHJlZmxlY3Qg
eW91ciBkdHMgZmlsZS4gSXQgY291bGQgYmUgY29uZnVzZWQgZm9yCj4+Pj4gY3VzdG9tZXJzIGFu
ZCB1c2Vycy4KPj4+Cj4+PiBZZXMuCj4+Pgo+Pj4+PiBBbnkgb3RoZXIgaWRlYXMgPwo+Pj4+Cj4+
Pj4gV2hhdCBpcyBmb3IgeW91IHRoZSBtYWluIGlzc3VlID8gdGhlIG51bWJlciBvZiBmaWxlcyB0
byBhZGQgb3IgaG93IHRvCj4+Pj4gbWFpbnRhaW4gYWxsIHRob3NlIGZpbGVzID8KPj4+Cj4+PiBU
aGUgbnVtYmVyLiBNYWludGFpbmluZyB0aGVtIGlzIG5vdCB0aGF0IG11Y2ggb2YgYSBwcm9ibGVt
Lgo+Pgo+PiBJIGFncmVlCj4+Cj4+Pgo+Pj4+IElmIGl0IGlzIHRoZSBudW1iZXIgb2YgZmlsZXMg
dG8gYWRkLCB3ZSBjYW4gdGhpbmsgYWJvdXQgc2V2ZXJhbCB3YXlzOgo+Pj4+Cj4+Pj4gMS1BcyBt
ZW50aW9uZWQgYWJvdmUsIHRvIG9ubHkga2VlcCBraW5kIG9mIHJlZmVyZW5jZSBwbGF0Zm9ybXMK
Pj4+Pgo+Pj4+IDItSGF2ZSB2ZW5kb3IgZGlyZWN0b3JpZXMgaW4gYXJjaC9hcm0vYm9vdC9kdHMg
KGJ1dCBpdCdzIGFub3RoZXIgc3RvcnkKPj4+PiB0byBtYWtlIGl0IGFjY2VwdGVkKQo+Pj4KPj4+
IE1heWJlIHRoYXQncyBzb21ldGhpbmcgd2Ugc2hvdWxkIGNvbnNpZGVyIGZvciBhcm0zMiwgYnV0
IHRoYXQncyBhCj4+PiBkaWZmZXJlbnQgZGlzY3Vzc2lvbiBhbHRvZ2V0aGVyLgo+Pgo+PiBJIGdv
bm5hIHNlZSBob3cgdG8gc3RhcnQgZGlzY3Vzc2lvbiBvbiB0aGF0IChtYXliZSB0aGFua3MgdG8g
TGluYXJvIGFuZAo+PiBkZXZpY2UgdHJlZSBldm9sdXRpb24pCj4gCj4gQWxsIHJpZ2h0Lgo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
