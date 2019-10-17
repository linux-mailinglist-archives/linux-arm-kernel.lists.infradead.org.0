Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02A4DB136
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqerZZVvI4Q26N6cSr3KEUfeReuzGzFGusc0WzNk3as=; b=tMfo9faVJ+3zQb
	kWIjhEEzqqVVvdkLXoiFB94ZgXBAdy4Hdhve4XLEZGzVygUGXjZRMdCkzAeR6AwysrqXZQlAYWkjT
	/G5SqZz7txGJEO6cZGd5hEyexViYEGvaC+NsFy8vnO92GZiHc7BtqbA6SfXO4BxvXMZ9o0r+Qth8u
	INd/LSY9Pg8XzUrdbOUzLxZScNySCgReE1jGsxsPeMAFehmcrucvJkO2Bwf4J9rGb+6acswvf8Ia3
	M1Q8PS9+sRmKJX7i3UssyuFEpo+E/+s/VYtYu4oPrRFOcjGtfh97zxDc+DeCsdADiCXpJgKsc+Ew0
	Bf53VoBXOVD60CHUphPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7pp-0002pK-7L; Thu, 17 Oct 2019 15:37:05 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7pg-0002ok-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:36:57 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 57D1D806CE;
 Thu, 17 Oct 2019 15:36:55 +0000 (UTC)
Received: from llong.remote.csb (ovpn-123-81.rdu2.redhat.com [10.10.123.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 64F2119C77;
 Thu, 17 Oct 2019 15:36:54 +0000 (UTC)
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Will Deacon <will@kernel.org>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191016155755.66ges3ybn3awx45l@willie-the-truck>
 <20191016220927.54ptu5etl3la3pdb@flow>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <5b4ccf6f-d3c9-c8a5-a2e2-47a6b6078dc2@redhat.com>
Date: Thu, 17 Oct 2019 11:36:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191016220927.54ptu5etl3la3pdb@flow>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 17 Oct 2019 15:36:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_083656_383894_BE56049B 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTYvMTkgNjowOSBQTSwgU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciB3cm90ZToKPiBP
biAyMDE5LTEwLTE2IDE2OjU3OjU2IFsrMDEwMF0sIFdpbGwgRGVhY29uIHdyb3RlOgo+PiBIaSBT
ZWJhc3RpYW4sCj4gSGkgV2lsbCwKPgo+PiBUbyBiZSBob25lc3Qgd2l0aCB5b3UsIEknbSBzdXJw
cmlzZWQgdGhhdCBxc3BpbmxvY2sgaXMgd29ydGggaXQgZm9yIDMyLWJpdAo+PiBBcm0uIHFyd2xv
Y2sgbWFrZXMgc2Vuc2UgYmVjYXVzZSBvZiBmYWlybmVzcyBhbmQgc3RhcnZhdGlvbiBpc3N1ZXMs
IGJ1dCBpbgo+PiBteSBiZW5jaG1hcmtzIG9uIGFybTY0IHRpY2tldHMgdGVuZGVkIHRvIHBlcmZv
cm0gYXQgbGVhc3QgYXMgd2VsbCBmb3Igc21hbGwKPj4gY29yZSBjb3VudHMsIGFuZCBJIHRoaW5r
IHRoYXQncyBsYXJnZWx5IGdvaW5nIHRvIGJlIHRydWUgZm9yIHN5c3RlbXMKPj4gcnVubmluZyBh
IDMyLWJpdCBrZXJuZWwuCj4gV2FpbWFuIGhhZCBudW1iZXJzIG9uIHg4NiBvbiBob3cgZ29vZCB0
aGlzIHEtbG9jayB0aGluZ3kgaXMgYW5kIHg4Ngo+IG1vdmVkIHRvIHRoaXMuIEFSTTY0IGRpZG4n
dCBzdGF0ZSBhIHJlYXNvbiBpbiBwYXJ0aWN1bGFyIG9ubHkgc2F5aW5nCj4gIml0IHNlcnZlZCB1
cyB3ZWxsIGJ1dCB3ZSBkbyBxLWxvY2tzIG5vdyIgKHRoaXMgaXMgaG93IEkgcmVtZW1iZXIgaXQK
PiBhZnRlciBJIHdlbnQgb3ZlciB0aGUgZ2l0IGxvZ3Mgc29tZSB0aW1lIGFnbykuCj4gTm90IGtu
b3dpbmcgYW55dGhpbmcgYWJvdXQgcXNwaW4gdnMgdGlja2V0IGxvY2tpbmcgSSBsb29rZWQgb24g
aG93IGhhcmQKPiB3aWxsIGJlIHRvIHN3aXRjaC4gVGhlbiBJIGxvb2tlZCB3aXRoIGhhY2tiZW5j
aCBhdCBpdCB0byBzZWUgaWYgaXQgd2FzCj4gd29ydGggaXQgYW5kIGl0IGRpZG4ndCBsb29rIHRo
YXQgYmFkLiBQbHVzIHRoZSBkaWZmc3RhdCB3YXMgbmVnYXRpdmUgc2/igKYKCkkgaGFkIHNlZW4g
bWljcm9iZW5jaG1hcmtzIGxpa2UgZmlvIHRoYXQgb24gMi1zb2NrZXQgYXJtNjQgc3lzdGVtcyAo
d2l0aAo+IDEwMCBsb2dpY2FsIENQVXMpLCB5b3UgY2FuIGdldCA0LTVYIHBlcmZvcm1hbmNlIG91
dCBvZiBxc3BpbmxvY2sgd2hlbgpjb21wYXJlZCB3aXRoIHRpY2tldCBsb2NrLiBJdCB3YXMgbW9y
ZSB0aGFuIEkgdXN1YWxseSBzYXcgb24geDg2LTY0CnN5c3RlbS4gTXkgY29uY2x1c2lvbiBpcyB0
aGF0IGFybTY0IHN5c3RlbXMgYXJlIHByb2JhYmx5IG1vcmUKc3VzY2VwdGlibGUgdG8gdGhlIGls
bCBlZmZlY3Qgb2YgY2FjaGVsaW5lIGNvbnRlbnRpb24gdGhhbiB4ODYtNjQKc3lzdGVtcy4gU28g
aXQgaXMgY2VydGFpbmx5IGEgd2luIGZvciBhcm02NC4KCkNoZWVycywKTG9uZ21hbgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
