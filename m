Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBFA65311
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 10:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UT/8bzeOSrbtMftqxIUR/zC+5FNcu3DBOqBxynloBS0=; b=G2kmReQ9R7ocNo
	XAjRNgAQ5cRPXh9TsI6kYTQHORwaR0MvSQXMk3HzhNx8o443ays8Q7vRd3ciN6AMBY04YjHeLPUD0
	aVCxqbaF1zT/vHVFptJ83HKLh3WINloC3XbD5wkyKJtQoircj40/PsiSYGMIlXriObYn5994I5tgz
	6tIatLOZxgBjVOI1v0Fg24mXFo6LHZ2t86A8/QaStm3E5yzoDbJBWGA1siMvvDJZc7i2k5+iYqPrJ
	KkEkhdI70+YThyxJ1TnYlj6WCIWndPzxSLb56fLAdpaTpGeRjtaUV8hr4/v1dOFHRJ+ZDO/T027eN
	Z0rYJrxT7lWG06usBAvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUMF-000120-Qg; Thu, 11 Jul 2019 08:23:16 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUM1-00010q-2S
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 08:23:02 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 24FD8DA90C500E370AC5;
 Thu, 11 Jul 2019 16:22:46 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 11 Jul 2019
 16:22:38 +0800
Subject: Re: Could info leak in preserve_iwmmxt_context() ?
To: Dave Martin <Dave.Martin@arm.com>, Julien Thierry <julien.thierry@arm.com>
References: <5D24AD2E.8080102@huawei.com>
 <6e4deac8-9f9b-f5d1-977a-5a46de109418@arm.com>
 <14c34353-7427-ccae-ad80-cf5b8e264437@arm.com>
 <20190709164700.GG2790@e103592.cambridge.arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <0dc1883b-e320-e07d-eae8-bf36d6f9ed9f@huawei.com>
