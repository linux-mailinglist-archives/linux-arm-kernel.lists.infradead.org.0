Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D2AF6F52
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:00:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3wB1F+c8V3Zw2vYMNUDtetcboxOlhJSCBgIH2/jLzU=; b=Dgl+gdM4SAPN6r
	XqVZMwbBXGTjgua0F4pfxVv6mNWLAjlkH80B+N2h2mWvycL5Itjqzw3VTl+EIEjRXdnr04FcwGanl
	+yhDs93oid383da4g/m1JKIrTJ0XN009TPhIVCW0wtcXUnElzKQEJQCbrAOQuNd2NkXzB8UiackR8
	B8wxO/P9xKQvUxD0E6b9v6lgnrfZyP+8ePSj9ha+l750vQLIJDOruGgn+5AnUepC3yyi8uxOzW4Gx
	bDlMG3bbMsqG4IlGMdyfYSYyCxWBbtn+Ea78vXqnQzJJI8AKXJzaGLNuIOvmJsAb4xbRE7M+RiDZP
	SJqPf8/g3KM2R653bFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4cD-0001fn-KT; Mon, 11 Nov 2019 08:00:01 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4c1-0001fL-3c
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:59:50 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB7xf7o026902;
 Mon, 11 Nov 2019 01:59:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573459181;
 bh=Lz8MXx9Ipzrc2GJ3x5jttN6h2LWeeejmmWOpGkLe3GA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=b18hgvTxSvyb/8sGeN9WquAaxtxGP5I1R2C/nuG64urQaoOt5TlTLK3H8ykY6eK2u
 dElAXU8CtAF83saXafzu0I93nyQP6UJtFDdXr/e2amfMp6YhIXrjKS8v+YcQ09Pgih
 pGuPs8g+ea+bfUxIFx75PIqPteOepDlV0BahpAWY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB7xf0J074396
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 01:59:41 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 01:59:39 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 01:59:22 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB7xZZH105987;
 Mon, 11 Nov 2019 01:59:36 -0600
Subject: Re: [PATCH v4 05/15] dmaengine: Add support for reporting DMA cached
 data amount
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-6-peter.ujfalusi@ti.com>
 <20191111043957.GL952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <796d2a17-0807-c0f3-fda8-434357edeccf@ti.com>
