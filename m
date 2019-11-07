Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734E2F26AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 05:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8d/Dlyil352Zg9tcJmX2vtADTODSmkkw/s6tVfDIAk=; b=Z3Vu14zRrLa8Xy
	vNG4Fa/82VXsdKrcMmZ6Gezru/Xlj9SJBWY9m26phIYNEYSDxbcyWLL6FEX4UGXPmPWzNXbQ9UhSB
	jGsFhqaGWP/8GODTKL5JPmTdnp53e2ZGeSyj+50htiA6UpDViZtKBAVkpnIOKHG/JVuUn1TD0D1iJ
	gKMKrwrODRvuHgLqVwUfM2GyFZANsa1NyvibgxD4/wZbwztWr6Z93GWA81G11uGVxa7uC/zdVajJQ
	JevKi3Hzcf6/KckHLSwV7RUQU6nUdPB60HflCvneoapi73gpGHSQRBbAE9RgFlF9uqfpUeHGhZLbc
	JgS/0eyOSKR0OBAeuCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSZeo-0005Xv-Qp; Thu, 07 Nov 2019 04:44:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSZee-0005XU-TL; Thu, 07 Nov 2019 04:44:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 867FF7A7;
 Wed,  6 Nov 2019 20:44:18 -0800 (PST)
Received: from [10.163.1.1] (unknown [10.163.1.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C69DD3F71A;
 Wed,  6 Nov 2019 20:43:56 -0800 (PST)
Subject: Re: [PATCH V8] mm/debug: Add tests validating architecture page table
 helpers
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <1572240562-23630-1-git-send-email-anshuman.khandual@arm.com>
 <e0aa8d49-5511-15e4-f413-62c99eea4fab@arm.com>
 <e0dc3636-8c6e-0177-9a7f-fefd28c74f27@synopsys.com>
 <dc2746c9-bde4-ac00-88d1-2bd1cea1f105@arm.com>
 <b93ffe1f-b198-a042-ecd4-b0f2b0171f72@synopsys.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <da665683-6946-b411-57f9-e1689d4b50fe@arm.com>
Date: Thu, 7 Nov 2019 10:14:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <b93ffe1f-b198-a042-ecd4-b0f2b0171f72@synopsys.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_204421_034771_706C9F22 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, James Hogan <jhogan@kernel.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 "x86@kernel.org" <x86@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8wNi8yMDE5IDExOjM3IFBNLCBWaW5lZXQgR3VwdGEgd3JvdGU6Cj4gT24gMTEvNS8x
OSA3OjAzIFBNLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPj4gQnV0IHNob3VsZCBub3QgcGZu
X3BtZCgpIGJlIGVuY2Fwc3VsYXRlZCBpbnNpZGUgSEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQ
QUdFCj4+IGF0IHRoZSBtaW5pbXVtIChidXQgSSB3b3VsZCBzYXkgaXQgc2hvdWxkIGJlIGF2YWls
YWJsZSBhbHdheXMsIG5vbmV0aGVsZXNzKSB3aGVuCj4+IHRoZSBwbGF0Zm9ybSBzdWJzY3JpYmVz
IHRvIFRIUCBpcnJlc3BlY3RpdmUgb2Ygd2hldGhlciBUSFAgaXMgZW5hYmxlZCBvciBub3QuCj4g
Cj4gRm9yIEFSQyBpdCB3YXMgb25seSBpbnRyb2R1Y2VkL25lZWRlZCB3aGVuIEkgYWRkZWQgVEhQ
IHN1cHBvcnQgc28gaXQgaXMgZGVwZW5kZW50Cj4gaW4gc29tZSB3YXkuClJpZ2h0LCBpdCBpcyBk
ZXBlbmRlbnQuCgo+IAo+PiBJIGNvdWxkIHNlZSBpbiB0aGUgZmlsZSAoYXJjaC9hcmMvaW5jbHVk
ZS9hc20vcGd0YWJsZS5oKSB0aGF0IGZldGNoaW5nIHBmbl9wbWQoKQo+PiBhbmQgYWxsIG90aGVy
IGJhc2ljIFBNRCBkZWZpbml0aW9ucyBpcyBjb25kaXRpb25hbCBvbiBDT05GSUdfVFJBTlNQQVJF
TlRfSFVHRVBBR0UuCj4+Cj4+ICNpZmRlZiBDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0UKPj4g
I2luY2x1ZGUgPGFzbS9odWdlcGFnZS5oPgo+PiAjZW5kaWYKPj4KPj4gSUlVQywgQ09ORklHX1RS
QU5TUEFSRU5UX0hVR0VQQUdFIHNob3VsZCBvbmx5IGVuY2Fwc3VsYXRlIFBNRCBwYWdlIHRhYmxl
IGhlbHBlcnMKPj4gd2hpY2ggYXJlIGV4cGVjdGVkIGZyb20gZ2VuZXJpYyBUSFAgY29kZSAocG1k
X3RyYW5zX2h1Z2UsIHBtZHBfc2V0X2FjY2Vzc19mbGFncwo+PiBldGMpIGJ1dCBub3QgdGhlIGJh
c2ljIFBNRCBoZWxwZXJzIGxpa2UgcG1kX3BmbiwgcG1kX21reW91bmcsIHBtZF9ta2RpcnR5LAo+
PiBwbWRfbWtjbGVhbiBldGMuIAo+IAo+IEFSQyBvbmx5IGhhcyAyIGxldmVscyBvZiBwYWdpbmcs
IHNvIHRoZXNlIGRvbid0IG1ha2UgYW55IHNlbnNlIGluIGdlbmVyYWwgYW5kCj4gbmVlZGVkIG9u
bHkgZm9yIFRIUCBjYXNlLgo+IEkgY2FzZSBvZiBhcmNoL2FybSB5b3Ugc2VlIGl0IGlzIG9ubHkg
ZGVmaW5lZCBpbiBwZ3RhYmxlLTNsZXZlbC5oCgpUaGVyZSBpcyBubyB1bmlmb3JtaXR5IGZvciBh
bGwgdGhlc2UgYWNyb3NzIGFyY2hpdGVjdHVyZXMuIEl0IGhhcyBiZWVuIGJpdApkaWZmaWN1bHQg
dG8gZ2V0IHNvbWUgb2YgdGhlc2UgcmVxdWlyZWQgaGVscGVycyByaWdodCAoY29tcGlsZSBhbmQg
cnVuKSBvbgpkaWZmZXJlbnQgcGxhdGZvcm1zLgoKPiAKPj4gSGVuY2Ugd29uZGVyaW5nIHdpbGwg
aXQgYmUgcG9zc2libGUgdG8gYWNjb21tb2RhdGUgZm9sbG93aW5nCj4+IGNvZGUgY2hhbmdlIG9u
IGFyYyBwbGF0Zm9ybSAobm90IGV2ZW4gY29tcGlsZWQpIGluIG9yZGVyIHRvIGZpeCB0aGUgcHJv
YmxlbSA/Cj4gCj4gSSdtIG9wZW4gdG8gbWFraW5nIGNoYW5nZXMgaW4gQVJDIGNvZGUgYnV0IGxl
dHMgZG8gdGhlIHJpZ2h0IHRoaW5nLgo+IAo+PiAgICovCj4+IC0jaWZkZWYgQ09ORklHX1RSQU5T
UEFSRU5UX0hVR0VQQUdFCj4+ICsjaWZkZWYgQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9I
VUdFUEFHRQo+PiAgI2luY2x1ZGUgPGFzbS9odWdlcGFnZS5oPgo+PiAgI2VuZGlmCj4gCj4gVGhp
cyBpbiB3cm9uZy7CoCBDT05GSUdfSEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQQUdFIGlzIGEg
anVzdCBhIGdsdWUgdG9nZ2xlLAo+IHVzZWQgb25seSBpbiBLY29uZmlnIGZpbGVzIChhbmQgbm90
IGluIGFueSAiQyIgY29kZSkuwqAgSXQgZW5hYmxlcyBnZW5lcmljIEtjb25maWcKPiBjb2RlIHRv
IGFsbG93IHZpc2liaWxpdHkgb2YgQ09ORklHX1RSQU5TUEFSRU5UX0hVR0VQQUdFIHcvbyBldmVy
eSBhcmNoIG5lZWRpbmcgdG8KPiBkbyBhIG1lIHRvby4KPiAKPiBJIHRoaW5rIHlvdSBuZWVkIHRv
IHVzZSBDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0UgdG8gZ3VhcmQgYXBwcm9wcmlhdGUgdGVz
dHMuIEkKPiB1bmRlcnN0YW5kIHRoYXQgaXQgb25seQoKV2UgY2FuIHByb2JhYmx5IHJlcGxhY2Ug
Q09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRSB3cmFwcGVyIHdpdGgKQ09ORklH
X1RSQU5TUEFSRU5UX0hVR0VQQUdFLiBCdXQgQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9I
VUdFUEFHRV9QVUQKZXhwbGljaXRseSBkZXBlbmRzIG9uIENPTkZJR19UUkFOU1BBUkVOVF9IVUdF
UEFHRSBhcyBhIHByZXJlcXVpc2l0ZS4gQ291bGQKeW91IHBsZWFzZSBjb25maXJtIGlmIHRoZSBm
b2xsb3dpbmcgY2hhbmdlIG9uIHRoaXMgdGVzdCB3aWxsIHdvcmsgb24gQVJDCnBsYXRmb3JtIGZv
ciBib3RoIFRIUCBhbmQgIVRIUCBjYXNlcyA/IFRoYW5rIHlvdS4KCmRpZmYgLS1naXQgYS9tbS9k
ZWJ1Z192bV9wZ3RhYmxlLmMgYi9tbS9kZWJ1Z192bV9wZ3RhYmxlLmMKaW5kZXggNjIxYWMwOS4u
OTllYmM3YyAxMDA2NDQKLS0tIGEvbW0vZGVidWdfdm1fcGd0YWJsZS5jCisrKyBiL21tL2RlYnVn
X3ZtX3BndGFibGUuYwpAQCAtNjcsNyArNjcsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcHRlX2Jh
c2ljX3Rlc3RzKHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KQogCVdBUk5fT04ocHRl
X3dyaXRlKHB0ZV93cnByb3RlY3QocHRlKSkpOwogfQogCi0jaWZkZWYgQ09ORklHX0hBVkVfQVJD
SF9UUkFOU1BBUkVOVF9IVUdFUEFHRQorI2lmZGVmIENPTkZJR19UUkFOU1BBUkVOVF9IVUdFUEFH
RQogc3RhdGljIHZvaWQgX19pbml0IHBtZF9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwg
cGdwcm90X3QgcHJvdCkKIHsKIAlwbWRfdCBwbWQgPSBwZm5fcG1kKHBmbiwgcHJvdCk7CkBAIC04
NSw5ICs4NSw2IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBwbWRfYmFzaWNfdGVzdHModW5zaWduZWQg
bG9uZyBwZm4sIHBncHJvdF90IHByb3QpCiAJICovCiAJV0FSTl9PTighcG1kX2JhZChwbWRfbWto
dWdlKHBtZCkpKTsKIH0KLSNlbHNlCi1zdGF0aWMgdm9pZCBfX2luaXQgcG1kX2Jhc2ljX3Rlc3Rz
KHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KSB7IH0KLSNlbmRpZgogCiAjaWZkZWYg
Q09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRV9QVUQKIHN0YXRpYyB2b2lkIF9f
aW5pdCBwdWRfYmFzaWNfdGVzdHModW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpCkBA
IC0xMTIsNiArMTA5LDEwIEBAIHN0YXRpYyB2b2lkIF9faW5pdCBwdWRfYmFzaWNfdGVzdHModW5z
aWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpCiAjZWxzZQogc3RhdGljIHZvaWQgX19pbml0
IHB1ZF9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcHJvdCkgeyB9CiAj
ZW5kaWYKKyNlbHNlCitzdGF0aWMgdm9pZCBfX2luaXQgcG1kX2Jhc2ljX3Rlc3RzKHVuc2lnbmVk
IGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KSB7IH0KK3N0YXRpYyB2b2lkIF9faW5pdCBwdWRfYmFz
aWNfdGVzdHModW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpIHsgfQorI2VuZGlmCiAK
IHN0YXRpYyB2b2lkIF9faW5pdCBwNGRfYmFzaWNfdGVzdHModW5zaWduZWQgbG9uZyBwZm4sIHBn
cHJvdF90IHByb3QpCiB7Cgo+IC1WaW5lZXQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
