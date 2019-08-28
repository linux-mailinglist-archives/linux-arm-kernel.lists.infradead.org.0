Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331F29FC26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaCYJ9gqHPMrvKET0juZ9D9IoE9s9o5KyK12IeYMEPY=; b=nVPujJ8HAHnnb2
	mq3WjTTYnff2DQ2IYClHG+Qaxmta1xHoFOb8PJRaf2ZaGZk700rQu9Y6Nbzmk8QsW114Ya/2YAWHu
	GUDap3tfzxy4hbUs9qVxi3gyFF3Li8k1aiVhSf086gQdZuCyHf86qmIhvEsLAK/TK8+ybh57yIoDV
	89QXmG0GIjUZnGeUnIik8vY/96TcFVjqqCPMcFzMW2dY29B9id6Yqh+gkgFr84KX6iithCrQE1Iw2
	NkrUtsXr+rSxJhYcmsUNDJ4kasbg8Y5OFPm5a0CDr4XmWkbQtCg+9EsKcGaPwQ9WA181PkSqElsKm
	mhAxQFH2MBAxcI2jidQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2seJ-0007Ep-AO; Wed, 28 Aug 2019 07:45:47 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sds-0007EA-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:45:22 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7iS8x119347;
 Wed, 28 Aug 2019 02:44:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566978268;
 bh=6awUWFtOdU1O63SCHM3c+fsnfHIDWdFPidD7RW4ydzA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=dXFZXrQn0LpYrcwwqUWffJc2W1zM23THN6BmgVe/l05NZfQHM/LAEr5yRh6RwL0Sc
 FvGCTpRXKPABXKQgbzDpBM/8W/GQrSvk/fI8CHLjV3OtwXxe5PqIqoJCDjo08+na3i
 5WzRIxyRHfkSzbjjzMAdqMkbXywtkrlcQQnfbbi0=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7iSrs109129
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:44:28 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:44:27 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:44:28 -0500
Received: from [172.24.145.97] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7iOF3048604;
 Wed, 28 Aug 2019 02:44:25 -0500
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Bartosz Golaszewski <brgl@bgdev.pl>, Arnd Bergmann <arnd@arndb.de>
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
 <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
 <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <27eb964a-bc6c-3a0d-c2c4-48e908465986@ti.com>
