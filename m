Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EC81804F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBAnRAys9ggb5+So0lvSoxiUvlJCtzEWpWt1gYo9aEQ=; b=Cw0+BmvLYrNmX4
	z1cLTiHe36vyZdvKgY6NW8OaCO9j2F0K6zVplFULIxX1rBlkAa8NQHpqsJ5BtdUceKXnu1L7pfL2n
	rHFZ12u4gUmgr1j4FO3bGfF97+PafnCiodgBcYTwdGe7ManWe0laOlHMPYMThlU+FXFVYpEY7oVLv
	ez7C8zXlRl4QSNTtBmg6swR36jAZ2vLDBPT2pGDIpG5yVTwLkJKLcHTRO8nWjQLe4YK3zsLpnO6OG
	+eropVi1ov9kvSEPGcFV6GU7wapJF0sqLSSAzVtFmWOWxgV2aTqLJOo+liddT2iZiQ7zjSGcYz2+j
	gEhWTOwqzgKMcdiIzZRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBipJ-0003qG-H9; Tue, 10 Mar 2020 17:37:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBip7-0003p6-R9
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:37:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B87F31FB;
 Tue, 10 Mar 2020 10:37:43 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 088D33F67D;
 Tue, 10 Mar 2020 10:37:41 -0700 (PDT)
Subject: Re: [PATCH v6 13/18] arm64: unwind: strip PAC from kernel addresses
To: Amit Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-14-git-send-email-amit.kachhap@arm.com>
 <ec2c78db-31e7-9e82-525e-921b9bf6b3a3@arm.com>
 <cfab1e7c-61af-f3ff-a09b-2c5d78264e02@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <4e56a236-0744-aa18-d5af-1ab5d89808ec@arm.com>
