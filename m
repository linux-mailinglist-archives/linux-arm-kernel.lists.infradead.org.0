Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53A2DCB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E+/1o1Slz94/K5uslsdMPDd/Mh5g8HWYcOKTkydXmig=; b=VkgfAVJnUSYzSI3inLM2eKAD8
	nSE9Gyee/PVHE4wtEGSjHp9ST4juGIxrRwTEF/KbcLsT9QR1SXNNCrP5Uz/upgBnZmxOz16XS8FZ+
	ES1ZYQknUZk07Zp/ONwsKzwnV34ffcQY2cltntYuIFQ0CTfqwHx9c8dKZSo35T8ZN62KpNhHdXjn9
	d7dDESA96a6yzpdb/O/wY7oFzWBGuuJEK2sOo+SQ9DHRVx3Ff1fSdreFPptU5NejmUCO4EN4Kc1OW
	DNwfSZTRiEDdpmd7CCIKLnp/c0nWy3C+ViwEFz+OC3p/L2cM0tWzT/Y5PUrT6a46bFdVziD+4q5nM
	oGhlxGmwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxea-00043q-EC; Wed, 29 May 2019 12:26:00 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxeT-000439-S1
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:25:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B74B80D;
 Wed, 29 May 2019 05:25:49 -0700 (PDT)
Received: from [10.1.196.108] (e121650-lin.cambridge.arm.com [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0206E3F59C;
 Wed, 29 May 2019 05:25:47 -0700 (PDT)
Subject: Re: [RFC 4/7] arm64: pmu: Add function implementation to update event
 index in userpage.
To: Robin Murphy <robin.murphy@arm.com>, Peter Zijlstra <peterz@infradead.org>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-5-raphael.gault@arm.com>
 <20190529094659.GK2623@hirez.programming.kicks-ass.net>
 <42a937dd-5cf6-6738-6f69-005fce64138f@arm.com>
 <d6f40c6c-6a73-bd7f-e384-050bd9428631@arm.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <0100f2bd-7940-0b81-4c03-205b295a048f@arm.com>
Date: Wed, 29 May 2019 13:25:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <d6f40c6c-6a73-bd7f-e384-050bd9428631@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_052553_912867_C13A012B 
X-CRM114-Status: GOOD (  18.49  )
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

SGkgUm9iaW4sIEhpIFBldGVyLAoKT24gNS8yOS8xOSAxMTo1MCBBTSwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IE9uIDI5LzA1LzIwMTkgMTE6NDYsIFJhcGhhZWwgR2F1bHQgd3JvdGU6Cj4+IEhpIFBl
dGVyLAo+Pgo+PiBPbiA1LzI5LzE5IDEwOjQ2IEFNLCBQZXRlciBaaWpsc3RyYSB3cm90ZToKPj4+
IE9uIFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDA0OjAzOjE3UE0gKzAxMDAsIFJhcGhhZWwgR2F1bHQg
d3JvdGU6Cj4+Pj4gK3N0YXRpYyBpbnQgYXJtdjhwbXVfYWNjZXNzX2V2ZW50X2lkeChzdHJ1Y3Qg
cGVyZl9ldmVudCAqZXZlbnQpCj4+Pj4gK3sKPj4+PiArwqDCoMKgIGlmICghKGV2ZW50LT5ody5m
bGFncyAmIEFSTVBNVV9FTDBfUkRfQ05UUikpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAw
Owo+Pj4+ICsKPj4+PiArwqDCoMKgIC8qCj4+Pj4gK8KgwqDCoMKgICogV2UgcmVtYXAgdGhlIGN5
Y2xlIGNvdW50ZXIgaW5kZXggdG8gMzIgdG8KPj4+PiArwqDCoMKgwqAgKiBtYXRjaCB0aGUgb2Zm
c2V0IGFwcGxpZWQgdG8gdGhlIHJlc3Qgb2YKPj4+PiArwqDCoMKgwqAgKiB0aGUgY291bnRlciBp
bmRlY2VzLgo+Pj4+ICvCoMKgwqDCoCAqLwo+Pj4+ICvCoMKgwqAgaWYgKGV2ZW50LT5ody5pZHgg
PT0gQVJNVjhfSURYX0NZQ0xFX0NPVU5URVIpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAz
MjsKPj4+PiArCj4+Pj4gK8KgwqDCoCByZXR1cm4gZXZlbnQtPmh3LmlkeDsKPj4+Cj4+PiBJcyB0
aGVyZSBhIGd1YXJhbnRlZSBldmVudC0+aHcuaWR4IGlzIG5ldmVyIDA/IE9yIHNob3VsZCB5b3Us
IGp1c3QgbGlrZQo+Pj4geDg2LCB1c2UgKzEgaGVyZT8KPj4+Cj4+Cj4+IFlvdSBhcmUgcmlnaHQs
IEkgc2hvdWxkIHVzZSArMSBoZXJlLiBUaGFua3MgZm9yIHBvaW50aW5nIHRoYXQgb3V0Lgo+IAo+
IElzbid0IHRoYXQgYWxyZWFkeSB0aGUgY2FzZSB0aG91Z2gsIHNpbmNlIHdlIHJlc2VydmUgaW5k
ZXggMCBmb3IgdGhlIAo+IGN5Y2xlIGNvdW50ZXI/IEknbSBsb29raW5nIGF0IEFSTVY4X0lEWF9U
T19DT1VOVEVSKCkgaGVyZS4uLgo+IAoKV2VsbCB0aGUgY3VycmVudCBiZWhhdmlvdXIgaXMgY29y
cmVjdCBhbmQgdGFrZXMgY2FyZSBvZiB0aGUgemVybyBjYXNlIAp3aXRoIHRoZSBBUk1WOF9JRFhf
Q1lDTEVfQ09VTlRFUiBjaGVjay4gQnV0IHVzaW5nIEFSTVY4X0lEWF9UT19DT1VOVEVSKCkgCmFu
ZCBhZGQgMSB3b3VsZCBhbHNvIHdvcmsuIEhvd2V2ZXIgdGhpcyBzZWVtcyBpbmRlZWQgcmVkdW5k
YW50IHdpdGggdGhlIApjdXJyZW50IHZhbHVlIGhlbGQgaW4gZXZlbnQtPmh3LmlkeC4KCj4gUm9i
aW4uCgotLSAKUmFwaGFlbCBHYXVsdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
