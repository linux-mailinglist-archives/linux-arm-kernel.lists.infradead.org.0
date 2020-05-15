Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B058F1D4E44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKGF0WVbwmL7cBn2hc0RBcJ31Uaq4Eu3vAKwvT8lCck=; b=q9+rLOiEcGjbLi
	GMAQfLrt1nGTfR5BQvSm0I8uSmoJ6pZnCK7vCI7e6sVNliTHrImN6f6KWAcUJ+LLhMY/3WzPtAb1z
	+scPvvqPd6aKLYaVJf9y9cNe/KO5QVCiJNztcgfeyxOmrSVj1LsQXuwcIBQkuwcaCC6uxXOBUWvKH
	tUY0d9u4z3saKA9bEiRKYWL963GEnZyWA1swJ41btGqVTikah1m1yFp/fXM+ee/J35Lpc6BmLSkdC
	FC4z6ooevotNVQhR4xm9ZEBsXnHwPVQiOejYd5lUy6XMW1pZrupT4m/u+xixcQKwgs7/gVp4Iq5KG
	a8yF98HALKWl7p7DCrnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZv6-0006lZ-6k; Fri, 15 May 2020 12:58:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZuu-0006l9-H9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:58:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF37E1042;
 Fri, 15 May 2020 05:58:19 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DF3B3F305;
 Fri, 15 May 2020 05:58:10 -0700 (PDT)
Date: Fri, 15 May 2020 13:57:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 6/7] firmware: smccc: Add function to fetch SMCCC
 version
Message-ID: <20200515125758.GC1591@bogus>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-7-sudeep.holla@arm.com>
 <20200515120811.GF67718@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515120811.GF67718@C02TD0UTHF1T.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_055820_611454_A926BA86 
