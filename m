Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1656B72C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xv/L+2pQwhmVFBdn9EZg1SiHXS4b6Cc3n70kb+lf7bA=; b=m9wtdakZNoV80iY2VhcA0aOcI
	W02+4+vzAQkro8HrRuUGw257AUCrD2BIr5yKqWPj3mWlv0Qz2WA0afn9OegDylDY1aA+DdVFGtCV1
	JqkLjdbFFVuf2ECMDxiUe+4w7nJDSLLlaudMslcCwoM3D4mDdtzH76D7Y/w8uOV6ew0m8KkVqd70c
	LkfixAdJH2/kTBhngKqK+1d3P4Z6+WLNCNeI2uqjS1LVSC1EFvJjy1lwUUNwOXibsL7JJWsMF1+zj
	w1lhVpX6x5WtQszJ5YwLBmNr67AMO0mJEuMh1pWUma3htx2VxUIsX/AgtQSFjjNotsgJ477rtVig5
	sTmbzBYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iApCh-0003Rf-IX; Thu, 19 Sep 2019 05:42:07 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iApCQ-0003R5-Hj; Thu, 19 Sep 2019 05:41:52 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46Ym1l1njQz9v1TZ;
 Thu, 19 Sep 2019 07:41:47 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=P/9E7NxT; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id g74_nX2HQhCp; Thu, 19 Sep 2019 07:41:47 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46Ym1k6lm3z9v1D2;
 Thu, 19 Sep 2019 07:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568871706; bh=CyfWszO2OTTHF7lXp4NH0Xaf7qGkIMwgP9l9wpOQU4E=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=P/9E7NxTuWfgrzj1efsR+MbDalvbBxKgeu6vwUr4V5nDSpL9znIl/crMp+XoqqJQf
 garOuYl7V2QIaxxNQK3+Hc3/84xagK5/lk0efPBDGFbTsPL/ymC6NKmMor+2Ue78Yq
 Afx/sONO3EULCBSntmdxGswoTJGqlGydMST5VtTo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BD26A8B80C;
 Thu, 19 Sep 2019 07:41:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id vGu-ud8Pyz6Y; Thu, 19 Sep 2019 07:41:47 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 63BFE8B783;
 Thu, 19 Sep 2019 07:41:45 +0200 (CEST)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
 <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
 <95ed9d92-dd43-4c45-2e52-738aed7f2fb5@c-s.fr>
 <f872e6f4-a5cb-069d-2034-78961930cb9f@arm.com>
 <64504101-d9dd-f273-02f9-e9a8b178eecc@c-s.fr>
 <955491d9-d8aa-0a93-4fb9-3d15acfbcbf8@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <cd22b0c3-d999-e23a-7265-1814b3312974@c-s.fr>
Date: Thu, 19 Sep 2019 07:41:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <955491d9-d8aa-0a93-4fb9-3d15acfbcbf8@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_224150_888329_15032806 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
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

