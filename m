Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40821EF706
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 09:13:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXUeMOIaqhXDBXvy8GM5+SEMnuZWClCsevZrpdhksrg=; b=cDQGi1u3NSHAFB
	99baV5NXl4mEHjlX3ySQZF8kVOqmsbvSnPEV16VEZGGa28iPUATAC87krmyuieHvE/B7/9w49ZDq1
	GJlnPMEV9asSDLd1a3h8graizXQSVb6mDOSUR440UegZypueUfRapG2aeNRN/SrL9NYdL7XJpxh1V
	AHlMtjcoyGuznCAAwlh9HeQx0esxvpbpGZWF7t8Rroaggjay15MXaDJDfcFXCye61Y1W8LYGkftu6
	yYb0jRwbtcf0ZBWPb7h7dYr2LfZCJE8qhzNasJsiMkBt6XBIu3gYygOGYncZan9ghFsI8Y1iJfStV
	4/+g69tLJG6baMTXTCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtxZ-00008X-0E; Tue, 05 Nov 2019 08:13:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtxO-00007x-3l
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 08:12:56 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA58CkSf009351;
 Tue, 5 Nov 2019 02:12:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572941566;
 bh=rss6Mp4quh2S4WzB5MeQQKUNTQjYLZd5GvvycvppoCc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=EYMk7elOvlowniBg4gjffNRye3GSvxF/SC9gel8D9l0AeFj1HFwa4PHszW3/KlpJ7
 BK2E62xGnItiUg4dwH7mFZivTtHIjppPOYfDuLfEAGoZSt0inM8CeNxh1OvOqSS1e5
 fyfIX8E+UGzd6lVpdTLguU3DuMgNhf2uRGonae3I=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA58CkMN053421
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 02:12:46 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 5 Nov
 2019 02:12:24 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 5 Nov 2019 02:12:24 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA58CaiX047486;
 Tue, 5 Nov 2019 02:12:36 -0600
Subject: Re: [PATCH v4 07/15] dmaengine: ti: k3 PSI-L remote endpoint
 configuration
To: Tero Kristo <t-kristo@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <nm@ti.com>, <ssantosh@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-8-peter.ujfalusi@ti.com>
 <e23316e7-1913-d0a7-79c6-4af2084e5176@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <c3f95799-e211-7740-8c20-d79416965dc2@ti.com>
