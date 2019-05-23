Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A1527932
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jPmmtZdb8u4++oHHihZvS6+j06oPQWsGYlSFXY5+fMU=; b=Y9vB6hDuuJruxgSEEfa1MYzyi
	rdC/x4Q8NFgUJt7ryfCAro+hmsoOoH6iWVru78Lmg7Ng9yELhQKXHHU1JxVaFJay88MTO0+8gF5ny
	YZQ3nk86QIaHm4AbcIq04BNKYfZ2RPbL2nGrN/0WKpTmNC+wY36HxS57shtko9PjTXw9hcrxkWGW5
	8R9Fvm0u942i91UmG7EmHOhSSUz2Zv18hLX7iq5LAeaR72ZLP4rBd/dNpmDe5XnpqN9kh63VfFkWl
	ZdRy1i1POe6SQCSpA3ZzysyXGkHhDEwCRv6TmbvVHkNHU/3sE+3hUyTekpMUe9Zvx9McKmjUre83c
	4epncvKYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTk2o-0005Lu-AH; Thu, 23 May 2019 09:29:50 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTk2h-0005LH-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:29:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81220341;
 Thu, 23 May 2019 02:29:42 -0700 (PDT)
Received: from [10.1.39.23] (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F9213F718;
 Thu, 23 May 2019 02:29:40 -0700 (PDT)
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
To: Will Deacon <will.deacon@arm.com>
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
 <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
 <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
 <20190523091811.GA26646@fuggles.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
Message-ID: <907a9681-cd1d-3326-e3dd-5f6965497720@arm.com>
Date: Thu, 23 May 2019 10:29:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523091811.GA26646@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_022943_190030_D12B0FDA 
X-CRM114-Status: GOOD (  21.46  )
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
 linux-kernel@vger.kernel.org, james.morse@arm.com, jeyu@kernel.org,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzIzLzE5IDEwOjE4IEFNLCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBUaHUsIE1heSAy
MywgMjAxOSBhdCAwOTo0MTo0MEFNICswMTAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPj4KPj4K
Pj4gT24gNS8yMi8xOSA1OjI4IFBNLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPj4+Cj4+Pgo+Pj4g
T24gNS8yMi8xOSA0OjAyIFBNLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPj4+PiBUaGUgZm9sbG93
aW5nIGNvbW1pdAo+Pj4+Cj4+Pj4gIMKgwqAgNzI5MGQ1ODA5NTcxICgibW9kdWxlOiB1c2UgcmVs
YXRpdmUgcmVmZXJlbmNlcyBmb3IgX19rc3ltdGFiIGVudHJpZXMiKQo+Pj4+Cj4+Pj4gdXBkYXRl
ZCB0aGUga3N5bXRhYiBoYW5kbGluZyBvZiBzb21lIEtBU0xSIGNhcGFibGUgYXJjaGl0ZWN0dXJl
cwo+Pj4+IHNvIHRoYXQga3N5bXRhYiBlbnRyaWVzIGFyZSBlbWl0dGVkIGFzIHBhaXJzIG9mIDMy
LWJpdCByZWxhdGl2ZQo+Pj4+IHJlZmVyZW5jZXMuIFRoaXMgcmVkdWNlcyB0aGUgc2l6ZSBvZiB0
aGUgZW50cmllcywgYnV0IG1vcmUKPj4+PiBpbXBvcnRhbnRseSwgaXQgZ2V0cyByaWQgb2Ygc3Rh
dGljYWxseSBhc3NpZ25lZCBhYnNvbHV0ZQo+Pj4+IGFkZHJlc3Nlcywgd2hpY2ggcmVxdWlyZSBm
aXhpbmcgdXAgYXQgYm9vdCB0aW1lIGlmIHRoZSBrZXJuZWwKPj4+PiBpcyBzZWxmIHJlbG9jYXRp
bmcgKHdoaWNoIHRha2VzIGEgMjQgYnl0ZSBSRUxBIGVudHJ5IGZvciBlYWNoCj4+Pj4gbWVtYmVy
IG9mIHRoZSBrc3ltdGFiIHN0cnVjdCkuCj4+Pj4KPj4+PiBTaW5jZSBrc3ltdGFiIGVudHJpZXMg
YXJlIGFsd2F5cyBwYXJ0IG9mIHRoZSBzYW1lIG1vZHVsZSBhcyB0aGUKPj4+PiBzeW1ib2wgdGhl
eSBleHBvcnQgKG9yIG9mIHRoZSBjb3JlIGtlcm5lbCksIGl0IHdhcyBhc3N1bWVkIGF0IHRoZQo+
Pj4+IHRpbWUgdGhhdCBhIDMyLWJpdCByZWxhdGl2ZSByZWZlcmVuY2UgaXMgYWx3YXlzIHN1ZmZp
Y2llbnQgdG8KPj4+PiBjYXB0dXJlIHRoZSBvZmZzZXQgYmV0d2VlbiBhIGtzeW10YWIgZW50cnkg
YW5kIGl0cyB0YXJnZXQgc3ltYm9sLgo+Pj4+Cj4+Pj4gVW5mb3J0dW5hdGVseSwgdGhpcyBpcyBu
b3QgYWx3YXlzIHRydWU6IGluIHRoZSBjYXNlIG9mIHBlci1DUFUKPj4+PiB2YXJpYWJsZXMsIGEg
cGVyLUNQVSB2YXJpYWJsZSdzIGJhc2UgYWRkcmVzcyAod2hpY2ggdXN1YWxseSBkaWZmZXJzCj4+
Pj4gZnJvbSB0aGUgYWN0dWFsIGFkZHJlc3Mgb2YgYW55IG9mIGl0cyBwZXItQ1BVIGNvcGllcykg
Y291bGQgYmUgYXQKPj4+PiBhbiBhcmJpdHJhcnkgb2Zmc2V0IGZyb20gdGhlIGtzeW10YWIgZW50
cnksIGFuZCBzbyBpdCBtYXkgYmUgb3V0Cj4+Pj4gb2YgcmFuZ2UgZm9yIGEgMzItYml0IHJlbGF0
aXZlIHJlZmVyZW5jZS4KPj4+Pgo+Pgo+PiAoQXBvbG9naWVzIGZvciB0aGUgMy1hY3QgbW9ub2xv
Z3VlKQo+IAo+IEV4cG9zaXRpb24sIGRldmVsb3BtZW50IGFuZCByZWNhcGl0dWxhdGlvbiA7KQo+
IAo+PiBUaGlzIHR1cm5zIG91dCB0byBiZSBpbmNvcnJlY3QuIFRoZSBzeW1ib2wgYWRkcmVzcyBv
ZiBwZXItQ1BVIHZhcmlhYmxlcwo+PiBleHBvcnRlZCBieSBtb2R1bGVzIGlzIGFsd2F5cyBpbiB0
aGUgdmljaW5pdHkgb2YgX19wZXJfY3B1X3N0YXJ0LCBhbmQgc28gaXQKPj4gaXMgc2ltcGx5IGEg
bWF0dGVyIG9mIG1ha2luZyBzdXJlIHRoYXQgdGhlIGNvcmUga2VybmVsIGlzIGluIHJhbmdlIGZv
cgo+PiBtb2R1bGUga3N5bXRhYiBlbnRyaWVzIGNvbnRhaW5pbmcgMzItYml0IHJlbGF0aXZlIHJl
ZmVyZW5jZXMuCj4+Cj4+IFdoZW4gcnVubmluZyB0aGUgYXJtNjQgd2l0aCBrYXNsciBlbmFibGVk
LCB3ZSBjdXJyZW50bHkgcmFuZG9taXplIHRoZSBtb2R1bGUKPj4gc3BhY2UgYmFzZWQgb24gdGhl
IHJhbmdlIG9mIEFEUlAvQUREIGluc3RydWN0aW9uIHBhaXJzLCB3aGljaCBoYXZlIGEgLS8rIDQK
Pj4gR0IgcmFuZ2UgcmF0aGVyIHRoYW4gdGhlIC0vKyAyIEdCIHJhbmdlIG9mIDMyLWJpdCBwbGFj
ZSByZWxhdGl2ZSBkYXRhCj4+IHJlbG9jYXRpb25zLiBTbyB3ZSBjYW4gZml4IHRoaXMgYnkgc2lt
cGx5IHJlZHVjaW5nIHRoZSByYW5kb21pemF0aW9uIHdpbmRvdwo+PiB0byAyIEdCLgo+IAo+IE1h
a2VzIHNlbnNlLiBEbyB5b3Ugc2VlIHRoZSBuZWVkIGZvciBhbiBvcHRpb24gdG8gZGlzYWJsZSBQ
UkVMIHJlbG9jcwo+IGFsdG9nZXRoZXIgaW4gY2FzZSBzb21lYm9keSB3YW50cyB0aGUgYWRkaXRp
b25hbCByYW5kb21pemF0aW9uIHJhbmdlPwo+IAoKTm8sIG5vdCByZWFsbHkuIFRvIGJlIGhvbmVz
dCwgSSBkb24ndCB0aGluayAKQ09ORklHX1JBTkRPTUlaRV9NT0RVTEVfUkVHSU9OX0ZVTEwgaXMg
dGhhdCB1c2VmdWwgdG8gYmVnaW4gd2l0aCwgYW5kIAp0aGUgb25seSByZWFzb24gd2UgZW5hYmxl
ZCBpdCBieSBkZWZhdWx0IGF0IHRoZSB0aW1lIHdhcyB0byBlbnN1cmUgdGhhdCAKdGhlIFBMVCBj
b2RlIGdvdCBzb21lIGNvdmVyYWdlIGFmdGVyIHdlIGludHJvZHVjZWQgaXQuCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
