Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E67C181066
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bVelIZr5XQoNiu4rIN33d7NR9yaV4tQ5OZ7GxRUCIh8=; b=mOX+YcF3fSAP2FXjPkyWhbpBx
	/4X1VhHkHSWcJeO0EVFUFM1kV0tSTaLLhJJxxoOZpJ5BeW5wS736zBtLS9StFRItPG2Rnl/vTYIKJ
	EwK7MUfEgXSPTZIl6XPPDxaSPRRxzSzmXE3YZRbsJjIpPkS2kTeSFY9EUgzugn1Dgqc+mUSmn3WYo
	+DUQSdfXLfAObLFnRR/Hz3EcV2Pe9SzF1t2XFfXA5t/9Ro61XxKFZiK0+YjuhVsWCIg1deW4nkAXV
	7TShgPXP1boeGnKJ5ni83M3a92+MQeogrgpZ7aS1BqtRL68GIEqM5xhq9ctkHRx/3bPgpZRq3+vF5
	b8HVZCWqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuWu-00045C-1I; Wed, 11 Mar 2020 06:07:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBuWi-00044i-9I
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:07:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B4D631B;
 Tue, 10 Mar 2020 23:07:31 -0700 (PDT)
Received: from [10.163.1.234] (unknown [10.163.1.234])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 338593F67D;
 Tue, 10 Mar 2020 23:11:24 -0700 (PDT)
Subject: Re: [PATCH v6 13/18] arm64: unwind: strip PAC from kernel addresses
To: James Morse <james.morse@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-14-git-send-email-amit.kachhap@arm.com>
 <ec2c78db-31e7-9e82-525e-921b9bf6b3a3@arm.com>
 <cfab1e7c-61af-f3ff-a09b-2c5d78264e02@arm.com>
 <4e56a236-0744-aa18-d5af-1ab5d89808ec@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <feb49588-56ce-8052-bef1-ef3d88c0af81@arm.com>
