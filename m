Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0C01DB4BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 15:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U3iduNXZ1HHPI9ZCo7uvl9Gz86+aLmhIa91vsioF8QY=; b=Qd+koEVquWiSe9ozTFbPAp2P1
	X+JO8IXd6nQTR6tq6CSknrX8r8IEhmGoTSppwQWqOPq67bMfO77vNqsfOBVtQVfr+3l28FDNg28Pq
	/+4UjK2XCrQHf9I0Ll46Wo5wCOBIcbHhvp0N8jldOIjupjginsI4Q28fuoXC8nLgnLlqC2mFMQl7o
	96mjKghkQFKrVtC7Zv2M6eqcTmJc4p0xbI5QHt6HTLhliTgYsDxUMineHPloMJQVudQFaKiDKvGKL
	/eq61qsnf9gEdi283K4YHj/zgjZCE0hYJAQL6YqkqxmWgdBkDgQNIYc2BofRKPknJouRyKnBgoOGn
	dipRrduNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOZv-0003BO-R8; Wed, 20 May 2020 13:16:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOZg-0003AV-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 13:15:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBD5130E;
 Wed, 20 May 2020 06:15:53 -0700 (PDT)
Received: from [10.37.8.206] (unknown [10.37.8.206])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9221E3F52E;
 Wed, 20 May 2020 06:15:50 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] arm64: cpufeature: Modify address authentication
 cpufeature to exact
To: amit.kachhap@arm.com, catalin.marinas@arm.com
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
 <20200506171350.GH2878@gaia> <426d96ef-6a89-6ee5-c0e0-383b297f7f9f@arm.com>
 <20200512173301.GB21213@C02TF0J2HF1T.local>
 <ba6de270-fd9c-d623-69a1-f3340898336f@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0c3c9c2d-e3a5-4b1f-5ff2-c4e21570ae47@arm.com>
Date: Wed, 20 May 2020 14:20:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <ba6de270-fd9c-d623-69a1-f3340898336f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_061556_245473_584DEEAC 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, keescook@chromium.org, kristina.martsenko@arm.com,
 broonie@kernel.org, james.morse@arm.com, Vincenzo.Frascino@arm.com,
 will@kernel.org, dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMTMvMjAyMCAwNDo0MiBQTSwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+IAo+IAo+IE9uIDUv
