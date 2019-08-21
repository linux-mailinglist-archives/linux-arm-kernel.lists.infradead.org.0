Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54E97F4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tP6kWL4MP3s9QT6bPSMxIxQT4eFsbGqCCVD2+6jQyl8=; b=KnyftMuwTZsLx2
	6LO+n7c8i9u46EUUYDwkoAp2RKHea/Ww7c7Vk79JqBhnpWW8QFKt4TVUzYUgHmf5gcjqZEwZqinFB
	jXOl0NWhzKP32GTXbOGDqaEibaUJ6ac6Ek4SpNFYY1rdlgHoHQ4VOHnbovbkdk4kAIOxGlc1SWvhG
	GgPAT7gcS4QMF6bxMbXj7SI0a/Dg6Q4VY/rcoZRcrDnyoWj+F9YopBlWc7Rhkwto+957IbpgK77de
	rnbTNba0/drsg1UjCQzwYnlv3Agnhpr8r0ta4eJiQNmyOO6QA/XhDYT8xLDNk4n92CtalZK88FU98
	lQh0yq6QlGlzgbG/Pyiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SoZ-0007Kg-90; Wed, 21 Aug 2019 15:46:23 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0So3-00075z-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:45:58 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7LFjkSg127833;
 Wed, 21 Aug 2019 10:45:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566402346;
 bh=2DR/S3/gXqfngiEMqhp2FUVa9vNxRMq/4so3u+ndEWA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=i+/X14L3C6FkibOoBStBp8a1mjMHmHWJoZaF1iBzf5HKLqTsLkdS8P1oUeaM9RYVO
 B6zMxh9d3Ef4S/l2JFXSRZ59HDJmtkiOdUN0bq6oPTMz6l1BZC0n/IfXB/fueVoF1/
 VzdJhX1PPsHwmbluu5s0y7zm5qJuHPQiLT9CkQ6s=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7LFjkNJ104657
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 10:45:46 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 10:45:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 10:45:45 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7LFjjm2058635;
 Wed, 21 Aug 2019 10:45:45 -0500
Subject: Re: [PATCH 2/8] soc: ti: add initial PRM driver with reset control
 support
To: Philipp Zabel <p.zabel@pengutronix.de>, Tero Kristo <t-kristo@ti.com>,
 Keerthy <j-keerthy@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-3-git-send-email-t-kristo@ti.com>
 <3b76f0e0-7530-e7b5-09df-2de9956f30ee@ti.com>
 <59709a2d-f13a-bd55-8aba-864c1cf2f19e@ti.com>
 <9372957c-9ab9-b0dd-fe07-815eb2cb2f16@ti.com>
 <0f335aec-bfdf-345a-8dfb-dad70aef1af6@ti.com>
 <a4196b73-63a0-f9d8-1c43-e6c4d1c1d6a4@ti.com>
 <1566400237.4193.15.camel@pengutronix.de>