Date: Mon, 11 Nov 2019 10:00:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111043957.GL952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_235949_240987_DB38F0EC 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDYuMzksIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gQSBETUEgaGFyZHdhcmUgY2FuIGhhdmUgYmln
IGNhY2hlIG9yIEZJRk8gYW5kIHRoZSBhbW91bnQgb2YgZGF0YSBzaXR0aW5nIGluCj4+IHRoZSBE
TUEgZmFicmljIGNhbiBiZSBhbiBpbnRlcmVzdCBmb3IgdGhlIGNsaWVudHMuCj4+Cj4+IEZvciBl
eGFtcGxlIGluIGF1ZGlvIHdlIHdhbnQgdG8ga25vdyB0aGUgZGVsYXkgaW4gdGhlIGRhdGEgZmxv
dyBhbmQgaW4gY2FzZQo+PiB0aGUgRE1BIGhhdmUgc2lnbmlmaWNhbnRseSBsYXJnZSBGSUZPL2Nh
Y2hlLCBpdCBjYW4gYWZmZWN0IHRoZSBsYXRlbmMvZGVsYXkKPj4KPj4gU2lnbmVkLW9mZi1ieTog
UGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IFRl
cm8gS3Jpc3RvIDx0LWtyaXN0b0B0aS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9kbWEvZG1hZW5n
aW5lLmggICB8IDggKysrKysrKysKPj4gIGluY2x1ZGUvbGludXgvZG1hZW5naW5lLmggfCAyICsr
Cj4+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hL2RtYWVuZ2luZS5oIGIvZHJpdmVycy9kbWEvZG1hZW5naW5lLmgKPj4gaW5k
ZXggNTAxYzBiMDYzZjg1Li5iMGI5NzQ3NTcwN2EgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZG1h
L2RtYWVuZ2luZS5oCj4+ICsrKyBiL2RyaXZlcnMvZG1hL2RtYWVuZ2luZS5oCj4+IEBAIC03Nyw2
ICs3Nyw3IEBAIHN0YXRpYyBpbmxpbmUgZW51bSBkbWFfc3RhdHVzIGRtYV9jb29raWVfc3RhdHVz
KHN0cnVjdCBkbWFfY2hhbiAqY2hhbiwKPj4gIAkJc3RhdGUtPmxhc3QgPSBjb21wbGV0ZTsKPj4g
IAkJc3RhdGUtPnVzZWQgPSB1c2VkOwo+PiAgCQlzdGF0ZS0+cmVzaWR1ZSA9IDA7Cj4+ICsJCXN0
YXRlLT5pbl9mbGlnaHRfYnl0ZXMgPSAwOwo+PiAgCX0KPj4gIAlyZXR1cm4gZG1hX2FzeW5jX2lz
X2NvbXBsZXRlKGNvb2tpZSwgY29tcGxldGUsIHVzZWQpOwo+PiAgfQo+PiBAQCAtODcsNiArODgs
MTMgQEAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9zZXRfcmVzaWR1ZShzdHJ1Y3QgZG1hX3R4X3N0
YXRlICpzdGF0ZSwgdTMyIHJlc2lkdWUpCj4+ICAJCXN0YXRlLT5yZXNpZHVlID0gcmVzaWR1ZTsK
Pj4gIH0KPj4gIAo+PiArc3RhdGljIGlubGluZSB2b2lkIGRtYV9zZXRfaW5fZmxpZ2h0X2J5dGVz
KHN0cnVjdCBkbWFfdHhfc3RhdGUgKnN0YXRlLAo+PiArCQkJCQkgICB1MzIgaW5fZmxpZ2h0X2J5
dGVzKQo+PiArewo+PiArCWlmIChzdGF0ZSkKPj4gKwkJc3RhdGUtPmluX2ZsaWdodF9ieXRlcyA9
IGluX2ZsaWdodF9ieXRlczsKPj4gK30KPj4gKwo+PiAgc3RydWN0IGRtYWVuZ2luZV9kZXNjX2Nh
bGxiYWNrIHsKPj4gIAlkbWFfYXN5bmNfdHhfY2FsbGJhY2sgY2FsbGJhY2s7Cj4+ICAJZG1hX2Fz
eW5jX3R4X2NhbGxiYWNrX3Jlc3VsdCBjYWxsYmFja19yZXN1bHQ7Cj4+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oIGIvaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaAo+PiBp
bmRleCAwZThiNDI2YmJkZTkuLmM0YzUyMTkwMzBhNiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWFlbmdpbmUuaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oCj4+IEBA
IC02ODIsMTEgKzY4MiwxMyBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVz
Y3JpcHRvciAqdHhkX25leHQoc3RydWN0IGRtYV9hc3luY190eF9kZXNjcgo+PiAgICogQHJlc2lk
dWU6IHRoZSByZW1haW5pbmcgbnVtYmVyIG9mIGJ5dGVzIGxlZnQgdG8gdHJhbnNtaXQKPj4gICAq
CW9uIHRoZSBzZWxlY3RlZCB0cmFuc2ZlciBmb3Igc3RhdGVzIERNQV9JTl9QUk9HUkVTUyBhbmQK
Pj4gICAqCURNQV9QQVVTRUQgaWYgdGhpcyBpcyBpbXBsZW1lbnRlZCBpbiB0aGUgZHJpdmVyLCBl
bHNlIDAKPj4gKyAqIEBpbl9mbGlnaHRfYnl0ZXM6IGFtb3VudCBvZiBkYXRhIGluIGJ5dGVzIGNh
Y2hlZCBieSB0aGUgRE1BLgo+PiAgICovCj4+ICBzdHJ1Y3QgZG1hX3R4X3N0YXRlIHsKPj4gIAlk
bWFfY29va2llX3QgbGFzdDsKPj4gIAlkbWFfY29va2llX3QgdXNlZDsKPj4gIAl1MzIgcmVzaWR1
ZTsKPj4gKwl1MzIgaW5fZmxpZ2h0X2J5dGVzOwo+IAo+IFNob3VsZCB3ZSBhZGQgdGhpcyBoZXJl
IG9yIHVzZSB0aGUgZG1hZW5naW5lX3Jlc3VsdCgpCgpJZGVhbGx5IGF0IHRoZSB0aW1lIGRtYWVu
Z2luZV9yZXN1bHQgaXMgdXNlZCAoYXQgdHggY29tcGxldGlvbiBjYWxsYmFjaykKdGhlcmUgc2hv
dWxkIGJlIG5vdGhpbmcgaW4gZmxpZ2h0IDspCgpUaGUgcmVhc29uIHdoeSBpdCBpcyBhZGRlZCB0
byBkbWFfdHhfc3RhdGUgaXMgdGhhdCBjbGllbnRzIGNhbiBjaGVjayBhdAphbnkgdGltZSB3aGls
ZSB0aGUgRE1BIGlzIHJ1bm5pbmcgdGhlIG51bWJlciBvZiBjYWNoZWQgYnl0ZXMuCkF1ZGlvIG5l
ZWRzIHRoaXMgZm9yIGN5Y2xpYyBhbmQgVUFSVCBhbHNvIG5lZWRzIHRvIGtub3cgaXQuCgotIFDD
qXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAx
ODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2Ev
RG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
