Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A99D3435
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wyGBoHbeBVsseBK+oMjSav4SVgmkrUzTRwJ5xez6t3o=; b=KvlKtMJldLX7BU2n6BKDJg3Ag
	1iEL456pAwzl6LcdMCbUmlkTM3h4MRb/djqLAXu6oBfkAp8bpigTnkFNy5xpQpBEU1+cPt2aij3rf
	9CidlXmmGJ37VgBP7Kt6V14L+B9GiL8CdLfmQHGQMOeSmFAF8wZPd9MeRkimQIBPUzn3yQuLcsHA3
	xE385kx6/ceJ+1kIHWKrU94LjGov9cRJY6FXQwzDKSowe/pgZb+Op3e5HsKDMDk3PD80lCpadcr7j
	mmZ9hkMGNeTxU9017EHnU/7wYDRTr7ToNEUJOnGqVeMiJ+LZJxmM2XvwMAnXIyRphJ3LeFiuhG4L2
	sVp5aVOsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIhfY-0006sx-J8; Thu, 10 Oct 2019 23:16:28 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIhfR-0006sR-3r
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:16:22 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 16:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="184577880"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga007.jf.intel.com with ESMTP; 10 Oct 2019 16:16:17 -0700
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
 <3ea1c0d5-47f1-bf8c-6b2d-2ea8d3f93471@fb.com>
 <637d4b8b-5113-b07b-f99f-ce66dbe6948c@linux.intel.com>
 <5ce20a28-21ed-ff0c-9e31-bcac3cd7a5fb@fb.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <69296b93-8fc6-c056-ab9b-ae190dc5eea1@linux.intel.com>
Date: Thu, 10 Oct 2019 16:16:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5ce20a28-21ed-ff0c-9e31-bcac3cd7a5fb@fb.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_161621_171168_710F86BD 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