From: Suman Anna <s-anna@ti.com>
Message-ID: <5e82199f-2f75-ee05-ba65-1595d0526572@ti.com>
Date: Wed, 21 Aug 2019 10:45:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1566400237.4193.15.camel@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_084556_782580_01C6E41E 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8yMS8xOSAxMDoxMCBBTSwgUGhpbGlwcCBaYWJlbCB3cm90ZToKPiBPbiBUdWUsIDIwMTkt
MDgtMjAgYXQgMTE6NDcgLTA1MDAsIFN1bWFuIEFubmEgd3JvdGU6Cj4+IE9uIDgvMjAvMTkgMjoz
NyBBTSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4+PiBPbiAyMC44LjIwMTkgMi4wMSwgU3VtYW4gQW5u
YSB3cm90ZToKPj4+PiBIaSBUZXJvLAo+Pj4+Cj4+Pj4gT24gOC8xOS8xOSA0OjMyIEFNLCBUZXJv
IEtyaXN0byB3cm90ZToKPiBbLi4uXQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gK8KgwqDCoCBzdHJ1Y3Qg
b21hcF9yZXNldF9kYXRhICpyZXNldDsKPj4+Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoCAvKgo+Pj4+
Pj4+ICvCoMKgwqDCoCAqIENoZWNrIGlmIHdlIGhhdmUgcmVzZXRzLiBJZiBlaXRoZXIgcnN0Y3Rs
IG9yIHJzdHN0IGlzCj4+Pj4+Pj4gK8KgwqDCoMKgICogbm9uLXplcm8sIHdlIGhhdmUgcmVzZXQg
cmVnaXN0ZXJzIGluIHBsYWNlLiBBZGRpdGlvbmFsbHkKPj4+Pj4+PiArwqDCoMKgwqAgKiB0aGUg
ZmxhZyBPTUFQX1BSTV9OT19SU1RTVCBpbXBsaWVzIHRoYXQgd2UgaGF2ZSByZXNldHMuCj4+Pj4+
Pj4gK8KgwqDCoMKgICovCj4+Pj4+Pj4gK8KgwqDCoCBpZiAoIXBybS0+ZGF0YS0+cnN0Y3RsICYm
ICFwcm0tPmRhdGEtPnJzdHN0ICYmCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgICEocHJtLT5kYXRh
LT5mbGFncyAmIE9NQVBfUFJNX05PX1JTVFNUKSkKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIDA7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICvCoMKgwqAgcmVzZXQgPSBkZXZtX2t6YWxsb2MoJnBk
ZXYtPmRldiwgc2l6ZW9mKCpyZXNldCksIEdGUF9LRVJORUwpOwo+Pj4+Pj4+ICvCoMKgwqAgaWYg
KCFyZXNldCkKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+Pj4+Pj4g
Kwo+Pj4+Pj4+ICvCoMKgwqAgcmVzZXQtPnJjZGV2Lm93bmVyID0gVEhJU19NT0RVTEU7Cj4+Pj4+
Pj4gK8KgwqDCoCByZXNldC0+cmNkZXYub3BzID0gJm9tYXBfcmVzZXRfb3BzOwo+Pj4+Pj4+ICvC
oMKgwqAgcmVzZXQtPnJjZGV2Lm9mX25vZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsKPj4+Pj4+PiAr
wqDCoMKgIHJlc2V0LT5yY2Rldi5ucl9yZXNldHMgPSBPTUFQX01BWF9SRVNFVFM7Cj4+Pj4KPj4+
PiBTdWdnZXN0IGFkZGluZyBhIG51bWJlciBvZiByZXNldHMgdG8gcHJtLT5kYXRhLCBhbmQgdXNp
bmcgaXQgc28gdGhhdCB3ZQo+Pj4+IGRvbid0IGV2ZW4gZW50ZXJ0YWluIGFueSByZXNldHMgYmV5
b25kIHRoZSBhY3R1YWwgbnVtYmVyIG9mIHJlc2V0cy4KPj4+Cj4+PiBIbW0gd2h5IGJvdGhlcj8g
QWNjZXNzaW5nIGEgc3RhbGUgcmVzZXQgYml0IHdpbGwganVzdCBjYXVzZSBhY2Nlc3MgdG8gYQo+
Pj4gcmVzZXJ2ZWQgYml0IGluIHRoZSByZXNldCByZWdpc3RlciwgZG9pbmcgYmFzaWNhbGx5IG5v
dGhpbmcuIEFsc28sIHRoaXMKPj4+IHdvdWxkIG5vdCB3b3JrIGZvciBhbTMvYW00IHdrdXAsIGFz
IHRoZXJlIGlzIGEgc2luZ2xlIHJlc2V0IGJpdCBhdCBhbgo+Pj4gYXJiaXRyYXJ5IHBvc2l0aW9u
Lgo+Pgo+PiBUaGUgZ2VuZXJpYyBjb252ZW50aW9uIHNlZW1zIHRvIGJlIGRlZmluaW5nIGEgcmVz
ZXQgaWQgdmFsdWUgZGVmaW5lZAo+PiBmcm9tIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvIHRo
YXQgY2FuIGJlIHVzZWQgdG8gbWF0Y2ggYmV0d2VlbiB0aGUKPj4gZHQtbm9kZXMgYW5kIHRoZSBy
ZXNldC1jb250cm9sbGVyIGRyaXZlci4KPj4KPj4gUGhpbGlwcCwKPj4gQW55IGNvbW1lbnRzPwo+
IAo+IEFyZSB0aGVyZSBvbmx5IHJlc2V0IGJpdHMgYW5kIHJlc2VydmVkIGJpdHMgaW4gdGhlIHJh
bmdlIGFjY2Vzc2libGUgYnkKPiBbMC4uT01BUF9NQVhfUkVTRVRTXSBvciBhcmUgdGhlciBiaXRz
IHdpdGggYW5vdGhlciBmdW5jdGlvbiBhcyB3ZWxsPwoKVGhhbmtzIFBoaWxpcHAsIHRoZXNlIGFy
ZSBqdXN0IHJlc2V0IGJpdHMgYW5kIHJlc2VydmVkIGJpdHMuCgo+IElmIHRoZSBsYXR0ZXIgaXMg
dGhlIGNhc2UsIEkgd291bGQgcHJlZmVyIGVudW1lcmF0aW5nIHRoZSByZXNldHMgaW4gYQo+IGR0
LWJpbmRpbmdzIGhlYWRlciwgd2l0aCB0aGUgZHJpdmVyIGNvbnRhaW5pbmcgYW4gZW51bSAtPiBy
ZWcvYml0Cj4gcG9zaXRpb24gbG9va3VwIHRhYmxlLgo+IAo+IEluIGdlbmVyYWwsIGFzc3VtaW5n
IHRoZSBkZXZpY2UgdHJlZSBjb250YWlucyBubyBlcnJvcnMsIHRoaXMgc2hvdWxkIG5vdAo+IG1h
dHRlciBtdWNoLCBidXQgSSB0aGluayBpdCBpcyBuaWNlIGlmIHRoZSByZXNldCBkcml2ZXIsIGV2
ZW4gd2l0aCBhCj4gbWlzY29uZmlndXJlZCBkZXZpY2UgdHJlZSwgY2FuJ3Qgd3JpdGUgaW50byBh
cmJpdHJhcnkgYml0IGZpZWxkcy4KClRlcm8sCkNhbiB5b3UgYWRkIGEgY2hlY2sgZm9yIHRoaXMg
aWYgcG9zc2libGU/CgpyZWdhcmRzClN1bWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
