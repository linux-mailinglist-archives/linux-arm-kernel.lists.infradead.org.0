Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8804C14DCA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 15:13:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BOC5v4HI7xB//0Tn1N2mHuIvDdSEs46b++M+Xk1YqoQ=; b=i/bXSEEMj9+AIb1uLbnxm6JU/
	5Dcmg49ej7r0OtWWIxZG21CXrI6uFbO5Z0z2FCGfka+dS0Uk2hT8H7nfvNpqimlr7XZM6whKw11Oa
	H7j2O4Nh7goIYDLC/8+2S9Ov9a4LByCnUQ8+kC1rPMJB2jiyiPkn0EtitXTyRFDuNtDg0GnsuD7tq
	rxewSzKz+1iOvTOiz1cPls03tn+1BJOvO2u88sI+VEl+XSckDZgSQf6n/iZXst9KHBKYy/bJUZJlY
	V9W7U5EEJJPfu86q03/KgMphDrwc4Lq3ZDTyaZoO1z05TV+hfeP9tTxXQoTL5vDdttOiIUEh+wXz0
	NWQqK0V6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAZe-0003FJ-2C; Thu, 30 Jan 2020 14:13:38 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixAZU-0003E7-CI; Thu, 30 Jan 2020 14:13:30 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 487j4Z2bp9z9v2Nx;
 Thu, 30 Jan 2020 15:13:18 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=qICZOrjf; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id uOkb5XiF-zPA; Thu, 30 Jan 2020 15:13:18 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 487j4Z13FJz9v2Nw;
 Thu, 30 Jan 2020 15:13:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580393598; bh=jiy8q+DLF/cyz8x0j+2VD0K/r6LzapCGUAMM8PPwAqg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=qICZOrjfjgKU41D9G6qwOhWQ3f07+KjLwpAHo5DoCMTyruxB3bymqHi8naihrjRrd
 VNgNmAI2BgWTRJKP0fo15DiJvJYT/IAWdqQGaK6fSFCsfnDbh4zU2Oj9aR7VXIDKWw
 S5BQleimwSbi1BQRePhLQirIhOLqknAgD+VG9wXI=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 606438B875;
 Thu, 30 Jan 2020 15:13:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id v9YV4qhIXl9S; Thu, 30 Jan 2020 15:13:19 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id CC2F68B874;
 Thu, 30 Jan 2020 15:13:16 +0100 (CET)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <68ed6488-aa25-ab41-8da6-f0ddeb15d52b@c-s.fr>
 <49754f74-53a7-0e4a-bb16-53617f8c902c@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <473d8198-3ac4-af3b-e2ec-c0698a3565d3@c-s.fr>
