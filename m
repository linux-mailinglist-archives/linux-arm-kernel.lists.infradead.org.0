Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19041BF2EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6hg3EN25udGL0YMdm2sk96ZvHOhHzvUV+076GPZf9Y4=; b=Kxnum5L3HIyrfVZQmwQpJlj9j
	kJomtZPTTZQNVjxlqMKnWNaxLzLCF1+vqtj1kxPkpCO5yG0c8vXqqcQt5oeD0rdPGj4IopxnE9V0U
	HrlRSU7JoclyeMUgxWJcmb8wP+chROAt8PnBM1bfFGtoy4Q5HKVEAH14wry8muQBg7HSG4CnWnbvV
	pebUmzz5P27qLdoQsx+W8lVk7LZCIjlfEi1/qvJdFyUQRiFEeMTk33EnYyGpzZ6EtscYe6MTB1F7i
	KNRvIynkVkqcAwhhAx2y3LGOVAiZ/ymTVoFffve5k0ZUHXr8YFboK0J699RMaNw4wwd5x4tKCX8oJ
	Lnb47O4sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4eK-0003at-F5; Thu, 30 Apr 2020 08:34:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4eA-0003Z8-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:34:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03U8YEac027937;
 Thu, 30 Apr 2020 03:34:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588235654;
 bh=mGhh3XHLeWJQvoY4oyWDEdJofRv7HgLlVcRUNvoWdJw=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=FgNfD3WljwSo7655F7xcvcOS/hZpmUoxvetj8S6AbJ+6uygnZkUjcXgJfrs5E9mzs
 KCU3t1UTAi66ToqilyEhuzu9foCAsa/9Il1LBJ4yPKlsq0EYsvFK7Ud9VFHXRb+1oT
 UKgJ3VwOMxcxOIT3kplX+jJYMc7we45psb5J5x+E=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03U8YEuN072938;
 Thu, 30 Apr 2020 03:34:14 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 30
 Apr 2020 03:34:14 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 30 Apr 2020 03:34:14 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03U8YCJc065680;
 Thu, 30 Apr 2020 03:34:13 -0500
Subject: Re: [PATCH 1/8] ARM: dts: omap4: fix node names for the l4_cm clkctrl
 nodes
From: Tero Kristo <t-kristo@ti.com>
To: Tony Lindgren <tony@atomide.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
 <20200429143002.5050-2-t-kristo@ti.com> <20200429220714.GV37466@atomide.com>
 <fef91f43-df5f-99e4-7861-05190fcc2040@ti.com>
Message-ID: <cb563fb2-4909-a11a-d167-a5e982f38968@ti.com>
Date: Thu, 30 Apr 2020 11:34:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <fef91f43-df5f-99e4-7861-05190fcc2040@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_013418_363243_31703766 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDQvMjAyMCAwNzo1NSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMzAvMDQvMjAyMCAw
MTowNywgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPj4gKiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGku
Y29tPiBbMjAwNDI5IDE0OjMxXToKPj4+IFRoZSBub2RlIG5hbWUgZm9yIHRoZXNlIHNob3VsZCBi
ZSBjbGsgaW5zdGVhZCBvZiBjbG9jay4gT3RoZXJ3aXNlIHRoZQo+Pj4gY2xvY2sgZHJpdmVyIHdv
bid0IGJlIGFibGUgdG8gbWFwIHRoZSBwYXJlbnQvY2hpbGQgcmVsYXRpb25zaGlwcwo+Pj4gcHJv
cGVybHksIGFuZCBsYXJnZSBudW1iZXIgb2YgY2xvY2tzIGVuZCB1cCBpbiBvcnBoYW5lZCBzdGF0
ZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgo+
Pj4gLS0tCj4+PiDCoCBhcmNoL2FybS9ib290L2R0cy9vbWFwNDR4eC1jbG9ja3MuZHRzaSB8IDQg
KystLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDQ0eHgtY2xvY2tz
LmR0c2kgCj4+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL29tYXA0NHh4LWNsb2Nrcy5kdHNpCj4+PiBp
bmRleCA1MzI4Njg1OTExMDcuLmI4MmIxY2EwZTU1NyAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL29tYXA0NHh4LWNsb2Nrcy5kdHNpCj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0
cy9vbWFwNDR4eC1jbG9ja3MuZHRzaQo+Pj4gQEAgLTEyNzksMTMgKzEyNzksMTMgQEAKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwxPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCByYW5nZXMgPSA8MCAweDE0MDAgMHgyMDA+Owo+Pj4gLcKgwqDCoMKgwqDCoMKgIGw0X3Blcl9j
bGtjdHJsOiBjbG9ja0AyMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgbDRfcGVyX2Nsa2N0cmw6IGNs
a0AyMCB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInRpLGNs
a2N0cmwtbDQtcGVyIiwgInRpLGNsa2N0cmwiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVnID0gPDB4MjAgMHgxNDQ+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2Ns
b2NrLWNlbGxzID0gPDI+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiAtwqDCoMKgwqDC
oMKgwqAgbDRfc2VjdXJlX2Nsa2N0cmw6IGNsb2NrQDFhMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqAg
bDRfc2VjdXJlX2Nsa2N0cmw6IGNsa0AxYTAgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJ0aSxjbGtjdHJsLWw0LXNlY3VyZSIsICJ0aSxjbGtjdHJsIjsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDFhMCAweDNjPjsKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwyPjsKPj4KPj4gSGVoIHRoaXMg
aXMgbm8gbG9uZ2VyIG5lZWRlZCBzaW5jZSBjb21taXQgNmMzMDkwNTIwNTU0Cj4+ICgiY2xrOiB0
aTogY2xrY3RybDogRml4IGhpZGRlbiBkZXBlbmRlbmN5IHRvIG5vZGUgbmFtZSIpCj4+IHRoYXQg
YWRkZWQgc3VwcG9ydCBmb3IgdXNpbmcgdGhlIGNvbXBhdGlibGUgbmFtZSA6KQo+Pgo+PiBNYXli
ZSB5b3UgYXJlIHVzaW5nIHNvbWUgb2xkZXIgdHJlZT8gT3IgZWxzZSB0aGVyZSdzCj4+IHN0aWxs
IHNvbWV0aGluZyB3cm9uZyBzb21ld2hlcmUuCj4gCj4gSSB3YXMgdXNpbmcgNS43LXJjMSBhcyBi
YXNlbGluZSBzbyBjYW4ndCBiZSB0aGF0Lgo+IAo+IExldCBtZSB0cnkgdG8gY2hlY2sgdGhpcyBv
bmUgYWdhaW4uCgpPayB5b3UgY2FuIGlnbm9yZSB0aGlzIGFuZCBwYXRjaCAjMiBmb3Igb21hcDUg
Zm9yIHNpbWlsYXIgY2FzZS4gSXQgc2VlbXMgCmxpa2UgdGhlIHBhdGNoIDZjMzA5MDUyMDU1NCBh
Y3R1YWxseSBmb3Jnb3QgdG8gZml4IHRoZSBzdWJjbG9jayBuYW1lcywgCmFuZCBpdCBjYXVzZXMg
aXNzdWVzIGluIG1peGVkIGNsb2NrIG5vZGUgc2V0dXAuIFdpbGwgcG9zdCBhIGZpeCBhZ2FpbnN0
IAp0aGUgY2xvY2sgZHJpdmVyIHNob3J0bHkuCgotVGVybwoKLS0KVGV4YXMgSW5zdHJ1bWVudHMg
RmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1
c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
