Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25D48538F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 21:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MArcg/a44gZfaUlQzJiJCKful0hVkK6Dzxi4mp3L228=; b=V/KzWOhbUE2Ffn
	eSEtLpovwIAhFTawdlB3gvGcf/YzQzyz+0FyXxoa7HGIHNn6DMlvWTNCLlbdxas62wo2UMHHKlNJ4
	17pKz365oxk0J3BJQsmwrrQECQBK6kf67Det4fPxA0DHwlMdRAOjQAoHSAqBOWIFxNnxlpWPeZQsr
	In9Uir+0qq42DNLVoDrdD7Zkbw86QSRS4E5z8XqXm/8fFRo2sSJHFAGMVDbFW9zaS/tDpXGTSNysi
	jq3Fkync8s2p4eKZ9u6w5w91CysKQ5br7nhRPOCr8v12ZxXxpyj5v4W+YfZblcC0OADM4U4UegyRp
	vCRHDkOncMDZpsiSWyCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRbs-0006tY-2u; Wed, 07 Aug 2019 19:28:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRba-0006st-Q6
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 19:28:16 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x77JSBXa037788;
 Wed, 7 Aug 2019 14:28:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565206091;
 bh=s6qSTw4uTX39/wpqBURdlKljFoXZCZOw10ItvX2ujn8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pKqFFrXDQyVK7s7VZsnG3SWq6eqC22upoTejwXJgs5xLmN2H0WmTVZrQwDjzrRzi8
 BtOadbBo0buFSd3SqsBI+xBLclboHD15ICggPNvr553nmd0tOvGJ4uHXpZEGI9zQ1N
 pTK4Lg9GXoQR4mg0+SvON2Y69SghTduKB/1xcrXU=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x77JSA2l119747
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 14:28:10 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 14:28:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 14:28:10 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x77JS8MS120779;
 Wed, 7 Aug 2019 14:28:09 -0500
Subject: Re: [RESEND PATCH 00/10] ARM: davinci: use the new clocksource driver
To: Bartosz Golaszewski <brgl@bgdev.pl>, Kevin Hilman <khilman@kernel.org>
References: <20190722131748.30319-1-brgl@bgdev.pl>
 <CAMRc=Mes8dEwscGU8LLQ5CcxmUnhBwt2iP0wk1qNRjRwy8CcFA@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <9e5704a3-8169-1575-4027-61d36c5e39b4@ti.com>
