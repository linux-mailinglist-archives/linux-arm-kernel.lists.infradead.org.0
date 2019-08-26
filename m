Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429589D0AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuFXjSgYXmc/V1vqNALKctlv2tgoVHCrELuAMJqItjw=; b=hv5F89eACLvDtK
	extsfTHLC8f7r1CF3fXmBGCs0RusUHKhlx+DkJ9nH2K5IFWYtTervwRYKPBCT2S98u0ddqaBLquhw
	lQktTItS+83h+R8hEX74SpuwkObDy92FYJaCNcMg4joAMXOQQKZdBMr6uAo6mPNY4vCpl3WQr2PF9
	5aXxzIbTBfUzYx4drF0F7alrqQ71Q5zrIg6lSODxKoYpglhAFT8rTv9iqgAowtMUfqUXsFSXvHtpz
	11Ndiy1FzSEcNvtuuRdurh+e3QSvWi7EEYjHItlxHzkQ7Tt0YOb5kACUfG0GOyoEhoKDu462bEIHM
	+I3tycy60weUz+mAOOgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F7g-0003Pq-JE; Mon, 26 Aug 2019 13:33:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F7M-0003PS-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 13:33:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QDX3LU077455;
 Mon, 26 Aug 2019 08:33:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566826383;
 bh=5ib+f8yaflZ96ADoAghg64XyzCji5SX+hhLr0ML8V5E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=a09tl9pZ2wPo186xwLQtz6WlnrRSjawd2u3v+s7jJWWeYxaFgMKWQ4Sg92m/0zlA8
 5Q2clWERDa7JZ/4vt9RUmTdfmmu5/gSSj9g8aDzTR989awNWQZcJ/2+QO5Rlq17HCP
 5lvneeeGBmK6A5tbAZ1LUnJfSWvyTRVq4S67OoZE=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QDX3rr011139
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 08:33:03 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 08:33:03 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 08:33:02 -0500
Received: from [172.24.145.97] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QDX0tF044857;
 Mon, 26 Aug 2019 08:33:01 -0500
Subject: Re: [RESEND PATCH 00/10] ARM: davinci: use the new clocksource driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
 <CAMRc=Mes8dEwscGU8LLQ5CcxmUnhBwt2iP0wk1qNRjRwy8CcFA@mail.gmail.com>
 <9e5704a3-8169-1575-4027-61d36c5e39b4@ti.com>
 <CAMRc=MeTgNf5Xsv6dSY0LJbsAOuoHcfB-x1riMwQkWtVc7wddQ@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <5bcac6b1-0377-4a0f-0aea-bcc6c5e34c9a@ti.com>
