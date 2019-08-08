Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B91085E09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaVodW7zIj2XMXBLujTOfL3yL/n9EfV5ArNMAPhTHv0=; b=TAjmUQ/tvfgyv0
	8maOc7eZHkUZVP99Pe2jEiFn1wv59jr725RpyZEWPPtdQuWSX25ChAuTqQBs5n2LK1TTj/Wfy3xAN
	reT1rNr/7mgZqaa7meXxFs4Q3tuxeFn6jf+UBjM4q0YQSTVYqNUWX9zC3qFzzxU5dkpEd18w0CCnj
	5hb92kEyiGS2CXegm+K7RqZvI7vaAUHrtYN1FdgBHr0P2g8EjEMPYLp3UMb7qII3WTiopKi3b99ps
	R7KHM6XewTMk7VW/TGC8WECVtk6KeTjti2TliN3q6tY14SEl0sounDMjn2vSOCF2yWer2EfxIe+kN
	kHVAOAzuwRrRLS2ROZsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveYu-0006Wj-U3; Thu, 08 Aug 2019 09:18:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveXy-0006IV-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:17:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x789GZ3Q049234;
 Thu, 8 Aug 2019 04:16:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565255795;
 bh=AFN9O6o9mO07bhZK9Vv8bZWmYFDF2zWncPLyZjoemxY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Kukr2OujeHdmin+Dhy+sXx3hc0wul8G91sEguAj80/HXxgbUG05pusdWWLB7jpdF8
 cU5G1SnN5QRrxscoB3W7vT2/CXDLlhTRITju7Sfz6RXmxku781Bud84p+FwmHUQofk
 q+fzFMCBaYDz1nTKAErgvlR8ROTd/JGHypENrBX8=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x789GZev114711
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 8 Aug 2019 04:16:35 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 8 Aug
 2019 04:16:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 8 Aug 2019 04:16:34 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x789GVX8101829;
 Thu, 8 Aug 2019 04:16:32 -0500
Subject: Re: [PATCH v2 0/9] ARM: davinci: da850-evm: remove more legacy GPIO
 calls
To: Bartosz Golaszewski <brgl@bgdev.pl>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, David Lechner
 <david@lechnology.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20190722134423.26555-1-brgl@bgdev.pl>
 <CAMRc=Me51RgQu8VK70dy=1OhmHeKo40HLxfsvp2nD5UC+Mzb=w@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <408dc72e-eb4e-ea8d-2c5d-f7300a7a296d@ti.com>