Date: Tue, 10 Mar 2020 17:37:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cfab1e7c-61af-f3ff-a09b-2c5d78264e02@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_103745_971874_A94241A3 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW1pdCwKCk9uIDEwLzAzLzIwMjAgMTI6MjgsIEFtaXQgS2FjaGhhcCB3cm90ZToKPiBPbiAz
LzEwLzIwIDEyOjMzIEFNLCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gT24gMDYvMDMvMjAyMCAwNjoz
NSwgQW1pdCBEYW5pZWwgS2FjaGhhcCB3cm90ZToKPj4+IEZyb206IE1hcmsgUnV0bGFuZCA8bWFy
ay5ydXRsYW5kQGFybS5jb20+Cj4+Pgo+Pj4gV2hlbiB3ZSBlbmFibGUgcG9pbnRlciBhdXRoZW50
aWNhdGlvbiBpbiB0aGUga2VybmVsLCBMUiB2YWx1ZXMgc2F2ZWQgdG8KPj4+IHRoZSBzdGFjayB3
aWxsIGhhdmUgYSBQQUMgd2hpY2ggd2UgbXVzdCBzdHJpcCBpbiBvcmRlciB0byByZXRyaWV2ZSB0
aGUKPj4+IHJlYWwgcmV0dXJuIGFkZHJlc3MuCj4+Pgo+Pj4gU3RyaXAgUEFDcyB3aGVuIHVud2lu
ZGluZyB0aGUgc3RhY2sgaW4gb3JkZXIgdG8gYWNjb3VudCBmb3IgdGhpcy4KPj4KPj4gVGhpcyBw
YXRjaCBoYWQgbWUgbG9va2luZyBhdCB0aGUgd2lkZXIgcG9pbnRlci1hdXRoICsgZnRyYWNlIGlu
dGVyYWN0aW9uLi4uCgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3N0YWNrdHJh
Y2UuYyBiL2FyY2gvYXJtNjQva2VybmVsL3N0YWNrdHJhY2UuYwo+Pj4gaW5kZXggYTMzNmNiMS4u
YjQ3OWRmNyAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3N0YWNrdHJhY2UuYwo+
Pj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvc3RhY2t0cmFjZS5jCj4+PiBAQCAtMTQsNiArMTQs
NyBAQAo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3N0YWNrdHJhY2UuaD4KPj4+IMKgIMKgICNpbmNs
dWRlIDxhc20vaXJxLmg+Cj4+PiArI2luY2x1ZGUgPGFzbS9wb2ludGVyX2F1dGguaD4KPj4+IMKg
ICNpbmNsdWRlIDxhc20vc3RhY2tfcG9pbnRlci5oPgo+Pj4gwqAgI2luY2x1ZGUgPGFzbS9zdGFj
a3RyYWNlLmg+Cj4+PiDCoCBAQCAtMTAxLDYgKzEwMiw4IEBAIGludCBub3RyYWNlIHVud2luZF9m
cmFtZShzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRzaywgc3RydWN0Cj4+PiBzdGFja2ZyYW1lICpmcmFt
ZSkKPj4KPj4gVGhlcmUgaXMgYW4gZWFybGllciByZWFkZXIgb2YgZnJhbWUtPnBjOgo+PiB8ICNp
ZmRlZiBDT05GSUdfRlVOQ1RJT05fR1JBUEhfVFJBQ0VSCj4+IHzCoMKgwqDCoCBpZiAodHNrLT5y
ZXRfc3RhY2sgJiYKPj4gfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoZnJhbWUtPnBjID09ICh1
bnNpZ25lZCBsb25nKXJldHVybl90b19oYW5kbGVyKSkgewo+Pgo+Pgo+PiBXaGljaCBsZWFkcyBk
b3duIHRoZSByYXQtaG9sZSBvZjogZG9lcyB0aGlzIG5lZWQgcHRyYXV0aF9zdHJpcF9pbnNuX3Bh
YygpPwo+Pgo+PiBUaGUgdmVyc2lvbiBvZiBHQ0Mgb24gbXkgZGVza3RvcCBzdXBwb3J0cyBwYXRj
aGFibGUtZnVuY3Rpb24tZW50cnksIHRoZSBmdW5jdGlvbiBwcmUtYW1ibGUKPj4gaGFzIHR3byBu
b3BzIGZvciB1c2UgYnkgZnRyYWNlWzBdLiBUaGlzIG1lYW5zIGlmIHByZXBhcmVfZnRyYWNlX3Jl
dHVybigpIHJlLXdyaXRlcyB0aGUKPj4gc2F2ZWQgTFIsIGl0IGRvZXMgaXQgYmVmb3JlIHRoZSBj
YWxsZXIgcGFjaWFzcCdzIGl0Lgo+Pgo+PiBJIHRoaW5rIHRoYXQgbWVhbnMgaWYgeW91IHN0YWNr
LXRyYWNlIGZyb20gYSBmdW5jdGlvbiB0aGF0IGhhZCBiZWVuIGhvb2tlZCBieSB0aGUKPj4gZnVu
Y3Rpb25fZ3JhcGhfdHJhY2VyLCB5b3Ugd2lsbCBzZWUgdGhlIExSIHdpdGggYSBQQUMsIG1lYW5p
bmcgdGhlIGFib3ZlID09IHdvbid0IG1hdGNoLgo+Pgo+Pgo+PiBUaGUgdmVyc2lvbiBvZiBMTFZN
IG9uIG15IGRlc2t0b3AgaG93ZXZlciBkb2Vzbid0IHN1cHBvcnQgcGF0Y2hhYmxlLWZ1bmN0aW9u
LWVudHJ5LCBpdAo+PiB1c2VzIF9tY291bnQoKSB0byBkbyB0aGUgZnRyYWNlIHN0dWZmWzFdLiBI
ZXJlIHByZXBhcmVfZnRyYWNlX3JldHVybigpIG92ZXJ3cml0ZXMgYQo+PiBwYWNpYXNwJ2QgTFIg
d2l0aCBvbmUgdGhhdCBpc24ndCwgd2hpY2ggd2lsbCBmYWlsLgo+Pgo+Pgo+PiBDb3VsZCB0aGUg
cHRyYXV0aF9zdHJpcF9pbnNuX3BhYygpIGNhbGwgbW92ZSBhYm92ZSB0aGUgQ09ORklHX0ZVTkNU
SU9OX0dSQVBIX1RSQUNFUiBibG9jaywKCj4gVGhpcyBtYXkgbm90IGJlIHJlcXVpcmVkIGFzIHdl
IG5ldmVyIGV4cGxpY2l0bHkgc2lnbiByZXR1cm5fdG9faGFuZGxlcgoKRG9lc24ndCB0aGUgb3Jp
Z2luYWwgY2FsbGVyIHNpZ24gaXQ/IChJIGFncmVlIHRoYXQgYXNzZW1ibHkgaXMgdHJpY2t5IHRv
IHdvcmsgb3V0KQoKZnRyYWNlX2dyYXBoX2NhbGxlciBwYXNzZXMgJ3BhcmVudCcgdG8gcHJlcGFy
ZV9mdHJhY2VfcmV0dXJuKCkgYXMgdGhlIExSIGluIHJlZ3M6CnwgYWRkCXgxLCBzcCwgI1NfTFIK
CnByZXBhcmVfZnRyYWNlX3JldHVybigpIG1heSBvdmVyd3JpdGUgaXQgd2l0aCBhbiB1bnNpZ25l
ZCB2YWx1ZS4KCmZ0cmFjZV9jb21tb25fcmV0dXJuIHJlc3RvcmVzIHRoaXMgbG9jYXRpb24gdG8g
eDMwOgp8IGxkcgl4MzAsIFtzcCwgI1NfTFJdCgpUaGVuIHJldHVybnMgdG8gdGhlIGZpcnN0IHJl
YWwgaW5zdHJ1Y3Rpb24gb2YgdGhlIG9yaWdpbmFsIGNhbGxlcjogcGFjaWFzcC4KCih3aGVuIG5h
dmlnYXRpbmcgdGhhdCBhc3NlbWJseSwgdGhlcmUgYXJlIHR3byBzdGFjayBmcmFtZXMsIGVhY2gg
d2l0aCBhbiBMUiwgYW5kIG9uZSBMUiBpbgp0aGUgcmVncy4uLikKCgo+IGFuZCBmcmFtZS0+cGMg
bWF5Cj4gc3RvcmUgaXQgd2l0aG91dCBhbnkgUEFDIHNpZ25hdHVyZSBmb3IgcGF0Y2hhYmxlLWZ1
bmN0aW9uLWVudHJ5LgoKSG93IGRvZXMgcmV0dXJuX3RvX2hhbmRsZXIoKSBydW4/IFN1cmVseSB3
aGVuIHRoZSBvcmlnaW5hbCBjYWxsZXIgcHVsbHMgdGhlIExSIG9mZiB0aGUKc3RhY2ssIGl0IHJ1
bnM6CnwgYXV0aWFzcAp8IHJldAoKV291bGRuJ3QgYXV0aWFzcCB0cmFuc2Zvcm0gYW4gdW5zaWdu
ZWQgcmV0dXJuX3RvX2hhbmRsZXIoKSB0byBiZSBhIGJvZ3VzIGFkZHJlc3M/CgpJIGFncmVlIHRo
ZSAndW5zaWduZWQnIGNhc2UgZG9lcyBoYXBwZW4gaWYgeW91J3JlIHVzaW5nIF9tY291bnQoKSwg
dGhpcyB3aWxsIGJlIGNhdWdodCBieQphdXRpYXNwLCBoZW5jZSB3ZSBuZWVkIHRvIGRlcGVuZCBv
biBIQVZFX0RZTkFNSUNfRlRSQUNFX1dJVEhfUkVHUy4KCgo+IFdoaWxlIHRlc3RpbmcgcGF0Y2hh
YmxlLWZ1bmN0aW9uLWVudHJ5LCBJIGhhZCBhbiBvYnNlcnZhdGlvbiByZWdhcmRpbmcgV0FSTiBt
ZXNzYWdlcywKPiAKPiBbwqAgNTQxLjAzMDI2NV0gSGFyZHdhcmUgbmFtZTogRm91bmRhdGlvbi12
OEEgKERUKQo+IFvCoCA1NDEuMDMzNTAwXSBwc3RhdGU6IDYwNDAwMDA5IChuWkN2IGRhaWYgK1BB
TiAtVUFPKQo+IFvCoCA1NDEuMDM2ODgwXSBwYyA6IGNoYW5nZV9wYWNfcGFyYW1ldGVycysweDQw
LzB4NGMKPiBbwqAgNTQxLjA0MDI3OV0gbHIgOiByZXR1cm5fdG9faGFuZGxlcisweDAvMHgzYwo+
IFvCoCA1NDEuMDQzMzczXSBzcCA6IGZmZmY4MDAwMTI2ZTNkMDAKCihhIFdBUk4oKWluZz8sIHdo
ZXJlPyEgQWgsIHlvdSBtZWFuIHRyaWdnZXJlZCBkZWxpYmVyYXRlbHkgdG8gY2hlY2sgdGhleSBs
b29rIHJpZ2h0Li4uKQoKCj4gSGVyZSBsciBtYXkgbmVlZCBzb21lIGxvZ2ljIHRvIGRpc3BsYXkg
Y29ycmVjdCByZXR1cm4gYWRkcmVzcyBhbHRob3VnaCBpdCBpcyB1bnJlbGF0ZWQgdG8KPiB0aGlz
IHB0cmF1dGggc2VyaWVzLiAoYXJjaC9hcm02NC9rZXJuZWwvcHJvY2Vzcy5jICsyNjQpCgpZZXMs
IHRoaXMgaGFwcGVucyB3aGVuIGEgZnVuY3Rpb24gdGhhdCBoYXMgYmVlbiBob29rZWQgYnkgZnRy
YWNlLCBoaXRzIGEgV0FSTl9PTigpLApzaG93X3JlZ3MoKSB3aWxsIHJlcG9ydCB0aGUgcmVhbCBM
Ui4gSSBkb24ndCB0aGluayB0aGF0J3MgYSBwcm9ibGVtLCBpdHMgaGVscGZ1bCB0byBrbm93CnRo
YXQgZnRyYWNlIGhhcyBob29rZWQgdGhpcyBjYWxsLgoKUHJlc3VtYWJseSByZXR1cm5fdG9faGFu
ZGxlcigpIGRvZXNuJ3QgYXBwZWFyIGluIHRoZSBjYWxsLXRyYWNlPyAodGhhdCB3b3VsZCBiZSBh
IHByb2JsZW0pCgoKPj4gYW5kIGNvdWxkIHdlIGFkZCBzb21ldGhpbmcgbGlrZToKPj4gfMKgwqDC
oCBkZXBlbmRzIG9uICghRlRSQUNFIHx8IEhBVkVfRFlOQU1JQ19GVFJBQ0VfV0lUSF9SRUdTKQo+
Pgo+PiB0byB0aGUgS2NvbmZpZyB0byBwcmV2ZW50IGJvdGggRlRSQUNFIGFuZCBQVFJfQVVUSCBi
ZWluZyBlbmFibGVkIHVubGVzcyB0aGUgY29tcGlsZXIgaGFzCj4+IHN1cHBvcnQgZm9yIHBhdGNo
YWJsZS1mdW5jdGlvbi1lbnRyeT8KPiAKPiBZZXMgdGhpcyBpcyBhIGdvb2QgY29uZGl0aW9uIHRv
IGhhdmUuIEkgZmVlbCBiZWxvdyBjb25kaXRpb24gaXMgbW9yZSBzdWl0YWJsZSBhcyB0aGVyZSBp
cwo+IGlzc3VlIG9ubHkgd2l0aCBGVU5DVElPTl9HUkFQSF9UUkFDRVIsCgpFciwgeWVzIQpCZWNh
dXNlIGl0cyBjYWxsZXJzIG9mIHByZXBhcmVfZnRyYWNlX3JldHVybigpIHRoYXQgaGF2ZSB0aGUg
cHJvYmxlbSwgYW5kIHRoYXQgaXMgYmVoaW5kCiNpZmRlZiBGVU5DVElPTl9HUkFQSF9UUkFDRVIu
CgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
