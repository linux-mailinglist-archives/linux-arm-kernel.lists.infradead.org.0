Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F43E179FED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 07:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p18qt/UwVhgXjfPnJfNjfd52qIBty63HGn5DBPgyRAA=; b=Lqg8MP+g77gMU9
	psHN4wi/cQi0Hu5joJlAjM7V9x6kn//jvlgHf7z1ZCYZ8rAoCW72m8X+K+3iuuotlagQiWEyIcT8U
	072gfcmkUTkDBXZo1vQXA2fdK0P3Evt7QHv6stpbRJKjRYxtiiagt0R9rS/dC8Moc0aU7XCWncvYN
	b2+Co362wHZZ6Eva0pWTGKWdy2xftb7NlkOBLO2KaKDWzPZdT16P5jMpN9BI3C25hg9U94wFvkSPY
	cj3rRv6NmO9MdRfd1+CeRHs4T3XUJi9mrKW3377I7SbQkn+COYtEgWnnellNKhNmUxX95MqLdfI2o
	voAPzf0vu8/TyG8AVltg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9juw-0006dt-Cn; Thu, 05 Mar 2020 06:23:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jup-0006cO-JV; Thu, 05 Mar 2020 06:23:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17EB71FB;
 Wed,  4 Mar 2020 22:23:23 -0800 (PST)
Received: from [10.163.1.88] (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D1843F534;
 Wed,  4 Mar 2020 22:27:09 -0800 (PST)
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qian Cai <cai@lca.pw>
References: <c022e863-0807-fab1-cd41-3c320381f448@c-s.fr>
 <11F41980-97CF-411F-8120-41287DC1A382@lca.pw>
 <57a3bc61-bbd5-e251-9621-7bc28f7901a1@arm.com>
 <bcba7b7f-f351-4ee7-d74e-004a0bfbee47@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <d198fc5a-5337-c346-a21c-1ff133202e68@arm.com>
Date: Thu, 5 Mar 2020 11:53:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <bcba7b7f-f351-4ee7-d74e-004a0bfbee47@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_222327_688084_C37DEE1F 
X-CRM114-Status: GOOD (  15.27  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8wNS8yMDIwIDExOjEzIEFNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDA1LzAzLzIwMjAgw6AgMDE6NTQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
Cj4+Cj4+IE9uIDAzLzA0LzIwMjAgMDQ6NTkgUE0sIFFpYW4gQ2FpIHdyb3RlOgo+Pj4KPj4+Cj4+
Pj4gT24gTWFyIDQsIDIwMjAsIGF0IDE6NDkgQU0sIENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9w
aGUubGVyb3lAYy1zLmZyPiB3cm90ZToKPj4+Pgo+Pj4+IEFGQUlVLCB5b3UgYXJlIG5vdCB0YWtp
bmcgYW4gaW50ZXJydXB0IGhlcmUuIFlvdSBhcmUgc3R1Y2sgaW4gdGhlIHB0ZV91cGRhdGUoKSwg
bW9zdCBsaWtlbHkgZHVlIHRvIG5lc3RlZCBsb2Nrcy4gVHJ5IHdpdGggTE9DS0RFUCA/Cj4+Pgo+
Pj4gTm90IGV4YWN0bHkgc3VyZSB3aGF0IGRpZCB5b3UgbWVhbiBoZXJlLCBidXQgdGhlIGtlcm5l
bCBoYXMgYWxsIGxvY2tkZXAgZW5hYmxlZCBhbmQgZGlkIG5vdCBmbGFnIGFueXRoaW5nIGhlcmUu
Cj4+Cj4+IEFzIHRoZSBwYXRjaCBoYXMgYmVlbiBkcm9wcGVkIGZyb20gTGludXggbmV4dCAobmV4
dC0yMDIwMDMwNCkgcGVyaGFwcyBpbgo+PiBvcmRlciB0byBmb2xkIGJhY2sgdGhlIF9fcGFfc3lt
Ym9sKCkgZml4IFsxXSwgc28gSSBhbSBwbGFubmluZyB0byByZXNwaW4KPj4gdGhlIG9yaWdpbmFs
IHBhdGNoIG9uY2UgbW9yZSBhcyBWMTUgd2hpbGUgYWRkaW5nIFFpYW4ncyBzaWduZWQgb2ZmIGJ5
IGZvcgo+PiB0aGUgcG93ZXJwYyBwYXJ0LiBGb3Igbm93IGxldHMgZW5hYmxlIHJhZGl4IE1NVSBw
cGM2NCBhbG9uZyB3aXRoIGV4aXN0aW5nCj4+IHBwYzMyLiBBcyBQUENfUkFESVhfTU1VIGRlcGVu
ZHMgb24gUFBDX0JPT0szU182NCwgdGhlIGZvbGxvd2luZyBjaGFuZ2UKPj4gc2hvdWxkIGJlIGdv
b2QgZW5vdWdoID8KPiAKPiBJIGRvbid0IHRoaW5rIHNvLCBldmVuIGlmIHlvdSBoYXZlIHRoZSBS
YWRpeCBNTVUgY29tcGlsZWQgaW4sIGhhc2ggTU1VIGlzIHVzZWQgd2hlbiBSYWRpeCBpcyBub3Qg
YXZhaWxhYmxlIG9yIGRpc2FibGVkLiBTbyB1bnRpbCB0aGUgSGFzaCBNTVUgcHJvYmxlbSBpcyBm
aXhlZCwgeW91IGNhbm5vdCBlbmFibGUgaXQgYnkgZGVmYXVsdC4KClNvIHRoaXMgaW1wbGllcywg
dGhhdCB3aXRoIERFQlVHX1ZNIGdpdmVuIGtlcm5lbCBjb21waWxlZCB3aXRoIFJhZGl4IE1NVSB3
aWxsCmdldCBzdHVjayBpbiBzb2Z0IGxvY2sgdXAgd2hlbiBmb3JjZWQgdG8gdXNlIGhhc2ggTU1V
IGluIGNhc2VzIHdoZXJlIFJhZGl4IE1NVQppcyBlaXRoZXIgbm90IGF2YWlsYWJsZSBvciBpcyBk
aXNhYmxlZC4gSGVuY2UsIHdlIGNhbm5vdCBlbmFibGUgdGhhdC4KCkkgd2lsbCBzdGlsbCBmb2xk
IHRoZSBjaGFuZ2VzIGZyb20gUWlhbiB3aXRob3V0IGVuYWJsaW5nIHBwYzY0IFJhZGl4IE1NVSBh
bmQKcmVzcGluIFYxNS4gVGhlc2UgbmV3IGNoYW5nZXMgZG9udCBodXJ0LCBidWlsZCBldmVyeSB3
aGVyZSBhbmQgd29ya3MgZ29vZApvbiBhcm02NCBhbmQgeDg2IHBsYXRmb3Jtcy4gTW9yZSBvdmVy
IHdlIGtub3cgdGhhdCB0aGV5IGFsc28gZml4IGEgcHJvYmxlbQpmb3IgcHBjNjQgUmFkaXggTU1V
IHBsYXRmb3Jtcy4gSGVuY2UgdW5sZXNzIHRoZXJlIGFyZSBzb21lIG90aGVyIGNvbmNlcm5zIHdl
CnNob3VsZCBmb2xkIHRoZW0gaW4uCgo+IAo+IENocmlzdG9waGUKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
