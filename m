Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4105E44D87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nivElOKDXXo4r0w97LRz2Tr3yQctxzrhx8joUfwHxU=; b=QMPErm9j8Jfx34
	/l8yJNGiCuZTsNM2YGTQekMmsAr2cS2S4fPs6p4ly6mdyZJRISfjmCTzMD6tSUOhof1Ii95yKtRTE
	x3yKzdNi2pAyG3bDitpsQRApiSq10/uQCggBlUllykrKL2/b6d5otKwB9cv4aXoiQJPQPZs5Qgg1b
	1/ArkoSPrjVwqM3MXVtrhLhWvD7wOYU+rW6Kz84DtLQCMDefctr8CMI+TaL1A9c3YGoZgq1t32auq
	O0q8NSqdXG0EPD3CTqugG5fFptTTaThExtWySN5xC0+gHl1BT2uk0Ludw8fOu22DuNTNIcaZcjeKs
	y9JdBgdHNWO5mEDAwQtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWPa-00034k-Gg; Thu, 13 Jun 2019 20:33:30 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWPQ-00033n-8a
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:33:21 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5DKX9mU095248;
 Thu, 13 Jun 2019 15:33:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560457989;
 bh=Iw66ZlMG9g4IKHXricwFmXq3+LquUzDHIWFykeidiDU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fMe8BuJPRnWf59pXtSPpXfH1rrGsEQFEuhYqEI6j8x9PtLxDwvrF+03GmkkBhRKzq
 UKLqYX8TZ/xO726R6wAJymbubg4NOj3KWikf6wfcR9hS9VPCa8qlEO9E7OJG0EPgsT
 tLyB5Tc3cVsP7kfvIG/gtc/+qHjOGTFpPAKriSnU=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5DKX9lv093210
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 Jun 2019 15:33:09 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 13
 Jun 2019 15:33:09 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 13 Jun 2019 15:33:09 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5DKX5AS026254;
 Thu, 13 Jun 2019 15:33:06 -0500