Date: Thu, 11 Jul 2019 16:22:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190709164700.GG2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_012301_372472_69CCFCD0 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Yang Yingliang <yangyingliang@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSnVsaWVuLCBEYXZlLAoKT24gMjAxOS83LzEwIDA6NDcsIERhdmUgTWFydGluIHdyb3RlOgo+
IE9uIFR1ZSwgSnVsIDA5LCAyMDE5IGF0IDA0OjM0OjU3UE0gKzAxMDAsIEp1bGllbiBUaGllcnJ5
IHdyb3RlOgo+Pgo+Pgo+PiBPbiAwOS8wNy8yMDE5IDE2OjMwLCBKdWxpZW4gVGhpZXJyeSB3cm90
ZToKPj4+IEhpIFlhbmcsCj4+Pgo+Pj4gT24gMDkvMDcvMjAxOSAxNjowNSwgWWFuZyBZaW5nbGlh
bmcgd3JvdGU6Cj4+Pj4gSGksIEp1bGllbgo+Pj4+Cj4+Pj4gSW4gdGhpcyBjb21taXQgNzM4Mzk3
OThhZjdlICgiQVJNOiA4NzkwLzE6IHNpZ25hbDogYWx3YXlzIHVzZQo+Pj4+IF9fY29weV90b191
c2VyIHRvIHNhdmUgaXdtbXh0IGNvbnRleHQiKToKPj4+Pgo+Pj4+IC0tLSBhL2FyY2gvYXJtL2tl
cm5lbC9zaWduYWwuYwo+Pj4+ICsrKyBiL2FyY2gvYXJtL2tlcm5lbC9zaWduYWwuYwo+Pj4+IEBA
IC03Nyw4ICs3Nyw2IEBAIHN0YXRpYyBpbnQgcHJlc2VydmVfaXdtbXh0X2NvbnRleHQoc3RydWN0
Cj4+Pj4gaXdtbXh0X3NpZ2ZyYW1lIF9fdXNlciAqZnJhbWUpCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oCBrZnJhbWUtPm1hZ2ljID0gSVdNTVhUX01BR0lDOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAga2Zy
YW1lLT5zaXplID0gSVdNTVhUX1NUT1JBR0VfU0laRTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIGl3
bW14dF90YXNrX2NvcHkoY3VycmVudF90aHJlYWRfaW5mbygpLCAma2ZyYW1lLT5zdG9yYWdlKTsK
Pj4+PiAtCj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGVyciA9IF9fY29weV90b191c2VyKGZyYW1lLCBr
ZnJhbWUsIHNpemVvZigqZnJhbWUpKTsKPj4+PiDCoMKgwqDCoCB9IGVsc2Ugewo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqAgLyoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBGb3IgYnVnLWNvbXBhdGli
aWxpdHkgd2l0aCBvbGRlciBrZXJuZWxzLCBzb21lIHNwYWNlCj4+Pj4gQEAgLTg2LDEwICs4NCwx
NCBAQCBzdGF0aWMgaW50IHByZXNlcnZlX2l3bW14dF9jb250ZXh0KHN0cnVjdAo+Pj4+IGl3bW14
dF9zaWdmcmFtZSBfX3VzZXIgKmZyYW1lKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAqIFNldCB0
aGUgbWFnaWMgYW5kIHNpemUgYXBwcm9wcmlhdGVseSBzbyB0aGF0IHByb3Blcmx5Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgICogd3JpdHRlbiB1c2Vyc3BhY2UgY2FuIHNraXAgaXQgcmVsaWFibHk6
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+Pj4gLcKgwqDCoMKgwqDCoMKgIF9fcHV0X3Vz
ZXJfZXJyb3IoRFVNTVlfTUFHSUMsICZmcmFtZS0+bWFnaWMsIGVycik7Cj4+Pj4gLcKgwqDCoMKg
wqDCoMKgIF9fcHV0X3VzZXJfZXJyb3IoSVdNTVhUX1NUT1JBR0VfU0laRSwgJmZyYW1lLT5zaXpl
LCBlcnIpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAqa2ZyYW1lID0gKHN0cnVjdCBpd21teHRfc2ln
ZnJhbWUpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAubWFnaWMgPSBEVU1NWV9NQUdJ
QywKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAuc2l6ZcKgID0gSVdNTVhUX1NUT1JBR0Vf
U0laRSwKPj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pgo+Pj4+IFRoZSBzdG9yYWdlIG1lbWJl
ciBvZiBrZnJhbWUgaXMgdW5pbml0aWFsaXplZCwgaXQgc2VlbXMgd2lsbCBsZWFkIGEgaW5mbwo+
Pj4+IGxlYWsgdG8gdXNlcnNwYWNlID8KPj4+Pgo+Pj4+IEluIHNlY3Rpb24gMi40LjIuMyBJbml0
aWFsaXppbmcgU3RydWN0dXJlIE1lbWJlcnMgb2YgZ251LWMtbWFudWFsLCBpdAo+Pj4+IGhhcyBu
byBzcGVjaWZpYyBiZWhhdmlvcgo+Pj4+IHRvIGRlZmluZSB0aGUgdW5pbml0aWFsaXplZCBtZW1i
ZXIuCj4+Pj4KPj4+PiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIHdyb25nLgo+Pj4+Cj4+Pgo+
Pj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHdoZW4gdXNpbmcgYSBjb21wb3VuZCBpbml0aWFs
aXplciAoZWl0aGVyIGF0Cj4+PiB2YXJpYWJsZSBkZWNsYXJhdGlvbiBvciBieSBhc3NpZ25pbmcg
YSBjb21wb3VuZCBsaXRlcmFsIGxpa2UgaW4gdGhpcwo+Pj4gY2FzZSksIHRoZSB1bnNwZWNpZmll
ZCBtZW1iZXJzIGdldCBpbml0aWFsaXplZCB0byAwLgo+Pj4KPj4KPj4gQWxzbywgdG8gYmFjayB0
aGF0IGNsYWltIGEgYml0IG1vcmUsIHdoZW4gdXNpbmcgZGVzaWduYXRlZCBpbml0aWFsaXplcnNb
MV06Cj4+Cj4+ICJPbWl0dGVkIGZpZWxkcyBhcmUgaW1wbGljaXRseSBpbml0aWFsaXplZCB0aGUg
c2FtZSBhcyBmb3Igb2JqZWN0cyB0aGF0Cj4+IGhhdmUgc3RhdGljIHN0b3JhZ2UgZHVyYXRpb24u
Igo+IAo+IFdlIGFsc28gcmVseSBvbiB0aGlzIGVsc2V3aGVyZSBJSVVDLgo+IAo+IEkgZG9uJ3Qg
dGhpbmsgdGhpcyBndWFyYW50ZWUgZXh0ZW5kcyB0byBwYWRkaW5nIHRob3VnaCwgc28gd2F0Y2gg
b3V0Cj4gZm9yIHRoYXQuCj4gCj4gRm9yIHRoaXMgY2FzZSwgaXQgbG9va3MgbGlrZSBzdHJ1Y3Qg
aXdtbXh0X3NpZ2ZyYW1lIGlzIHBhZGRpbmctZnJlZQo+IHRob3VnaC4KClRoYW5rIHlvdSBmb3Ig
dGhlIGNsYXJpZnksIHRoYXQncyBjcnlzdGFsIGNsZWFyIGZvciB1cyBub3cuCgpUaGFua3MKSGFu
anVuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