Date: Wed, 28 Aug 2019 13:14:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_004520_668536_370A1DF5 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDgvMTkgMTowMyBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBwb24uLCA1
IHNpZSAyMDE5IG8gMTA6MzEgQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gbmFw
aXNhxYIoYSk6Cj4+Cj4+IGN6dy4sIDI1IGxpcCAyMDE5IG8gMTY6NTcgQXJuZCBCZXJnbWFubiA8
YXJuZEBhcm5kYi5kZT4gbmFwaXNhxYIoYSk6Cj4+Pgo+Pj4gT24gVGh1LCBKdWwgMjUsIDIwMTkg
YXQgMzoxMyBQTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZToKPj4+
Pgo+Pj4+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5j
b20+Cj4+Pj4KPj4+PiBUaGlzIHNlcmllcyBtYWtlcyBEYVZpbmNpIHBhcnQgb2YgdGhlIG11bHRp
cGxhdGZvcm0gYnVpbGQgZm9yIEFSTSB2NS4KPj4+Pgo+Pj4+IEZpcnN0IHRocmVlIHBhdGNoZXMg
Zml4IGJ1aWxkIGVycm9ycyBzcG90dGVkIGFuZCBmaXhlZCBieSBBcm5kIHdpdGggdjEuCj4+Pj4K
Pj4+PiBUaGUgZm91cnRoIHBhdGNoIGFkZHMgbmVjZXNzYXJ5IGJpdHMgYW5kIHBpZWNlcyBmb3Ig
ZGF2aW5jaSB0byBzdXBwb3J0Cj4+Pj4gbXVsdGlwbGF0Zm9ybSBidWlsZCBhbmQgdGhlIGxhc3Qg
b25lIGFjdHVhbGx5IGFkZHMgYWxsIGRhdmluY2kgYm9hcmRzCj4+Pj4gdG8gbXVsdGlfdjVfZGVm
Y29uZmlnLgo+Pj4+Cj4+Pj4gVGVzdGVkIG9uIGRhODUwLWxjZGsgd2l0aCBib3RoIG11bHRpX3Y1
IGFzIHdlbGwgYXMgZGF2aW5jaV9hbGwgZGVmY29uZmlncy4KPj4+Pgo+Pj4+IHYxIC0+IHYyOgo+
Pj4+IC0gYWRkZWQgcGF0Y2hlcyBmcm9tIEFybmQgdGhhdCBmaXggYnVpbGQgZXJyb3JzIHNwb3R0
ZWQgd2hlbiBidWlsZGluZwo+Pj4+ICAgcmFuZG9tIGNvbmZpZ3VyYXRpb25zIChtdWNoIGFwcHJl
Y2lhdGVkKQo+Pj4+IC0gcmViYXNlZCBvbiB0b3Agb2YgdjUuMy1yYzEKPj4+Cj4+Pj4gQXJuZCBC
ZXJnbWFubiAoMyk6Cj4+Pj4gc3RhZ2luZzogbWVkaWEvZGF2aW5jaV92cGZlOiBmaXggcGlubXV4
IHNldHVwIGNvbXBpbGF0aW9uCj4+Pj4gIG1lZGlhOiBkYXZpbmNpLXZwYmU6IHJlbW92ZSBvYnNv
bGV0ZSBpbmNsdWRlcwo+Pj4+ICBkYXZpbmNpOiBmaXggc2xlZXAuUyBidWlsZCBlcnJvciBvbiBB
Uk12NAo+Pj4+Cj4+Pj4gQmFydG9zeiBHb2xhc3pld3NraSAoMik6Cj4+Pj4gIEFSTTogZGF2aW5j
aTogc3VwcG9ydCBtdWx0aXBsYXRmb3JtIGJ1aWxkIGZvciBBUk0gdjUKPj4+PiAgQVJNOiBtdWx0
aV92NV9kZWZjb25maWc6IG1ha2UgRGFWaW5jaSBwYXJ0IG9mIHRoZSBBUk0gdjUgbXVsdGlwbGF0
Zm9ybSBidWlsZAo+Pj4KPj4+Cj4+PiBUaGFua3MgYSBsb3QgZm9yIHJlcG9zdGluZyB0aGUgc2Vy
aWVzIQo+Pj4KPj4+IEkgd29uZGVyIGhvdyB3ZSBzaG91ZCBkZWFsIHdpdGggdGhlIGRlcGVuZGVu
Y2llcyBub3cgdGhhdCB0aGUgdHdvIG1lZGlhCj4+PiBwYXRjaGVzIGdvdCBtZXJnZWQgaW4gdGhl
IGxpbnV4LW1lZGlhIHRyZWUuCj4+Pgo+Pj4gSXQgd291bGQgYmUgdGVtcHRpbmcgdG8ganVzdCBt
ZXJnZSB0aGUgYXJjaC9hcm0vIGNoYW5nZXMsIGJ1dCB0aGF0IGNyZWF0ZXMKPj4+IGEgYmlzZWN0
aW9uIHByb2JsZW0gd2hlbiB0aGUgdnBiZSBkcml2ZXIgaXMgZW5hYmxlZC4gSSBkb24ndCBjYXJl
Cj4+PiBhYm91dCB0aGUgc3RhZ2luZyBkcml2ZXIgcmVhbGx5IGFzIHRoYXQgb25lIGlzIGJyb2tl
biBhbnl3YXksIGJ1dCBpbmNsdWRpbmcKPj4+IHRoZSAibWVkaWE6IGRhdmluY2ktdnBiZTogcmVt
b3ZlIG9ic29sZXRlIGluY2x1ZGVzIiBmaXggd291bGQgYmUgYmV0dGVyCj4+PiBoZXJlLgo+Pj4K
Pj4+IE1hdXJvLCBhbnkgaWRlYSBmb3IgaG93IHRvIGhhbmRsZSB0aGF0PyBTaG91bGQgd2UgYXBw
bHkgYW4gaWRlbnRpY2FsCj4+PiBwYXRjaCB0byB0aGUgZGF2aW5jaSB0cmVlLCBvciBtYXliZSBv
bmx5IGhhdmUgaXQgdGhlIEFSTSB0cmVlIGFuZCB5b3UKPj4+IGRyb3AgaXQgZnJvbSB5b3VyIHRy
ZWUgKEkgZG9uJ3Qga25vdyBpZiB5b3UgaGF2ZSBhIHJ1bGUgYWdhaW5zdCByZWJhc2luZykuCj4+
PiBTb3JyeSBmb3Igbm90IGNvb3JkaW5hdGluZyB3aXRoIEJhcnRvc3ogYmVmb3JlIEkgc2VudCB0
aGUgcGF0Y2ggYWdhaW4KPj4+IGVhcmxpZXIgdGhpcyB3ZWVrLgo+Pj4KPj4+Cj4+PiAgICAgICBB
cm5kCj4+Cj4+IEhpIEFybmQsCj4+Cj4+IGlzIHRoZXJlIGFueSBhY3Rpb24gcmVxdWlyZWQgZnJv
bSBtZSBmb3IgdGhpcyBzZXJpZXM/Cj4+Cj4+IEJhcnQKPiAKPiBQaW5nLgoKSSBkb250IHRoaW5r
IHRoZSBtdWx0aS1wbGF0Zm9ybSBwYXJ0cyBjYW4gYmUgbWVyZ2VkIGluIHY1LjQgc2luY2Ugd2UK
ZG9udCBoYXZlIERNMzY1IGNvbnZlcnRlZCBzdWNjZXNzZnVsbHkgdG8gdXNlIGNsb2Nrc291cmNl
IGRyaXZlciB5ZXQuCgpCdXQgb3RoZXIgcGFydHMgb2YgdGhlIHNlcmllcyBjYW4gYmUgbWVyZ2Vk
IGFuZCBob3BlZnVsbHkgd2UgcmVzb2x2ZQp0aGF0IHBlbmRpbmcgaXNzdWUgZm9yIHY1LjUKClRo
YW5rcywKU2VraGFyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