Date: Tue, 5 Nov 2019 10:13:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e23316e7-1913-d0a7-79c6-4af2084e5176@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_001254_240364_FC67A95F 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8xMS8yMDE5IDkuNDksIFRlcm8gS3Jpc3RvIHdyb3RlOgo+IE9uIDAxLzExLzIwMTkg
MTA6NDEsIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+PiBJbiBLMyBhcmNoaXRlY3R1cmUgdGhlIERN
QSBvcGVyYXRlcyB3aXRoaW4gdGhyZWFkcy4gT25lIGVuZCBvZiB0aGUgdGhyZWFkCj4+IGlzIFVE
TUFQLCB0aGUgb3RoZXIgaXMgb24gdGhlIHBlcmlwaGVyYWwgc2lkZS4KPj4KPj4gVGhlIFVETUFQ
IGNoYW5uZWwgY29uZmlndXJhdGlvbiBkZXBlbmRzIG9uIHRoZSBuZWVkcyBvZiB0aGUgcmVtb3Rl
Cj4+IGVuZHBvaW50IGFuZCBpdCBjYW4gYmUgZGlmZmVyIGZyb20gcGVyaXBoZXJhbCB0byBwZXJp
cGhlcmFsLgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgZGF0YWJhc2UgZm9yIGFtNjU0IGFuZCBqNzIx
ZSBhbmQgc21hbGwgQVBJIHRvIGZldGNoIHRoZQo+PiBQU0ktTCBlbmRwb2ludCBjb25maWd1cmF0
aW9uIGZyb20gdGhlIGRhdGFiYXNlIHdoaWNoIHNob3VsZCBvbmx5IHVzZWQgYnkKPj4gdGhlIERN
QSBkcml2ZXIocykuCj4+Cj4+IEFub3RoZXIgQVBJIGlzIGFkZGVkIGZvciBuYXRpdmUgcGVyaXBo
ZXJhbHMgdG8gZ2l2ZSBwb3NzaWJpbGl0eSB0bwo+PiBwYXNzIG5ldwo+PiBjb25maWd1cmF0aW9u
IGZvciB0aGUgdGhyZWFkcyB0aGV5IGFyZSB1c2luZywgd2hpY2ggaXMgbmVlZGVkIHRvIGJlCj4+
IGFibGUgdG8KPj4gaGFuZGxlIGNoYW5nZXMgY2F1c2VkIGJ5IGRpZmZlcmVudCBmaXJtd2FyZSBs
b2FkZWQgZm9yIHRoZSBwZXJpcGhlcmFsIGZvcgo+PiBleGFtcGxlLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+PiAtLS0KPj4gwqAg
ZHJpdmVycy9kbWEvdGkvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMyArCj4+IMKgIGRy
aXZlcnMvZG1hL3RpL01ha2VmaWxlwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+IMKgIGRyaXZl
cnMvZG1hL3RpL2szLXBzaWwtYW02NTQuYyB8IDE3MiArKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+PiDCoCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3MjFlLmMgfCAyMTkgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4+IMKgIGRyaXZlcnMvZG1hL3RpL2szLXBzaWwtcHJpdi5o
wqAgfMKgIDM5ICsrKysrKwo+PiDCoCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLmPCoMKgwqDCoMKg
wqAgfMKgIDk3ICsrKysrKysrKysrKysrKwo+PiDCoCBpbmNsdWRlL2xpbnV4L2RtYS9rMy1wc2ls
LmjCoMKgwqAgfMKgIDQ3ICsrKysrKysKPj4gwqAgNyBmaWxlcyBjaGFuZ2VkLCA1NzggaW5zZXJ0
aW9ucygrKQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1h
bTY1NC5jCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLWo3
MjFlLmMKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2szLXBzaWwtcHJp
di5oCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLmMKPj4g
wqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvZG1hL2szLXBzaWwuaAoKLi4uCgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEvdGkvazMtcHNpbC5jIGIvZHJpdmVycy9kbWEvdGkv
azMtcHNpbC5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
ZTYxMDAyMmYwOWY0Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9kbWEvdGkvazMt
cHNpbC5jCj4+IEBAIC0wLDAgKzEsOTcgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wCj4+ICsvKgo+PiArICrCoCBDb3B5cmlnaHQgKEMpIDIwMTkgVGV4YXMgSW5zdHJ1
bWVudHMgSW5jb3Jwb3JhdGVkIC0KPj4gaHR0cDovL3d3dy50aS5jb20KPj4gKyAqwqAgQXV0aG9y
OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+PiArICovCj4+ICsKPj4g
KyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5o
Pgo+PiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4+ICsKPj4gKyNpbmNsdWRlICJrMy1wc2lsLXBy
aXYuaCIKPj4gKwo+PiArZXh0ZXJuIHN0cnVjdCBwc2lsX2VwX21hcCBhbTY1NF9lcF9tYXA7Cj4+
ICtleHRlcm4gc3RydWN0IHBzaWxfZXBfbWFwIGo3MjFlX2VwX21hcDsKPj4gKwo+PiArc3RhdGlj
IERFRklORV9NVVRFWChlcF9tYXBfbXV0ZXgpOwo+PiArc3RhdGljIHN0cnVjdCBwc2lsX2VwX21h
cCAqc29jX2VwX21hcDsKPiAKPiBTbywgeW91IGFyZSBvbmx5IHByb3RlY3RpbmcgdGhlIGhpZ2gg
bGV2ZWwgc29jX2VwX21hcCBwb2ludGVyIG9ubHkuIFlvdQo+IGRvbid0IG5lZWQgdG8gcHJvdGVj
dCB0aGUgZGF0YWJhc2UgaXRzZWxmIHZpYSBzb21lIHVzZWNvdW50aW5nIG9yCj4gc29tZXRoaW5n
LCBvciBhcmUgeW91IGRvaW5nIGl0IHdpdGhpbiB0aGUgRE1BIGRyaXZlcj8KClRoYXQncyBjb3Jy
ZWN0LCBJIHByb3RlY3Qgb25seSB0aGUgc29jX2VwX21hcC4KVGhlIERNQSBkcml2ZXJzIGNhbiBs
b29rIHVwIHRocmVhZHMgY29uY3VycmVudGx5IEkganVzdCBuZWVkIHRvIG1ha2UKc3VyZSB0aGF0
IHRoZSBzb2NfZXBfbWFwIGlzIGNvbmZpZ3VyZWQgd2hlbiB0aGUgZmlyc3QKcHNpbF9nZXRfZXBf
Y29uZmlnKCkgY29tZXMuCkFmdGVyIHRoaXMgdGhlIERNQSBkcml2ZXJzIGFyZSBmcmVlIHRvIGxv
b2sgdXAgdGhpbmdzLgoKVGhlIGVwX2NvbmZpZyB1cGRhdGUgd2lsbCBiZSBjb21pbmcgZnJvbSB0
aGUgRE1BIGNsaWVudCBkcml2ZXIocykgYW5kCm5vdCBmcm9tIHRoZSBETUEgZHJpdmVyLiBUaGUg
Y2xpbmV0IGRyaXZlciBrbm93cyBob3cgdGhpZXIgUFNJLUwKZW5kcG9pbnQgaWYgY29uZmlndXJl
ZCBzbyB0aGV5IGNvdWxkIHVwZGF0ZSB0aGUgZGVmYXVsdCBjb25maWd1cmF0aW9uCl9iZWZvcmVf
IHRoZXkgd291bGQgcmVxdWVzdCBhIERNQSBjaGFubmVsLgoKPiAKPiAtVGVybwo+IAo+PiArCj4+
ICtzdHJ1Y3QgcHNpbF9lbmRwb2ludF9jb25maWcgKnBzaWxfZ2V0X2VwX2NvbmZpZyh1MzIgdGhy
ZWFkX2lkKQo+PiArewo+PiArwqDCoMKgIGludCBpOwo+PiArCj4+ICvCoMKgwqAgbXV0ZXhfbG9j
aygmZXBfbWFwX211dGV4KTsKPj4gK8KgwqDCoCBpZiAoIXNvY19lcF9tYXApIHsKPj4gK8KgwqDC
oMKgwqDCoMKgIGlmIChvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoInRpLGFtNjU0IikpIHsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc29jX2VwX21hcCA9ICZhbTY1NF9lcF9tYXA7Cj4+ICvC
oMKgwqDCoMKgwqDCoCB9IGVsc2UgaWYgKG9mX21hY2hpbmVfaXNfY29tcGF0aWJsZSgidGksajcy
MWUiKSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzb2NfZXBfbWFwID0gJmo3MjFlX2Vw
X21hcDsKPj4gK8KgwqDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHByX2VycigiUFNJTDogTm8gY29tcGF0aWJsZSBtYWNoaW5lIGZvdW5kIGZvciBtYXBcbiIp
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PVFNVUFApOwo+
PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZGVidWcoIiVzOiBVc2lu
ZyBtYXAgZm9yICVzXG4iLCBfX2Z1bmNfXywgc29jX2VwX21hcC0+bmFtZSk7Cj4+ICvCoMKgwqAg
fQo+PiArwqDCoMKgIG11dGV4X3VubG9jaygmZXBfbWFwX211dGV4KTsKPj4gKwo+PiArwqDCoMKg
IGlmICh0aHJlYWRfaWQgJiBLM19QU0lMX0RTVF9USFJFQURfSURfT0ZGU0VUICYmIHNvY19lcF9t
YXAtPmRzdCkgewo+PiArwqDCoMKgwqDCoMKgwqAgLyogY2hlY2sgaW4gZGVzdGluYXRpb24gdGhy
ZWFkIG1hcCAqLwo+PiArwqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHNvY19lcF9tYXAt
PmRzdF9jb3VudDsgaSsrKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChzb2NfZXBf
bWFwLT5kc3RbaV0udGhyZWFkX2lkID09IHRocmVhZF9pZCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gJnNvY19lcF9tYXAtPmRzdFtpXS5lcF9jb25maWc7Cj4+ICvC
oMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgdGhyZWFkX2lkICY9
IH5LM19QU0lMX0RTVF9USFJFQURfSURfT0ZGU0VUOwo+PiArwqDCoMKgIGlmIChzb2NfZXBfbWFw
LT5zcmMpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBzb2NfZXBfbWFwLT5z
cmNfY291bnQ7IGkrKykgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoc29jX2VwX21h
cC0+c3JjW2ldLnRocmVhZF9pZCA9PSB0aHJlYWRfaWQpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuICZzb2NfZXBfbWFwLT5zcmNbaV0uZXBfY29uZmlnOwo+PiArwqDC
oMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldHVybiBFUlJfUFRS
KC1FTk9FTlQpOwo+PiArfQo+PiArRVhQT1JUX1NZTUJPTChwc2lsX2dldF9lcF9jb25maWcpOwo+
PiArCj4+ICtpbnQgcHNpbF9zZXRfbmV3X2VwX2NvbmZpZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNv
bnN0IGNoYXIgKm5hbWUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBw
c2lsX2VuZHBvaW50X2NvbmZpZyAqZXBfY29uZmlnKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBw
c2lsX2VuZHBvaW50X2NvbmZpZyAqZHN0X2VwX2NvbmZpZzsKPj4gK8KgwqDCoCBzdHJ1Y3Qgb2Zf
cGhhbmRsZV9hcmdzIGRtYV9zcGVjOwo+PiArwqDCoMKgIHUzMiB0aHJlYWRfaWQ7Cj4+ICvCoMKg
wqAgaW50IGluZGV4Owo+PiArCj4+ICvCoMKgwqAgaWYgKCFkZXYgfHwgIWRldi0+b2Zfbm9kZSkK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+PiArCj4+ICvCoMKgwqAgaW5kZXgg
PSBvZl9wcm9wZXJ0eV9tYXRjaF9zdHJpbmcoZGV2LT5vZl9ub2RlLCAiZG1hLW5hbWVzIiwgbmFt
ZSk7Cj4+ICvCoMKgwqAgaWYgKGluZGV4IDwgMCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBp
bmRleDsKPj4gKwo+PiArwqDCoMKgIGlmIChvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncyhkZXYt
Pm9mX25vZGUsICJkbWFzIiwgIiNkbWEtY2VsbHMiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW5kZXgsICZkbWFfc3BlYykpCj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVOT0VOVDsKPj4gKwo+PiArwqDCoMKgIHRocmVhZF9pZCA9IGRtYV9zcGVj
LmFyZ3NbMF07Cj4+ICsKPj4gK8KgwqDCoCBkc3RfZXBfY29uZmlnID0gcHNpbF9nZXRfZXBfY29u
ZmlnKHRocmVhZF9pZCk7Cj4+ICvCoMKgwqAgaWYgKElTX0VSUihkc3RfZXBfY29uZmlnKSkgewo+
PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJQU0lMOiB0aHJlYWQgSUQgMHglMDR4IG5vdCBkZWZp
bmVkIGluIG1hcFxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhyZWFkX2lk
KTsKPj4gK8KgwqDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KGRtYV9zcGVjLm5wKTsKPj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiBQVFJfRVJSKGRzdF9lcF9jb25maWcpOwo+PiArwqDCoMKgIH0KPj4g
Kwo+PiArwqDCoMKgIG1lbWNweShkc3RfZXBfY29uZmlnLCBlcF9jb25maWcsIHNpemVvZigqZHN0
X2VwX2NvbmZpZykpOwo+PiArCj4+ICvCoMKgwqAgb2Zfbm9kZV9wdXQoZG1hX3NwZWMubnApOwo+
PiArwqDCoMKgIHJldHVybiAwOwo+PiArfQo+PiArRVhQT1JUX1NZTUJPTChwc2lsX3NldF9uZXdf
ZXBfY29uZmlnKTsKPj4gKwo+PiArTU9EVUxFX0RFU0NSSVBUSU9OKCJUSSBLMyBQU0ktTCBlbmRw
b2ludCBkYXRhYmFzZSIpOwo+PiArTU9EVUxFX0FVVEhPUigiUGV0ZXIgVWpmYWx1c2kgPHBldGVy
LnVqZmFsdXNpQHRpLmNvbT4iKTsKPj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIiKTsKPj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hL2szLXBzaWwuaCBiL2luY2x1ZGUvbGludXgvZG1h
L2szLXBzaWwuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAu
LjE2ZTljOGM2ZjgzOQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1h
L2szLXBzaWwuaAo+PiBAQCAtMCwwICsxLDQ3IEBACj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMCAqLwo+PiArLyoKPj4gKyAqwqAgQ29weXJpZ2h0IChDKSAyMDE5IFRleGFz
IEluc3RydW1lbnRzIEluY29ycG9yYXRlZCAtCj4+IGh0dHA6Ly93d3cudGkuY29tCj4+ICsgKi8K
Pj4gKwo+PiArI2lmbmRlZiBLM19QU0lMX0hfCj4+ICsjZGVmaW5lIEszX1BTSUxfSF8KPj4gKwo+
PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gKyNkZWZpbmUgSzNfUFNJTF9EU1Rf
VEhSRUFEX0lEX09GRlNFVCAweDgwMDAKPj4gKwo+PiArc3RydWN0IGRldmljZTsKPj4gKwo+PiAr
LyogQ2hhbm5lbCBUaHJvdWdocHV0IExldmVscyAqLwo+PiArZW51bSB1ZG1hX3RwX2xldmVsIHsK
Pj4gK8KgwqDCoCBVRE1BX1RQX05PUk1BTCA9IDAsCj4+ICvCoMKgwqAgVURNQV9UUF9ISUdIID0g
MSwKPj4gK8KgwqDCoCBVRE1BX1RQX1VMVFJBSElHSCA9IDIsCj4+ICvCoMKgwqAgVURNQV9UUF9M
QVNULAo+PiArfTsKPj4gKwo+PiArZW51bSBwc2lsX2VuZHBvaW50X3R5cGUgewo+PiArwqDCoMKg
IFBTSUxfRVBfTkFUSVZFID0gMCwKPj4gK8KgwqDCoCBQU0lMX0VQX1BETUFfWFksCj4+ICvCoMKg
wqAgUFNJTF9FUF9QRE1BX01DQU4sCj4+ICvCoMKgwqAgUFNJTF9FUF9QRE1BX0FBU1JDLAo+PiAr
fTsKPj4gKwo+PiArc3RydWN0IHBzaWxfZW5kcG9pbnRfY29uZmlnIHsKPj4gK8KgwqDCoCBlbnVt
IHBzaWxfZW5kcG9pbnRfdHlwZSBlcF90eXBlOwo+PiArCj4+ICvCoMKgwqAgdW5zaWduZWQgcGt0
X21vZGU6MTsKPj4gK8KgwqDCoCB1bnNpZ25lZCBub3RkcGt0OjE7Cj4+ICvCoMKgwqAgdW5zaWdu
ZWQgbmVlZHNfZXBpYjoxOwo+PiArwqDCoMKgIHUzMiBwc2Rfc2l6ZTsKPj4gK8KgwqDCoCBlbnVt
IHVkbWFfdHBfbGV2ZWwgY2hhbm5lbF90cGw7Cj4+ICsKPj4gK8KgwqDCoCAvKiBQRE1BIHByb3Bl
cnRpZXMsIHZhbGlkIGZvciBQU0lMX0VQX1BETUFfKiAqLwo+PiArwqDCoMKgIHVuc2lnbmVkIHBk
bWFfYWNjMzI6MTsKPj4gK8KgwqDCoCB1bnNpZ25lZCBwZG1hX2J1cnN0OjE7Cj4+ICt9Owo+PiAr
Cj4+ICtpbnQgcHNpbF9zZXRfbmV3X2VwX2NvbmZpZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0
IGNoYXIgKm5hbWUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBwc2ls
X2VuZHBvaW50X2NvbmZpZyAqZXBfY29uZmlnKTsKPj4gKwo+PiArI2VuZGlmIC8qIEszX1BTSUxf
SF8gKi8KPj4KPiAKPiAtLSAKPiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2Fs
YW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KPiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUy
MS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKLSBQw6l0ZXIKClRleGFzIEluc3Ry
dW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1
bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5r
aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