MTIvMjAgMTE6MDMgUE0sIENhdGFsaW4gTWFyaW5hcyB3cm90ZToKPj4gT24gRnJpLCBNYXkgMDgs
IDIwMjAgYXQgMDk6NTE6NTNQTSArMDUzMCwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+Pj4gT24gNS82
LzIwIDEwOjQzIFBNLCBDYXRhbGluIE1hcmluYXMgd3JvdGU6Cj4+Pj4gT24gVHVlLCBBcHIgMTQs
IDIwMjAgYXQgMTE6MDE6NTNBTSArMDUzMCwgQW1pdCBEYW5pZWwgS2FjaGhhcCB3cm90ZToKPj4+
Pj4gVGhpcyBwYXRjaCBtb2RpZmllcyB0aGUgYWRkcmVzcyBhdXRoZW50aWNhdGlvbiBjcHVmZWF0
dXJlIHR5cGUgdG8gCj4+Pj4+IEVYQUNUCj4+Pj4+IGZyb20gZWFybGllciBMT1dFUl9TQUZFIGFz
IHRoZSBkaWZmZXJlbnQgY29uZmlndXJhdGlvbnMgYWRkZWQgZm9yIAo+Pj4+PiBBcm12OC42Cj4+
Pj4+IGVuaGFuY2VkIFBBQyBoYXZlIGRpZmZlcmVudCBiZWhhdmlvdXIgYW5kIHRoZXJlIGlzIG5v
IHR1bmFibGUgdG8gCj4+Pj4+IGVuYWJsZSB0aGUKPj4+Pj4gbG93ZXIgc2FmZSB2ZXJzaW9ucy4g
VGhlIHNhZmUgdmFsdWUgaXMgc2V0IGFzIDAuCj4+Pj4+Cj4+Pj4+IEFmdGVyIHRoaXMgY2hhbmdl
LCBpZiB0aGVyZSBpcyBhbnkgdmFyaWF0aW9uIGluIGNvbmZpZ3VyYXRpb25zIGluIAo+Pj4+PiBz
ZWNvbmRhcnkKPj4+Pj4gY3B1cyBmcm9tIGJvb3QgY3B1IHRoZW4gdGhvc2UgY3B1cyBhcmUgbWFy
a2VkIHRhaW50ZWQuIFRoZSBLVk0gCj4+Pj4+IGd1ZXN0cyBtYXkKPj4+Pj4gY29tcGxldGVseSBk
aXNhYmxlIGFkZHJlc3MgYXV0aGVudGljYXRpb24gaWYgdGhlcmUgaXMgYW55IHN1Y2ggCj4+Pj4+
IHZhcmlhdGlvbnMKPj4+Pj4gZGV0ZWN0ZWQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFt
aXQgRGFuaWVsIEthY2hoYXAgPGFtaXQua2FjaGhhcEBhcm0uY29tPgo+Pj4+PiAtLS0KPj4+Pj4g
wqDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMgfCA0ICsrLS0KPj4+Pj4gwqDCoCAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jIAo+Pj4+PiBiL2Fy
Y2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+Pj4+PiBpbmRleCAwODc5NTAyNTQwOWMuLjU5
OWIwM2RmMmY5MyAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVy
ZS5jCj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+Pj4+PiBAQCAt
MTU0LDkgKzE1NCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXJtNjRfZnRyX2JpdHMgCj4+Pj4+
IGZ0cl9pZF9hYTY0aXNhcjFbXSA9IHsKPj4+Pj4gwqDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRT
KEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgCj4+Pj4+IElEX0FBNjRJ
U0FSMV9GQ01BX1NISUZULCA0LCAwKSwKPj4+Pj4gwqDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRT
KEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgCj4+Pj4+IElEX0FBNjRJ
U0FSMV9KU0NWVF9TSElGVCwgNCwgMCksCj4+Pj4+ICAgICAgICAKPj4+Pj4gQVJNNjRfRlRSX0JJ
VFMoRlRSX1ZJU0lCTEVfSUZfSVNfRU5BQkxFRChDT05GSUdfQVJNNjRfUFRSX0FVVEgpLAo+Pj4+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FG
RSwgSURfQUE2NElTQVIxX0FQSV9TSElGVCwgCj4+Pj4+IDQsIDApLAo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBGVFJfU1RSSUNULCBGVFJfRVhBQ1QsIElEX0FBNjRJU0FSMV9B
UElfU0hJRlQsIDQsIDApLAo+Pj4+PiAgICAgICAgCj4+Pj4+IEFSTTY0X0ZUUl9CSVRTKEZUUl9W
SVNJQkxFX0lGX0lTX0VOQUJMRUQoQ09ORklHX0FSTTY0X1BUUl9BVVRIKSwKPj4+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIElEX0FB
NjRJU0FSMV9BUEFfU0hJRlQsIAo+Pj4+PiA0LCAwKSwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgRlRSX1NUUklDVCwgRlRSX0VYQUNULCBJRF9BQTY0SVNBUjFfQVBBX1NISUZU
LCA0LCAwKSwKPj4+Pj4gwqDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9WSVNJQkxFLCBG
VFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgCj4+Pj4+IElEX0FBNjRJU0FSMV9EUEJfU0hJRlQs
IDQsIDApLAo+Pj4+PiDCoMKgwqDCoMKgwqAgQVJNNjRfRlRSX0VORCwKPj4+Pgo+Pj4+IElzIHRo
aXMgc3VmZmljaWVudD8gSWYgd2UgaGF2ZSB0aGUgYm9vdCBDUFUgYWxyZWFkeSBlbmFibGluZyB0
aGUgCj4+Pj4gcHRyYXV0aAo+Pj4+IGFuZCB3ZSBnZXQgYSBzZWNvbmRhcnkgQ1BVIHdpdGggYSBk
aWZmZXJlbnQgSVNBUjEgZmllbGQgdGhhdCBtYXRjaGVzIAo+Pj4+IHRoZQo+Pj4+IGFkZHJlc3Mg
YXV0aCBpbiBjcHVmZWF0dXJlLmMsIHdlIHN0aWxsIGFsbG93IGl0IHRvIGJvb3QuIFdlIG5vIGxv
bmdlcgo+Pj4+IHJlcG9ydCB0aGUgZmVhdHVyZSB0byB0aGUgdXNlciBzeXN0ZW1fc3VwcG9ydHNf
YWRkcmVzc19hdXRoKCkgaXMgdHJ1ZQo+Pj4+IHdoaWxlIHN5c3RlbV9zdXBwb3J0c19nZW5lcmlj
X2F1dGgoKSB3b3VsZCBiZSBmYWxzZSBhcyBpdCBjaGVja3MgdGhlCj4+Pj4gc2FuaXRpc2VkIGZl
YXR1cmUgcmVnaXN0ZXJzLgo+Pj4KPj4+IFllcyBhZ3JlZWQuIEdlbmVyaWMgYXV0aGVudGljYXRp
b24gYWxzbyBuZWVkcyBFWEFDVCBjcHVmZWF0dXJlIHR5cGUuCj4+Cj4+IEknbSBzdGlsbCBub3Qg
c3VyZSB0aGF0J3Mgc3VmZmljaWVudC4gSWYgd2UgYm9vdCB0aGUgcHJpbWFyeSBDUFUgd2l0aAo+
PiBwdHJhdXRoIGFzIGRldGVjdGVkIGluIHByb2MuUywgd2UgY29uc2lkZXIgdGhpcyBhIGJvb3Qg
ZmVhdHVyZSBzbyBhbGwKPj4gc2Vjb25kYXJ5IENQVXMgbXVzdCBoYXZlIGl0LiBTdWJzZXF1ZW50
IENQVXMgYXJlIGN1cnJlbnRseSBjaGVja2VkIHZpYQo+PiB0aGUgYXJtNjRfZmVhdHVyZXNbXSBk
ZWZpbml0aW9ucyBhbmQgd2UgYWxsb3cgdGhlbSB0byBib290IGlmIHRoZSBJRCBpcwo+PiBhdCBs
ZWFzdCB0aGF0IG9mIHRoZSBib290IENQVS4gSG93IGRvZXMgdGhpcyBpbnRlcmFjdCB3aXRoIHRo
ZSBhYm92ZQo+PiBGVFJfRVhBQ1QgY2hhbmdlcz8KPiAKPiBVbmZvcnR1bmF0ZWx5IEZUUl9FWEFD
VCBkb2VzIG5vdCBlZmZlY3QgdGhlIGJvb3RmbG93IGRpcmVjdGx5IGJ1dCBtYXJrcwo+IHRoZSBj
cHUgVEFJTlRFRCBhbmQgZ29lcyBhaGVhZC4KPiAKPj4KPj4gTXkgY29uY2VybiBpcyB0aGF0IHdl
IGJvb3Qgd2l0aCBQQUMgZW5hYmxlZCBvbiBhbGwgQ1BVcyBidXQgYmVjYXVzZSBvZgo+PiB0aGUg
RlRSX0VYQUNULCB0aGUgc2FuaXRpc2VkIElEIHJlZ2lzdGVycyBubyBsb25nZXIgcmVwb3J0IHRo
ZSBmZWF0dXJlLgo+Pgo+IAo+IFlvdSBhcmUgcmlnaHQgdGhhdCBQQUMgaXMgZW5hYmxlZCBpbiBo
YXJkd2FyZSBidXQgdW4tcmVwb3J0ZWQgdG8gdXNlciBpbiAKPiB0aGlzIGNhc2UuCj4gCj4gVGhl
IGlzc3VlIGhlcmUgaXMgaW4gZmVhdHVyZV9tYXRjaGVzKCkgd2hpY2ggb25seSB2YWxpZGF0ZXMg
d2l0aCB0aGUKPiBlbnRyeS0+bWluX2ZpZWxkX3ZhbHVlLiBJZiB3ZSBjYW4gbW9kaWZ5IHRoaXMg
dmFsdWUgdG8gYm9vdCBjcHUgdmFsdWUKPiBmb3IgRlRSX0VYQUNUIHR5cGUgdGhlbiB0aGlzIGNw
dSB3aWxsIGZhaWwgdG8gb25saW5lLgo+IE1heSBiZSB3ZSBjYW4gaW50cm9kdWNlIGEgbmV3IHN0
cnVjdHVyZSBvciBtYWtlIGFybTY0X2ZlYXR1cmVbXSB3cml0YWJsZSAKPiBmb3IgdGhpcy4KPiAK
PiBTb21ldGhpbmcgbGlrZSBiZWxvdyBjb2RlLgoKVGhlIGhhc19jcHVpZF9mZWF0dXJlKCkgaXMg
Zm9yIGZlYXR1cmVzIHdpdGggIkZUUl9MT1dFUl9TQUZFIi4gSGFja2luZwppdCB0byBzdXBwb3J0
IEVYQUNUIGRvZXNuJ3QgbG9vayBpZGVhbC4gWW91IG1heSBzaW1wbHkgYWRkIHlvdXIgb3duCiJt
YXRjaGVzKCkiIGZvciBwdHItYXV0aC4KCnNvbWV0aGluZyBsaWtlIDoKCnN0YXRpYyBib29sCmhh
c19hZGRyX2F1dGgoY29uc3Qgc3RydWN0IGFybTY0X2NwdV9jYXBhYmlsaXRpZXMgKmVudHJ5LCBp
bnQgc2NvcGUpCnsKCXN0YXRpYyBpbnQgYm9vdF9jcHVfYXV0aDsKCWludCBsb2NhbF9jcHVfYXV0
aDsKCXU2NCBpc2FyMTsKCgkvKiBXZSBkb24ndCBleHBlY3QgdG8gYmUgY2FsbGVkIHdpdGggU0NP
UEVfU1lTVEVNICovCglXQVJOX09OKHNjb3BlID09IFNDT1BFX1NZU1RFTSk7Cglpc2FyMSA9IHJl
YWRfc3lzcmVnX3MoU1lTX0lEX0FBNjRJU0FSMV9FTDEpOwoJbG9jYWxfY3B1X2F1dGggPSBjcHVp
ZF9mZWF0dXJlX2V4dHJhY3RfdW5zaWduZWRfZmllbGQoaXNhcjEsIGVudHJ5LT5zaGlmdCk7CgkJ
CQkJCQoJLyoKCSAqIFRoZSBwdHItYXV0aCBmZWF0dXJlIGxldmVscyBhcmUgbm90IGludGVyY29t
cGF0aWJsZSB3aXRoCgkgKiBsb3dlciBsZXZlbHMuIEhlbmNlIHdlIG11c3QgbWF0Y2ggYWxsIHRo
ZSBDUFVzIHdpdGggdGhhdAoJICogb2YgdGhlIGJvb3QgQ1BVLiBTbyBjYWNoZSB0aGUgbGV2ZWwg
b2YgYm9vdCBDUFUgYW5kIGNvbXBhcmUKCSAqIGl0IGFnYWluc3QgdGhlIHNlY29uZGFyeSBDUFVz
LgoJICovCglpZiAoc2NvcGUgJiBTQ09QRV9CT09UX0NQVSkgewoJCWJvb3RfY3B1X2F1dGggPSBs
b2NhbF9jcHVfYXV0aDsKCQlyZXR1cm4gYm9vdF9jcHVfYXV0aCA+IDA7Cgl9IGVsc2UgaWYgKHNj
b3BlICYgU0NPUEVfTE9DQUxfQ1BVKSB7CgkJcmV0dXJuIGxvY2FsX2NwdV9hdXRoID09IGJvb3Rf
Y3B1X2F1dGg7Cgl9Cn0KClN1enVraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