Date: Thu, 8 Aug 2019 00:58:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=Mes8dEwscGU8LLQ5CcxmUnhBwt2iP0wk1qNRjRwy8CcFA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_122814_990673_3B4C5D54 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDgvMTkgMTo1OSBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBwb24uLCAy
MiBsaXAgMjAxOSBvIDE1OjE3IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IG5h
cGlzYcWCKGEpOgo+Pgo+PiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lA
YmF5bGlicmUuY29tPgo+Pgo+PiBTZWtoYXIsCj4+Cj4+IHRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBz
d2l0Y2ggRGFWaW5jaSB0byB1c2luZyB0aGUgbmV3IGNsb2Nrc291cmNlIGRyaXZlciB3aGljaAo+
PiBpcyBub3cgdXBzdHJlYW0uIFRoZXkgYXJlIHJlYmFzZWQgb24gdG9wIG9mIHY1LjMtcmMxLiBB
ZGRpdGlvbmFsbHkgdGhlCj4+IGZvbGxvd2luZyB0d28gcGF0Y2hlcyB3ZXJlIHJldmVydGVkIGxv
Y2FsbHkgZHVlIHRvIGEgcmVncmVzc2lvbiBpbiB2NS4zLXJjMQo+PiBhYm91dCB3aGljaCB0aGUg
cmVsZXZhbnQgbWFpbnRhaW5lcnMgaGF2ZSBiZWVuIGFscmVhZHkgbm90aWZpZWQ6Cj4+Cj4+ICAg
MmVlZjEzOTlhODY2IG1vZHVsZXM6IGZpeCBCVUcgd2hlbiBsb2FkIG1vZHVsZSB3aXRoIHJvZGF0
YT1uCj4+ICAgOTM2NTFmODBkY2I2IG1vZHVsZXM6IGZpeCBjb21waWxlIGVycm9yIGlmIGRvbid0
IGhhdmUgc3RyaWN0IG1vZHVsZSByd3gKPj4KPj4gQmFydG9zeiBHb2xhc3pld3NraSAoMTApOgo+
PiAgIEFSTTogZGF2aW5jaTogZW5hYmxlIHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIgZm9yIERUIG1v
ZGUKPj4gICBBUk06IGRhdmluY2k6IFdBUk5fT04oKSBpZiBjbGtfZ2V0KCkgZmFpbHMKPj4gICBB
Uk06IGRhdmluY2k6IGRhODUwOiBzd2l0Y2ggdG8gdXNpbmcgdGhlIGNsb2Nrc291cmNlIGRyaXZl
cgo+PiAgIEFSTTogZGF2aW5jaTogZGE4MzA6IHN3aXRjaCB0byB1c2luZyB0aGUgY2xvY2tzb3Vy
Y2UgZHJpdmVyCj4+ICAgQVJNOiBkYXZpbmNpOiBtb3ZlIHRpbWVyIGRlZmluaXRpb25zIHRvIGRh
dmluY2kuaAo+PiAgIEFSTTogZGF2aW5jaTogZG0zNTU6IHN3aXRjaCB0byB1c2luZyB0aGUgY2xv
Y2tzb3VyY2UgZHJpdmVyCj4+ICAgQVJNOiBkYXZpbmNpOiBkbTM2NTogc3dpdGNoIHRvIHVzaW5n
IHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIKPj4gICBBUk06IGRhdmluY2k6IGRtNjQ0eDogc3dpdGNo
IHRvIHVzaW5nIHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIKPj4gICBBUk06IGRhdmluY2k6IGRtNjQ2
eDogc3dpdGNoIHRvIHVzaW5nIHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIKPj4gICBBUk06IGRhdmlu
Y2k6IHJlbW92ZSBsZWdhY3kgdGltZXIgc3VwcG9ydAo+Pgo+PiAgYXJjaC9hcm0vS2NvbmZpZyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4+ICBhcmNoL2FybS9tYWNoLWRhdmlu
Y2kvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAzICstCj4+ICBhcmNoL2FybS9tYWNoLWRhdmlu
Y2kvZGE4MzAuYyAgICAgICAgICAgICAgIHwgIDQ1ICstLQo+PiAgYXJjaC9hcm0vbWFjaC1kYXZp
bmNpL2RhODUwLmMgICAgICAgICAgICAgICB8ICA1MCArLS0KPj4gIGFyY2gvYXJtL21hY2gtZGF2
aW5jaS9kYXZpbmNpLmggICAgICAgICAgICAgfCAgIDMgKwo+PiAgYXJjaC9hcm0vbWFjaC1kYXZp
bmNpL2RldmljZXMtZGE4eHguYyAgICAgICB8ICAgMSAtCj4+ICBhcmNoL2FybS9tYWNoLWRhdmlu
Y2kvZGV2aWNlcy5jICAgICAgICAgICAgIHwgIDE5IC0KPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5j
aS9kbTM1NS5jICAgICAgICAgICAgICAgfCAgMjggKy0KPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5j
aS9kbTM2NS5jICAgICAgICAgICAgICAgfCAgMjYgKy0KPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5j
aS9kbTY0NHguYyAgICAgICAgICAgICAgfCAgMjggKy0KPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5j
aS9kbTY0NnguYyAgICAgICAgICAgICAgfCAgMjggKy0KPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5j
aS9pbmNsdWRlL21hY2gvY29tbW9uLmggfCAgMTcgLQo+PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNp
L2luY2x1ZGUvbWFjaC90aW1lLmggICB8ICAzNSAtLQo+PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNp
L3RpbWUuYyAgICAgICAgICAgICAgICB8IDQxNCAtLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgMTQg
ZmlsZXMgY2hhbmdlZCwgMTEwIGluc2VydGlvbnMoKyksIDU4OCBkZWxldGlvbnMoLSkKPj4gIGRl
bGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLWRhdmluY2kvaW5jbHVkZS9tYWNoL3RpbWUu
aAo+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtZGF2aW5jaS90aW1lLmMKPj4K
Pj4gLS0KPj4gMi4yMS4wCj4+Cj4gCj4gSGkgU2VraGFyLAo+IAo+IGEgZ2VudGxlIHBpbmcuIElz
IHRoaXMgc2VyaWVzIGdvb2QgdG8gZ28gaW4gZm9yIHY1LjQ/CgpIaSBCYXJ0b3N6LCBhIHF1aWNr
IHRlc3Qgc2hvd3MgdGhhdCBETTM2NSBmYWlscyB0byBib290IGFmdGVyIHRoaXMuIENhbgp5b3Ug
cGxlYXNlIHNlZSBpZiB0aGVyZSBpcyBhbnl0aGluZyBvYnZpb3VzbHkgd3JvbmcgZm9yIHRoYXQg
U29DLiBSZXN0CnNlZW1zIHRvIGJlIG9rYXkuCgpUaGFua3MsClNla2hhcgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
