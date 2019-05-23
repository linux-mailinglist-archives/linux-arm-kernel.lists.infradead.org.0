Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA1127844
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mgeCa1ZAMXhjrFBbX0H2yQ2kc315fVUIAGneIzcCYds=; b=b9ZrK6cpgL90UZyIPFPdqZF4i
	Gwr/Cpacc8chYpLZo8z/XFMEjff7TYpz7WT5OYJ184UexHV4iON+c6nDj3bDWw7JZ5nA0uwESlwBt
	D5OGqoiY8NuZYeFvfJqRF+P1/dUdx6dotxNUn3d7IwJYbvyMpxf9Qxk4mPSshHG7DZgWwxRXT9KT2
	5QeoX/lUVg3Dh4WtnfvYJdrJztPbA4W4FzA0Q6s3YC9fBHmBm86mz9tqfh8fxNwZN2gSYCg+OsQ/A
	43ABqHUKVfG8qFbEJG+ZfCh9matqZTgG9k1OdCbHXD4XDpdotIIWX+uBTXpRdT6bqc0Nf0tCM84XU
	dmgSFEzHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjIO-0007Cb-PL; Thu, 23 May 2019 08:41:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjIH-0007CD-QT
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:41:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF388341;
 Thu, 23 May 2019 01:41:44 -0700 (PDT)