Date: Wed, 11 Mar 2020 11:37:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4e56a236-0744-aa18-d5af-1ab5d89808ec@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_230732_411167_04292F47 
X-CRM114-Status: GOOD (  26.33  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAzLzEwLzIwIDExOjA3IFBNLCBKYW1lcyBNb3JzZSB3cm90ZToKPiBIaSBBbWl0LAo+
IAo+IE9uIDEwLzAzLzIwMjAgMTI6MjgsIEFtaXQgS2FjaGhhcCB3cm90ZToKPj4gT24gMy8xMC8y
MCAxMjozMyBBTSwgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4+PiBPbiAwNi8wMy8yMDIwIDA2OjM1LCBB
bWl0IERhbmllbCBLYWNoaGFwIHdyb3RlOgo+Pj4+IEZyb206IE1hcmsgUnV0bGFuZCA8bWFyay5y
dXRsYW5kQGFybS5jb20+Cj4+Pj4KPj4+PiBXaGVuIHdlIGVuYWJsZSBwb2ludGVyIGF1dGhlbnRp
Y2F0aW9uIGluIHRoZSBrZXJuZWwsIExSIHZhbHVlcyBzYXZlZCB0bwo+Pj4+IHRoZSBzdGFjayB3
aWxsIGhhdmUgYSBQQUMgd2hpY2ggd2UgbXVzdCBzdHJpcCBpbiBvcmRlciB0byByZXRyaWV2ZSB0
aGUKPj4+PiByZWFsIHJldHVybiBhZGRyZXNzLgo+Pj4+Cj4+Pj4gU3RyaXAgUEFDcyB3aGVuIHVu
d2luZGluZyB0aGUgc3RhY2sgaW4gb3JkZXIgdG8gYWNjb3VudCBmb3IgdGhpcy4KPj4+Cj4+PiBU
aGlzIHBhdGNoIGhhZCBtZSBsb29raW5nIGF0IHRoZSB3aWRlciBwb2ludGVyLWF1dGggKyBmdHJh
Y2UgaW50ZXJhY3Rpb24uLi4KPiAKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwv
c3RhY2t0cmFjZS5jIGIvYXJjaC9hcm02NC9rZXJuZWwvc3RhY2t0cmFjZS5jCj4+Pj4gaW5kZXgg
YTMzNmNiMS4uYjQ3OWRmNyAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9zdGFj
a3RyYWNlLmMKPj4+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9zdGFja3RyYWNlLmMKPj4+PiBA
QCAtMTQsNiArMTQsNyBAQAo+Pj4+ICDCoCAjaW5jbHVkZSA8bGludXgvc3RhY2t0cmFjZS5oPgo+
Pj4+ICDCoCDCoCAjaW5jbHVkZSA8YXNtL2lycS5oPgo+Pj4+ICsjaW5jbHVkZSA8YXNtL3BvaW50
ZXJfYXV0aC5oPgo+Pj4+ICDCoCAjaW5jbHVkZSA8YXNtL3N0YWNrX3BvaW50ZXIuaD4KPj4+PiAg
wqAgI2luY2x1ZGUgPGFzbS9zdGFja3RyYWNlLmg+Cj4+Pj4gIMKgIEBAIC0xMDEsNiArMTAyLDgg
QEAgaW50IG5vdHJhY2UgdW53aW5kX2ZyYW1lKHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBzdHJ1
Y3QKPj4+PiBzdGFja2ZyYW1lICpmcmFtZSkKPj4+Cj4+PiBUaGVyZSBpcyBhbiBlYXJsaWVyIHJl
YWRlciBvZiBmcmFtZS0+cGM6Cj4+PiB8ICNpZmRlZiBDT05GSUdfRlVOQ1RJT05fR1JBUEhfVFJB
Q0VSCj4+PiB8wqDCoMKgwqAgaWYgKHRzay0+cmV0X3N0YWNrICYmCj4+PiB8wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIChmcmFtZS0+cGMgPT0gKHVuc2lnbmVkIGxvbmcpcmV0dXJuX3RvX2hhbmRs
ZXIpKSB7Cj4+Pgo+Pj4KPj4+IFdoaWNoIGxlYWRzIGRvd24gdGhlIHJhdC1ob2xlIG9mOiBkb2Vz
IHRoaXMgbmVlZCBwdHJhdXRoX3N0cmlwX2luc25fcGFjKCk/Cj4+Pgo+Pj4gVGhlIHZlcnNpb24g
b2YgR0NDIG9uIG15IGRlc2t0b3Agc3VwcG9ydHMgcGF0Y2hhYmxlLWZ1bmN0aW9uLWVudHJ5LCB0
aGUgZnVuY3Rpb24gcHJlLWFtYmxlCj4+PiBoYXMgdHdvIG5vcHMgZm9yIHVzZSBieSBmdHJhY2Vb
MF0uIFRoaXMgbWVhbnMgaWYgcHJlcGFyZV9mdHJhY2VfcmV0dXJuKCkgcmUtd3JpdGVzIHRoZQo+
Pj4gc2F2ZWQgTFIsIGl0IGRvZXMgaXQgYmVmb3JlIHRoZSBjYWxsZXIgcGFjaWFzcCdzIGl0Lgo+
Pj4KPj4+IEkgdGhpbmsgdGhhdCBtZWFucyBpZiB5b3Ugc3RhY2stdHJhY2UgZnJvbSBhIGZ1bmN0
aW9uIHRoYXQgaGFkIGJlZW4gaG9va2VkIGJ5IHRoZQo+Pj4gZnVuY3Rpb25fZ3JhcGhfdHJhY2Vy
LCB5b3Ugd2lsbCBzZWUgdGhlIExSIHdpdGggYSBQQUMsIG1lYW5pbmcgdGhlIGFib3ZlID09IHdv
bid0IG1hdGNoLgo+Pj4KPj4+Cj4+PiBUaGUgdmVyc2lvbiBvZiBMTFZNIG9uIG15IGRlc2t0b3Ag
aG93ZXZlciBkb2Vzbid0IHN1cHBvcnQgcGF0Y2hhYmxlLWZ1bmN0aW9uLWVudHJ5LCBpdAo+Pj4g
dXNlcyBfbWNvdW50KCkgdG8gZG8gdGhlIGZ0cmFjZSBzdHVmZlsxXS4gSGVyZSBwcmVwYXJlX2Z0
cmFjZV9yZXR1cm4oKSBvdmVyd3JpdGVzIGEKPj4+IHBhY2lhc3AnZCBMUiB3aXRoIG9uZSB0aGF0
IGlzbid0LCB3aGljaCB3aWxsIGZhaWwuCj4+Pgo+Pj4KPj4+IENvdWxkIHRoZSBwdHJhdXRoX3N0
cmlwX2luc25fcGFjKCkgY2FsbCBtb3ZlIGFib3ZlIHRoZSBDT05GSUdfRlVOQ1RJT05fR1JBUEhf
VFJBQ0VSIGJsb2NrLAo+IAo+PiBUaGlzIG1heSBub3QgYmUgcmVxdWlyZWQgYXMgd2UgbmV2ZXIg
ZXhwbGljaXRseSBzaWduIHJldHVybl90b19oYW5kbGVyCj4gCj4gRG9lc24ndCB0aGUgb3JpZ2lu
YWwgY2FsbGVyIHNpZ24gaXQ/IChJIGFncmVlIHRoYXQgYXNzZW1ibHkgaXMgdHJpY2t5IHRvIHdv
cmsgb3V0KQo+IAo+IGZ0cmFjZV9ncmFwaF9jYWxsZXIgcGFzc2VzICdwYXJlbnQnIHRvIHByZXBh
cmVfZnRyYWNlX3JldHVybigpIGFzIHRoZSBMUiBpbiByZWdzOgo+IHwgYWRkCXgxLCBzcCwgI1Nf
TFIKPiAKPiBwcmVwYXJlX2Z0cmFjZV9yZXR1cm4oKSBtYXkgb3ZlcndyaXRlIGl0IHdpdGggYW4g
dW5zaWduZWQgdmFsdWUuCj4gCj4gZnRyYWNlX2NvbW1vbl9yZXR1cm4gcmVzdG9yZXMgdGhpcyBs
b2NhdGlvbiB0byB4MzA6Cj4gfCBsZHIJeDMwLCBbc3AsICNTX0xSXQo+IAo+IFRoZW4gcmV0dXJu
cyB0byB0aGUgZmlyc3QgcmVhbCBpbnN0cnVjdGlvbiBvZiB0aGUgb3JpZ2luYWwgY2FsbGVyOiBw
YWNpYXNwLgo+IAo+ICh3aGVuIG5hdmlnYXRpbmcgdGhhdCBhc3NlbWJseSwgdGhlcmUgYXJlIHR3
byBzdGFjayBmcmFtZXMsIGVhY2ggd2l0aCBhbiBMUiwgYW5kIG9uZSBMUiBpbgo+IHRoZSByZWdz
Li4uKQo+IAo+IAo+PiBhbmQgZnJhbWUtPnBjIG1heQo+PiBzdG9yZSBpdCB3aXRob3V0IGFueSBQ
QUMgc2lnbmF0dXJlIGZvciBwYXRjaGFibGUtZnVuY3Rpb24tZW50cnkuCj4gCj4gSG93IGRvZXMg
cmV0dXJuX3RvX2hhbmRsZXIoKSBydW4/IFN1cmVseSB3aGVuIHRoZSBvcmlnaW5hbCBjYWxsZXIg
cHVsbHMgdGhlIExSIG9mZiB0aGUKPiBzdGFjaywgaXQgcnVuczoKPiB8IGF1dGlhc3AKPiB8IHJl
dAoKSSB1c2VkIGR1bXBfc3RhY2soKSBpbnN0ZWFkIG9mIFdBUk5fT04gYW5kIGFibGUgdG8gcmVw
cm9kdWNlIHRoZSBpc3N1ZS4KWWVzIHB0cmF1dGhfc3RyaXBfaW5zbl9wYWMgbmVlZHMgdG8gbW92
ZSB1cCB0byBmaXggdGhpcy4gVGhhbmtzIGZvciB0aGUgCmRldGFpbHMuCgo+IAo+IFdvdWxkbid0
IGF1dGlhc3AgdHJhbnNmb3JtIGFuIHVuc2lnbmVkIHJldHVybl90b19oYW5kbGVyKCkgdG8gYmUg
YSBib2d1cyBhZGRyZXNzPwo+IAo+IEkgYWdyZWUgdGhlICd1bnNpZ25lZCcgY2FzZSBkb2VzIGhh
cHBlbiBpZiB5b3UncmUgdXNpbmcgX21jb3VudCgpLCB0aGlzIHdpbGwgYmUgY2F1Z2h0IGJ5Cj4g
YXV0aWFzcCwgaGVuY2Ugd2UgbmVlZCB0byBkZXBlbmQgb24gSEFWRV9EWU5BTUlDX0ZUUkFDRV9X
SVRIX1JFR1MuCj4gCj4gCj4+IFdoaWxlIHRlc3RpbmcgcGF0Y2hhYmxlLWZ1bmN0aW9uLWVudHJ5
LCBJIGhhZCBhbiBvYnNlcnZhdGlvbiByZWdhcmRpbmcgV0FSTiBtZXNzYWdlcywKPj4KPj4gW8Kg
IDU0MS4wMzAyNjVdIEhhcmR3YXJlIG5hbWU6IEZvdW5kYXRpb24tdjhBIChEVCkKPj4gW8KgIDU0
MS4wMzM1MDBdIHBzdGF0ZTogNjA0MDAwMDkgKG5aQ3YgZGFpZiArUEFOIC1VQU8pCj4+IFvCoCA1
NDEuMDM2ODgwXSBwYyA6IGNoYW5nZV9wYWNfcGFyYW1ldGVycysweDQwLzB4NGMKPj4gW8KgIDU0
MS4wNDAyNzldIGxyIDogcmV0dXJuX3RvX2hhbmRsZXIrMHgwLzB4M2MKPj4gW8KgIDU0MS4wNDMz
NzNdIHNwIDogZmZmZjgwMDAxMjZlM2QwMAo+IAo+IChhIFdBUk4oKWluZz8sIHdoZXJlPyEgQWgs
IHlvdSBtZWFuIHRyaWdnZXJlZCBkZWxpYmVyYXRlbHkgdG8gY2hlY2sgdGhleSBsb29rIHJpZ2h0
Li4uKQo+IAo+IAo+PiBIZXJlIGxyIG1heSBuZWVkIHNvbWUgbG9naWMgdG8gZGlzcGxheSBjb3Jy
ZWN0IHJldHVybiBhZGRyZXNzIGFsdGhvdWdoIGl0IGlzIHVucmVsYXRlZCB0bwo+PiB0aGlzIHB0
cmF1dGggc2VyaWVzLiAoYXJjaC9hcm02NC9rZXJuZWwvcHJvY2Vzcy5jICsyNjQpCj4gCj4gWWVz
LCB0aGlzIGhhcHBlbnMgd2hlbiBhIGZ1bmN0aW9uIHRoYXQgaGFzIGJlZW4gaG9va2VkIGJ5IGZ0
cmFjZSwgaGl0cyBhIFdBUk5fT04oKSwKPiBzaG93X3JlZ3MoKSB3aWxsIHJlcG9ydCB0aGUgcmVh
bCBMUi4gSSBkb24ndCB0aGluayB0aGF0J3MgYSBwcm9ibGVtLCBpdHMgaGVscGZ1bCB0byBrbm93
Cj4gdGhhdCBmdHJhY2UgaGFzIGhvb2tlZCB0aGlzIGNhbGwuCgpvawoKPiAKPiBQcmVzdW1hYmx5
IHJldHVybl90b19oYW5kbGVyKCkgZG9lc24ndCBhcHBlYXIgaW4gdGhlIGNhbGwtdHJhY2U/ICh0
aGF0IHdvdWxkIGJlIGEgcHJvYmxlbSkKCk5vIGl0IGRvZXNuJ3QgYXBwZWFyLgoKPiAKPiAKPj4+
IGFuZCBjb3VsZCB3ZSBhZGQgc29tZXRoaW5nIGxpa2U6Cj4+PiB8wqDCoMKgIGRlcGVuZHMgb24g
KCFGVFJBQ0UgfHwgSEFWRV9EWU5BTUlDX0ZUUkFDRV9XSVRIX1JFR1MpCj4+Pgo+Pj4gdG8gdGhl
IEtjb25maWcgdG8gcHJldmVudCBib3RoIEZUUkFDRSBhbmQgUFRSX0FVVEggYmVpbmcgZW5hYmxl
ZCB1bmxlc3MgdGhlIGNvbXBpbGVyIGhhcwo+Pj4gc3VwcG9ydCBmb3IgcGF0Y2hhYmxlLWZ1bmN0
aW9uLWVudHJ5Pwo+Pgo+PiBZZXMgdGhpcyBpcyBhIGdvb2QgY29uZGl0aW9uIHRvIGhhdmUuIEkg
ZmVlbCBiZWxvdyBjb25kaXRpb24gaXMgbW9yZSBzdWl0YWJsZSBhcyB0aGVyZSBpcwo+PiBpc3N1
ZSBvbmx5IHdpdGggRlVOQ1RJT05fR1JBUEhfVFJBQ0VSLAo+IAo+IEVyLCB5ZXMhCj4gQmVjYXVz
ZSBpdHMgY2FsbGVycyBvZiBwcmVwYXJlX2Z0cmFjZV9yZXR1cm4oKSB0aGF0IGhhdmUgdGhlIHBy
b2JsZW0sIGFuZCB0aGF0IGlzIGJlaGluZAo+ICNpZmRlZiBGVU5DVElPTl9HUkFQSF9UUkFDRVIu
CgpvawoKQ2hlZXJzLApBbWl0Cj4gCj4gCj4gVGhhbmtzLAo+IAo+IEphbWVzCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