CgpMZSAxOS8wOS8yMDE5IMOgIDA2OjU2LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDA5LzE4LzIwMTkgMDk6NTYgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Cj4+Cj4+IExlIDE4LzA5LzIwMTkgw6AgMDc6MDQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0
wqA6Cj4+Pgo+Pj4KPj4+IE9uIDA5LzEzLzIwMTkgMDM6MzEgUE0sIENocmlzdG9waGUgTGVyb3kg
d3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IExlIDEzLzA5LzIwMTkgw6AgMTE6MDIsIEFuc2h1bWFuIEto
YW5kdWFsIGEgw6ljcml0wqA6Cj4+Pj4+Cj4+Pj4+Pj4gKyNpZiAhZGVmaW5lZChfX1BBR0VUQUJM
RV9QTURfRk9MREVEKSAmJiAhZGVmaW5lZChfX0FSQ0hfSEFTXzRMRVZFTF9IQUNLKQo+Pj4+Pj4K
Pj4+Pj4+ICNpZmRlZnMgaGF2ZSB0byBiZSBhdm9pZGVkIGFzIG11Y2ggYXMgcG9zc2libGUsIHNl
ZSBiZWxvdwo+Pj4+Pgo+Pj4+PiBZZWFoIGJ1dCBpdCBoYXMgYmVlbiBiaXQgZGlmZmljdWx0IHRv
IGF2b2lkIGFsbCB0aGVzZSAkaWZkZWYgYmVjYXVzZSBvZiB0aGUKPj4+Pj4gYXZhaWxhYmlsaXR5
IChvciBsYWNrIG9mIGl0KSBmb3IgYWxsIHRoZXNlIHBndGFibGUgaGVscGVycyBpbiB2YXJpb3Vz
IGNvbmZpZwo+Pj4+PiBjb21iaW5hdGlvbnMgb24gYWxsIHBsYXRmb3Jtcy4KPj4+Pgo+Pj4+IEFz
IGZhciBhcyBJIGNhbiBzZWUgdGhlc2UgcGd0YWJsZSBoZWxwZXJzIHNob3VsZCBleGlzdCBldmVy
eXdoZXJlIGF0IGxlYXN0IHZpYSBhc20tZ2VuZXJpYy8gZmlsZXMuCj4+Pgo+Pj4gQnV0IHRoZXkg
bWlnaHQgbm90IGFjdHVhbGx5IGRvIHRoZSByaWdodCB0aGluZy4KPj4+Cj4+Pj4KPj4+PiBDYW4g
eW91IHNwb3QgYSBwYXJ0aWN1bGFyIGNvbmZpZyB3aGljaCBmYWlscyA/Cj4+Pgo+Pj4gTGV0cyBj
b25zaWRlciB0aGUgZm9sbG93aW5nIGV4YW1wbGUgKGFmdGVyIHJlbW92aW5nIHRoZSAkaWZkZWZz
IGFyb3VuZCBpdCkKPj4+IHdoaWNoIHRob3VnaCBidWlsZHMgc3VjY2Vzc2Z1bGx5IGJ1dCBmYWls
cyB0byBwYXNzIHRoZSBpbnRlbmRlZCB0ZXN0LiBUaGlzCj4+PiBpcyB3aXRoIGFybTY0IGNvbmZp
ZyA0SyBwYWdlcyBzaXplcyB3aXRoIDM5IGJpdHMgVkEgc3BhY2Ugd2hpY2ggZW5kcyB1cAo+Pj4g
d2l0aCBhIDMgbGV2ZWwgcGFnZSB0YWJsZSBhcnJhbmdlbWVudC4KPj4+Cj4+PiBzdGF0aWMgdm9p
ZCBfX2luaXQgcDRkX2NsZWFyX3Rlc3RzKHA0ZF90ICpwNGRwKQo+Pj4gewo+Pj4gIMKgwqDCoMKg
wqDCoMKgwqAgcDRkX3QgcDRkID0gUkVBRF9PTkNFKCpwNGRwKTsKPj4KPj4gTXkgc3VnZ2VzdGlv
biB3YXMgbm90IHRvIGNvbXBsZXRlbHkgZHJvcCB0aGUgI2lmZGVmIGJ1dCB0byBkbyBsaWtlIHlv
dSBkaWQgaW4gcGdkX2NsZWFyX3Rlc3RzKCkgZm9yIGluc3RhbmNlLCBpZSB0byBhZGQgdGhlIGZv
bGxvd2luZyB0ZXN0IG9uIHRvcCBvZiB0aGUgZnVuY3Rpb246Cj4+Cj4+ICDCoMKgwqDCoGlmICht
bV9wdWRfZm9sZGVkKG1tKSB8fCBpc19kZWZpbmVkKF9fQVJDSF9IQVNfNUxFVkVMX0hBQ0spKQo+
PiAgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+Pgo+IAo+IFNvbWV0aW1lcyB0aGlzIGRvZXMgbm90
IHJlYWxseSB3b3JrLiBPbiBzb21lIHBsYXRmb3JtcywgY29tYmluYXRpb24gb2YKPiBfX1BBR0VU
QUJMRV9QVURfRk9MREVEIGFuZCBfX0FSQ0hfSEFTXzVMRVZFTF9IQUNLIGRlY2lkZSB3aGV0aGVy
IHRoZQo+IGhlbHBlcnMgc3VjaCBhcyBfX3B1ZCgpIG9yIF9fcGdkKCkgaXMgZXZlbiBhdmFpbGFi
bGUgZm9yIHRoYXQgcGxhdGZvcm0uCj4gSWRlYWxseSBpdCBzaG91bGQgaGF2ZSBiZWVuIHRocm91
Z2ggZ2VuZXJpYyBmYWxscyBiYWNrcyBpbiBpbmNsdWRlLyovCj4gYnV0IEkgZ3Vlc3MgdGhlcmUg
bWlnaHQgYmUgYnVncyBvbiB0aGUgcGxhdGZvcm0gb3IgaXQgaGFzIG5vdCBiZWVuCj4gY2hhbmdl
ZCB0byBhZG9wdCA1IGxldmVsIHBhZ2UgdGFibGUgZnJhbWV3b3JrIHdpdGggcmVxdWlyZWQgZm9s
ZGluZwo+IG1hY3JvcyBldGMuCgpZZXMuIEFzIEkgc3VnZ2VzdGVkIGJlbG93LCBtb3N0IGxpa2Vs
eSB0aGF0J3MgYmV0dGVyIHRvIHJldGFpbiB0aGUgCiNpZmRlZiBfX0FSQ0hfSEFTXzVMRVZFTF9I
QUNLIGJ1dCBjaGFuZ2UgdGhlICNpZmRlZiAKX19QQUdFVEFCTEVfUFVEX0ZPTERFRCBieSBhIHJ1
bnRpbWUgdGVzdCBvZiBtbV9wdWRfZm9sZGVkKG1tKQoKQXMgcG9pbnRlZCBieSBHZXJhbGQsIHNv
bWUgYXJjaGVzIGRvbid0IGhhdmUgX19QQUdFVEFCTEVfUFVEX0ZPTERFRCAKYmVjYXVzZSB0aGV5
IGFyZSBkZWNpZGluZyBkeW5hbWljYWxseSBpZiB0aGV5IGZvbGQgdGhlIGxldmVsIG9uIG5vdCwg
YnV0IApoYXZlIG1tX3B1ZF9mb2xkZWQobW0pCgo+IAo+Pj4KPj4+ICDCoMKgwqDCoMKgwqDCoMKg
IHA0ZCA9IF9fcDRkKHA0ZF92YWwocDRkKSB8IFJBTkRPTV9PUlZBTFVFKTsKPj4+ICDCoMKgwqDC
oMKgwqDCoMKgIFdSSVRFX09OQ0UoKnA0ZHAsIHA0ZCk7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBw
NGRfY2xlYXIocDRkcCk7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBwNGQgPSBSRUFEX09OQ0UoKnA0
ZHApOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgV0FSTl9PTighcDRkX25vbmUocDRkKSk7Cj4+PiB9
Cj4+Pgo+Pj4gVGhlIGZvbGxvd2luZyB0ZXN0IGhpdHMgYW4gZXJyb3IgYXQgV0FSTl9PTighcDRk
X25vbmUocDRkKSkKPj4+Cj4+PiBbwqDCoCAxNi43NTczMzNdIC0tLS0tLS0tLS0tLVsgY3V0IGhl
cmUgXS0tLS0tLS0tLS0tLQo+Pj4gW8KgwqAgMTYuNzU4MDE5XSBXQVJOSU5HOiBDUFU6IDExIFBJ
RDogMSBhdCBtbS9hcmNoX3BndGFibGVfdGVzdC5jOjE4NyBhcmNoX3BndGFibGVfdGVzdHNfaW5p
dCsweDI0Yy8weDQ3NAoKWy4uLl0KCj4+PiBbwqDCoCAxNi43ODEyODJdIC0tLVsgZW5kIHRyYWNl
IDA0MmU2YzQwYzBhM2IwMzggXS0tLQo+Pj4KPj4+IE9uIGFybTY0ICg0SyBwYWdlIHNpemV8Mzkg
Yml0cyBWQXwzIGxldmVsIHBhZ2UgdGFibGUpCj4+Pgo+Pj4gI2VsaWYgQ09ORklHX1BHVEFCTEVf
TEVWRUxTID09IDPCoMKgwqAgLyogQXBwbGljYWJsZSBoZXJlICovCj4+PiAjZGVmaW5lIF9fQVJD
SF9VU0VfNUxFVkVMX0hBQ0sKPj4+ICNpbmNsdWRlIDxhc20tZ2VuZXJpYy9wZ3RhYmxlLW5vcHVk
Lmg+Cj4+Pgo+Pj4gV2hpY2ggcHVsbHMgaW4KPj4+Cj4+PiAjaW5jbHVkZSA8YXNtLWdlbmVyaWMv
cGd0YWJsZS1ub3A0ZC1oYWNrLmg+Cj4+Pgo+Pj4gd2hpY2ggcHVsbHMgaW4KPj4+Cj4+PiAjaW5j
bHVkZSA8YXNtLWdlbmVyaWMvNWxldmVsLWZpeHVwLmg+Cj4+Pgo+Pj4gd2hpY2ggZGVmaW5lcwo+
Pj4KPj4+IHN0YXRpYyBpbmxpbmUgaW50IHA0ZF9ub25lKHA0ZF90IHA0ZCkKPj4+IHsKPj4+ICDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4gfQo+Pj4KPj4+IHdoaWNoIHdpbGwgaW52YXJp
YWJseSB0cmlnZ2VyIFdBUk5fT04oIXA0ZF9ub25lKHA0ZCkpLgo+Pj4KPj4+IFNpbWlsYXJseSBm
b3IgbmV4dCB0ZXN0IHA0ZF9wb3B1bGF0ZV90ZXN0cygpIHdoaWNoIHdpbGwgYWx3YXlzIGJlCj4+
PiBzdWNjZXNzZnVsIGJlY2F1c2UgcDRkX2JhZCgpIGludmFyaWFibHkgcmV0dXJucyBuZWdhdGl2
ZS4KPj4+Cj4+PiBzdGF0aWMgaW5saW5lIGludCBwNGRfYmFkKHA0ZF90IHA0ZCkKPj4+IHsKPj4+
ICDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4gfQo+Pj4KPj4+IHN0YXRpYyB2b2lkIF9f
aW5pdCBwNGRfcG9wdWxhdGVfdGVzdHMoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHA0ZF90ICpwNGRw
LAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHVkX3QgKnB1ZHApCj4+PiB7Cj4+PiAgwqDCoMKg
wqDCoMKgwqDCoCBwNGRfdCBwNGQ7Cj4+Pgo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4+ICDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBUaGlzIGVudHJ5IHBvaW50cyB0byBuZXh0IGxldmVsIHBhZ2Ug
dGFibGUgcGFnZS4KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgKiBIZW5jZSB0aGlzIG11c3Qgbm90
IHF1YWxpZnkgYXMgcDRkX2JhZCgpLgo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4gIMKg
wqDCoMKgwqDCoMKgwqAgcHVkX2NsZWFyKHB1ZHApOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgcDRk
X2NsZWFyKHA0ZHApOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgcDRkX3BvcHVsYXRlKG1tLCBwNGRw
LCBwdWRwKTsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgIHA0ZCA9IFJFQURfT05DRSgqcDRkcCk7Cj4+
PiAgwqDCoMKgwqDCoMKgwqDCoCBXQVJOX09OKHA0ZF9iYWQocDRkKSk7Cj4+PiB9Cj4+Pgo+Pj4g
V2Ugc2hvdWxkIG5vdCBydW4gdGhlc2UgdGVzdHMgZm9yIHRoZSBhYm92ZSBjb25maWcgYmVjYXVz
ZSB0aGV5IGFyZQo+Pj4gbm90IGFwcGxpY2FibGUgYW5kIHdpbGwgaW52YXJpYWJseSBwcm9kdWNl
IHNhbWUgcmVzdWx0Lgo+Pj4KClsuLi5dCgo+Pj4+Cj4+Pj4gU28gaXQgc2hvdWxkbid0IGJlIGFu
IGlzc3VlLiBNYXliZSBpZiBhIGNvdXBsZSBvZiBhcmNoZXMgbWlzcyB0aGVtLCB0aGUgYmVzdCB3
b3VsZCBiZSB0byBmaXggdGhlIGFyY2hlcywgc2luY2UgdGhhdCdzIHRoZSBwdXJwb3NlIG9mIHlv
dXIgdGVzdHN1aXRlIGlzbid0IGl0ID8KPj4+Cj4+PiBUaGUgcnVuIHRpbWUgZmFpbHVyZXMgYXMg
ZXhwbGFpbmVkIHByZXZpb3VzbHkgaXMgYmVjYXVzZSBvZiB0aGUgZm9sZGluZyB3aGljaAo+Pj4g
bmVlZHMgdG8gYmUgcHJvdGVjdGVkIGFzIHRoZXkgYXJlIG5vdCBldmVuIGFwcGxpY2FibGUuIFRo
ZSBjb21waWxlIHRpbWUKPj4+IGZhaWx1cmVzIGFyZSBiZWNhdXNlIHB4eF9wb3B1bGF0ZSgpIHNp
Z25hdHVyZXMgYXJlIHBsYXRmb3JtIHNwZWNpZmljIGRlcGVuZGluZwo+Pj4gb24gaG93IG1hbnkg
cGFnZSB0YWJsZSBsZXZlbHMgdGhleSByZWFsbHkgc3VwcG9ydC4KPj4+Cj4+Cj4+IFNvIElJVUMs
IHRoZSBjb21waWxldGltZSBwcm9ibGVtIGlzIGFyb3VuZCBfX0FSQ0hfSEFTXzVMRVZFTF9IQUNL
LiBGb3IgYWxsICNpZiAhZGVmaW5lZChfX1BBR0VUQUJMRV9QWFhfRk9MREVEKSwgc29tZXRoaW5n
IGVxdWl2YWxlbnQgdG8gdGhlIGZvbGxvd2luZyBzaG91bGQgbWFrZSB0aGUgdHJpY2suCj4+Cj4+
ICDCoMKgwqDCoGlmIChtbV9weHhfZm9sZGVkKCkpCj4+ICDCoMKgwqDCoMKgwqDCoCByZXR1cm47
Cj4+Cj4+Cj4+IEZvciB0aGUgX19BUkNIX0hBU181TEVWRUxfSEFDSyBzdHVmZiwgSSB0aGluayB3
ZSBzaG91bGQgYmUgYWJsZSB0byByZWdyb3VwIGFsbCBpbXBhY3RlZCBmdW5jdGlvbnMgaW5zaWRl
IGEgc2luZ2xlICNpZmRlZiBfX0FSQ0hfSEFTXzVMRVZFTF9IQUNLCj4gCj4gSSB3YXMgd29uZGVy
aW5nIGlmIGl0IHdpbGwgYmUgYmV0dGVyIHRvCj4gCj4gMSkgTWluaW1pemUgYWxsICNpZmRlZnMg
aW4gdGhlIGNvZGUgd2hpY2ggbWlnaHQgZmFpbCBvbiBzb21lIHBsYXRmb3Jtcwo+IDIpIFJlc3Ry
aWN0IHByb3Bvc2VkIHRlc3QgbW9kdWxlIHRvIHBsYXRmb3JtcyB3aGVyZSBpdCBidWlsZHMgYW5k
IHJ1bnMKPiAzKSBFbmFibGUgb3RoZXIgcGxhdGZvcm1zIGFmdGVyd2FyZHMgYWZ0ZXIgZml4aW5n
IHRoZWlyIGJ1aWxkIHByb2JsZW1zIG9yIG90aGVyIHJlcXVpcmVtZW50cwoKSSB1bmRlcnN0YW5k
IHRoYXQgX19BUkNIX0hBU181TEVWRUxfSEFDSyBpcyBhbiBIQUNLIGFzIGl0cyBuYW1lIApzdWdn
ZXN0cywgc28geW91IGNhbid0IGV4cGVjdCBhbGwgcGxhdGZvcm1zIHRvIGdvIGZvciBhbiBIQUNL
LiBJIHRoaW5rIAp5b3UgY2FuIGtlZXAgYSBzaW5nbGUgI2lmZGVmIF9fQVJDSF9IQVNfNUxFVkVM
X0hBQ0sgLyAjZWxzZSAvICNlbmRpZiBhbmQgCnB1dCBhbGwgcmVsZXZhbnQgdGVzdHMgaW5zaWRl
IGl0LgoKRm9yIHRoaW5ncyBsaWtlIF9fUEFHRVRBQkxFX1BYWF9GT0xERUQgZGVwZW5kYW5jaWVz
LCBJIHN0aWxsIHRoaW5rIHRoYXQgCnRoZXkgY2FuIGFsbCBiZSByZXBsYWNlZCBieSBhIHJ1bnRp
bWUgdGVzdCBvZiBtbV9weHhfZm9sZGVkKCkuCgpDYW4geW91IHRyeSB0aGF0IGFuZCBzZWUgd2hh
dCBwcm9ibGVtIHJlbWFpbnMgPwoKPiAKPiBXb3VsZCB0aGF0IGJlIGEgYmV0dGVyIGFwcHJvYWNo
IGluc3RlYWQgPwo+IAoKQmFzZWQgb24gdGhlIGFib3ZlLCB0aGF0IG1pZ2h0IGJlIHRoZSBhcHBy
b2FjaCB0byB0YWtlLCB5ZXMuCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
