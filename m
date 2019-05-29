Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9CD2DB0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZRrWZEQFnMU5+jHYnSlWH+gBsrkHEfkEbX2qvoqmkaA=; b=jfC4HgL4CpeXKJO32O2zQ6YHf
	zErfi7tu+u2nw7CXRecRqLXBgdEIOg8/9yuPUGKC4G7EJQhhfR4riUOeALwMmDUckr+/4UX3tBtwO
	OqMYDu5dI/AQLcYfjzwnmh2j2LbCSsME2Ws+euXfSWKeeZLyM5qKGb4W1NzlS3j5xiGwNvHG08gSc
	0uAVWlULBmpUt529Gx7oJhjlnbmyjbqJGvDhHUyyOur50MVe/0V4Ja6xjZaX3lrS2iihrQ6+826AM
	32OMBr/xHz3nkoE6YdYVYIBEP2/HEUghjIpha4x9cBzfpVULkU3nMBgCUIAAWQ3hb34+cSOfx4ekM
	1vTJgzaxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwAd-00031o-EU; Wed, 29 May 2019 10:50:59 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwAV-000319-Ui
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:50:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1F13341;
 Wed, 29 May 2019 03:50:49 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C21743F59C;
 Wed, 29 May 2019 03:50:47 -0700 (PDT)
Subject: Re: [RFC 4/7] arm64: pmu: Add function implementation to update event
 index in userpage.
To: Raphael Gault <raphael.gault@arm.com>,
 Peter Zijlstra <peterz@infradead.org>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-5-raphael.gault@arm.com>
 <20190529094659.GK2623@hirez.programming.kicks-ass.net>
 <42a937dd-5cf6-6738-6f69-005fce64138f@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d6f40c6c-6a73-bd7f-e384-050bd9428631@arm.com>
Date: Wed, 29 May 2019 11:50:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <42a937dd-5cf6-6738-6f69-005fce64138f@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_035051_998124_B548ADB0 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDUvMjAxOSAxMTo0NiwgUmFwaGFlbCBHYXVsdCB3cm90ZToKPiBIaSBQZXRlciwKPiAK
PiBPbiA1LzI5LzE5IDEwOjQ2IEFNLCBQZXRlciBaaWpsc3RyYSB3cm90ZToKPj4gT24gVHVlLCBN
YXkgMjgsIDIwMTkgYXQgMDQ6MDM6MTdQTSArMDEwMCwgUmFwaGFlbCBHYXVsdCB3cm90ZToKPj4+
ICtzdGF0aWMgaW50IGFybXY4cG11X2FjY2Vzc19ldmVudF9pZHgoc3RydWN0IHBlcmZfZXZlbnQg
KmV2ZW50KQo+Pj4gK3sKPj4+ICvCoMKgwqAgaWYgKCEoZXZlbnQtPmh3LmZsYWdzICYgQVJNUE1V
X0VMMF9SRF9DTlRSKSkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+ICsKPj4+ICvC
oMKgwqAgLyoKPj4+ICvCoMKgwqDCoCAqIFdlIHJlbWFwIHRoZSBjeWNsZSBjb3VudGVyIGluZGV4
IHRvIDMyIHRvCj4+PiArwqDCoMKgwqAgKiBtYXRjaCB0aGUgb2Zmc2V0IGFwcGxpZWQgdG8gdGhl
IHJlc3Qgb2YKPj4+ICvCoMKgwqDCoCAqIHRoZSBjb3VudGVyIGluZGVjZXMuCj4+PiArwqDCoMKg
wqAgKi8KPj4+ICvCoMKgwqAgaWYgKGV2ZW50LT5ody5pZHggPT0gQVJNVjhfSURYX0NZQ0xFX0NP
VU5URVIpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDMyOwo+Pj4gKwo+Pj4gK8KgwqDCoCBy
ZXR1cm4gZXZlbnQtPmh3LmlkeDsKPj4KPj4gSXMgdGhlcmUgYSBndWFyYW50ZWUgZXZlbnQtPmh3
LmlkeCBpcyBuZXZlciAwPyBPciBzaG91bGQgeW91LCBqdXN0IGxpa2UKPj4geDg2LCB1c2UgKzEg
aGVyZT8KPj4KPiAKPiBZb3UgYXJlIHJpZ2h0LCBJIHNob3VsZCB1c2UgKzEgaGVyZS4gVGhhbmtz
IGZvciBwb2ludGluZyB0aGF0IG91dC4KCklzbid0IHRoYXQgYWxyZWFkeSB0aGUgY2FzZSB0aG91
Z2gsIHNpbmNlIHdlIHJlc2VydmUgaW5kZXggMCBmb3IgdGhlIApjeWNsZSBjb3VudGVyPyBJJ20g
bG9va2luZyBhdCBBUk1WOF9JRFhfVE9fQ09VTlRFUigpIGhlcmUuLi4KClJvYmluLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
