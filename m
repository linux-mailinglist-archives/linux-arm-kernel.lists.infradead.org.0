Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED101DC914
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ej3bzoVcNZyK9sIgW+BCkYaQqomQ5p0ZF640Pkgjkzo=; b=Cn30ls6lCcMJx35j8n2LNC9hC
	1HjJCAzqJ1FMPSc7Qm4iq+5/B4rsrZ0FOqG3rvYAfxaKqSYxI9nhEjEVq6TiARA9tYYzPTLA0zuCz
	cHlWCC4Amesfs5Jkl/zlD47jeMksbxU1Y8oCwL/mnvH459ofVJZUwHEoLxIIyPzaLCRsY/BIQ+IbL
	5NrF2Sm/Xr9ic4rcT0UsvecueLaw1gqm+4OVfYvGfT+ALQvyyaElFowISa45ML7k7URcBBTnhXvUc
	lu18i4SfHxQFRY7A00mxYQg9U5pB1oclkyJLe+6tKIpb/0r8L04wCqHWR6KpjhEm+Tsr6+y5LF8Uz
	h9izzYgVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbh03-0003z8-Us; Thu, 21 May 2020 08:56:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgzr-0003yc-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:56:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8FD230E;
 Thu, 21 May 2020 01:56:10 -0700 (PDT)
Received: from [10.37.8.86] (unknown [10.37.8.86])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B8C33F68F;
 Thu, 21 May 2020 01:56:07 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] arm64: cpufeature: Modify address authentication
 cpufeature to exact
To: amit.kachhap@arm.com, catalin.marinas@arm.com
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
 <20200506171350.GH2878@gaia> <426d96ef-6a89-6ee5-c0e0-383b297f7f9f@arm.com>
 <20200512173301.GB21213@C02TF0J2HF1T.local>
 <ba6de270-fd9c-d623-69a1-f3340898336f@arm.com>
 <0c3c9c2d-e3a5-4b1f-5ff2-c4e21570ae47@arm.com>
 <0557ca21-99d0-a5a1-0703-d576ba956475@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <72b761c7-aaaf-676e-09f5-1c471a3f91ba@arm.com>
Date: Thu, 21 May 2020 10:00:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <0557ca21-99d0-a5a1-0703-d576ba956475@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_015611_965588_3E348C24 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

