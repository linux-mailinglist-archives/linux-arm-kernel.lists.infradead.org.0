Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1DFA96EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 01:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwzl+hdx7Z+ALBD6SpPgH40a1EefXLNMV5Iba1fDLc8=; b=WbT+9U4dnmXjS4
	uUdFs8truQuSKdvEHhumNc9+V9Cg40V48KzFXmqPOpGij8H/DDg/IySB8oOniYxOQbl14MOD602ey
	Z9MAlG/er4rjYMKJchiOKq94GvuDIlvaTnwtcSVWH+Trhtkw97CQ3Rt1kO6rmQ00/+LC+e6yxkaE6
	NWt5JgY5HTOQMrHnI6N9hO4NUaxwVQ+XVuOm/IeR+JAflTBniqlk50ecP6CnLu29b8EtddbZFntIC
	7/Ii3kqMxMNAa+rwbApjDxwUXgZmHaZDKHqECM0gMcbhCCLAy9Fn/ynwgrollB1leK8nmYEorsIN2
	hd7sHKnmILFGF47VyoAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5eUO-00066B-2e; Wed, 04 Sep 2019 23:15:00 +0000
Received: from mailoutvs24.siol.net ([185.57.226.215] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5eUB-000656-QI
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 23:14:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id D7476520A46;
 Thu,  5 Sep 2019 01:14:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id FM58iBnMidPl; Thu,  5 Sep 2019 01:14:37 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 38A985208D8;
 Thu,  5 Sep 2019 01:14:37 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 76204520A32;
 Thu,  5 Sep 2019 01:14:34 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH 7/8] media: cedrus: Add support for holding capture buffer
Date: Thu, 05 Sep 2019 01:14:34 +0200
Message-ID: <2397760.v9PcElvEDa@jernej-laptop>
In-Reply-To: <f105990c-e059-6bdd-433f-074388e3a2dc@xs4all.nl>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-8-jernej.skrabec@siol.net>
 <f105990c-e059-6bdd-433f-074388e3a2dc@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_161448_015269_A0FA0C57 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devel@driverdev.osuosl.org, acourbot@chromium.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAyOS4gYXZndXN0IDIwMTkgb2IgMTM6MjM6MjkgQ0VTVCBqZSBIYW5zIFZl