Received: from [10.1.39.23] (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0047B3F575;
 Thu, 23 May 2019 01:41:41 -0700 (PDT)
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
 <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
Message-ID: <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
Date: Thu, 23 May 2019 09:41:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_014145_864785_90BB6170 
X-CRM114-Status: GOOD (  18.24  )
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 jeyu@kernel.org, mingo@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzIyLzE5IDU6MjggUE0sIEFyZCBCaWVzaGV1dmVsIHdyb3RlOgo+IAo+IAo+IE9uIDUv
MjIvMTkgNDowMiBQTSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4+IFRoZSBmb2xsb3dpbmcgY29t
bWl0Cj4+Cj4+IMKgwqAgNzI5MGQ1ODA5NTcxICgibW9kdWxlOiB1c2UgcmVsYXRpdmUgcmVmZXJl
bmNlcyBmb3IgX19rc3ltdGFiIGVudHJpZXMiKQo+Pgo+PiB1cGRhdGVkIHRoZSBrc3ltdGFiIGhh
bmRsaW5nIG9mIHNvbWUgS0FTTFIgY2FwYWJsZSBhcmNoaXRlY3R1cmVzCj4+IHNvIHRoYXQga3N5
bXRhYiBlbnRyaWVzIGFyZSBlbWl0dGVkIGFzIHBhaXJzIG9mIDMyLWJpdCByZWxhdGl2ZQo+PiBy
ZWZlcmVuY2VzLiBUaGlzIHJlZHVjZXMgdGhlIHNpemUgb2YgdGhlIGVudHJpZXMsIGJ1dCBtb3Jl
Cj4+IGltcG9ydGFudGx5LCBpdCBnZXRzIHJpZCBvZiBzdGF0aWNhbGx5IGFzc2lnbmVkIGFic29s
dXRlCj4+IGFkZHJlc3Nlcywgd2hpY2ggcmVxdWlyZSBmaXhpbmcgdXAgYXQgYm9vdCB0aW1lIGlm
IHRoZSBrZXJuZWwKPj4gaXMgc2VsZiByZWxvY2F0aW5nICh3aGljaCB0YWtlcyBhIDI0IGJ5dGUg
UkVMQSBlbnRyeSBmb3IgZWFjaAo+PiBtZW1iZXIgb2YgdGhlIGtzeW10YWIgc3RydWN0KS4KPj4K
Pj4gU2luY2Uga3N5bXRhYiBlbnRyaWVzIGFyZSBhbHdheXMgcGFydCBvZiB0aGUgc2FtZSBtb2R1
bGUgYXMgdGhlCj4+IHN5bWJvbCB0aGV5IGV4cG9ydCAob3Igb2YgdGhlIGNvcmUga2VybmVsKSwg
aXQgd2FzIGFzc3VtZWQgYXQgdGhlCj4+IHRpbWUgdGhhdCBhIDMyLWJpdCByZWxhdGl2ZSByZWZl
cmVuY2UgaXMgYWx3YXlzIHN1ZmZpY2llbnQgdG8KPj4gY2FwdHVyZSB0aGUgb2Zmc2V0IGJldHdl
ZW4gYSBrc3ltdGFiIGVudHJ5IGFuZCBpdHMgdGFyZ2V0IHN5bWJvbC4KPj4KPj4gVW5mb3J0dW5h
dGVseSwgdGhpcyBpcyBub3QgYWx3YXlzIHRydWU6IGluIHRoZSBjYXNlIG9mIHBlci1DUFUKPj4g
dmFyaWFibGVzLCBhIHBlci1DUFUgdmFyaWFibGUncyBiYXNlIGFkZHJlc3MgKHdoaWNoIHVzdWFs
bHkgZGlmZmVycwo+PiBmcm9tIHRoZSBhY3R1YWwgYWRkcmVzcyBvZiBhbnkgb2YgaXRzIHBlci1D
UFUgY29waWVzKSBjb3VsZCBiZSBhdAo+PiBhbiBhcmJpdHJhcnkgb2Zmc2V0IGZyb20gdGhlIGtz
eW10YWIgZW50cnksIGFuZCBzbyBpdCBtYXkgYmUgb3V0Cj4+IG9mIHJhbmdlIGZvciBhIDMyLWJp
dCByZWxhdGl2ZSByZWZlcmVuY2UuCj4+CgooQXBvbG9naWVzIGZvciB0aGUgMy1hY3QgbW9ub2xv
Z3VlKQoKVGhpcyB0dXJucyBvdXQgdG8gYmUgaW5jb3JyZWN0LiBUaGUgc3ltYm9sIGFkZHJlc3Mg
b2YgcGVyLUNQVSB2YXJpYWJsZXMgCmV4cG9ydGVkIGJ5IG1vZHVsZXMgaXMgYWx3YXlzIGluIHRo
ZSB2aWNpbml0eSBvZiBfX3Blcl9jcHVfc3RhcnQsIGFuZCBzbyAKaXQgaXMgc2ltcGx5IGEgbWF0
dGVyIG9mIG1ha2luZyBzdXJlIHRoYXQgdGhlIGNvcmUga2VybmVsIGlzIGluIHJhbmdlIApmb3Ig
bW9kdWxlIGtzeW10YWIgZW50cmllcyBjb250YWluaW5nIDMyLWJpdCByZWxhdGl2ZSByZWZlcmVu
Y2VzLgoKV2hlbiBydW5uaW5nIHRoZSBhcm02NCB3aXRoIGthc2xyIGVuYWJsZWQsIHdlIGN1cnJl
bnRseSByYW5kb21pemUgdGhlIAptb2R1bGUgc3BhY2UgYmFzZWQgb24gdGhlIHJhbmdlIG9mIEFE
UlAvQUREIGluc3RydWN0aW9uIHBhaXJzLCB3aGljaCAKaGF2ZSBhIC0vKyA0IEdCIHJhbmdlIHJh
dGhlciB0aGFuIHRoZSAtLysgMiBHQiByYW5nZSBvZiAzMi1iaXQgcGxhY2UgCnJlbGF0aXZlIGRh
dGEgcmVsb2NhdGlvbnMuIFNvIHdlIGNhbiBmaXggdGhpcyBieSBzaW1wbHkgcmVkdWNpbmcgdGhl
IApyYW5kb21pemF0aW9uIHdpbmRvdyB0byAyIEdCLgoKU28gcGxlYXNlIGRpc3JlZ2FyZCB0aGlz
IHBhdGNoIChhbmQgdGhlIGZvbGxvd3VwIG9uZSBhZ2FpbnN0IGFyY2gveDg2L3Rvb2xzKQoKLS0g
CkFyZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
