Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7498F29AE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 17:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+w+hqAwjIw5JxSgWAUs5GV5v+L6c2uem3C8q56xWBn8=; b=uZAXIPfOcSF89M
	cy4CQ/pXXxBSOGMUQmPaSG/3/wXE830UOkKZ8uDFQE1AQVhCu0bOudhhVZAS9o0s8qpg8rCU/ysfq
	z3aXXp7SJKmYz/AarWQjrhD1dWO1+ebptwmpjWGtCzkIMDnNl5/KeJDSvM+vi8vWKACXQWCulsxsl
	7N9zTZvsdgLG+EJo3oIpRBCuKRE7Ai61oajXGQI1vyvVEYaX5VBTMLe4fL2yUYWNRmkcZe19FpZOo
	1epeA43y/POWDMDS59QhDEQ72aaNlAgGNiYKOJLS/kRMn4RZoa0HbDOGYGVMTVfuUdONjqX1q941h
	aL8xps1DAPnNAoV4ql3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUC0M-00024F-Fh; Fri, 24 May 2019 15:21:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUC0F-00023Q-1p
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 15:21:04 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BD41F9FFC6;
 Fri, 24 May 2019 15:20:51 +0000 (UTC)
Received: from treble (ovpn-121-106.rdu2.redhat.com [10.10.121.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E7AB85F7C5;
 Fri, 24 May 2019 15:20:46 +0000 (UTC)
Date: Fri, 24 May 2019 10:20:45 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@arm.com>
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
Message-ID: <20190524152045.w3syntzp4bb5jb7u@treble>
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
 <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
 <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
 <20190523091811.GA26646@fuggles.cambridge.arm.com>
 <907a9681-cd1d-3326-e3dd-5f6965497720@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <907a9681-cd1d-3326-e3dd-5f6965497720@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 24 May 2019 15:20:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_082103_129675_C48B3B6B 
X-CRM114-Status: GOOD (  31.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 james.morse@arm.com, jeyu@kernel.org, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6Mjk6MzlBTSArMDEwMCwgQXJkIEJpZXNoZXV2ZWwg
d3JvdGU6Cj4gCj4gCj4gT24gNS8yMy8xOSAxMDoxOCBBTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4g
PiBPbiBUaHUsIE1heSAyMywgMjAxOSBhdCAwOTo0MTo0MEFNICswMTAwLCBBcmQgQmllc2hldXZl
bCB3cm90ZToKPiA+ID4gCj4gPiA+IAo+ID4gPiBPbiA1LzIyLzE5IDU6MjggUE0sIEFyZCBCaWVz
aGV1dmVsIHdyb3RlOgo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IE9uIDUvMjIvMTkgNDowMiBQ
TSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4gPiA+ID4gPiBUaGUgZm9sbG93aW5nIGNvbW1pdAo+
ID4gPiA+ID4gCj4gPiA+ID4gPiAgwqDCoCA3MjkwZDU4MDk1NzEgKCJtb2R1bGU6IHVzZSByZWxh
dGl2ZSByZWZlcmVuY2VzIGZvciBfX2tzeW10YWIgZW50cmllcyIpCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IHVwZGF0ZWQgdGhlIGtzeW10YWIgaGFuZGxpbmcgb2Ygc29tZSBLQVNMUiBjYXBhYmxlIGFy
Y2hpdGVjdHVyZXMKPiA+ID4gPiA+IHNvIHRoYXQga3N5bXRhYiBlbnRyaWVzIGFyZSBlbWl0dGVk
IGFzIHBhaXJzIG9mIDMyLWJpdCByZWxhdGl2ZQo+ID4gPiA+ID4gcmVmZXJlbmNlcy4gVGhpcyBy
ZWR1Y2VzIHRoZSBzaXplIG9mIHRoZSBlbnRyaWVzLCBidXQgbW9yZQo+ID4gPiA+ID4gaW1wb3J0
YW50bHksIGl0IGdldHMgcmlkIG9mIHN0YXRpY2FsbHkgYXNzaWduZWQgYWJzb2x1dGUKPiA+ID4g
PiA+IGFkZHJlc3Nlcywgd2hpY2ggcmVxdWlyZSBmaXhpbmcgdXAgYXQgYm9vdCB0aW1lIGlmIHRo
ZSBrZXJuZWwKPiA+ID4gPiA+IGlzIHNlbGYgcmVsb2NhdGluZyAod2hpY2ggdGFrZXMgYSAyNCBi
eXRlIFJFTEEgZW50cnkgZm9yIGVhY2gKPiA+ID4gPiA+IG1lbWJlciBvZiB0aGUga3N5bXRhYiBz
dHJ1Y3QpLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaW5jZSBrc3ltdGFiIGVudHJpZXMgYXJlIGFs
d2F5cyBwYXJ0IG9mIHRoZSBzYW1lIG1vZHVsZSBhcyB0aGUKPiA+ID4gPiA+IHN5bWJvbCB0aGV5
IGV4cG9ydCAob3Igb2YgdGhlIGNvcmUga2VybmVsKSwgaXQgd2FzIGFzc3VtZWQgYXQgdGhlCj4g
PiA+ID4gPiB0aW1lIHRoYXQgYSAzMi1iaXQgcmVsYXRpdmUgcmVmZXJlbmNlIGlzIGFsd2F5cyBz
dWZmaWNpZW50IHRvCj4gPiA+ID4gPiBjYXB0dXJlIHRoZSBvZmZzZXQgYmV0d2VlbiBhIGtzeW10
YWIgZW50cnkgYW5kIGl0cyB0YXJnZXQgc3ltYm9sLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBVbmZv
cnR1bmF0ZWx5LCB0aGlzIGlzIG5vdCBhbHdheXMgdHJ1ZTogaW4gdGhlIGNhc2Ugb2YgcGVyLUNQ
VQo+ID4gPiA+ID4gdmFyaWFibGVzLCBhIHBlci1DUFUgdmFyaWFibGUncyBiYXNlIGFkZHJlc3Mg
KHdoaWNoIHVzdWFsbHkgZGlmZmVycwo+ID4gPiA+ID4gZnJvbSB0aGUgYWN0dWFsIGFkZHJlc3Mg
b2YgYW55IG9mIGl0cyBwZXItQ1BVIGNvcGllcykgY291bGQgYmUgYXQKPiA+ID4gPiA+IGFuIGFy
Yml0cmFyeSBvZmZzZXQgZnJvbSB0aGUga3N5bXRhYiBlbnRyeSwgYW5kIHNvIGl0IG1heSBiZSBv
dXQKPiA+ID4gPiA+IG9mIHJhbmdlIGZvciBhIDMyLWJpdCByZWxhdGl2ZSByZWZlcmVuY2UuCj4g
PiA+ID4gPiAKPiA+ID4gCj4gPiA+IChBcG9sb2dpZXMgZm9yIHRoZSAzLWFjdCBtb25vbG9ndWUp
Cj4gPiAKPiA+IEV4cG9zaXRpb24sIGRldmVsb3BtZW50IGFuZCByZWNhcGl0dWxhdGlvbiA7KQo+
ID4gCj4gPiA+IFRoaXMgdHVybnMgb3V0IHRvIGJlIGluY29ycmVjdC4gVGhlIHN5bWJvbCBhZGRy
ZXNzIG9mIHBlci1DUFUgdmFyaWFibGVzCj4gPiA+IGV4cG9ydGVkIGJ5IG1vZHVsZXMgaXMgYWx3
YXlzIGluIHRoZSB2aWNpbml0eSBvZiBfX3Blcl9jcHVfc3RhcnQsIGFuZCBzbyBpdAo+ID4gPiBp
cyBzaW1wbHkgYSBtYXR0ZXIgb2YgbWFraW5nIHN1cmUgdGhhdCB0aGUgY29yZSBrZXJuZWwgaXMg
aW4gcmFuZ2UgZm9yCj4gPiA+IG1vZHVsZSBrc3ltdGFiIGVudHJpZXMgY29udGFpbmluZyAzMi1i
aXQgcmVsYXRpdmUgcmVmZXJlbmNlcy4KPiA+ID4gCj4gPiA+IFdoZW4gcnVubmluZyB0aGUgYXJt
NjQgd2l0aCBrYXNsciBlbmFibGVkLCB3ZSBjdXJyZW50bHkgcmFuZG9taXplIHRoZSBtb2R1bGUK
PiA+ID4gc3BhY2UgYmFzZWQgb24gdGhlIHJhbmdlIG9mIEFEUlAvQUREIGluc3RydWN0aW9uIHBh
aXJzLCB3aGljaCBoYXZlIGEgLS8rIDQKPiA+ID4gR0IgcmFuZ2UgcmF0aGVyIHRoYW4gdGhlIC0v
KyAyIEdCIHJhbmdlIG9mIDMyLWJpdCBwbGFjZSByZWxhdGl2ZSBkYXRhCj4gPiA+IHJlbG9jYXRp
b25zLiBTbyB3ZSBjYW4gZml4IHRoaXMgYnkgc2ltcGx5IHJlZHVjaW5nIHRoZSByYW5kb21pemF0
aW9uIHdpbmRvdwo+ID4gPiB0byAyIEdCLgo+ID4gCj4gPiBNYWtlcyBzZW5zZS4gRG8geW91IHNl
ZSB0aGUgbmVlZCBmb3IgYW4gb3B0aW9uIHRvIGRpc2FibGUgUFJFTCByZWxvY3MKPiA+IGFsdG9n
ZXRoZXIgaW4gY2FzZSBzb21lYm9keSB3YW50cyB0aGUgYWRkaXRpb25hbCByYW5kb21pemF0aW9u
IHJhbmdlPwo+ID4gCj4gCj4gTm8sIG5vdCByZWFsbHkuIFRvIGJlIGhvbmVzdCwgSSBkb24ndCB0
aGluawo+IENPTkZJR19SQU5ET01JWkVfTU9EVUxFX1JFR0lPTl9GVUxMIGlzIHRoYXQgdXNlZnVs
IHRvIGJlZ2luIHdpdGgsIGFuZCB0aGUKPiBvbmx5IHJlYXNvbiB3ZSBlbmFibGVkIGl0IGJ5IGRl
ZmF1bHQgYXQgdGhlIHRpbWUgd2FzIHRvIGVuc3VyZSB0aGF0IHRoZSBQTFQKPiBjb2RlIGdvdCBz
b21lIGNvdmVyYWdlIGFmdGVyIHdlIGludHJvZHVjZWQgaXQuCgpJbiBjb2RlLCBwZXJjcHUgdmFy
aWFibGVzIGFyZSBhY2Nlc3NlZCB3aXRoIGFic29sdXRlIHJlbG9jYXRpb25zLCByaWdodD8KQmVm
b3JlIEkgcmVhZCB5b3VyIDNyZCBhY3QsIEkgd2FzIHdvbmRlcmluZyBpZiBpdCB3b3VsZCBtYWtl
IHNlbnNlIHRvIGRvCnRoZSBzYW1lIHdpdGggdGhlIGtzeW10YWIgcmVsb2NhdGlvbnMuCgpMaWtl
IGlmIHdlIHNvbWVob3cgWyBpbnNlcnQgbXVjaCBoYW5kIHdhdmluZyBdIGVuc3VyZWQgdGhhdCBl
dmVyeWJvZHkKdXNlcyBFWFBPUlRfUEVSX0NQVV9TWU1CT0woKSBmb3IgcGVyY3B1IHN5bWJvbHMg
aW5zdGVhZCBvZiBqdXN0CkVYUE9SVF9TWU1CT0woKSB0aGVuIHdlIGNvdWxkIHVzZSBhIGRpZmZl
cmVudCBtYWNybyB0byBjcmVhdGUgdGhlCmtzeW10YWIgcmVsb2NhdGlvbnMgZm9yIHBlcmNwdSB2
YXJpYWJsZXMsIHN1Y2ggdGhhdCB0aGV5IHVzZSBhYnNvbHV0ZQpyZWxvY2F0aW9ucy4KCkp1c3Qg
YW4gaWRlYS4gIE1heWJlIHRoZSBwb2ludCBpcyBtb290IG5vdy4KCi0tIApKb3NoCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