cmt1aWwgbmFwaXNhbChhKToKPiBPbiA4LzIyLzE5IDk6NDQgUE0sIEplcm5laiBTa3JhYmVjIHdy
b3RlOgo+ID4gV2hlbiBmcmFtZSBjb250YWlucyBtdWx0aXBsZSBzbGljZXMgYW5kIGRyaXZlciB3
b3JrcyBpbiBzbGljZSBtb2RlLCBpdCdzCj4gPiBtb3JlIGVmZmljaWVudCB0byBob2xkIGNhcHR1
cmUgYnVmZmVyIGluIHF1ZXVlIHVudGlsIGFsbCBzbGljZXMgb2YgYQo+ID4gc2FtZSBmcmFtZSBh
cmUgZGVjb2RlZC4KPiA+IAo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoYXQgdG8gQ2VkcnVzIGRyaXZl
ciBieSBleHBvc2luZyBhbmQgaW1wbGVtZW50aW5nCj4gPiBWNEwyX0JVRl9DQVBfU1VQUE9SVFNf
TTJNX0hPTERfQ0FQVFVSRV9CVUYgY2FwYWJpbGl0eS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
SmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gLS0tCj4gPiAKPiA+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19kZWMuYyAgIHwgOSAr
KysrKysrKysKPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19o
dy5jICAgIHwgOCArKysrKy0tLQo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRy
dXMvY2VkcnVzX3ZpZGVvLmMgfCAxICsKPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19kZWMuYwo+ID4gYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19kZWMuYyBpbmRleAo+ID4gZDdiNTRhY2NmZTgzLi42
ODQ2MmI5OTc1MGUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkv
Y2VkcnVzL2NlZHJ1c19kZWMuYwo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhp
L2NlZHJ1cy9jZWRydXNfZGVjLmMKPiA+IEBAIC0zMSw2ICszMSwxNCBAQCB2b2lkIGNlZHJ1c19k
ZXZpY2VfcnVuKHZvaWQgKnByaXYpCj4gPiAKPiA+ICAJcnVuLnNyYyA9IHY0bDJfbTJtX25leHRf
c3JjX2J1ZihjdHgtPmZoLm0ybV9jdHgpOwo+ID4gIAlydW4uZHN0ID0gdjRsMl9tMm1fbmV4dF9k
c3RfYnVmKGN0eC0+ZmgubTJtX2N0eCk7Cj4gPiAKPiA+ICsKPiA+ICsJaWYgKHY0bDJfbTJtX3Jl
bGVhc2VfY2FwdHVyZV9idWYocnVuLnNyYywgcnVuLmRzdCkpIHsKPiA+ICsJCXY0bDJfbTJtX2Rz
dF9idWZfcmVtb3ZlKGN0eC0+ZmgubTJtX2N0eCk7Cj4gPiArCQl2NGwyX20ybV9idWZfZG9uZShy
dW4uZHN0LCBWQjJfQlVGX1NUQVRFX0RPTkUpOwo+ID4gKwkJcnVuLmRzdCA9IHY0bDJfbTJtX25l
eHRfZHN0X2J1ZihjdHgtPmZoLm0ybV9jdHgpOwo+ID4gKwl9Cj4gPiArCXJ1bi5kc3QtPmlzX2hl
bGQgPSBydW4uc3JjLT5mbGFncyAmIApWNEwyX0JVRl9GTEFHX00yTV9IT0xEX0NBUFRVUkVfQlVG
Owo+ID4gKwo+ID4gCj4gPiAgCXJ1bi5maXJzdF9zbGljZSA9Cj4gPiAgCQo+ID4gIAkJcnVuLnNy
Yy0+dmIyX2J1Zi50aW1lc3RhbXAgIT0gcnVuLmRzdC0KPnZiMl9idWYudGltZXN0YW1wOwo+ID4g
Cj4gPiBAQCAtNDYsNiArNTQsNyBAQCB2b2lkIGNlZHJ1c19kZXZpY2VfcnVuKHZvaWQgKnByaXYp
Cj4gPiAKPiA+ICAJCQlWNEwyX0NJRF9NUEVHX1ZJREVPX01QRUcyX1NMSUNFX1BBUkFNUyk7Cj4g
PiAgCQkKPiA+ICAJCXJ1bi5tcGVnMi5xdWFudGl6YXRpb24gPSBjZWRydXNfZmluZF9jb250cm9s
X2RhdGEoY3R4LAo+ID4gIAkJCj4gPiAgCQkJVjRMMl9DSURfTVBFR19WSURFT19NUEVHMl9RVUFO
VElaQVRJT04pOwo+ID4gCj4gPiArCQlydW4uZHN0LT5pc19oZWxkID0gZmFsc2U7Cj4gPiAKPiA+
ICAJCWJyZWFrOwo+ID4gIAkKPiA+ICAJY2FzZSBWNEwyX1BJWF9GTVRfSDI2NF9TTElDRToKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19o
dy5jCj4gPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2h3LmMg
aW5kZXgKPiA+IGE5NDJjZDliZWQ1Ny4uOTlmZWRlYzgwMjI0IDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaHcuYwo+ID4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaHcuYwo+ID4gQEAgLTEyMiw3
ICsxMjIsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgY2VkcnVzX2lycShpbnQgaXJxLCB2b2lkICpk
YXRhKQo+ID4gCj4gPiAgCWRldi0+ZGVjX29wc1tjdHgtPmN1cnJlbnRfY29kZWNdLT5pcnFfY2xl
YXIoY3R4KTsKPiA+ICAJCj4gPiAgCXNyY19idWYgPSB2NGwyX20ybV9zcmNfYnVmX3JlbW92ZShj
dHgtPmZoLm0ybV9jdHgpOwo+ID4gCj4gPiAtCWRzdF9idWYgPSB2NGwyX20ybV9kc3RfYnVmX3Jl
bW92ZShjdHgtPmZoLm0ybV9jdHgpOwo+ID4gKwlkc3RfYnVmID0gdjRsMl9tMm1fbmV4dF9kc3Rf
YnVmKGN0eC0+ZmgubTJtX2N0eCk7Cj4gPiAKPiA+ICAJaWYgKCFzcmNfYnVmIHx8ICFkc3RfYnVm
KSB7Cj4gPiAgCQo+ID4gIAkJdjRsMl9lcnIoJmRldi0+djRsMl9kZXYsCj4gPiAKPiA+IEBAIC0x
MzYsOCArMTM2LDEwIEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBjZWRydXNfaXJxKGludCBpcnEsIHZv
aWQgKmRhdGEpCj4gPiAKPiA+ICAJCXN0YXRlID0gVkIyX0JVRl9TVEFURV9ET05FOwo+ID4gIAkK
PiA+ICAJdjRsMl9tMm1fYnVmX2RvbmUoc3JjX2J1Ziwgc3RhdGUpOwo+ID4gCj4gPiAtCXY0bDJf
bTJtX2J1Zl9kb25lKGRzdF9idWYsIHN0YXRlKTsKPiA+IC0KPiA+ICsJaWYgKCFkc3RfYnVmLT5p
c19oZWxkKSB7Cj4gPiArCQl2NGwyX20ybV9kc3RfYnVmX3JlbW92ZShjdHgtPmZoLm0ybV9jdHgp
Owo+ID4gKwkJdjRsMl9tMm1fYnVmX2RvbmUoZHN0X2J1Ziwgc3RhdGUpOwo+ID4gKwl9Cj4gPiAK
PiA+ICAJdjRsMl9tMm1fam9iX2ZpbmlzaChjdHgtPmRldi0+bTJtX2RldiwgY3R4LT5maC5tMm1f
Y3R4KTsKPiA+ICAJCj4gPiAgCXJldHVybiBJUlFfSEFORExFRDsKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiA+
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYyBpbmRl
eAo+ID4gZWVlZTNlZmQyNDdiLi41MTUzYjJiYmEyMWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRlby5jCj4gPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRlby5jCj4gPiBAQCAtNTE1
LDYgKzUxNSw3IEBAIGludCBjZWRydXNfcXVldWVfaW5pdCh2b2lkICpwcml2LCBzdHJ1Y3QgdmIy
X3F1ZXVlCj4gPiAqc3JjX3ZxLD4gCj4gPiAgCXNyY192cS0+dHlwZSA9IFY0TDJfQlVGX1RZUEVf
VklERU9fT1VUUFVUOwo+ID4gIAlzcmNfdnEtPmlvX21vZGVzID0gVkIyX01NQVAgfCBWQjJfRE1B
QlVGOwo+ID4gIAlzcmNfdnEtPmRydl9wcml2ID0gY3R4Owo+ID4gCj4gPiArCXNyY192cS0+c3Vi
c3lzdGVtX2ZsYWdzID0gClZCMl9WNEwyX0ZMX1NVUFBPUlRTX00yTV9IT0xEX0NBUFRVUkVfQlVG
Owo+IAo+IFRoaXMgaXNuJ3QgcXVpdGUgcmlnaHQ6IHRoaXMgZmxhZyBzaG91bGQgb25seSBiZSBz
ZXQgZm9yIGZvcm1hdHMgdGhhdAo+IHN1cHBvcnQgc2xpY2luZy4gU28gY2VkcnVzX3NfZm10X3Zp
ZF9vdXQoKSBzaG91bGQgc2V0IHRoaXMgZm9yIEgyNjQsIGJ1dAo+IGNsZWFyIGl0IGZvciBNUEVH
Mi4KPiAKPiBMb29raW5nIGF0IHRoZSBjZWRydXMgY29kZSBpdCBzZWVtcyB0aGF0IGl0IGRvZXMg
bm90IHNldCBhbiBpbml0aWFsIGRlZmF1bHQKPiBvdXRwdXQgZm9ybWF0IGFmdGVyIG9wZW5pbmcg
dGhlIHZpZGVvIGRldmljZS4gVGhpcyBzZWVtcyB3cm9uZyB0byBtZS4gSWYgaXQKPiBkaWQgc2V0
IGEgZGVmYXVsdCBvdXRwdXQgZm9ybWF0LCB0aGVuIHNyY192cS0+c3Vic3lzdGVtX2ZsYWdzIHNo
b3VsZCBzZXQKPiB0aGlzIGZsYWcgY29ycmVzcG9uZGluZyB0byB0aGUgZGVmYXVsdCBvdXRwdXQg
Zm9ybWF0LgoKT2ssIEknbGwgYmFzZSB2MiBzZXJpZXMgb24geW91ciAiY2VkcnVzOiB2NGwyLWNv
bXBsaWFuY2UgZml4ZXMiLCBiZWNhdXNlIGl0IGhhcyAKc29tZSB1c2VmdWwgY2hhbmdlcyBmb3Ig
dGhpcyBjYXNlLgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCj4gCj4gPiAgCXNyY192cS0+YnVmX3N0
cnVjdF9zaXplID0gc2l6ZW9mKHN0cnVjdCBjZWRydXNfYnVmZmVyKTsKPiA+ICAJc3JjX3ZxLT5t
aW5fYnVmZmVyc19uZWVkZWQgPSAxOwo+ID4gIAlzcmNfdnEtPm9wcyA9ICZjZWRydXNfcW9wczsK
PiAKPiBSZWdhcmRzLAo+IAo+IAlIYW5zCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