Subject: Re: [PATCH 09/16] dt-bindings: dma: ti: Add document for K3 UDMA
To: Rob Herring <robh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-10-peter.ujfalusi@ti.com> <20190613181626.GA7039@bogus>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <e0d6a264-96b5-31a6-e70b-3b1c2d863988@ti.com>
Date: Thu, 13 Jun 2019 23:33:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613181626.GA7039@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_133320_463003_E3B21BEA 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, vkoul@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMTMvMDYvMjAxOSAyMS4xNiwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+ICtSZW1vdGUg
UFNJLUwgZW5kcG9pbnQKPj4gKwo+PiArUmVxdWlyZWQgcHJvcGVydGllczoKPj4gKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4+ICstIHRpLHBzaWwtYmFzZToJCVBTSS1MIHRocmVhZCBJRCBiYXNlIG9m
IHRoZSBlbmRwb2ludAo+PiArCj4+ICtXaXRoaW4gdGhlIFBTSS1MIGVuZHBvaW50IG5vZGUgdGhy
ZWFkIGNvbmZpZ3VyYXRpb24gc3Vibm9kZXMgbXVzdCBwcmVzZW50IHdpdGg6Cj4+ICt0aSxwc2ls
LWNvbmZpZ1ggbmFtaW5nIGNvbnZlbnRpb24sIHdoZXJlIFggaXMgdGhlIHRocmVhZCBJRCBvZmZz
ZXQuCj4gCj4gRG9uJ3QgdXNlIHZlbmRvciBwcmVmaXhlcyBvbiBub2RlIG5hbWVzLgoKT0suCgo+
PiArCj4+ICtDb25maWd1cmF0aW9uIG5vZGUgUmVxdWlyZWQgcHJvcGVydGllczoKPj4gKy0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4+ICstIGxpbnV4LHVkbWEtbW9kZToJQ2hhbm5lbCBtb2RlLCBjYW4g
YmU6Cj4+ICsJCQktIFVETUFfUEtUX01PREU6IGZvciBQYWNrZXQgbW9kZSBjaGFubmVscyAocGVy
aXBoZXJhbHMpCj4+ICsJCQktIFVETUFfVFJfTU9ERTogZm9yIFRoaXJkLVBhcnR5IG1vZGUKPiAK
PiBUaGlzIGlzIGhhcmRseSBhIGNvbW1vbiBsaW51eCB0aGluZy4gV2hhdCBkZXRlcm1pbmVzIHRo
ZSB2YWx1ZSBoZXJlLgoKVW5mb3J0dW5hdGVseSBpdCBpcy4KRWFjaCBjaGFubmVsIGNhbiBiZSBj
b25maWd1cmVkIHRvIFBhY2tldCBvciBUUiBtb2RlLiBGb3Igc29tZQpwZXJpcGhlcmFscyBpdCBp
cyB0cnVlIHRoYXQgdGhleSBvbmx5IHN1cHBvcnQgcGFja2V0IG1vZGUsIHRoZXNlIGFyZSB0aGUK
bmV3ZXIgUFNJLUwgbmF0aXZlIHBlcmlwaGVyYWxzLgpGb3IgdGhlc2UgY2hhbm5lbHMgYSB1ZG1h
LW1vZGUgcHJvcGVydHkgd291bGQgYmUgY29ycmVjdC4KCkJ1dCB3ZSBoYXZlIGxlZ2FjeSBwZXJp
cGhlcmFscyBhcyB3ZWxsIGFuZCB0aGV5IGFyZSBzZXJ2aWNlZCBieSBQRE1BCih3aGljaCBpcyBh
IG5hdGl2ZSBwZXJpcGhlcmFsIGRlc2lnbmVkIHRvIHRhbGsgdG8gdGhlIGdpdmVuIGxlZ2FjeSBJ
UCkuCldlIGNhbiB1c2UgZWl0aGVyIHBhY2tldCBvciBUUiBtb2RlIGluIFVETUFQIHRvIHRhbGsg
dG8gUERNQXMsIGl0IGlzIGluCm1vc3QgY2FzZXMgY2xlYXIgd2hhdCB0byB1c2UsIGJ1dCBmb3Ig
ZXhhbXBsZSBmb3IgYXVkaW8gKE1jQVNQKSBjaGFubmVscwpMaW51eCBpcyB1c2luZyBUUiBjaGFu
bmVsIGJlY2F1c2Ugd2UgbmVlZCBjeWNsaWMgRE1BIHdoaWxlIGZvciBleGFtcGxlClJUT1MgaXMg
dXNpbmcgUGFja2V0IG1vZGUgYXMgaXQgZml0cyB0aGVpciBuZWVkcyBiZXR0ZXIuCgpIZXJlIEkg
bmVlZCB0byBwcmVmaXggdGhlIHVkbWEtbW9kZSB3aXRoIGxpbnV4IGFzIHRoZSBtb2RlIGlzIHVz
ZWQgYnkKTGludXgsIGJ1dCBvdGhlciBPUyBtaWdodCBvcHQgdG8gdXNlIGRpZmZlcmVudCBjaGFu
bmVsIG1vZGUuCgpUaGUgcmVhc29uIHdoeSB0aGlzIG5lZWRzIHRvIGJlIGluIHRoZSBEVCBpcyB0
aGF0IHdoZW4gdGhlIGNoYW5uZWwgaXMKcmVxdWVzdGVkIHdlIG5lZWQgdG8gY29uZmlndXJlIHRo
ZSBtb2RlIGFuZCBpdCBjYW4gbm90IGJlIHN3YXBwZWQKcnVudGltZSBlYXNpbHkgYmV0d2VlbiBQ
YWNrZXQgYW5kIFRSIG1vZGUuCgo+PiArCj4+ICtDb25maWd1cmF0aW9uIG5vZGUgT3B0aW9uYWwg
cHJvcGVydGllczoKPj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICstIHN0YXRpY3RyLXR5cGU6
CUluIGNhc2UgdGhlIHJlbW90ZSBlbmRwb2ludCByZXF1aXJlcyBTdGF0aWNUUgo+PiArCQkJY29u
ZmlndXJhdGlvbjoKPj4gKwkJCS0gUFNJTF9TVEFUSUNfVFJfWFk6IFhZIHR5cGUgb2YgU3RhdGlj
VFIKPj4gKwkJCS0gUFNJTF9TVEFUSUNfVFJfTUNBTjogTUNBTiB0eXBlIG9mIFN0YXRpY1RSCj4+
ICstIHRpLGNoYW5uZWwtdHBsOglDaGFubmVsIFRocm91Z2hwdXQgbGV2ZWw6Cj4+ICsJCQkwIC8g
b3Igbm90IHByZXNlbnQgLSBub3JtYWwgY2hhbm5lbAo+PiArCQkJMSAtIEhpZ2ggVGhyb3VnaHB1
dCBjaGFubmVsCj4+ICstIHRpLG5lZWRzLWVwaWI6CUlmIHRoZSBlbmRwb2ludCByZXF1aXJlIEVQ
SUIgdG8gYmUgcHJlc2VudCBpbiB0aGUKPj4gKwkJCWRlc2NyaXB0b3IuCj4+ICstIHRpLHBzZC1z
aXplOgkJU2l6ZSBvZiB0aGUgUHJvdG9jb2wgU3BlY2lmaWMgRGF0YSBzZWN0aW9uIG9mIHRoZQo+
PiArCQkJZGVzY3JpcHRvci4KPiAKPiBZb3UndmUgZ290IGEgbG90IG9mIHByb3BlcnRpZXMgYW5k
IGNoaWxkIG5vZGVzIGhlcmUsIGJ1dCBub3QgaW4gdGhlIAo+IGV4YW1wbGUuIFBsZWFzZSBtYWtl
IHRoZSBleGFtcGxlIG1vcmUgY29tcGxldGUuCgpTdXJlLCBJJ2xsIGV4dGVuZCB0aGUgZXhhbXBs
ZSB3aXRoIG90aGVyIHBlcmlwaGVyYWwgd2hpY2ggdXNlcyBtb3JlCnByb3BlcnRpZXMuCgo+IAo+
PiArCj4+ICtFeGFtcGxlOgo+PiArCj4+ICttYWluX25hdnNzOiBtYWluX25hdnNzIHsKPj4gKwlj
b21wYXRpYmxlID0gInNpbXBsZS1idXMiOwo+PiArCSNhZGRyZXNzLWNlbGxzID0gPDI+Owo+PiAr
CSNzaXplLWNlbGxzID0gPDI+Owo+PiArCWRtYS1jb2hlcmVudDsKPj4gKwlkbWEtcmFuZ2VzOwo+
PiArCXJhbmdlczsKPj4gKwo+PiArCXRpLHNjaSA9IDwmZG1zYz47Cj4+ICsJdGksc2NpLWRldi1p
ZCA9IDwxMTg+Owo+PiArCj4+ICsJbWFpbl91ZG1hcDogdWRtYXBAMzExNTAwMDAgewo+IAo+IGRt
YS1jb250cm9sbGVyQC4uLgoKT0sKCj4+ICsJCWNvbXBhdGlibGUgPSAidGksYW02NTQtbmF2c3Mt
bWFpbi11ZG1hcCI7Cj4+ICsJCXJlZyA9CTwweDAgMHgzMTE1MDAwMCAweDAgMHgxMDA+LAo+PiAr
CQkJPDB4MCAweDM0MDAwMDAwIDB4MCAweDEwMDAwMD4sCj4+ICsJCQk8MHgwIDB4MzUwMDAwMDAg
MHgwIDB4MTAwMDAwPjsKPj4gKwkJcmVnLW5hbWVzID0gImdjZmciLCAicmNoYW5ydCIsICJ0Y2hh
bnJ0IjsKPj4gKwkJI2RtYS1jZWxscyA9IDwzPjsKPj4gKwo+PiArCQl0aSxyaW5nYWNjID0gPCZy
aW5nYWNjPjsKPj4gKwkJdGkscHNpbC1iYXNlID0gPDB4MTAwMD47Cj4+ICsKPj4gKwkJaW50ZXJy
dXB0LXBhcmVudCA9IDwmbWFpbl91ZG1hc3NfaW50YT47Cj4+ICsKPj4gKwkJdGksc2NpID0gPCZk
bXNjPjsKPj4gKwkJdGksc2NpLWRldi1pZCA9IDwxODg+Owo+PiArCj4+ICsJCXRpLHNjaS1ybS1y
YW5nZS10Y2hhbiA9IDwweDYgMHgxPiwgLyogVFhfSENIQU4gKi8KPj4gKwkJCQkJPDB4NiAweDI+
OyAvKiBUWF9DSEFOICovCj4+ICsJCXRpLHNjaS1ybS1yYW5nZS1yY2hhbiA9IDwweDYgMHg0Piwg
LyogUlhfSENIQU4gKi8KPj4gKwkJCQkJPDB4NiAweDU+OyAvKiBSWF9DSEFOICovCj4+ICsJCXRp
LHNjaS1ybS1yYW5nZS1yZmxvdyA9IDwweDYgMHg2PjsgLyogR1AgUkZMT1cgKi8KPj4gKwl9Owo+
PiArfTsKPj4gKwo+PiArcGRtYTA6IHBkbWFAMmE0MTAwMCB7Cj4+ICsJY29tcGF0aWJsZSA9ICJ0
aSxhbTY1NC1wZG1hIjsKPj4gKwlyZWcgPSA8MHgwIDB4MDJBNDEwMDAgMHgwIDB4NDAwPjsKPj4g
KwlyZWctbmFtZXMgPSAiZWNjYWdncl9jZmciOwo+PiArCj4+ICsJdGkscHNpbC1iYXNlID0gPDB4
NDQwMD47Cj4+ICsKPj4gKwkvKiB0aSxwc2lsLWNvbmZpZzAtMiAqLwo+PiArCVVETUFfUERNQV9U
Ul9YWSgwKTsKPiAKPiBXaGF0IGlzIHRoaXM/IERvbid0IGFidXNlIGRlZmluZXMgd2l0aCBzdHVm
ZiBsaWtlIHRoaXMuIEdlbmVyYWxseSBvbmx5IAo+IGRlZmluZXMgb2Ygc2luZ2xlIHZhbHVlcyBz
aG91bGQgYmUgdXNlZC4KClRoZSByZWFzb24gSSBoYXZlIHVzZWQgZGVmaW5lIHRvIGJ1aWxkIHRo
ZSBwc2lsLWNvbmZpZyBzZWN0aW9ucyBpcyB0aGF0CndlIGhhdmUgc29tZSBQRE1BcyB3aXRoIDIy
IHRocmVhZHMgYW5kIGl0IG1ha2VzIHRoZSBEVCBleHBsb2RlIHdoZW4Kd3JpdGluZyBvdXQgYWxs
IG9mIHRoZSB0aHJlYWQgY29uZmlndXJhdGlvbnMuCgpXaXRoaW4gb25lIFBETUEgd2UgY2FuIGhh
dmUgYSBtaXggb2YgZGlmZmVyZW50IG1vZGVzLCBzbyBJIGNhbiBub3Qgc2F5CnRoYXQgYWxsIG9m
IHRoZSB0aHJlYWRzIGluIHRoZSBQRE1BIGlzIHRoZSBzYW1lLgoKPiAKPj4gKwlVRE1BX1BETUFf
VFJfWFkoMSk7Cj4+ICsJVURNQV9QRE1BX1RSX1hZKDIpOwo+PiArfTsKPj4gKwo+PiArbWNhc3Aw
OiBtY2FzcEAwMkIwMDAwMCB7Cj4+ICsuLi4KPj4gKwkvKiB0eDogcGRtYTAtMCwgcng6IHBkbWEw
LTAgKi8KPj4gKwlkbWFzID0gPCZtYWluX3VkbWFwICZwZG1hMCAwIFVETUFfRElSX1RYPiwKPj4g
KwkgICAgICAgPCZtYWluX3VkbWFwICZwZG1hMCAwIFVETUFfRElSX1JYPjsKPj4gKwlkbWEtbmFt
ZXMgPSAidHgiLCAicngiOwo+PiArLi4uCj4+ICt9Owo+PiAtLSAKClRoYW5rcywKLSBQw6l0ZXIK
ClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhl
bHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWlj
aWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