T24gMDUvMjEvMjAyMCAwOTowOSBBTSwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+IEhpIFN1enVraSwK
PiAKPiBPbiA1LzIwLzIwIDY6NTAgUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4+IE9uIDA1
LzEzLzIwMjAgMDQ6NDIgUE0sIEFtaXQgS2FjaGhhcCB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gNS8x
Mi8yMCAxMTowMyBQTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+Pj4+IE9uIEZyaSwgTWF5IDA4
LCAyMDIwIGF0IDA5OjUxOjUzUE0gKzA1MzAsIEFtaXQgS2FjaGhhcCB3cm90ZToKPj4+Pj4gT24g
NS82LzIwIDEwOjQzIFBNLCBDYXRhbGluIE1hcmluYXMgd3JvdGU6Cj4+Pj4+PiBPbiBUdWUsIEFw
ciAxNCwgMjAyMCBhdCAxMTowMTo1M0FNICswNTMwLCBBbWl0IERhbmllbCBLYWNoaGFwIHdyb3Rl
Ogo+Pj4+Pj4+IFRoaXMgcGF0Y2ggbW9kaWZpZXMgdGhlIGFkZHJlc3MgYXV0aGVudGljYXRpb24g
Y3B1ZmVhdHVyZSB0eXBlIHRvIAo+Pj4+Pj4+IEVYQUNUCj4+Pj4+Pj4gZnJvbSBlYXJsaWVyIExP
V0VSX1NBRkUgYXMgdGhlIGRpZmZlcmVudCBjb25maWd1cmF0aW9ucyBhZGRlZCBmb3IgCj4+Pj4+
Pj4gQXJtdjguNgo+Pj4+Pj4+IGVuaGFuY2VkIFBBQyBoYXZlIGRpZmZlcmVudCBiZWhhdmlvdXIg
YW5kIHRoZXJlIGlzIG5vIHR1bmFibGUgdG8gCj4+Pj4+Pj4gZW5hYmxlIHRoZQo+Pj4+Pj4+IGxv
d2VyIHNhZmUgdmVyc2lvbnMuIFRoZSBzYWZlIHZhbHVlIGlzIHNldCBhcyAwLgo+Pj4+Pj4+Cj4+
Pj4+Pj4gQWZ0ZXIgdGhpcyBjaGFuZ2UsIGlmIHRoZXJlIGlzIGFueSB2YXJpYXRpb24gaW4gY29u
ZmlndXJhdGlvbnMgaW4gCj4+Pj4+Pj4gc2Vjb25kYXJ5Cj4+Pj4+Pj4gY3B1cyBmcm9tIGJvb3Qg
Y3B1IHRoZW4gdGhvc2UgY3B1cyBhcmUgbWFya2VkIHRhaW50ZWQuIFRoZSBLVk0gCj4+Pj4+Pj4g
Z3Vlc3RzIG1heQo+Pj4+Pj4+IGNvbXBsZXRlbHkgZGlzYWJsZSBhZGRyZXNzIGF1dGhlbnRpY2F0
aW9uIGlmIHRoZXJlIGlzIGFueSBzdWNoIAo+Pj4+Pj4+IHZhcmlhdGlvbnMKPj4+Pj4+PiBkZXRl
Y3RlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFtaXQgRGFuaWVsIEthY2hoYXAg
PGFtaXQua2FjaGhhcEBhcm0uY29tPgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+IMKgwqAgYXJjaC9hcm02
NC9rZXJuZWwvY3B1ZmVhdHVyZS5jIHwgNCArKy0tCj4+Pj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYyAKPj4+Pj4+PiBiL2FyY2gvYXJt
NjQva2VybmVsL2NwdWZlYXR1cmUuYwo+Pj4+Pj4+IGluZGV4IDA4Nzk1MDI1NDA5Yy4uNTk5YjAz
ZGYyZjkzIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUu
Ywo+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+Pj4+Pj4+IEBA
IC0xNTQsOSArMTU0LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyAKPj4+
Pj4+PiBmdHJfaWRfYWE2NGlzYXIxW10gPSB7Cj4+Pj4+Pj4gwqDCoMKgwqDCoMKgIEFSTTY0X0ZU
Ul9CSVRTKEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgCj4+Pj4+Pj4g
SURfQUE2NElTQVIxX0ZDTUFfU0hJRlQsIDQsIDApLAo+Pj4+Pj4+IMKgwqDCoMKgwqDCoCBBUk02
NF9GVFJfQklUUyhGVFJfVklTSUJMRSwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIAo+Pj4+
Pj4+IElEX0FBNjRJU0FSMV9KU0NWVF9TSElGVCwgNCwgMCksCj4+Pj4+Pj4gQVJNNjRfRlRSX0JJ
VFMoRlRSX1ZJU0lCTEVfSUZfSVNfRU5BQkxFRChDT05GSUdfQVJNNjRfUFRSX0FVVEgpLAo+Pj4+
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9T
QUZFLCAKPj4+Pj4+PiBJRF9BQTY0SVNBUjFfQVBJX1NISUZULCA0LCAwKSwKPj4+Pj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGVFJfU1RSSUNULCBGVFJfRVhBQ1QsIElEX0FBNjRJ
U0FSMV9BUElfU0hJRlQsIDQsIAo+Pj4+Pj4+IDApLAo+Pj4+Pj4+IEFSTTY0X0ZUUl9CSVRTKEZU
Ul9WSVNJQkxFX0lGX0lTX0VOQUJMRUQoQ09ORklHX0FSTTY0X1BUUl9BVVRIKSwKPj4+Pj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwg
Cj4+Pj4+Pj4gSURfQUE2NElTQVIxX0FQQV9TSElGVCwgNCwgMCksCj4+Pj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgRlRSX1NUUklDVCwgRlRSX0VYQUNULCBJRF9BQTY0SVNBUjFf
QVBBX1NISUZULCA0LCAKPj4+Pj4+PiAwKSwKPj4+Pj4+PiDCoMKgwqDCoMKgwqAgQVJNNjRfRlRS
X0JJVFMoRlRSX1ZJU0lCTEUsIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCAKPj4+Pj4+PiBJ
RF9BQTY0SVNBUjFfRFBCX1NISUZULCA0LCAwKSwKPj4+Pj4+PiDCoMKgwqDCoMKgwqAgQVJNNjRf
RlRSX0VORCwKPj4+Pj4+Cj4+Pj4+PiBJcyB0aGlzIHN1ZmZpY2llbnQ/IElmIHdlIGhhdmUgdGhl
IGJvb3QgQ1BVIGFscmVhZHkgZW5hYmxpbmcgdGhlIAo+Pj4+Pj4gcHRyYXV0aAo+Pj4+Pj4gYW5k
IHdlIGdldCBhIHNlY29uZGFyeSBDUFUgd2l0aCBhIGRpZmZlcmVudCBJU0FSMSBmaWVsZCB0aGF0
IAo+Pj4+Pj4gbWF0Y2hlcyB0aGUKPj4+Pj4+IGFkZHJlc3MgYXV0aCBpbiBjcHVmZWF0dXJlLmMs
IHdlIHN0aWxsIGFsbG93IGl0IHRvIGJvb3QuIFdlIG5vIGxvbmdlcgo+Pj4+Pj4gcmVwb3J0IHRo
ZSBmZWF0dXJlIHRvIHRoZSB1c2VyIHN5c3RlbV9zdXBwb3J0c19hZGRyZXNzX2F1dGgoKSBpcyB0
cnVlCj4+Pj4+PiB3aGlsZSBzeXN0ZW1fc3VwcG9ydHNfZ2VuZXJpY19hdXRoKCkgd291bGQgYmUg
ZmFsc2UgYXMgaXQgY2hlY2tzIHRoZQo+Pj4+Pj4gc2FuaXRpc2VkIGZlYXR1cmUgcmVnaXN0ZXJz
Lgo+Pj4+Pgo+Pj4+PiBZZXMgYWdyZWVkLiBHZW5lcmljIGF1dGhlbnRpY2F0aW9uIGFsc28gbmVl
ZHMgRVhBQ1QgY3B1ZmVhdHVyZSB0eXBlLgo+Pj4+Cj4+Pj4gSSdtIHN0aWxsIG5vdCBzdXJlIHRo
YXQncyBzdWZmaWNpZW50LiBJZiB3ZSBib290IHRoZSBwcmltYXJ5IENQVSB3aXRoCj4+Pj4gcHRy
YXV0aCBhcyBkZXRlY3RlZCBpbiBwcm9jLlMsIHdlIGNvbnNpZGVyIHRoaXMgYSBib290IGZlYXR1
cmUgc28gYWxsCj4+Pj4gc2Vjb25kYXJ5IENQVXMgbXVzdCBoYXZlIGl0LiBTdWJzZXF1ZW50IENQ
VXMgYXJlIGN1cnJlbnRseSBjaGVja2VkIHZpYQo+Pj4+IHRoZSBhcm02NF9mZWF0dXJlc1tdIGRl
ZmluaXRpb25zIGFuZCB3ZSBhbGxvdyB0aGVtIHRvIGJvb3QgaWYgdGhlIElEIGlzCj4+Pj4gYXQg
bGVhc3QgdGhhdCBvZiB0aGUgYm9vdCBDUFUuIEhvdyBkb2VzIHRoaXMgaW50ZXJhY3Qgd2l0aCB0
aGUgYWJvdmUKPj4+PiBGVFJfRVhBQ1QgY2hhbmdlcz8KPj4+Cj4+PiBVbmZvcnR1bmF0ZWx5IEZU
Ul9FWEFDVCBkb2VzIG5vdCBlZmZlY3QgdGhlIGJvb3RmbG93IGRpcmVjdGx5IGJ1dCBtYXJrcwo+
Pj4gdGhlIGNwdSBUQUlOVEVEIGFuZCBnb2VzIGFoZWFkLgo+Pj4KPj4+Pgo+Pj4+IE15IGNvbmNl
cm4gaXMgdGhhdCB3ZSBib290IHdpdGggUEFDIGVuYWJsZWQgb24gYWxsIENQVXMgYnV0IGJlY2F1
c2Ugb2YKPj4+PiB0aGUgRlRSX0VYQUNULCB0aGUgc2FuaXRpc2VkIElEIHJlZ2lzdGVycyBubyBs
b25nZXIgcmVwb3J0IHRoZSBmZWF0dXJlLgo+Pj4+Cj4+Pgo+Pj4gWW91IGFyZSByaWdodCB0aGF0
IFBBQyBpcyBlbmFibGVkIGluIGhhcmR3YXJlIGJ1dCB1bi1yZXBvcnRlZCB0byB1c2VyIAo+Pj4g
aW4gdGhpcyBjYXNlLgo+Pj4KPj4+IFRoZSBpc3N1ZSBoZXJlIGlzIGluIGZlYXR1cmVfbWF0Y2hl
cygpIHdoaWNoIG9ubHkgdmFsaWRhdGVzIHdpdGggdGhlCj4+PiBlbnRyeS0+bWluX2ZpZWxkX3Zh
bHVlLiBJZiB3ZSBjYW4gbW9kaWZ5IHRoaXMgdmFsdWUgdG8gYm9vdCBjcHUgdmFsdWUKPj4+IGZv
ciBGVFJfRVhBQ1QgdHlwZSB0aGVuIHRoaXMgY3B1IHdpbGwgZmFpbCB0byBvbmxpbmUuCj4+PiBN
YXkgYmUgd2UgY2FuIGludHJvZHVjZSBhIG5ldyBzdHJ1Y3R1cmUgb3IgbWFrZSBhcm02NF9mZWF0
dXJlW10gCj4+PiB3cml0YWJsZSBmb3IgdGhpcy4KPj4+Cj4+PiBTb21ldGhpbmcgbGlrZSBiZWxv
dyBjb2RlLgo+Pgo+PiBUaGUgaGFzX2NwdWlkX2ZlYXR1cmUoKSBpcyBmb3IgZmVhdHVyZXMgd2l0
aCAiRlRSX0xPV0VSX1NBRkUiLiBIYWNraW5nCj4+IGl0IHRvIHN1cHBvcnQgRVhBQ1QgZG9lc24n
dCBsb29rIGlkZWFsLiBZb3UgbWF5IHNpbXBseSBhZGQgeW91ciBvd24KPj4gIm1hdGNoZXMoKSIg
Zm9yIHB0ci1hdXRoLgo+IAo+IFllcyBpdCBpcyByZWFzb25hYmxlIHRvIGhhdmUgc2VwYXJhdGUg
bWF0Y2goKSBmdW5jdGlvbi4gSSB3YXMgdGhpbmtpbmcKPiBvZiBhZGRpbmcgc29tZSBnZW5lcmlj
IG1hdGNoIGZ1bmN0aW9uIGZvciBGVFJfRVhBQ1QgdG8gYmUgdXNlZCBieSBvdGhlcgo+IHNpbWls
YXIgY3B1ZmVhdHVyZXMuCgpJZGVhbGx5LCBpZiB3ZSBlbmFibGUgQ1BVIGZlYXR1cmUgc2FuaXR5
IGNoZWNrIGluZnJhc3RydWN0dXJlIHRvIGRvIHRoaXMgCmZvciB1cyAoaS5lIHBhcmsgYSBDUFUg
d2hpY2ggY29uZmxpY3RzKSwgd2UgZG9uJ3QgaGF2ZSB0byBkdXBsaWNhdGUgaXQKaGVyZSBpbiB0
aGUgY2FwYWJpbGl0aWVzLiBGb3Igbm93LCB5ZXMsIGxldCB1cyB1c2Ugc29tZXRoaW5nIHNwZWNp
ZmljIHRvCnB0ci1hdXRoLCB3aGljaCBtYXkgbm90IGNhdGVyIGZvciBnZW5lcmljIEVYQUNUIGZl
YXR1cmVzLiBHZW5lcmFsaXppbmcKaXQgZm9yIGRpZmZlcmVudCAic2NvcGUicyBhcmUgZ29pbmcg
dG8gYmUgdHJpY2t5LgoKPiAKPj4KPj4gc29tZXRoaW5nIGxpa2UgOgo+Pgo+PiBzdGF0aWMgYm9v
bAo+PiBoYXNfYWRkcl9hdXRoKGNvbnN0IHN0cnVjdCBhcm02NF9jcHVfY2FwYWJpbGl0aWVzICpl
bnRyeSwgaW50IHNjb3BlKQo+PiB7Cj4+IMKgwqDCoMKgwqBzdGF0aWMgaW50IGJvb3RfY3B1X2F1
dGg7Cj4gCj4gSSBzdXBwb3NlIHRoYXQgaXMgdGhpcyBuZXcgbWF0Y2goKSBoYXMgdG8gYmUgdXNl
ZCBmb3IgYm90aCBBVVRIX0FSQ0ggYW5kIAo+IEFVVEhfSU1QX0RFRiB0aGVuIHdlIG1heSBuZWVk
IDIgc3VjaCBzdGF0aWMgdmFyaWFibGVzLgo+IAo+PiDCoMKgwqDCoMKgaW50IGxvY2FsX2NwdV9h
dXRoOwo+PiDCoMKgwqDCoMKgdTY0IGlzYXIxOwo+Pgo+PiDCoMKgwqDCoMKgLyogV2UgZG9uJ3Qg
ZXhwZWN0IHRvIGJlIGNhbGxlZCB3aXRoIFNDT1BFX1NZU1RFTSAqLwo+PiDCoMKgwqDCoMKgV0FS
Tl9PTihzY29wZSA9PSBTQ09QRV9TWVNURU0pOwo+PiDCoMKgwqDCoMKgaXNhcjEgPSByZWFkX3N5
c3JlZ19zKFNZU19JRF9BQTY0SVNBUjFfRUwxKTsKPj4gwqDCoMKgwqDCoGxvY2FsX2NwdV9hdXRo
ID0gY3B1aWRfZmVhdHVyZV9leHRyYWN0X3Vuc2lnbmVkX2ZpZWxkKGlzYXIxLCAKPj4gZW50cnkt
PnNoaWZ0KTsKPj4KPj4gwqDCoMKgwqDCoC8qCj4+IMKgwqDCoMKgwqAgKiBUaGUgcHRyLWF1dGgg
ZmVhdHVyZSBsZXZlbHMgYXJlIG5vdCBpbnRlcmNvbXBhdGlibGUgd2l0aAo+PiDCoMKgwqDCoMKg
ICogbG93ZXIgbGV2ZWxzLiBIZW5jZSB3ZSBtdXN0IG1hdGNoIGFsbCB0aGUgQ1BVcyB3aXRoIHRo
YXQKPj4gwqDCoMKgwqDCoCAqIG9mIHRoZSBib290IENQVS4gU28gY2FjaGUgdGhlIGxldmVsIG9m
IGJvb3QgQ1BVIGFuZCBjb21wYXJlCj4+IMKgwqDCoMKgwqAgKiBpdCBhZ2FpbnN0IHRoZSBzZWNv
bmRhcnkgQ1BVcy4KPj4gwqDCoMKgwqDCoCAqLwo+PiDCoMKgwqDCoMKgaWYgKHNjb3BlICYgU0NP
UEVfQk9PVF9DUFUpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBib290X2NwdV9hdXRoID0gbG9jYWxf
Y3B1X2F1dGg7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGJvb3RfY3B1X2F1dGggPiAwOwo+
IAo+IE1heSBiZSwKPiByZXR1cm4gYm9vdF9jcHVfYXV0aCA+PSBlbnRyeS0+bWluX2ZpZWxkX3Zh
bHVlCgpZZXMsIHRoYXRzIGZpbmUuCgpDaGVlcnMKU3V6dWtpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
