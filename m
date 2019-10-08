Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C7BD0419
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 01:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kE37UFh/jHP386K7dG/qfchaElSgFmQq+Tp2rO7S5v4=; b=R3U7QehUuhJvk1mHxjWItv8NH
	6njxPYUmBhewU8RJMKjMdb3blfcfvEJywcmYL62LTb5HnsEBm3srsoGkKYHJu8OrOgRDmbefQCtig
	crV4ZAPjFusRChbrYo69EdYQoBrWvA7nvSkUrunGSVnrjb9Wni66sMEFYONqROfYHigSBOTdkvLOh
	6FSkNm59XlTZJxPwUafefPafAoBhskiJjO/ehlfAsHg7rIds2JuZ8sY8JQLMow8+H4xd6fqT8Sf1+
	L8P9qvjuZqFMy+99dH32f+iTrbHaK7SQCqE+a1WU8LodXWw5mCCd9QT1ZLsNmmTmSb9pAwB+sRJip
	fiVhHta2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyuG-0005xW-Uo; Tue, 08 Oct 2019 23:28:40 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyu9-0005wu-Rf
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 23:28:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 16:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="187456628"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 16:28:30 -0700
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
 <422eea61-7cb9-e471-83fb-3f554ff5e079@fb.com>
 <6f280195-eef7-1fe7-ac42-ad6879ca9838@linux.intel.com>
 <bba604eb-4cca-257e-01d7-b2d9471e6455@fb.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <63e99afc-17b4-e63d-f00a-d8fd29b8e735@linux.intel.com>