T24gMTAvMTAvMjAxOSA0OjExIFBNLCBUYW8gUmVuIHdyb3RlOgo+IE9uIDEwLzEwLzE5IDM6MDQg
UE0sIEphZSBIeXVuIFlvbyB3cm90ZToKPj4gT24gMTAvMTAvMjAxOSAyOjIwIFBNLCBUYW8gUmVu
IHdyb3RlOgo+Pj4gT24gMTAvOS8xOSAyOjIwIFBNLCBKYWUgSHl1biBZb28gd3JvdGU6Cj4+IFsu
Li5dCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqIElmIGEgcGVlciBtYXN0ZXIgc3RhcnRzIGEgeGZlciBpbW1lZGlhdGVseSBhZnRlciBpdCBx
dWV1ZXMgYQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgICogbWFzdGVyIGNvbW1hbmQsIGNoYW5nZSBp
dHMgc3RhdGUgdG8gJ3BlbmRpbmcnIHRoZW4gSC9XIHdpbGwKPj4+PiAtwqDCoMKgwqDCoMKgwqDC
oCAqIGNvbnRpbnVlIHRoZSBxdWV1ZWQgbWFzdGVyIHhmZXIganVzdCBhZnRlciBjb21wbGV0aW5n
IHRoZQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgICogc2xhdmUgbW9kZSBzZXNzaW9uLgo+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgICogbWFzdGVyIGNvbW1hbmQsIGNsZWFyIHRoZSBxdWV1ZWQgbWFzdGVy
IGNvbW1hbmQgYW5kIGNoYW5nZQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICogaXRzIHN0YXRlIHRv
ICdwZW5kaW5nJy4gVG8gc2ltcGxpZnkgaGFuZGxpbmcgb2YgcGVuZGluZwo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgICogY2FzZXMsIGl0IHVzZXMgUy9XIHNvbHV0aW9uIGluc3RlYWQgb2YgSC9XIGNv
bW1hbmQgcXVldWUKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGhhbmRsaW5nLgo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHVubGlrZWx5
KGlycV9zdGF0dXMgJiBBU1BFRURfSTJDRF9JTlRSX1NMQVZFX01BVENIKSkgewo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHdyaXRlbChyZWFkbChidXMtPmJhc2UgKyBBU1BFRURfSTJDX0NN
RF9SRUcpICYKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH5BU1BFRURfSTJD
RF9NQVNURVJfQ01EU19NQVNLLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnVzLT5iYXNlICsgQVNQRUVEX0kyQ19DTURfUkVHKTsKPj4+Cj4+PiBTb3JyeSBmb3Ig
dGhlIGxhdGUgY29tbWVudHMgKGp1c3Qgbm90aWNlZCB0aGlzIGxpbmUgd2hpbGUgdGVzdGluZyB0
aGUgcGF0Y2gpOgo+Pj4KPj4+IEkgYXNzdW1lIHRoaXMgbGluZSBpcyBhaW1lZCBhdCBzdG9wcGlu
ZyB0aGUgcnVubmluZyBtYXN0ZXIgY29tbWFuZHMsIGJ1dCBhcyBwZXIKPj4+IEFTVDI1MDAgZGF0
YXNoZWV0LCBpdCdzIE5PUCB0byB3cml0ZSAwIHRvIE1BU1RFUl9TVE9QL01BU1RFUl9SWC9NQVNU
RVJfVFggYml0cy4KPj4+IE1heWJlIGFsbCB3ZSBuZWVkIGlzIHdyaXRpbmcgMSB0byBNQVNURVJf
U1RPUCBmaWVsZD8KPj4KPj4gVGhlcmUgY291bGQgYmUgdHdvIHBlbmRpbmcgY2FzZXM6Cj4+IDEu
IE1hc3RlciBnb2VzIHRvIHBlbmRpbmcgYmVmb3JlIGl0IHRyaWdnZXJzIGEgY29tbWFuZCBpZiBh
IHNsYXZlCj4+ICDCoMKgIG9wZXJhdGlvbiBpcyBhbHJlYWR5IGluaXRpYXRlZC4KPj4gMi4gTWFz
dGVyIGdvZXMgdG8gcGVuZGluZyBhZnRlciBpdCB0cmlnZ2VyZWQgYSBjb21tYW5kIGlmIGEgcGVl
cgo+PiAgwqDCoCBtYXN0ZXIgaW1tZWRpYXRlbHkgc2VuZHMgc29tZXRoaW5nIGp1c3QgYWZ0ZXIg
dGhlIG1hc3RlciBjb21tYW5kCj4+ICDCoMKgIHRyaWdnZXJpbmcuCj4+Cj4+IEFib3ZlIGNvZGUg
aXMgZm9yIHRoZSBsYXR0ZXIgY2FzZS4gSC9XIGhhbmRsZXMgdGhlIGNhc2UgcHJpb3JpdHkgYmFz
ZWQKPj4gc28gdGhlIHNsYXZlIGV2ZW50IHdpbGwgYmUgaGFuZGxlZCBmaXJzdCwgYW5kIHRoZW4g
dGhlIG1hc3RlciBjb21tYW5kCj4+IHdpbGwgYmUgaGFuZGxlZCB3aGVuIHRoZSBzbGF2ZSBvcGVy
YXRpb24gaXMgY29tcGxldGVkLiBQcm9ibGVtIGlzLAo+PiB0aGlzIEgvVyBzaGFyZXMgdGhlIHNh
bWUgYnVmZmVyIGZvciBtYXN0ZXIgYW5kIHNsYXZlIG9wZXJhdGlvbnMgc28KPj4gaXQncyB1bnJl
bGlhYmxlLiBBYm92ZSBjb2RlIGp1c3QgcmVtb3ZlcyB0aGUgbWFzdGVyIGNvbW1hbmQgZnJvbSB0
aGUKPj4gY29tbWFuZCByZWdpc3RlciB0byBwcmV2ZW50IHRoaXMgSC9XIGNvbW1hbmQgaGFuZGxp
bmcgb2YgcGVuZGluZyBldmVudHMuCj4+IEluc3RlYWQsIGl0IHJlc3RhcnRzIHRoZSBtYXN0ZXIg
Y29tbWFuZCB1c2luZyBhIGNhbGwgb2YgYXNwZWVkX2kyY19kb19zdGFydCB3aGVuIHRoZSBzbGF2
ZSBvcGVyYXRpb24gaXMgY29tcGxldGVkLgo+IAo+IFRoYW5rcyBmb3IgdGhlIGNsYXJpZnksIEph
ZS4gSSBtZWFuIGNsZWFyaW5nIHRoZXNlIGJpdHMgaGFzIG5vIGVmZmVjdCB0bwo+IGhhcmR3YXJl
IGFjY29yZGluZyB0byBhc3BlZWQgZGF0YXNoZWV0OyBpbiBvdGhlciB3b3JkLCBtYXN0ZXIgY29t
bWFuZCBjYW5ub3QKPiBiZSByZW1vdmVkIGZyb20gY29tbWFuZCByZWdpc3RlciBieSB0aGlzIHN0
YXRlbWVudC4KPiAKPiBGb3IgZXhhbXBsZSwgYmVsb3cgaXMgdGhlIGRlc2NyaXB0aW9uIGZvciBN
QVNURVJfU1RPUF9DTUQoSTJDRDE0LCBiaXQgNSk6Cj4gCj4gICAgMDogTk9QCj4gICAgMTogSXNz
dWUgTWFzdGVyIFN0b3AgQ29tbWFuZAo+ICAgIFRoaXMgcmVnaXN0ZXIgd2lsbCBiZSBhdXRvbWF0
aWNhbGx5IGNsZWFyZWQgYnkgSC9XIHdoZW4gU3RvcCBDb21tYW5kIGhhcwo+ICAgIGJlZW4gaXNz
dWVzLgoKSXQncyByZW1vdmluZyBiZWZvcmUgSC9XIGZldGNoZXMgdGhlIHRoZSBjb21tYW5kIHNv
IHRoZSBwZW5kaW5nIGNvbW1hbmQKaXNuJ3QgY2xlYXJlZCBieSBIL1cgYXQgdGhlIHRpbWluZy4g
SWYgd2Ugc2VuZCBhIHN0b3AgY29tbWFuZCBhdCBoZXJlLCAKdGhlIGJ1cyB3aWxsIGJlIG1lc3Nl
ZCB1cC4KClRoYW5rcywKCkphZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
