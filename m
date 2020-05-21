Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873721DC841
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m9SUbr/7NYehsHP96fk/gl9kdQ5lRUf1KKkyi6/zCpc=; b=I0A4Ww/zWsacxv/qSqVHoPlYm
	IxeBGWCqhSmaFX+iKQy+DXejWVNyA0lv6WjmEq0QM2Qj3J26081ontKNs9/FKDd1jJfdcaKt3jSNd
	28Qa0259CG96qTQ43pA8oWBI1nC8NKtB3PgKd1UxbykPRB8CJpfauNb1HJ2dfTNcqE+6FLtSyZm6Q
	de2DG1s9UNlj6emXqfYliTFkTFLUI+H4TjelgxkMhtShKMiHqLx36oba8ypagEe7s2/y2rzKf6ajL
	c3DkMmVbSGjxcY67cpQcgsnclM2H1Ccb1j+mPzqDaZyzyUlVwbdrNOfigAAS62ssa8rXGvtrc81p1
	eKhiRjksA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgHa-0000Ha-MA; Thu, 21 May 2020 08:10:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgHR-0007l3-MD
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:10:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D684D6E;
 Thu, 21 May 2020 01:10:07 -0700 (PDT)
Received: from [10.57.24.156] (unknown [10.57.24.156])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2E3F3F52E;
 Thu, 21 May 2020 01:10:02 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] arm64: cpufeature: Modify address authentication
 cpufeature to exact
To: Suzuki K Poulose <suzuki.poulose@arm.com>, catalin.marinas@arm.com
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
 <20200506171350.GH2878@gaia> <426d96ef-6a89-6ee5-c0e0-383b297f7f9f@arm.com>
 <20200512173301.GB21213@C02TF0J2HF1T.local>
 <ba6de270-fd9c-d623-69a1-f3340898336f@arm.com>
 <0c3c9c2d-e3a5-4b1f-5ff2-c4e21570ae47@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <0557ca21-99d0-a5a1-0703-d576ba956475@arm.com>
Date: Thu, 21 May 2020 13:39:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0c3c9c2d-e3a5-4b1f-5ff2-c4e21570ae47@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_011017_826062_11CD2F24 
X-CRM114-Status: GOOD (  23.16  )
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