Date: Tue, 8 Oct 2019 16:28:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bba604eb-4cca-257e-01d7-b2d9471e6455@fb.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_162833_906651_0D66074D 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvOC8yMDE5IDQ6MTUgUE0sIFRhbyBSZW4gd3JvdGU6Cj4gT24gMTAvOC8xOSAzOjQ1IFBN
LCBKYWUgSHl1biBZb28gd3JvdGU6Cj4+IEhpIFRhbywKPj4KPj4gT24gMTAvOC8yMDE5IDM6MDAg
UE0sIFRhbyBSZW4gd3JvdGU6Cj4+PiBPbiAxMC83LzE5IDQ6MTMgUE0sIEphZSBIeXVuIFlvbyB3
cm90ZToKPj4+PiBJbiBjYXNlIG9mIG1hc3RlciBwZW5kaW5nIHN0YXRlLCBpdCBzaG91bGQgbm90
IHRyaWdnZXIgdGhlIG1hc3Rlcgo+Pj4+IGNvbW1hbmQgYmVjYXVzZSB0aGlzIEgvVyBpcyBzaGFy
aW5nIHRoZSBzYW1lIGRhdGEgYnVmZmVyIGZvciBzbGF2ZQo+Pj4+IGFuZCBtYXN0ZXIgb3BlcmF0
aW9ucywgc28gdGhpcyBjb21taXQgZml4ZXMgdGhlIGlzc3VlIHdpdGggbWFraW5nCj4+Pj4gdGhl
IG1hc3RlciBjb21tYW5kIHRyaWdnZXJpbmcgaGFwcGVuIHdoZW4gdGhlIHN0YXRlIGdvZXMgdG8g
YWN0aXZlCj4+Pj4gc3RhdGUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKYWUgSHl1biBZb28g
PGphZS5oeXVuLnlvb0BsaW51eC5pbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIMKgIGRyaXZlcnMv
aTJjL2J1c3Nlcy9pMmMtYXNwZWVkLmMgfCA5ICsrKysrLS0tLQo+Pj4+ICDCoCAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXNwZWVkLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMv
aTJjLWFzcGVlZC5jCj4+Pj4gaW5kZXggZmE2Njk1MWIwNWQwLi40MGY2Y2Y5OGQzMmUgMTAwNjQ0
Cj4+Pj4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1hc3BlZWQuYwo+Pj4+ICsrKyBiL2Ry
aXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXNwZWVkLmMKPj4+PiBAQCAtMzM2LDE4ICszMzYsMTkgQEAg
c3RhdGljIHZvaWQgYXNwZWVkX2kyY19kb19zdGFydChzdHJ1Y3QgYXNwZWVkX2kyY19idXMgKmJ1
cykKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgaTJjX21zZyAqbXNnID0gJmJ1cy0+bXNnc1tidXMt
Pm1zZ3NfaW5kZXhdOwo+Pj4+ICDCoMKgwqDCoMKgIHU4IHNsYXZlX2FkZHIgPSBpMmNfOGJpdF9h
ZGRyX2Zyb21fbXNnKG1zZyk7Cj4+Pj4gIMKgIC3CoMKgwqAgYnVzLT5tYXN0ZXJfc3RhdGUgPSBB
U1BFRURfSTJDX01BU1RFUl9TVEFSVDsKPj4+PiAtCj4+Pj4gIMKgICNpZiBJU19FTkFCTEVEKENP
TkZJR19JMkNfU0xBVkUpCj4+Pj4gIMKgwqDCoMKgwqAgLyoKPj4+PiAgwqDCoMKgwqDCoMKgICog
SWYgaXQncyByZXF1ZXN0ZWQgaW4gdGhlIG1pZGRsZSBvZiBhIHNsYXZlIHNlc3Npb24sIHNldCB0
aGUgbWFzdGVyCj4+Pj4gIMKgwqDCoMKgwqDCoCAqIHN0YXRlIHRvICdwZW5kaW5nJyB0aGVuIEgv
VyB3aWxsIGNvbnRpbnVlIGhhbmRsaW5nIHRoaXMgbWFzdGVyCj4+Pj4gIMKgwqDCoMKgwqDCoCAq
IGNvbW1hbmQgd2hlbiB0aGUgYnVzIGNvbWVzIGJhY2sgdG8gdGhlIGlkbGUgc3RhdGUuCj4+Pj4g
IMKgwqDCoMKgwqDCoCAqLwo+Pj4+IC3CoMKgwqAgaWYgKGJ1cy0+c2xhdmVfc3RhdGUgIT0gQVNQ
RUVEX0kyQ19TTEFWRV9JTkFDVElWRSkKPj4+PiArwqDCoMKgIGlmIChidXMtPnNsYXZlX3N0YXRl
ICE9IEFTUEVFRF9JMkNfU0xBVkVfSU5BQ1RJVkUpIHsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
IGJ1cy0+bWFzdGVyX3N0YXRlID0gQVNQRUVEX0kyQ19NQVNURVJfUEVORElORzsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4+ICvCoMKgwqAgfQo+Pj4+ICDCoCAjZW5kaWYgLyogQ09O
RklHX0kyQ19TTEFWRSAqLwo+Pj4+ICDCoCArwqDCoMKgIGJ1cy0+bWFzdGVyX3N0YXRlID0gQVNQ
RUVEX0kyQ19NQVNURVJfU1RBUlQ7Cj4+Pj4gIMKgwqDCoMKgwqAgYnVzLT5idWZfaW5kZXggPSAw
Owo+Pj4+ICDCoCDCoMKgwqDCoMKgIGlmIChtc2ctPmZsYWdzICYgSTJDX01fUkQpIHsKPj4+PiBA
QCAtNDMyLDcgKzQzMyw3IEBAIHN0YXRpYyB1MzIgYXNwZWVkX2kyY19tYXN0ZXJfaXJxKHN0cnVj
dCBhc3BlZWRfaTJjX2J1cyAqYnVzLCB1MzIgaXJxX3N0YXR1cykKPj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgIGlmIChidXMtPnNsYXZlX3N0YXRlICE9IEFTUEVFRF9JMkNfU0xBVkVfSU5BQ1RJVkUp
Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X25vX2NvbXBsZXRlOwo+
Pj4+ICDCoCAtwqDCoMKgwqDCoMKgwqAgYnVzLT5tYXN0ZXJfc3RhdGUgPSBBU1BFRURfSTJDX01B
U1RFUl9TVEFSVDsKPj4+PiArwqDCoMKgwqDCoMKgwqAgYXNwZWVkX2kyY19kb19zdGFydChidXMp
Owo+Pj4+ICDCoMKgwqDCoMKgIH0KPj4+Cj4+PiBTaGFsbCB3ZSBtb3ZlIHRoZSByZXN0YXJ0LW1h
c3RlciBsb2dpYyBmcm9tIG1hc3Rlcl9pcnEgdG8gYnVzX2lycT8gVGhlIHJlYXNvbiBiZWluZzoK
Pj4+IG1hc3RlciB0cmFuc2FjdGlvbiBjYW5ub3QgYmUgcmVzdGFydGVkIHdoZW4gYXNwZWVkLWky
YyBpcyBydW5uaW5nIGluIHNsYXZlIHN0YXRlIGFuZAo+Pj4gcmVjZWl2ZXMgU1RPUCBpbnRlcnJ1
cHQsIGJlY2F1c2UgYXNwZWVkX2kyY19tYXN0ZXJfaXJxIHdvbid0IGJlIGNhbGxlZCBpbiB0aGlz
IGNhc2UuCj4+Cj4+IEV2ZW4gaW4gdGhhdCBjYXNlLCBtYXN0ZXIgY2FuIGJlIHJlc3RhcnRlZCBw
cm9wZXJseSBiZWNhdXNlIHNsYXZlX2lycQo+PiB3aWxsIGJlIGNhbGxlZCBmaXJzdCBiZWNhdXNl
IG1hc3RlciBpcyBpbiBNQVNURVJfUEVORElORyBzdGF0ZSwgc28gdGhlCj4+IHNsYXZlX2lycSBo
YW5kbGVzIHRoZSBTVE9QIGludGVycnVwdCBhcyB3ZWxsLCBhbmQgdGhlbiBtYXN0ZXJfaXJxIHdp
bGwKPj4gYmUgY2FsbGVkIHdpdGggU0xBVkVfSU5BQ1RJVkUgc3RhdGUgc28gdGhlIGFzcGVlZF9p
MmNfZG9fc3RhcnQgY2FuIGJlCj4+IGNhbGxlZCBldmVudHVhbGx5Lgo+IAo+IEkgbWVhbiBtYXN0
ZXJfaXJxIGNhbm5vdCBiZSBjYWxsZWQgd2hlbiBpcnFfcmVtYWluaW5nIGJlY29tZXMgMCBhZnRl
ciBzbGF2ZV9pcnEuCgpBaCwgSSBzZWUuIEl0IHdvdWxkIGJlIHBvc3NpYmx5IGhhcHBlbmVkLiBQ
cm9iYWJseSB3ZSBuZWVkIHRvIHJlbW92ZQonaWYgKGlycV9yZW1haW5pbmcpJyBjaGVja2luZyBp
biBidXNfaXJxIHRvIG1ha2UgaXQgY2FsbCBpcnFzIGFsd2F5cy4KV2lsbCBmaXggdGhlIGlzc3Vl
IGluIHRoZSBuZXh0IHJvdW5kLgoKVGhhbmtzLAoKSmFlCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