Date: Thu, 30 Jan 2020 15:13:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <49754f74-53a7-0e4a-bb16-53617f8c902c@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_061328_716479_8DF46B61 
X-CRM114-Status: GOOD (  34.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzMC8wMS8yMDIwIMOgIDE0OjA0LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IE9uIDAxLzI4LzIwMjAgMTA6MzUgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+Cj4+
Cj4+IExlIDI4LzAxLzIwMjAgw6AgMDI6MjcsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6
Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NC5oIGIvYXJj
aC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NC5oCj4+PiBpbmRleCAwYjZjNDA0Mjk0MmEuLmZi
MGU3NmQyNTRiMyAxMDA2NDQKPj4+IC0tLSBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVf
NjQuaAo+Pj4gKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NC5oCj4+PiBAQCAt
NTMsNiArNTMsMTIgQEAgc3RhdGljIGlubGluZSB2b2lkIHN5bmNfaW5pdGlhbF9wYWdlX3RhYmxl
KHZvaWQpIHsgfQo+Pj4gIMKgIMKgIHN0cnVjdCBtbV9zdHJ1Y3Q7Cj4+PiAgwqAgKyNkZWZpbmUg
bW1fcDRkX2ZvbGRlZCBtbV9wNGRfZm9sZGVkCj4+PiArc3RhdGljIGlubGluZSBib29sIG1tX3A0
ZF9mb2xkZWQoc3RydWN0IG1tX3N0cnVjdCAqbW0pCj4+PiArewo+Pj4gK8KgwqDCoCByZXR1cm4g
IXBndGFibGVfbDVfZW5hYmxlZCgpOwo+Pj4gK30KPj4+ICsKPj4KPj4gRm9yIG1lIHRoaXMgc2hv
dWxkIGJlIHBhcnQgb2YgYW5vdGhlciBwYXRjaCwgaXQgaXMgbm90IGRpcmVjdGx5IGxpbmtlZCB0
byB0aGUgdGVzdHMuCj4gCj4gV2UgZGlkIGRpc2N1c3MgYWJvdXQgdGhpcyBlYXJsaWVyIGFuZCBL
aXJyaWwgbWVudGlvbmVkIGl0cyBub3Qgd29ydGgKPiBhIHNlcGFyYXRlIHBhdGNoLgo+IAo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAxOTA5MTMwOTEzMDUucmtk
czRmM2ZxdjN5amhqeUBib3gvCgpGb3IgbWUgaXQgd291bGQgbWFrZSBzZW5zZSB0byBub3QgbWl4
IHRoaXMgcGF0Y2ggd2hpY2ggaW1wbGVtZW50IHRlc3RzLCAKYW5kIGNoYW5nZXMgdGhhdCBhcmUg
bmVlZGVkIGZvciB0aGUgdGVzdCB0byB3b3JrIChvciBldmVuIGJ1aWxkKSBvbiB0aGUgCmRpZmZl
cmVudCBhcmNoaXRlY3R1cmVzLgoKQnV0IHRoYXQncyB1cCB0byB5b3UuCgo+IAo+Pgo+Pj4gIMKg
IHZvaWQgc2V0X3B0ZV92YWRkcl9wNGQocDRkX3QgKnA0ZF9wYWdlLCB1bnNpZ25lZCBsb25nIHZh
ZGRyLCBwdGVfdCBuZXdfcHRlKTsKPj4+ICDCoCB2b2lkIHNldF9wdGVfdmFkZHJfcHVkKHB1ZF90
ICpwdWRfcGFnZSwgdW5zaWduZWQgbG9uZyB2YWRkciwgcHRlX3QgbmV3X3B0ZSk7Cj4+PiAgwqAg
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oIGIvaW5jbHVkZS9hc20t
Z2VuZXJpYy9wZ3RhYmxlLmgKPj4+IGluZGV4IDc5OGVhMzZhMDU0OS4uZTBiMDQ3ODdlNzg5IDEw
MDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLmgKPj4+ICsrKyBiL2lu
Y2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oCj4+PiBAQCAtMTIwOCw2ICsxMjA4LDEyIEBAIHN0
YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2hhc19wZm5fbW9kaWZ5X2NoZWNrKHZvaWQpCj4+PiAgwqAg
IyBkZWZpbmUgUEFHRV9LRVJORUxfRVhFQyBQQUdFX0tFUk5FTAo+Pj4gIMKgICNlbmRpZgo+Pj4g
IMKgICsjaWZkZWYgQ09ORklHX0RFQlVHX1ZNX1BHVEFCTEUKPj4KPj4gTm90IHN1cmUgaXQgaXMg
YSBnb29kIGlkZWEgdG8gcHV0IHRoYXQgaW4gaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLmgK
PiAKPiBMb2dpY2FsbHkgdGhhdCBpcyB0aGUgcmlnaHQgcGxhY2UsIGFzIGl0IGlzIHJlbGF0ZWQg
dG8gcGFnZSB0YWJsZSBidXQKPiBub3Qgc29tZXRoaW5nIHBsYXRmb3JtIHJlbGF0ZWQuCgpJIGNh
bid0IHNlZSBhbnkgZGVidWcgcmVsYXRlZCBmZWF0dXJlcyBpbiB0aGF0IGZpbGUuCgo+IAo+Pgo+
PiBCeSBkb2luZyB0aGlzIHlvdSBhcmUgZm9yY2luZyBhIHJlYnVpbGQgb2YgYWxtb3N0IGFsbCBm
aWxlcywgd2hlcmVhcyBvbmx5IGluaXQvbWFpbi5vIGFuZCBtbS9kZWJ1Z192bV9wZ3RhYmxlLm8g
c2hvdWxkIGJlIHJlYnVpbHQgd2hlbiBhY3RpdmF0aW5nIHRoaXMgY29uZmlnIG9wdGlvbi4KPiAK
PiBJIGFncmVlZCBidXQgd2hhdHMgdGhlIGFsdGVybmF0aXZlID8gV2UgY291bGQgbW92ZSB0aGVz
ZSBpbnRvIGluaXQvbWFpbi5jCj4gdG8gbWFrZSB0aGluZ3Mgc2ltcGxlciBidXQgd2lsbCB0aGF0
IGJlIGEgcmlnaHQgcGxhY2UsIGdpdmVuIGl0cyByZWxhdGVkCj4gdG8gZ2VuZXJpYyBwYWdlIHRh
YmxlLgoKV2hhdCBhYm91dCBsaW51eC9tbWRlYnVnLmggaW5zdGVhZCA/IChJIGhhdmUgbm90IGNo
ZWNrZWQgaWYgaXQgd291bGQgCnJlZHVjZSB0aGUgaW1wYWN0LCBidXQgdGhhdCdzIHdoZXJlIHRo
aW5ncyByZWxhdGVkIHRvIENPTkZJR19ERUJVR19WTSAKc2VlbXMgdG8gYmUpLgoKT3RoZXJ3aXNl
LCB5b3UgY2FuIGp1c3QgY3JlYXRlIG5ldyBmaWxlLCBmb3IgaW5zdGFuY2UgCjxsaW51eC9tbWRl
YnVnLXBndGFibGUuaD4gYW5kIGluY2x1ZGUgdGhhdCBmaWxlIG9ubHkgaW4gdGhlIGluaXQvbWFp
bi5jIAphbmQgbW0vZGVidWdfdm1fcGd0YWJsZS5jCgoKCj4gCj4+Cj4+PiArZXh0ZXJuIHZvaWQg
ZGVidWdfdm1fcGd0YWJsZSh2b2lkKTsKPj4KPj4gUGxlYXNlIGRvbid0IHVzZSB0aGUgJ2V4dGVy
bicga2V5d29yZCwgaXQgaXMgdXNlbGVzcyBhbmQgbm90IHRvIGJlIHVzZWQgZm9yIGZ1bmN0aW9u
cyBkZWNsYXJhdGlvbi4KPiAKPiBSZWFsbHkgPyBCdXQsIHRoZXJlIGFyZSB0b25zIG9mIGV4YW1w
bGVzIGRvaW5nIHRoZSBzYW1lIHRoaW5nIGJvdGggaW4KPiBnZW5lcmljIGFuZCBwbGF0Zm9ybSBj
b2RlIGFzIHdlbGwuCgpZZXMsIGJ1dCBob3cgY2FuIHdlIGltcHJvdmUgaWYgd2UgYmxpbmRseSBj
b3B5IHRoZSBlcnJvcnMgZnJvbSB0aGUgcGFzdCAKPyBIYXZpbmcgdG9ucyBvZiAnZXh0ZXJuJyBk
b2Vzbid0IG1lYW4gd2UgbXVzdCBhZGQgbW9yZS4KCkkgdGhpbmsgY2hlY2twYXRjaC5wbCB1c3Vh
bGx5IGNvbXBsYWlucyB3aGVuIGEgcGF0Y2ggYnJpbmdzIGEgbmV3IAp1bnJlbGV2YWwgZXh0ZXJu
IHN5bWJvbC4KCj4gCj4+Cj4+PiArI2Vsc2UKPj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgZGVidWdf
dm1fcGd0YWJsZSh2b2lkKSB7IH0KPj4+ICsjZW5kaWYKPj4+ICsKPj4+ICDCoCAjZW5kaWYgLyog
IV9fQVNTRU1CTFlfXyAqLwo+Pj4gIMKgIMKgICNpZm5kZWYgaW9fcmVtYXBfcGZuX3JhbmdlCj4+
PiBkaWZmIC0tZ2l0IGEvaW5pdC9tYWluLmMgYi9pbml0L21haW4uYwo+Pj4gaW5kZXggZGExYmMw
YjYwYTdkLi41ZTU5ZTZhYzA3ODAgMTAwNjQ0Cj4+PiAtLS0gYS9pbml0L21haW4uYwo+Pj4gKysr
IGIvaW5pdC9tYWluLmMKPj4+IEBAIC0xMTk3LDYgKzExOTcsNyBAQCBzdGF0aWMgbm9pbmxpbmUg
dm9pZCBfX2luaXQga2VybmVsX2luaXRfZnJlZWFibGUodm9pZCkKPj4+ICDCoMKgwqDCoMKgIHNj
aGVkX2luaXRfc21wKCk7Cj4+PiAgwqAgwqDCoMKgwqDCoCBwYWdlX2FsbG9jX2luaXRfbGF0ZSgp
Owo+Pj4gK8KgwqDCoCBkZWJ1Z192bV9wZ3RhYmxlKCk7Cj4+Cj4+IFdvdWxkbid0IGl0IGJlIGJl
dHRlciB0byBjYWxsIGRlYnVnX3ZtX3BndGFibGUoKSBpbiBrZXJuZWxfaW5pdCgpIGJldHdlZW4g
dGhlIGNhbGwgdG8gYXN5bmNfc3luY2hyb25pc2VfZnVsbCgpIGFuZCBmdHJhY2VfZnJlZV9pbml0
X21lbSgpID8KPiAKPiBJSVJDLCBwcm9wb3NlZCBsb2NhdGlvbiBpcyB0aGUgZWFybGllc3Qgd2Ug
Y291bGQgY2FsbCBkZWJ1Z192bV9wZ3RhYmxlKCkuCj4gSXMgdGhlcmUgYW55IHBhcnRpY3VsYXIg
YmVuZWZpdCBvciByZWFzb24gdG8gbW92ZSBpdCBpbnRvIGtlcm5lbF9pbml0KCkgPwoKSXQgd291
bGQgYXZvaWQgaGF2aW5nIGl0IGxvc3QgaW4gdGhlIG1pZGRsZSBvZiBkcml2ZXJzIGxvZ3MsIHdv
dWxkIGJlIApjbG9zZSB0byB0aGUgZW5kIG9mIGluaXQsIGF0IGEgcGxhY2Ugd2UgY2FuJ3QgbWlz
cyBpdCwgY2xvc2UgdG8gdGhlIApyZXN1bHQgb2Ygb3RoZXIgdGVzdHMgbGlrZSBDT05GSUdfREVC
VUdfUk9EQVRBX1RFU1QgZm9yIGluc3RhbmNlLgoKQXQgdGhlIG1vbWVudCwgeW91IGhhdmUgdG8g
bG9vayBmb3IgaXQgdG8gYmUgc3VyZSB0aGUgdGVzdCBpcyBkb25lIGFuZCAKd2hhdCB0aGUgcmVz
dWx0IGlzLgoKPiAKPj4KPj4+ICDCoMKgwqDCoMKgIC8qIEluaXRpYWxpemUgcGFnZSBleHQgYWZ0
ZXIgYWxsIHN0cnVjdCBwYWdlcyBhcmUgaW5pdGlhbGl6ZWQuICovCj4+PiAgwqDCoMKgwqDCoCBw
YWdlX2V4dF9pbml0KCk7Cj4+PiAgwqAgZGlmZiAtLWdpdCBhL2xpYi9LY29uZmlnLmRlYnVnIGIv
bGliL0tjb25maWcuZGVidWcKPj4+IGluZGV4IDVmZmUxNDRjOTc5NC4uN2NjZWFlOTIzYzA1IDEw
MDY0NAo+Pj4gLS0tIGEvbGliL0tjb25maWcuZGVidWcKPj4+ICsrKyBiL2xpYi9LY29uZmlnLmRl
YnVnCj4+PiBAQCAtNjUzLDYgKzY1MywxMiBAQCBjb25maWcgU0NIRURfU1RBQ0tfRU5EX0NIRUNL
Cj4+PiAgwqDCoMKgwqDCoMKgwqAgZGF0YSBjb3JydXB0aW9uIG9yIGEgc3BvcmFkaWMgY3Jhc2gg
YXQgYSBsYXRlciBzdGFnZSBvbmNlIHRoZSByZWdpb24KPj4+ICDCoMKgwqDCoMKgwqDCoCBpcyBl
eGFtaW5lZC4gVGhlIHJ1bnRpbWUgb3ZlcmhlYWQgaW50cm9kdWNlZCBpcyBtaW5pbWFsLgo+Pj4g
IMKgICtjb25maWcgQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRQo+Pj4gK8KgwqDCoCBib29sCj4+
PiArwqDCoMKgIGhlbHAKPj4+ICvCoMKgwqDCoMKgIEFuIGFyY2hpdGVjdHVyZSBzaG91bGQgc2Vs
ZWN0IHRoaXMgd2hlbiBpdCBjYW4gc3VjY2Vzc2Z1bGx5Cj4+PiArwqDCoMKgwqDCoCBidWlsZCBh
bmQgcnVuIERFQlVHX1ZNX1BHVEFCTEUuCj4+PiArCj4+PiAgwqAgY29uZmlnIERFQlVHX1ZNCj4+
PiAgwqDCoMKgwqDCoCBib29sICJEZWJ1ZyBWTSIKPj4+ICDCoMKgwqDCoMKgIGRlcGVuZHMgb24g
REVCVUdfS0VSTkVMCj4+PiBAQCAtNjg4LDYgKzY5NCwyMiBAQCBjb25maWcgREVCVUdfVk1fUEdG
TEFHUwo+Pj4gIMKgIMKgwqDCoMKgwqDCoMKgIElmIHVuc3VyZSwgc2F5IE4uCj4+PiAgwqAgK2Nv
bmZpZyBERUJVR19WTV9QR1RBQkxFCj4+PiArwqDCoMKgIGJvb2wgIkRlYnVnIGFyY2ggcGFnZSB0
YWJsZSBmb3Igc2VtYW50aWNzIGNvbXBsaWFuY2UiCj4+PiArwqDCoMKgIGRlcGVuZHMgb24gTU1V
Cj4+PiArwqDCoMKgIGRlcGVuZHMgb24gREVCVUdfVk0KPj4KPj4gRG9lcyBpdCByZWFsbHkgbmVl
ZCB0byBkZXBlbmQgb24gREVCVUdfVk0gPwo+IAo+IE5vLiBJdCBzZWVtZWQgYmV0dGVyIHRvIHBh
Y2thZ2UgdGhpcyB0ZXN0IGFsb25nIHdpdGggREVCVUdfVk0gKGFsdGhvdWdoIEkKPiBkb250IHJl
bWVtYmVyIHRoZSBjb252ZXJzYXRpb24gYXJvdW5kIGl0KSBhbmQgaGVuY2UgdGhpcyBkZXBlbmRl
bmN5LgoKWWVzIGJ1dCBpdCBwZXJmZWN0bHkgd29yayBhcyBzdGFuZGFsb25lLiBUaGUgbW9yZSBl
YXN5IGl0IGlzIHRvIGFjdGl2YXRlIAphbmQgdGhlIG1vcmUgcGVvcGxlIHdpbGwgdXNlIGl0LiBE
RUJVR19WTSBvYmxpZ2VzIHRvIHJlYnVpbGQgdGhlIGtlcm5lbCAKZW50aXJlbHkgYW5kIGNvdWxk
IG1vZGlmeSB0aGUgYmVoYXZpb3VyLiBDb3VsZCB0aGUgaGVscGVycyB3ZSBhcmUgCnRlc3Rpbmcg
YmVoYXZlIGRpZmZlcmVudGx5IHdoZW4gREVCVUdfVk0gaXMgbm90IHNldCA/IEkgdGhpbmsgaXQn
cyBnb29kIAp0aGUgdGVzdCB0aGluZ3MgYXMgY2xvc2UgYXMgcG9zc2libGUgdG8gZmluYWwgY29u
ZmlnLgoKPiAKPj4gSSB0aGluayB3ZSBjb3VsZCBtYWtlIGl0IHN0YW5kYWxvbmUgYW5kICdkZWZh
dWx0IHkgaWYgREVCVUdfVk0nIGluc3RlYWQuCj4gCj4gV2hpY2ggd2lsbCB5aWVsZCB0aGUgc2Ft
ZSByZXN1bHQgbGlrZSBiZWZvcmUgYnV0IGluIGEgZGlmZmVyZW50IHdheS4gQnV0Cj4geWVzLCB0
aGlzIHRlc3QgY291bGQgZ28gYWJvdXQgZWl0aGVyIHdheSBidXQgdW5sZXNzIHRoZXJlIGlzIGEg
Z29vZCBlbm91Z2gKPiByZWFzb24gd2h5IGNoYW5nZSB0aGUgY3VycmVudCBvbmUuCgpJIHRoaW5r
IGlmIHdlIHdhbnQgcGVvcGxlIHRvIHJlYWxseSB1c2UgaXQgb24gb3RoZXIgYXJjaGl0ZWN0dXJl
cyBpdCAKbXVzdCBiZSBwb3NzaWJsZSB0byBhY3RpdmF0ZSBpdCB3aXRob3V0IGhhdmluZyB0byBt
b2RpZnkgS2NvbmZpZy4gCk90aGVyd2lzZSBwZW9wbGUgd29uJ3QgZXZlbiBrbm93IHRoZSB0ZXN0
IGV4aXN0cyBhbmQgdGhlIGFyY2hpdGVjdHVyZSAKZmFpbHMgdGhlIHRlc3QuCgpUaGUgcHVycG9z
ZSBvZiBhIHRlc3Qgc3VpdGUgaXMgdG8gZGV0ZWN0IGJ1Z3MuIElmIHlvdSBjYW4ndCBydW4gdGhl
IHRlc3QgCnVudGlsIHlvdSBoYXZlIGZpeGVkIHRoZSBidWdzLCBJIGd1ZXNzIG5vYm9keSB3aWxs
IGV2ZXIgZGV0ZWN0IHRoZSBidWdzIAphbmQgdGhleSB3aWxsIG5ldmVyIGJlIGZpeGVkLgoKU28g
SSB0aGluazoKLSB0aGUgdGVzdCBzaG91bGQgYmUgJ2RlZmF1bHQgeScgd2hlbiBBUkNIX0hBU19E
RUJVR19WTV9QR1RBQkxFIGlzIHNlbGVjdGVkCi0gdGhlIHRlc3Qgc2hvdWxkIGJlICdkZWZhdWx0
IG4nIHdoZW4gQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRSBpcyBub3QgCnNlbGVjdGVkLCBhbmQg
aXQgc2hvdWxkIGJlIHVzZXIgc2VsZWN0YWJsZSBpZiBFWFBFUlQgaXMgc2VsZWN0ZWQuCgpTb21l
dGhpbmcgbGlrZToKCmNvbmZpZyBERUJVR19WTV9QR1RBQkxFCiAgICAgYm9vbCAiRGVidWcgYXJj
aCBwYWdlIHRhYmxlIGZvciBzZW1hbnRpY3MgY29tcGxpYW5jZSIgaWYgCkFSQ0hfSEFTX0RFQlVH
X1ZNX1BHVEFCTEUgfHwgRVhQRVJUCiAgICAgZGVwZW5kcyBvbiBNTVUKICAgICBkZWZhdWx0ICdu
JyBpZiAhQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRQogICAgIGRlZmF1bHQgJ3knIGlmIERFQlVH
X1ZNCgoKPiAKPj4KPj4+ICvCoMKgwqAgZGVwZW5kcyBvbiBBUkNIX0hBU19ERUJVR19WTV9QR1RB
QkxFCj4+PiArwqDCoMKgIGRlZmF1bHQgeQo+Pj4gK8KgwqDCoCBoZWxwCj4+PiArwqDCoMKgwqDC
oCBUaGlzIG9wdGlvbiBwcm92aWRlcyBhIGRlYnVnIG1ldGhvZCB3aGljaCBjYW4gYmUgdXNlZCB0
byB0ZXN0Cj4+PiArwqDCoMKgwqDCoCBhcmNoaXRlY3R1cmUgcGFnZSB0YWJsZSBoZWxwZXIgZnVu
Y3Rpb25zIG9uIHZhcmlvdXMgcGxhdGZvcm1zIGluCj4+PiArwqDCoMKgwqDCoCB2ZXJpZnlpbmcg
aWYgdGhleSBjb21wbHkgd2l0aCBleHBlY3RlZCBnZW5lcmljIE1NIHNlbWFudGljcy4gVGhpcwo+
Pj4gK8KgwqDCoMKgwqAgd2lsbCBoZWxwIGFyY2hpdGVjdHVyZSBjb2RlIGluIG1ha2luZyBzdXJl
IHRoYXQgYW55IGNoYW5nZXMgb3IKPj4+ICvCoMKgwqDCoMKgIG5ldyBhZGRpdGlvbnMgb2YgdGhl
c2UgaGVscGVycyBzdGlsbCBjb25mb3JtIHRvIGV4cGVjdGVkCj4+PiArwqDCoMKgwqDCoCBzZW1h
bnRpY3Mgb2YgdGhlIGdlbmVyaWMgTU0uCj4+PiArCj4+PiArwqDCoMKgwqDCoCBJZiB1bnN1cmUs
IHNheSBOLgo+Pj4gKwo+Pgo+PiBEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gbWFrZSBpdCAnZGVmYXVs
dCB5JyBhbmQgc2F5ICdJZiB1bnN1cmUsIHNheSBOJyA/Cj4gCj4gTm8gaXQgZG9lcy4gTm90IHdo
ZW4gaXQgZGVmYXVsdHMgJ3knIHVuY29uZGl0aW9uYWxseS4gV2lsbCBkcm9wIHRoZSBsYXN0Cj4g
c2VudGVuY2UgIklmIHVuc3VyZSwgc2F5IE4iLiBOaWNlIGNhdGNoLCB0aGFuayB5b3UuCgpXZWxs
IEkgd2FzIG5vdCBhc2tpbmcgaWYgJ2RlZmF1bHQgeScgd2FzIG1ha2luZyBzZW5zZSBidXQgb25s
eSBpZiAnSWYgCnVuc3VyZSBzYXkgTicgd2FzIG1ha2luZyBzZW5zZSBkdWUgdG8gdGhlICdkZWZh
dWx0IHknLiBZb3UgZ290IGl0LgoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