SGkgU3V6dWtpLAoKT24gNS8yMC8yMCA2OjUwIFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+
IE9uIDA1LzEzLzIwMjAgMDQ6NDIgUE0sIEFtaXQgS2FjaGhhcCB3cm90ZToKPj4KPj4KPj4gT24g
NS8xMi8yMCAxMTowMyBQTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+Pj4gT24gRnJpLCBNYXkg
MDgsIDIwMjAgYXQgMDk6NTE6NTNQTSArMDUzMCwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+Pj4+IE9u
IDUvNi8yMCAxMDo0MyBQTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+Pj4+PiBPbiBUdWUsIEFw
ciAxNCwgMjAyMCBhdCAxMTowMTo1M0FNICswNTMwLCBBbWl0IERhbmllbCBLYWNoaGFwIHdyb3Rl
Ogo+Pj4+Pj4gVGhpcyBwYXRjaCBtb2RpZmllcyB0aGUgYWRkcmVzcyBhdXRoZW50aWNhdGlvbiBj
cHVmZWF0dXJlIHR5cGUgdG8gCj4+Pj4+PiBFWEFDVAo+Pj4+Pj4gZnJvbSBlYXJsaWVyIExPV0VS
X1NBRkUgYXMgdGhlIGRpZmZlcmVudCBjb25maWd1cmF0aW9ucyBhZGRlZCBmb3IgCj4+Pj4+PiBB
cm12OC42Cj4+Pj4+PiBlbmhhbmNlZCBQQUMgaGF2ZSBkaWZmZXJlbnQgYmVoYXZpb3VyIGFuZCB0
aGVyZSBpcyBubyB0dW5hYmxlIHRvIAo+Pj4+Pj4gZW5hYmxlIHRoZQo+Pj4+Pj4gbG93ZXIgc2Fm
ZSB2ZXJzaW9ucy4gVGhlIHNhZmUgdmFsdWUgaXMgc2V0IGFzIDAuCj4+Pj4+Pgo+Pj4+Pj4gQWZ0
ZXIgdGhpcyBjaGFuZ2UsIGlmIHRoZXJlIGlzIGFueSB2YXJpYXRpb24gaW4gY29uZmlndXJhdGlv
bnMgaW4gCj4+Pj4+PiBzZWNvbmRhcnkKPj4+Pj4+IGNwdXMgZnJvbSBib290IGNwdSB0aGVuIHRo
b3NlIGNwdXMgYXJlIG1hcmtlZCB0YWludGVkLiBUaGUgS1ZNIAo+Pj4+Pj4gZ3Vlc3RzIG1heQo+
Pj4+Pj4gY29tcGxldGVseSBkaXNhYmxlIGFkZHJlc3MgYXV0aGVudGljYXRpb24gaWYgdGhlcmUg
aXMgYW55IHN1Y2ggCj4+Pj4+PiB2YXJpYXRpb25zCj4+Pj4+PiBkZXRlY3RlZC4KPj4+Pj4+Cj4+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbWl0IERhbmllbCBLYWNoaGFwIDxhbWl0LmthY2hoYXBAYXJt
LmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gwqDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJl
LmMgfCA0ICsrLS0KPj4+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJu
ZWwvY3B1ZmVhdHVyZS5jIAo+Pj4+Pj4gYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMK
Pj4+Pj4+IGluZGV4IDA4Nzk1MDI1NDA5Yy4uNTk5YjAzZGYyZjkzIDEwMDY0NAo+Pj4+Pj4gLS0t
IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+Pj4+PiArKysgYi9hcmNoL2FybTY0
L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4+Pj4+IEBAIC0xNTQsOSArMTU0LDkgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyAKPj4+Pj4+IGZ0cl9pZF9hYTY0aXNhcjFbXSA9IHsK
Pj4+Pj4+IMKgwqDCoMKgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfVklTSUJMRSwgRlRSX1NUUklD
VCwgRlRSX0xPV0VSX1NBRkUsIAo+Pj4+Pj4gSURfQUE2NElTQVIxX0ZDTUFfU0hJRlQsIDQsIDAp
LAo+Pj4+Pj4gwqDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9WSVNJQkxFLCBGVFJfU1RS
SUNULCBGVFJfTE9XRVJfU0FGRSwgCj4+Pj4+PiBJRF9BQTY0SVNBUjFfSlNDVlRfU0hJRlQsIDQs
IDApLAo+Pj4+Pj4gQVJNNjRfRlRSX0JJVFMoRlRSX1ZJU0lCTEVfSUZfSVNfRU5BQkxFRChDT05G
SUdfQVJNNjRfUFRSX0FVVEgpLAo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
RlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIAo+Pj4+Pj4gSURfQUE2NElTQVIxX0FQSV9TSElG
VCwgNCwgMCksCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGVFJfU1RSSUNU
LCBGVFJfRVhBQ1QsIElEX0FBNjRJU0FSMV9BUElfU0hJRlQsIDQsIDApLAo+Pj4+Pj4gQVJNNjRf
RlRSX0JJVFMoRlRSX1ZJU0lCTEVfSUZfSVNfRU5BQkxFRChDT05GSUdfQVJNNjRfUFRSX0FVVEgp
LAo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRlRSX1NUUklDVCwgRlRSX0xP
V0VSX1NBRkUsIAo+Pj4+Pj4gSURfQUE2NElTQVIxX0FQQV9TSElGVCwgNCwgMCksCj4+Pj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGVFJfU1RSSUNULCBGVFJfRVhBQ1QsIElEX0FB
NjRJU0FSMV9BUEFfU0hJRlQsIDQsIDApLAo+Pj4+Pj4gwqDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9C
SVRTKEZUUl9WSVNJQkxFLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgCj4+Pj4+PiBJRF9B
QTY0SVNBUjFfRFBCX1NISUZULCA0LCAwKSwKPj4+Pj4+IMKgwqDCoMKgwqDCoCBBUk02NF9GVFJf
RU5ELAo+Pj4+Pgo+Pj4+PiBJcyB0aGlzIHN1ZmZpY2llbnQ/IElmIHdlIGhhdmUgdGhlIGJvb3Qg
Q1BVIGFscmVhZHkgZW5hYmxpbmcgdGhlIAo+Pj4+PiBwdHJhdXRoCj4+Pj4+IGFuZCB3ZSBnZXQg
YSBzZWNvbmRhcnkgQ1BVIHdpdGggYSBkaWZmZXJlbnQgSVNBUjEgZmllbGQgdGhhdCAKPj4+Pj4g
bWF0Y2hlcyB0aGUKPj4+Pj4gYWRkcmVzcyBhdXRoIGluIGNwdWZlYXR1cmUuYywgd2Ugc3RpbGwg
YWxsb3cgaXQgdG8gYm9vdC4gV2Ugbm8gbG9uZ2VyCj4+Pj4+IHJlcG9ydCB0aGUgZmVhdHVyZSB0
byB0aGUgdXNlciBzeXN0ZW1fc3VwcG9ydHNfYWRkcmVzc19hdXRoKCkgaXMgdHJ1ZQo+Pj4+PiB3
aGlsZSBzeXN0ZW1fc3VwcG9ydHNfZ2VuZXJpY19hdXRoKCkgd291bGQgYmUgZmFsc2UgYXMgaXQg
Y2hlY2tzIHRoZQo+Pj4+PiBzYW5pdGlzZWQgZmVhdHVyZSByZWdpc3RlcnMuCj4+Pj4KPj4+PiBZ
ZXMgYWdyZWVkLiBHZW5lcmljIGF1dGhlbnRpY2F0aW9uIGFsc28gbmVlZHMgRVhBQ1QgY3B1ZmVh
dHVyZSB0eXBlLgo+Pj4KPj4+IEknbSBzdGlsbCBub3Qgc3VyZSB0aGF0J3Mgc3VmZmljaWVudC4g
SWYgd2UgYm9vdCB0aGUgcHJpbWFyeSBDUFUgd2l0aAo+Pj4gcHRyYXV0aCBhcyBkZXRlY3RlZCBp
biBwcm9jLlMsIHdlIGNvbnNpZGVyIHRoaXMgYSBib290IGZlYXR1cmUgc28gYWxsCj4+PiBzZWNv
bmRhcnkgQ1BVcyBtdXN0IGhhdmUgaXQuIFN1YnNlcXVlbnQgQ1BVcyBhcmUgY3VycmVudGx5IGNo
ZWNrZWQgdmlhCj4+PiB0aGUgYXJtNjRfZmVhdHVyZXNbXSBkZWZpbml0aW9ucyBhbmQgd2UgYWxs
b3cgdGhlbSB0byBib290IGlmIHRoZSBJRCBpcwo+Pj4gYXQgbGVhc3QgdGhhdCBvZiB0aGUgYm9v
dCBDUFUuIEhvdyBkb2VzIHRoaXMgaW50ZXJhY3Qgd2l0aCB0aGUgYWJvdmUKPj4+IEZUUl9FWEFD
VCBjaGFuZ2VzPwo+Pgo+PiBVbmZvcnR1bmF0ZWx5IEZUUl9FWEFDVCBkb2VzIG5vdCBlZmZlY3Qg
dGhlIGJvb3RmbG93IGRpcmVjdGx5IGJ1dCBtYXJrcwo+PiB0aGUgY3B1IFRBSU5URUQgYW5kIGdv
ZXMgYWhlYWQuCj4+Cj4+Pgo+Pj4gTXkgY29uY2VybiBpcyB0aGF0IHdlIGJvb3Qgd2l0aCBQQUMg
ZW5hYmxlZCBvbiBhbGwgQ1BVcyBidXQgYmVjYXVzZSBvZgo+Pj4gdGhlIEZUUl9FWEFDVCwgdGhl
IHNhbml0aXNlZCBJRCByZWdpc3RlcnMgbm8gbG9uZ2VyIHJlcG9ydCB0aGUgZmVhdHVyZS4KPj4+
Cj4+Cj4+IFlvdSBhcmUgcmlnaHQgdGhhdCBQQUMgaXMgZW5hYmxlZCBpbiBoYXJkd2FyZSBidXQg
dW4tcmVwb3J0ZWQgdG8gdXNlciAKPj4gaW4gdGhpcyBjYXNlLgo+Pgo+PiBUaGUgaXNzdWUgaGVy
ZSBpcyBpbiBmZWF0dXJlX21hdGNoZXMoKSB3aGljaCBvbmx5IHZhbGlkYXRlcyB3aXRoIHRoZQo+
PiBlbnRyeS0+bWluX2ZpZWxkX3ZhbHVlLiBJZiB3ZSBjYW4gbW9kaWZ5IHRoaXMgdmFsdWUgdG8g
Ym9vdCBjcHUgdmFsdWUKPj4gZm9yIEZUUl9FWEFDVCB0eXBlIHRoZW4gdGhpcyBjcHUgd2lsbCBm
YWlsIHRvIG9ubGluZS4KPj4gTWF5IGJlIHdlIGNhbiBpbnRyb2R1Y2UgYSBuZXcgc3RydWN0dXJl
IG9yIG1ha2UgYXJtNjRfZmVhdHVyZVtdIAo+PiB3cml0YWJsZSBmb3IgdGhpcy4KPj4KPj4gU29t
ZXRoaW5nIGxpa2UgYmVsb3cgY29kZS4KPiAKPiBUaGUgaGFzX2NwdWlkX2ZlYXR1cmUoKSBpcyBm
b3IgZmVhdHVyZXMgd2l0aCAiRlRSX0xPV0VSX1NBRkUiLiBIYWNraW5nCj4gaXQgdG8gc3VwcG9y
dCBFWEFDVCBkb2Vzbid0IGxvb2sgaWRlYWwuIFlvdSBtYXkgc2ltcGx5IGFkZCB5b3VyIG93bgo+
ICJtYXRjaGVzKCkiIGZvciBwdHItYXV0aC4KClllcyBpdCBpcyByZWFzb25hYmxlIHRvIGhhdmUg
c2VwYXJhdGUgbWF0Y2goKSBmdW5jdGlvbi4gSSB3YXMgdGhpbmtpbmcKb2YgYWRkaW5nIHNvbWUg
Z2VuZXJpYyBtYXRjaCBmdW5jdGlvbiBmb3IgRlRSX0VYQUNUIHRvIGJlIHVzZWQgYnkgb3RoZXIK
c2ltaWxhciBjcHVmZWF0dXJlcy4KCj4gCj4gc29tZXRoaW5nIGxpa2UgOgo+IAo+IHN0YXRpYyBi
b29sCj4gaGFzX2FkZHJfYXV0aChjb25zdCBzdHJ1Y3QgYXJtNjRfY3B1X2NhcGFiaWxpdGllcyAq
ZW50cnksIGludCBzY29wZSkKPiB7Cj4gIMKgwqDCoMKgc3RhdGljIGludCBib290X2NwdV9hdXRo
OwoKSSBzdXBwb3NlIHRoYXQgaXMgdGhpcyBuZXcgbWF0Y2goKSBoYXMgdG8gYmUgdXNlZCBmb3Ig
Ym90aCBBVVRIX0FSQ0ggYW5kIApBVVRIX0lNUF9ERUYgdGhlbiB3ZSBtYXkgbmVlZCAyIHN1Y2gg
c3RhdGljIHZhcmlhYmxlcy4KCj4gIMKgwqDCoMKgaW50IGxvY2FsX2NwdV9hdXRoOwo+ICDCoMKg
wqDCoHU2NCBpc2FyMTsKPiAKPiAgwqDCoMKgwqAvKiBXZSBkb24ndCBleHBlY3QgdG8gYmUgY2Fs
bGVkIHdpdGggU0NPUEVfU1lTVEVNICovCj4gIMKgwqDCoMKgV0FSTl9PTihzY29wZSA9PSBTQ09Q
RV9TWVNURU0pOwo+ICDCoMKgwqDCoGlzYXIxID0gcmVhZF9zeXNyZWdfcyhTWVNfSURfQUE2NElT
QVIxX0VMMSk7Cj4gIMKgwqDCoMKgbG9jYWxfY3B1X2F1dGggPSBjcHVpZF9mZWF0dXJlX2V4dHJh
Y3RfdW5zaWduZWRfZmllbGQoaXNhcjEsIAo+IGVudHJ5LT5zaGlmdCk7Cj4gCj4gIMKgwqDCoMKg
LyoKPiAgwqDCoMKgwqAgKiBUaGUgcHRyLWF1dGggZmVhdHVyZSBsZXZlbHMgYXJlIG5vdCBpbnRl
cmNvbXBhdGlibGUgd2l0aAo+ICDCoMKgwqDCoCAqIGxvd2VyIGxldmVscy4gSGVuY2Ugd2UgbXVz
dCBtYXRjaCBhbGwgdGhlIENQVXMgd2l0aCB0aGF0Cj4gIMKgwqDCoMKgICogb2YgdGhlIGJvb3Qg
Q1BVLiBTbyBjYWNoZSB0aGUgbGV2ZWwgb2YgYm9vdCBDUFUgYW5kIGNvbXBhcmUKPiAgwqDCoMKg
wqAgKiBpdCBhZ2FpbnN0IHRoZSBzZWNvbmRhcnkgQ1BVcy4KPiAgwqDCoMKgwqAgKi8KPiAgwqDC
oMKgwqBpZiAoc2NvcGUgJiBTQ09QRV9CT09UX0NQVSkgewo+ICDCoMKgwqDCoMKgwqDCoCBib290
X2NwdV9hdXRoID0gbG9jYWxfY3B1X2F1dGg7Cj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiBib290
X2NwdV9hdXRoID4gMDsKCk1heSBiZSwKcmV0dXJuIGJvb3RfY3B1X2F1dGggPj0gZW50cnktPm1p
bl9maWVsZF92YWx1ZQoKPiAgwqDCoMKgwqB9IGVsc2UgaWYgKHNjb3BlICYgU0NPUEVfTE9DQUxf
Q1BVKSB7Cj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiBsb2NhbF9jcHVfYXV0aCA9PSBib290X2Nw
dV9hdXRoOwo+ICDCoMKgwqDCoH0KPiB9Cj4gCj4gU3V6dWtpCgpUaGFua3MsCkFtaXQgRGFuaWVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