Date: Thu, 8 Aug 2019 14:46:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=Me51RgQu8VK70dy=1OhmHeKo40HLxfsvp2nD5UC+Mzb=w@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_021722_900708_6D34282A 
X-CRM114-Status: GOOD (  16.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-fbdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDgvMTkgMjowMCBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBwb24uLCAy
MiBsaXAgMjAxOSBvIDE1OjQ0IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IG5h
cGlzYcWCKGEpOgo+Pgo+PiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lA
YmF5bGlicmUuY29tPgo+Pgo+PiBUaGlzIGlzIGFub3RoZXIgc21hbGwgc3RlcCBvbiB0aGUgcGF0
aCB0byBsaWJlcmF0aW5nIGRhdmluY2kgZnJvbSBsZWdhY3kKPj4gR1BJTyBBUEkgY2FsbHMgYW5k
IHNocmlua2luZyB0aGUgZGF2aW5jaSBHUElPIGRyaXZlciBieSBub3QgaGF2aW5nIHRvCj4+IHN1
cHBvcnQgdGhlIGJhc2UgR1BJTyBudW1iZXIgYW55bW9yZS4KPj4KPj4gVGhpcyB0aW1lIHdlJ3Jl
IHJlbW92aW5nIHRoZSBsZWdhY3kgY2FsbHMgdXNlZCBpbmRpcmVjdGx5IGJ5IHRoZSBMQ0RDCj4+
IGZiZGV2IGRyaXZlci4KPj4KPj4gRmlyc3QgdHdvIHBhdGNoZXMgZW5hYmxlIHRoZSBHUElPIGJh
Y2tsaWdodCBkcml2ZXIgaW4KPj4gZGF2aW5jaV9hbGxfZGVmY29uZmlnLgo+Pgo+PiBQYXRjaCAz
LzEyIG1vZGVscyB0aGUgYmFja2xpZ2h0IEdQSU8gYXMgYW4gYWN0dWFsIEdQSU8gYmFja2xpZ2h0
IGRldmljZS4KPj4KPj4gUGF0Y2hlcyA0LTYgZXh0ZW5kIHRoZSBmYmRldiBkcml2ZXIgd2l0aCBy
ZWd1bGF0b3Igc3VwcG9ydCBhbmQgY29udmVydAo+PiB0aGUgZGE4NTAtZXZtIGJvYXJkIGZpbGUg
dG8gdXNpbmcgaXQuCj4+Cj4+IExhc3QgdGhyZWUgcGF0Y2hlcyBhcmUgaW1wcm92ZW1lbnRzIHRv
IHRoZSBkYTh4eCBmYmRldiBkcml2ZXIgc2luY2UKPj4gd2UncmUgYWxyZWFkeSB0b3VjaGluZyBp
dCBpbiB0aGlzIHNlcmllcy4KPj4KPj4gdjEgLT4gdjI6Cj4+IC0gZG9wcGVkIHRoZSBncGlvLWJh
Y2tsaWdodCBwYXRjaGVzIGZyb20gdGhpcyBzZXJpZXMgYXMgc2luY2UgdjUuMy1yYzEgd2UKPj4g
ICBjYW4gcHJvYmUgdGhlIG1vZHVsZSB3aXRoIG5laXRoZXIgdGhlIE9GIG5vZGUgbm9yIHBsYXRm
b3JtIGRhdGEKPj4gLSBjb2xsZWN0ZWQgcmV2aWV3IGFuZCBhY2sgdGFncwo+PiAtIHJlYmFzZWQg
b24gdG9wIG9mIHY1LjMtcmMxCj4+Cj4+IEJhcnRvc3ogR29sYXN6ZXdza2kgKDkpOgo+PiAgIEFS
TTogZGF2aW5jaTogcmVmcmVzaCBkYXZpbmNpX2FsbF9kZWZjb25maWcKPj4gICBBUk06IGRhdmlu
Y2lfYWxsX2RlZmNvbmZpZzogZW5hYmxlIEdQSU8gYmFja2xpZ2h0Cj4+ICAgQVJNOiBkYXZpbmNp
OiBkYTg1MC1ldm06IG1vZGVsIHRoZSBiYWNrbGlnaHQgR1BJTyBhcyBhbiBhY3R1YWwgZGV2aWNl
Cj4+ICAgZmJkZXY6IGRhOHh4OiBhZGQgc3VwcG9ydCBmb3IgYSByZWd1bGF0b3IKPj4gICBBUk06
IGRhdmluY2k6IGRhODUwLWV2bTogc3dpdGNoIHRvIHVzaW5nIGEgZml4ZWQgcmVndWxhdG9yIGZv
ciBsY2RjCj4+ICAgZmJkZXY6IGRhOHh4OiByZW1vdmUgcGFuZWxfcG93ZXJfY3RybCgpIGNhbGxi
YWNrIGZyb20gcGxhdGZvcm0gZGF0YQo+PiAgIGZiZGV2OiBkYTh4eC1mYjogdXNlIGRldm1fcGxh
dGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpCj4+ICAgZmJkZXY6IGRhOHh4LWZiOiBkcm9wIGEgcmVk
dW5kYW50IGlmCj4+ICAgZmJkZXY6IGRhOHh4OiB1c2UgcmVzb3VyY2UgbWFuYWdlbWVudCBmb3Ig
ZG1hCj4+Cj4+ICBhcmNoL2FybS9jb25maWdzL2RhdmluY2lfYWxsX2RlZmNvbmZpZyAgfCAgMjcg
KystLS0tCj4+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQtZGE4NTAtZXZtLmMgfCAgOTAg
KysrKysrKysrKysrKy0tLS0tCj4+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2RhOHh4LWZiLmMgICAg
ICAgICAgfCAxMTggKysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4+ICBpbmNsdWRlL3ZpZGVvL2Rh
OHh4LWZiLmggICAgICAgICAgICAgICAgfCAgIDEgLQo+PiAgNCBmaWxlcyBjaGFuZ2VkLCAxNDEg
aW5zZXJ0aW9ucygrKSwgOTUgZGVsZXRpb25zKC0pCj4+Cj4+IC0tCj4+IDIuMjEuMAo+Pgo+IAo+
IEhpIFNla2hhciwKPiAKPiB0aGUgZmJkZXYgcGF0Y2hlcyBoYXZlIGJlZW4gYWNrZWQgYnkgQmFy
dGxvbWllai4gSSB0aGluayB0aGUgZW50aXJlCj4gc2VyaWVzIGNhbiBnbyB0aHJvdWdoIHRoZSBB
Uk0tU29DIHRyZWUuCgpBcHBsaWVkIGZvciB2NS40LiBXaWxsIHF1ZXVlIHRocm91Z2ggQVJNLVNv
Qy4KClRoYW5rcywKU2VraGFyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
