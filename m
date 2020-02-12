Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0EF15A76B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvjtAxCY2xHLI+8750Vusu5P8FY6KUb4RMH+5Qm9quI=; b=TvuUMCM5qHM6Jt
	WSPQZzW7s79bSkwPy2RN72DdIIpa2zkEuePTmpV77VVa+slotBvadRExp7ebScvJ+qcK77cAATEWY
	xrZnAJSWiKj29ghSE+RqAQX3QVJ0pQGNxYKVkoB0NsbALdUcKGsiSuKVHY5KOo3owde6EQ6U4W0v3
	UeDF6tvQB4Ha9MGV4lFkIheue4cmNi6TAJUHi0CfjxKrXkhSDshq3w0ryg2gPboJE0kJlyURpAwiz
	Nbrfr3HKKZ0Eu6jQwVjDn3a1u+CRxfg6ToMREuyz3PpTksI/S67lSDnxqEK68rClXQbnflOppiFgA
	FSXoT7ucWXR3VPxmAfEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pwq-0002qj-CQ; Wed, 12 Feb 2020 11:12:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pwb-0002po-P4
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:12:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D66230E;
 Wed, 12 Feb 2020 03:12:37 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E90E3F68F;
 Wed, 12 Feb 2020 03:12:34 -0800 (PST)
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
To: Lukasz Luba <lukasz.luba@arm.com>, Marc Zyngier <maz@kernel.org>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <89339501-5ee4-e871-3076-c8b02c6fbf6e@arm.com>
 <a24aa6c86e7a565b6269f48d4026bca2@kernel.org>
 <289c6110-b7ea-1d61-d795-551723263803@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <eeafe486-e408-b229-24ef-329649a13f70@arm.com>
Date: Wed, 12 Feb 2020 11:12:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <289c6110-b7ea-1d61-d795-551723263803@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_031237_870417_1D4FEFB1 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org, sudeep.holla@arm.com,
 Ionela Voinescu <ionela.voinescu@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMDIvMjAyMCAxMDo1NSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+IEJlY2F1c2UsIGFzIHRo
ZSBjb21taXQgbWVzc2FnZSBvdXRsaW5lcyBpdCwgc3VjaCBhIGZyZXF1ZW5jeSBpcyB0ZXJyaWJs
eQo+PiBvdXQgb2Ygc3BlYz8KPiAKPiBJIGRvbid0IHNlZSBpbiB0aGUgUk0gdGhhdCA8IDFNSHog
aXMgdGVycmlibHkgb3V0IG9mIHNwZWMuCj4gJ0ZyZXF1ZW5jeQo+IEluY3JlbWVudHMgYXQgYSBm
aXhlZCBmcmVxdWVuY3ksIHR5cGljYWxseSBpbiB0aGUgcmFuZ2UgMS01ME1Iei4KPiBDYW4gc3Vw
cG9ydCBvbmUgb3IgbW9yZSBhbHRlcm5hdGl2ZSBvcGVyYXRpbmcgbW9kZXMgaW4gd2hpY2ggaXQg
aW5jcmVtZW50cyBieSBsYXJnZXIgYW1vdW50cyBhdCBhCj4gbG93ZXIgZnJlcXVlbmN5LCB0eXBp
Y2FsbHkgZm9yIHBvd2VyLXNhdmluZy4nCj4gCj4gVGhlcmUgaXMgZXZlbiBhbiBleGFtcGxlIGhv
dyB0byBvcGVyYXRlIGF0IDIwa0h6IGFuZCBpbmNyZW1lbnQgYnkgNTAwLgo+IAo+IEkgZG9uJ3Qg
a25vdyB0aGUgY29kZSBpZiBpdCdzIHN1cHBvcnRlZCwgdGhvdWdodC4KPiAKCkZvciB0aGF0IG9u
ZSBjYXNlIHRoZSB2YWx1ZSByZXBvcnRlZCBieSBDTlRGUlEgc2hvdWxkbid0IGNoYW5nZSAtIGl0
J3Mgc3RpbGwKYSB0aW1lciB0aGF0IGxvb2tzIGxpa2UgaXMgb3BlcmF0aW5nIGF0IDEwTUh6LCBi
dXQgdW5kZXIgdGhlIGhvb2QgaXMgZG9pbmcKYmlnZ2VyIGluY3JlbWVudHMgYXQgbG93ZXIgZnJl
cS4KCkFzIEkgd2FzIHRyeWluZyB0byBnZXQgdG8sIHRoaXMgcGF0Y2ggaXNuJ3QgdmFsaWRhdGlu
ZyB0aGUgYWN0dWFsIGZyZXF1ZW5jeQp0aGUgdGltZXIgb3BlcmF0ZXMgb24sIHJhdGhlciB0aGF0
IHdoYXRldmVyIGlzIHJlcG9ydGVkIGJ5IENOVEZSUSBpcwpzb21ld2hhdCBzYW5lICh3aGljaCBo
ZXJlIG1lYW5zIFsxLCA1MF1NSHosIGFsdGhvdWdoIHdlIGp1c3QgY2hlY2sgdGhlCmxvd2VyIGJv
dW5kKS4KClsuLi5dCgo+PiBBbmQ/IEl0IHNlZW1zIHRvIGFkZHJlc3MgYSBwb3RlbnRpYWwgaXNz
dWUgd2hlcmUgdGhlIHRpbWUgZnJlcXVlbmN5Cj4+IGlzIG91dCBvZiBzcGVjLCBhbmQgbWFrZXMg
c3VyZSB3ZSBkb24ndCBlbmQgdXAgd2l0aCBhZGRpdGlvbmFsIHByb2JsZW1zCj4+IGluIHRoZSBB
TVUgY29kZS4KPiAKPiBUaGlzIHBhdGNoIGp1c3QgcHJpbnRzIHdhcm5pbmcsIGRvZXMgbm90IGNo
YW5nZSBhbnl0aGluZyBpbiBib290aW5nIG9yCj4gaW4gYW55IGNvZGUgcmVsYXRlZCB0byBBTVUu
Cj4gCgpSaWdodCwgYnV0IGl0IHNob3VsZCBzdGlsbCBiZSB3b3J0aCBoYXZpbmcgLSBhdCBsZWFz
dCBpdCBzaG93cyB1cCBpbgpkbWVzZywgYW5kIHdoZW4gc29tZW9uZSByZXBvcnRzIHNvbWV0aGlu
ZyBmaXNoeSB3ZSBnZXQgYSBoaW50IHRoYXQgd2UgY2FuCmJsYW1lIHRoZSBoYXJkd2FyZS4KCj4+
Cj4+IE9uIGl0cyBvd24sIGl0IGlzIHBlcmZlY3RseSBzZW5zaWJsZSBhbmQgY291bGQgYmUgbWVy
Z2VkIGFzIHBhcnQgb2YgdGhpcwo+PiBzZXJpZXMgd2l0aCBteQo+Pgo+PiBBY2tlZC1ieTogTWFy
YyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KPj4KPj4gwqDCoMKgwqDCoMKgwqDCoCBNLgo+IAo+
IFJlZ2FyZHMsCj4gTHVrYXN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