X-CRM114-Status: GOOD (  18.69  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMDE6MDg6MTFQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIFdlZCwgTWF5IDA2LCAyMDIwIGF0IDA1OjQ0OjEwUE0gKzAxMDAsIFN1ZGVlcCBI
b2xsYSB3cm90ZToKPiA+IEZvciBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHJlYXNvbnMsIFBTQ0kg
bWFpbnRhaW5zIFNNQ0NDIHZlcnNpb24gYXMKPiA+IFNNQ0NDIGRpZG4ndCBwcm92aWRlIEFSTV9T
TUNDQ19WRVJTSU9OX0ZVTkNfSUQgdW50aWwgdjEuMQo+ID4gCj4gPiBMZXQgdXMgcHJvdmlkZSBh
Y2Nlc3NvcnMgdG8gZmV0Y2ggdGhlIFNNQ0NDIHZlcnNpb24gaW4gUFNDSSBzbyB0aGF0Cj4gPiBv
dGhlciBTTUNDQyB2MS4xKyBmZWF0dXJlcyBjYW4gdXNlIGl0Lgo+IAo+IFN0YWxlIGNvbW1pdCBt
ZXNzYWdlPyBUaGlzIHdhcyBmYWN0b3JlZCBvdXQgb2YgUFNDSSBpbiB0aGUgcHJpb3IgY29tbWl0
Lgo+CgpEdWggISBXaWxsIGRyb3AgdGhhdC4KCj4gPiBSZXZpZXdlZC1ieTogU3RldmVuIFByaWNl
IDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFN1ZGVlcCBIb2xsYSA8
c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2Zpcm13YXJlL3NtY2Nj
L3NtY2NjLmMgfCA0ICsrKysKPiA+ICBpbmNsdWRlL2xpbnV4L2FybS1zbWNjYy5oICAgICAgfCA5
ICsrKysrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS9zbWNjYy9zbWNjYy5jIGIvZHJpdmVycy9m
aXJtd2FyZS9zbWNjYy9zbWNjYy5jCj4gPiBpbmRleCA0ODg2OTlhYWUyNGYuLjY3Mjk3NGRmMGRm
ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvc21jY2Mvc21jY2MuYwo+ID4gKysr
IGIvZHJpdmVycy9maXJtd2FyZS9zbWNjYy9zbWNjYy5jCj4gPiBAQCAtMjQsMyArMjQsNyBAQCBl
bnVtIGFybV9zbWNjY19jb25kdWl0IGFybV9zbWNjY18xXzFfZ2V0X2NvbmR1aXQodm9pZCkKPiA+
ICAJcmV0dXJuIHNtY2NjX2NvbmR1aXQ7Cj4gPiAgfQo+ID4gIAo+ID4gK3UzMiBhcm1fc21jY2Nf
dmVyc2lvbl9nZXQodm9pZCkKPiA+ICt7Cj4gPiArCXJldHVybiBzbWNjY192ZXJzaW9uOwo+ID4g
K30KPiAKPiBDb3VsZCB3ZSBwbGVhc2UgY2FsbCB0aGlzIGFybV9zbWNjY19nZXRfdmVyc2lvbigp
LCB0byBhbGlnbiB3aXRoIHRoZQo+IGV4aXN0aW5nIGFybV9zbWNjY18xXzFfZ2V0X2NvbmR1aXQo
KT8KPgoKUmlnaHQgd2lsbCBmaXggdGhhdC4gKEkgbWF5IHN1ZGRlbmx5IGdvdCBpbnRvIFNDTUkg
bW9kZSB3aGVyZSBHcmVnIG9yCnNvbWVvbmUgYXNrZWQgbWUgY2hhbmdlIGFsbCB0aGUgZnVuY3Rp
b24gbmFtZXMgdG8gaGF2ZSB2ZXJiIGF0IHRoZSBlbmQg8J+YgSkKCj4gPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9hcm0tc21jY2MuaCBiL2luY2x1ZGUvbGludXgvYXJtLXNtY2NjLmgKPiA+
IGluZGV4IDExZmIyMGJmYThmNy4uOGRkNTRkYWQxZWM1IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVk
ZS9saW51eC9hcm0tc21jY2MuaAo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9hcm0tc21jY2MuaAo+
ID4gQEAgLTEwOSw2ICsxMDksMTUgQEAgdm9pZCBfX2luaXQgYXJtX3NtY2NjX3ZlcnNpb25faW5p
dCh1MzIgdmVyc2lvbiwgZW51bSBhcm1fc21jY2NfY29uZHVpdCBjb25kdWl0KTsKPiA+ICAgKi8K
PiA+ICBlbnVtIGFybV9zbWNjY19jb25kdWl0IGFybV9zbWNjY18xXzFfZ2V0X2NvbmR1aXQodm9p
ZCk7Cj4gPiAgCj4gPiArLyoqCj4gPiArICogYXJtX3NtY2NjX3ZlcnNpb25fZ2V0KCkKPiA+ICsg
Kgo+ID4gKyAqIFJldHVybnMgdGhlIHZlcnNpb24gdG8gYmUgdXNlZCBmb3IgU01DQ0N2MS4xIG9y
IGxhdGVyLgo+ID4gKyAqCj4gPiArICogV2hlbiBTTUNDQ3YxLjEgb3IgYWJvdmUgaXMgbm90IHBy
ZXNlbnQsIGFzc3VtZXMgYW5kIHJldHVybnMgU01DQ0N2MS4wLgo+ID4gKyAqLwo+ID4gK3UzMiBh
cm1fc21jY2NfdmVyc2lvbl9nZXQodm9pZCk7Cj4gCj4gQ2FuIHdlIHBsZWFzZSByZXdvcmQgdGhl
IGxhc3QgbGluZSB0byBzb21ldGhpbmcgbGlrZToKPgo+IHwgV2hlbiBTTUNDQ3YxLjEgb3IgYWJv
dmUgaXMgbm90IHByZXNlbnQsIHJldHVybnMgU01DQ0N2MS4wLCBidXQgdGhpcwo+IHwgZG9lcyBu
b3QgaW1wbHkgdGhlIHByZXNlbmNlIG9mIGZpcm13YXJlIG9yIGEgdmFsaWQgY29uZHVpdC4gQ2Fs
bGVycwo+IHwgaGFuZGxpbmcgU01DQ0N2MS4wIG11c3QgZGV0ZXJtaW5lIHRoZSBjb25kdWl0IGJ5
IG90aGVyIG1lYW5zLgo+CgpTdXJlCgo+IFdpdGggYWxsIHRoYXQ6Cj4gCj4gQWNrZWQtYnk6IE1h
cmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4gCgpUaGFua3MsCgotLSAKUmVnYXJk
cywKU3VkZWVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
