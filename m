Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208262DD50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nymvPK+piG0OqN0j4unKeWLPcaad4WaDp4IpYhXEwLw=; b=vAG20bl9RqfsiLQugT0Tnjpx2
	bvbP0qgeY9b6X27nwe1WqYdj0pDKMk5jojqVS1mpLaqFjdvUgeBB4LYeRSpJYBtjrH19shDONTW3a
	WlnIO7mGbBhcs+CgFYQcChrJjsHgi8C9pw989EjgOy37iymTn4sqnELC6/5YAIrSuZ/zSgLHn942C
	C2Hdf/83qO4Nwh2HrHCsnzPBCP9s3dtK7zkBr+QYEue7IG8dE54RZxrLHtX0rdbYxyJM85Dt+pfIj
	x9BGPLoU0QlrbB1rvgofrPpIGwBWXCWCJmIUqGW+1BbY8Qe/OlPqpwC/DPUfAJyC4r7RRN8965BwD
	X+d7GrEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxsE-0002IZ-Bc; Wed, 29 May 2019 12:40:06 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxs3-0002He-S1
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:39:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8569080D;
 Wed, 29 May 2019 05:39:55 -0700 (PDT)
Received: from [10.1.196.108] (e121650-lin.cambridge.arm.com [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2E023F59C;
 Wed, 29 May 2019 05:39:53 -0700 (PDT)
Subject: Re: [RFC 4/7] arm64: pmu: Add function implementation to update event
 index in userpage.
To: Peter Zijlstra <peterz@infradead.org>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-5-raphael.gault@arm.com>
 <20190529094659.GK2623@hirez.programming.kicks-ass.net>
 <42a937dd-5cf6-6738-6f69-005fce64138f@arm.com>
 <d6f40c6c-6a73-bd7f-e384-050bd9428631@arm.com>
 <0100f2bd-7940-0b81-4c03-205b295a048f@arm.com>
 <20190529123256.GT2623@hirez.programming.kicks-ass.net>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <7178bdfe-92d0-22b5-60cf-b67a976dc6a2@arm.com>
Date: Wed, 29 May 2019 13:39:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190529123256.GT2623@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_053955_914159_D659B498 
X-CRM114-Status: GOOD (  20.22  )
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
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsCgpPbiA1LzI5LzE5IDE6MzIgUE0sIFBldGVyIFppamxzdHJhIHdyb3RlOgo+IE9u
IFdlZCwgTWF5IDI5LCAyMDE5IGF0IDAxOjI1OjQ2UE0gKzAxMDAsIFJhcGhhZWwgR2F1bHQgd3Jv
dGU6Cj4+IEhpIFJvYmluLCBIaSBQZXRlciwKPj4KPj4gT24gNS8yOS8xOSAxMTo1MCBBTSwgUm9i
aW4gTXVycGh5IHdyb3RlOgo+Pj4gT24gMjkvMDUvMjAxOSAxMTo0NiwgUmFwaGFlbCBHYXVsdCB3
cm90ZToKPj4+PiBIaSBQZXRlciwKPj4+Pgo+Pj4+IE9uIDUvMjkvMTkgMTA6NDYgQU0sIFBldGVy
IFppamxzdHJhIHdyb3RlOgo+Pj4+PiBPbiBUdWUsIE1heSAyOCwgMjAxOSBhdCAwNDowMzoxN1BN
ICswMTAwLCBSYXBoYWVsIEdhdWx0IHdyb3RlOgo+Pj4+Pj4gK3N0YXRpYyBpbnQgYXJtdjhwbXVf
YWNjZXNzX2V2ZW50X2lkeChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpCj4+Pj4+PiArewo+Pj4+
Pj4gK8KgwqDCoCBpZiAoIShldmVudC0+aHcuZmxhZ3MgJiBBUk1QTVVfRUwwX1JEX0NOVFIpKQo+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4+Pj4gKwo+Pj4+Pj4gK8KgwqDCoCAv
Kgo+Pj4+Pj4gK8KgwqDCoMKgICogV2UgcmVtYXAgdGhlIGN5Y2xlIGNvdW50ZXIgaW5kZXggdG8g
MzIgdG8KPj4+Pj4+ICvCoMKgwqDCoCAqIG1hdGNoIHRoZSBvZmZzZXQgYXBwbGllZCB0byB0aGUg
cmVzdCBvZgo+Pj4+Pj4gK8KgwqDCoMKgICogdGhlIGNvdW50ZXIgaW5kZWNlcy4KPj4+Pj4+ICvC
oMKgwqDCoCAqLwo+Pj4+Pj4gK8KgwqDCoCBpZiAoZXZlbnQtPmh3LmlkeCA9PSBBUk1WOF9JRFhf
Q1lDTEVfQ09VTlRFUikKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gMzI7Cj4+Pj4+PiAr
Cj4+Pj4+PiArwqDCoMKgIHJldHVybiBldmVudC0+aHcuaWR4Owo+Pj4+Pgo+Pj4+PiBJcyB0aGVy
ZSBhIGd1YXJhbnRlZSBldmVudC0+aHcuaWR4IGlzIG5ldmVyIDA/IE9yIHNob3VsZCB5b3UsIGp1
c3QgbGlrZQo+Pj4+PiB4ODYsIHVzZSArMSBoZXJlPwo+Pj4+Pgo+Pj4+Cj4+Pj4gWW91IGFyZSBy
aWdodCwgSSBzaG91bGQgdXNlICsxIGhlcmUuIFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQu
Cj4+Pgo+Pj4gSXNuJ3QgdGhhdCBhbHJlYWR5IHRoZSBjYXNlIHRob3VnaCwgc2luY2Ugd2UgcmVz
ZXJ2ZSBpbmRleCAwIGZvciB0aGUKPj4+IGN5Y2xlIGNvdW50ZXI/IEknbSBsb29raW5nIGF0IEFS
TVY4X0lEWF9UT19DT1VOVEVSKCkgaGVyZS4uLgo+Pj4KPj4KPj4gV2VsbCB0aGUgY3VycmVudCBi
ZWhhdmlvdXIgaXMgY29ycmVjdCBhbmQgdGFrZXMgY2FyZSBvZiB0aGUgemVybyBjYXNlIHdpdGgK
Pj4gdGhlIEFSTVY4X0lEWF9DWUNMRV9DT1VOVEVSIGNoZWNrLiBCdXQgdXNpbmcgQVJNVjhfSURY
X1RPX0NPVU5URVIoKSBhbmQgYWRkCj4+IDEgd291bGQgYWxzbyB3b3JrLiBIb3dldmVyIHRoaXMg
c2VlbXMgaW5kZWVkIHJlZHVuZGFudCB3aXRoIHRoZSBjdXJyZW50Cj4+IHZhbHVlIGhlbGQgaW4g
ZXZlbnQtPmh3LmlkeC4KPiAKPiBOb3RlIHRoYXQgd2hhdGV2ZXIgeW91IHBpY2sgbm93IHdpbGwg
YmVjb21lIEFCSS4gQWxzbyBub3RlIHRoYXQgdGhlCj4gY29tbWVudC9wc2V1ZG8tY29kZSBpbiBw
ZXJmX2V2ZW50X21tYXBfcGFnZSBzdWdnZXN0cyB0byB1c2UgaWR4LTEgZm9yCj4gdGhlIGFjdHVh
bCBoYXJkd2FyZSBhY2Nlc3MuCj4gCgpJbmRlZWQgdGhhdCdzIHRydWUuIEFzIGZvciB0aGUgcHNl
dWRvLWNvZGUgaW4gcGVyZl9ldmVudF9tbWFwX3BhZ2UuIEl0IAppcyBjb21wYXRpYmxlIHdpdGgg
d2hhdCBJIGRvIGhlcmUuIFRoZSB0d28gYXBwcm9hY2ggYXJlIG9ubHkgZGlmZmVyZW50IAppbiBm
b3JtIGJ1dCBpdCBpcyBpbiBib3RoIGNhc2UgbmVjZXNzYXJ5IHRvIHN1YnRyYWN0IDEgb24gdGhl
IHJldHVybmVkIAp2YWx1ZSBpbiBvcmRlciB0byBhY2Nlc3MgdGhlIGNvcnJlY3QgaGFyZHdhcmUg
Y291bnRlci4KClRoYW5rIHlvdSwKCi0tIApSYXBoYWVsIEdhdWx0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