Date: Mon, 26 Aug 2019 19:03:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=MeTgNf5Xsv6dSY0LJbsAOuoHcfB-x1riMwQkWtVc7wddQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_063308_896905_1B472C59 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDgvMTkgMToxMSBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiDFm3IuLCA3
IHNpZSAyMDE5IG8gMjE6MjggU2VraGFyIE5vcmkgPG5zZWtoYXJAdGkuY29tPiBuYXBpc2HFgihh
KToKPj4KPj4gT24gMDUvMDgvMTkgMTo1OSBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToK
Pj4+IHBvbi4sIDIyIGxpcCAyMDE5IG8gMTU6MTcgQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBi
Z2Rldi5wbD4gbmFwaXNhxYIoYSk6Cj4+Pj4KPj4+PiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tp
IDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+Pj4+Cj4+Pj4gU2VraGFyLAo+Pj4+Cj4+Pj4g
dGhlIGZvbGxvd2luZyBwYXRjaGVzIHN3aXRjaCBEYVZpbmNpIHRvIHVzaW5nIHRoZSBuZXcgY2xv
Y2tzb3VyY2UgZHJpdmVyIHdoaWNoCj4+Pj4gaXMgbm93IHVwc3RyZWFtLiBUaGV5IGFyZSByZWJh
c2VkIG9uIHRvcCBvZiB2NS4zLXJjMS4gQWRkaXRpb25hbGx5IHRoZQo+Pj4+IGZvbGxvd2luZyB0
d28gcGF0Y2hlcyB3ZXJlIHJldmVydGVkIGxvY2FsbHkgZHVlIHRvIGEgcmVncmVzc2lvbiBpbiB2
NS4zLXJjMQo+Pj4+IGFib3V0IHdoaWNoIHRoZSByZWxldmFudCBtYWludGFpbmVycyBoYXZlIGJl
ZW4gYWxyZWFkeSBub3RpZmllZDoKPj4+Pgo+Pj4+ICAgMmVlZjEzOTlhODY2IG1vZHVsZXM6IGZp
eCBCVUcgd2hlbiBsb2FkIG1vZHVsZSB3aXRoIHJvZGF0YT1uCj4+Pj4gICA5MzY1MWY4MGRjYjYg
bW9kdWxlczogZml4IGNvbXBpbGUgZXJyb3IgaWYgZG9uJ3QgaGF2ZSBzdHJpY3QgbW9kdWxlIHJ3
eAo+Pj4+Cj4+Pj4gQmFydG9zeiBHb2xhc3pld3NraSAoMTApOgo+Pj4+ICAgQVJNOiBkYXZpbmNp
OiBlbmFibGUgdGhlIGNsb2Nrc291cmNlIGRyaXZlciBmb3IgRFQgbW9kZQo+Pj4+ICAgQVJNOiBk
YXZpbmNpOiBXQVJOX09OKCkgaWYgY2xrX2dldCgpIGZhaWxzCj4+Pj4gICBBUk06IGRhdmluY2k6
IGRhODUwOiBzd2l0Y2ggdG8gdXNpbmcgdGhlIGNsb2Nrc291cmNlIGRyaXZlcgo+Pj4+ICAgQVJN
OiBkYXZpbmNpOiBkYTgzMDogc3dpdGNoIHRvIHVzaW5nIHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIK
Pj4+PiAgIEFSTTogZGF2aW5jaTogbW92ZSB0aW1lciBkZWZpbml0aW9ucyB0byBkYXZpbmNpLmgK
Pj4+PiAgIEFSTTogZGF2aW5jaTogZG0zNTU6IHN3aXRjaCB0byB1c2luZyB0aGUgY2xvY2tzb3Vy
Y2UgZHJpdmVyCj4+Pj4gICBBUk06IGRhdmluY2k6IGRtMzY1OiBzd2l0Y2ggdG8gdXNpbmcgdGhl
IGNsb2Nrc291cmNlIGRyaXZlcgo+Pj4+ICAgQVJNOiBkYXZpbmNpOiBkbTY0NHg6IHN3aXRjaCB0
byB1c2luZyB0aGUgY2xvY2tzb3VyY2UgZHJpdmVyCj4+Pj4gICBBUk06IGRhdmluY2k6IGRtNjQ2
eDogc3dpdGNoIHRvIHVzaW5nIHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIKPj4+PiAgIEFSTTogZGF2
aW5jaTogcmVtb3ZlIGxlZ2FjeSB0aW1lciBzdXBwb3J0Cj4+Pj4KPj4+PiAgYXJjaC9hcm0vS2Nv
bmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4+Pj4gIGFyY2gvYXJtL21h
Y2gtZGF2aW5jaS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDMgKy0KPj4+PiAgYXJjaC9hcm0v
bWFjaC1kYXZpbmNpL2RhODMwLmMgICAgICAgICAgICAgICB8ICA0NSArLS0KPj4+PiAgYXJjaC9h
cm0vbWFjaC1kYXZpbmNpL2RhODUwLmMgICAgICAgICAgICAgICB8ICA1MCArLS0KPj4+PiAgYXJj
aC9hcm0vbWFjaC1kYXZpbmNpL2RhdmluY2kuaCAgICAgICAgICAgICB8ICAgMyArCj4+Pj4gIGFy
Y2gvYXJtL21hY2gtZGF2aW5jaS9kZXZpY2VzLWRhOHh4LmMgICAgICAgfCAgIDEgLQo+Pj4+ICBh
cmNoL2FybS9tYWNoLWRhdmluY2kvZGV2aWNlcy5jICAgICAgICAgICAgIHwgIDE5IC0KPj4+PiAg
YXJjaC9hcm0vbWFjaC1kYXZpbmNpL2RtMzU1LmMgICAgICAgICAgICAgICB8ICAyOCArLQo+Pj4+
ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZG0zNjUuYyAgICAgICAgICAgICAgIHwgIDI2ICstCj4+
Pj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9kbTY0NHguYyAgICAgICAgICAgICAgfCAgMjggKy0K
Pj4+PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2RtNjQ2eC5jICAgICAgICAgICAgICB8ICAyOCAr
LQo+Pj4+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvaW5jbHVkZS9tYWNoL2NvbW1vbi5oIHwgIDE3
IC0KPj4+PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2luY2x1ZGUvbWFjaC90aW1lLmggICB8ICAz
NSAtLQo+Pj4+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvdGltZS5jICAgICAgICAgICAgICAgIHwg
NDE0IC0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4gIDE0IGZpbGVzIGNoYW5nZWQsIDExMCBpbnNl
cnRpb25zKCspLCA1ODggZGVsZXRpb25zKC0pCj4+Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybS9tYWNoLWRhdmluY2kvaW5jbHVkZS9tYWNoL3RpbWUuaAo+Pj4+ICBkZWxldGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL3RpbWUuYwo+Pj4+Cj4+Pj4gLS0KPj4+PiAyLjIx
LjAKPj4+Pgo+Pj4KPj4+IEhpIFNla2hhciwKPj4+Cj4+PiBhIGdlbnRsZSBwaW5nLiBJcyB0aGlz
IHNlcmllcyBnb29kIHRvIGdvIGluIGZvciB2NS40Pwo+Pgo+PiBIaSBCYXJ0b3N6LCBhIHF1aWNr
IHRlc3Qgc2hvd3MgdGhhdCBETTM2NSBmYWlscyB0byBib290IGFmdGVyIHRoaXMuIENhbgo+PiB5
b3UgcGxlYXNlIHNlZSBpZiB0aGVyZSBpcyBhbnl0aGluZyBvYnZpb3VzbHkgd3JvbmcgZm9yIHRo
YXQgU29DLiBSZXN0Cj4+IHNlZW1zIHRvIGJlIG9rYXkuCj4+Cj4+IFRoYW5rcywKPj4gU2VraGFy
Cj4gCj4gSGkgU2VraGFyLAo+IAo+IGp1c3QgdmVyaWZpZWQgb24gS2V2aW4ncyBkbTM2NS1ldm0g
cmViYXNlZCBvbiB0b3Agb2YgdjUuMy1yYzMgYW5kIGl0Cj4gYm9vdHMgZmluZS4gSSBrbm93IHRo
YXQgZGF2aW5jaSBmYWlsZWQgdG8gYm9vdCBhdCB2NS4zLXJjMS4KPiAKPiBMZXQgbWUga25vdyBp
ZiBJIGNhbiBoZWxwIHdpdGggZGVidWdnaW5nLgoKQWRkZWQgc2VyaWVzIGV4Y2VwdCA3LzEwIGFu
ZCAxMC8xMCB0byB2NS40L3NvYy4gRGVidWcgb2YgRE0zNjUgaXNzdWUgaXMKc3RpbGwgZ29pbmcg
b24gb2ZmbGluZS4gRE0zNjUgbWlncmF0aW9uIGlzIHBvc3Rwb25lZCBwZW5kaW5nIGNvbmNsdXNp
b24Kb2YgdGhhdCBkZWJ1Zy4KClRoYW5rcywKU2VraGFyCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
