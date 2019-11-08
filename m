Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9BBF3EE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 05:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJP7zHNuCytxoq/YKaPnFZjDxWUR1Ou4UlrOtQXwOKI=; b=VmEsDC2Ck5wvQH
	mWvZpZ4Cir/L2/LDVZsbC5N6vHADIkFeAMxYvCRq5eYo+Pp2oPuYnF0NDoxadjVjuaj3m1f9wmE3x
	WOy3jyXuQOZwmfp7FlZgFKSQ80w7gcBVZ2boa4XTyPCUC3rUvKQHfFPiFgneNdewcXnCIvWyCNqEl
	vzAFmw2KSm6nCkcVhEYV261NzwEJOFXmxuOQxGb8WWAljTv1l73PbemaVX/+mDweGKPkNdIyQztQZ
	LGWT1xipvUFAl22FlJjkii04wDvd5KAOjPx3+raBzvCupje86OG1u2A7Qnt0o5xOuYj9/rX86X9pw
	2PFok2jXnEXRhZccSQng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSvrh-0007mF-VJ; Fri, 08 Nov 2019 04:27:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSvrW-0007lL-AF; Fri, 08 Nov 2019 04:27:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFEA630E;
 Thu,  7 Nov 2019 20:27:00 -0800 (PST)
Received: from [10.163.1.237] (unknown [10.163.1.237])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B3AF3F6C4;
 Thu,  7 Nov 2019 20:26:43 -0800 (PST)
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
 <da665683-6946-b411-57f9-e1689d4b50fe@arm.com>
 <c204de13-48e7-015f-1a09-263fce7882f1@synopsys.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a4c5f1cd-7d9e-0f97-5e0e-19d17adc5b33@arm.com>
Date: Fri, 8 Nov 2019 09:57:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <c204de13-48e7-015f-1a09-263fce7882f1@synopsys.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_202706_442087_0A60B53B 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

CgpPbiAxMS8wOC8yMDE5IDEyOjM1IEFNLCBWaW5lZXQgR3VwdGEgd3JvdGU6Cj4gT24gMTEvNi8x
OSA4OjQ0IFBNLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPj4KPj4+Cj4+Pj4gICAqLwo+Pj4+
IC0jaWZkZWYgQ09ORklHX1RSQU5TUEFSRU5UX0hVR0VQQUdFCj4+Pj4gKyNpZmRlZiBDT05GSUdf
SEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQQUdFCj4+Pj4gICNpbmNsdWRlIDxhc20vaHVnZXBh
Z2UuaD4KPj4+PiAgI2VuZGlmCj4+PiBUaGlzIGluIHdyb25nLsKgIENPTkZJR19IQVZFX0FSQ0hf
VFJBTlNQQVJFTlRfSFVHRVBBR0UgaXMgYSBqdXN0IGEgZ2x1ZSB0b2dnbGUsCj4+PiB1c2VkIG9u
bHkgaW4gS2NvbmZpZyBmaWxlcyAoYW5kIG5vdCBpbiBhbnkgIkMiIGNvZGUpLsKgIEl0IGVuYWJs
ZXMgZ2VuZXJpYyBLY29uZmlnCj4+PiBjb2RlIHRvIGFsbG93IHZpc2liaWxpdHkgb2YgQ09ORklH
X1RSQU5TUEFSRU5UX0hVR0VQQUdFIHcvbyBldmVyeSBhcmNoIG5lZWRpbmcgdG8KPj4+IGRvIGEg
bWUgdG9vLgo+Pj4KPj4+IEkgdGhpbmsgeW91IG5lZWQgdG8gdXNlIENPTkZJR19UUkFOU1BBUkVO
VF9IVUdFUEFHRSB0byBndWFyZCBhcHByb3ByaWF0ZSB0ZXN0cy4gSQo+Pj4gdW5kZXJzdGFuZCB0
aGF0IGl0IG9ubHkKPj4gV2UgY2FuIHByb2JhYmx5IHJlcGxhY2UgQ09ORklHX0hBVkVfQVJDSF9U
UkFOU1BBUkVOVF9IVUdFUEFHRSB3cmFwcGVyIHdpdGgKPj4gQ09ORklHX1RSQU5TUEFSRU5UX0hV
R0VQQUdFLiBCdXQgQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRV9QVUQKPj4g
ZXhwbGljaXRseSBkZXBlbmRzIG9uIENPTkZJR19UUkFOU1BBUkVOVF9IVUdFUEFHRSBhcyBhIHBy
ZXJlcXVpc2l0ZS4gQ291bGQKPj4geW91IHBsZWFzZSBjb25maXJtIGlmIHRoZSBmb2xsb3dpbmcg
Y2hhbmdlIG9uIHRoaXMgdGVzdCB3aWxsIHdvcmsgb24gQVJDCj4+IHBsYXRmb3JtIGZvciBib3Ro
IFRIUCBhbmQgIVRIUCBjYXNlcyA/IFRoYW5rIHlvdS4KPj4KPj4gZGlmZiAtLWdpdCBhL21tL2Rl
YnVnX3ZtX3BndGFibGUuYyBiL21tL2RlYnVnX3ZtX3BndGFibGUuYwo+PiBpbmRleCA2MjFhYzA5
Li45OWViYzdjIDEwMDY0NAo+PiAtLS0gYS9tbS9kZWJ1Z192bV9wZ3RhYmxlLmMKPj4gKysrIGIv
bW0vZGVidWdfdm1fcGd0YWJsZS5jCj4+IEBAIC02Nyw3ICs2Nyw3IEBAIHN0YXRpYyB2b2lkIF9f
aW5pdCBwdGVfYmFzaWNfdGVzdHModW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpCj4+
ICAJV0FSTl9PTihwdGVfd3JpdGUocHRlX3dycHJvdGVjdChwdGUpKSk7Cj4+ICB9Cj4+ICAKPj4g
LSNpZmRlZiBDT05GSUdfSEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQQUdFCj4+ICsjaWZkZWYg
Q09ORklHX1RSQU5TUEFSRU5UX0hVR0VQQUdFCj4+ICBzdGF0aWMgdm9pZCBfX2luaXQgcG1kX2Jh
c2ljX3Rlc3RzKHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KQo+PiAgewo+PiAgCXBt
ZF90IHBtZCA9IHBmbl9wbWQocGZuLCBwcm90KTsKPj4gQEAgLTg1LDkgKzg1LDYgQEAgc3RhdGlj
IHZvaWQgX19pbml0IHBtZF9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3Qg
cHJvdCkKPj4gIAkgKi8KPj4gIAlXQVJOX09OKCFwbWRfYmFkKHBtZF9ta2h1Z2UocG1kKSkpOwo+
PiAgfQo+PiAtI2Vsc2UKPj4gLXN0YXRpYyB2b2lkIF9faW5pdCBwbWRfYmFzaWNfdGVzdHModW5z
aWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpIHsgfQo+PiAtI2VuZGlmCj4+ICAKPj4gICNp
ZmRlZiBDT05GSUdfSEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQQUdFX1BVRAo+PiAgc3RhdGlj
IHZvaWQgX19pbml0IHB1ZF9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3Qg
cHJvdCkKPj4gQEAgLTExMiw2ICsxMDksMTAgQEAgc3RhdGljIHZvaWQgX19pbml0IHB1ZF9iYXNp
Y190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcHJvdCkKPj4gICNlbHNlCj4+ICBz
dGF0aWMgdm9pZCBfX2luaXQgcHVkX2Jhc2ljX3Rlc3RzKHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3By
b3RfdCBwcm90KSB7IH0KPj4gICNlbmRpZgo+PiArI2Vsc2UKPj4gK3N0YXRpYyB2b2lkIF9faW5p
dCBwbWRfYmFzaWNfdGVzdHModW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpIHsgfQo+
PiArc3RhdGljIHZvaWQgX19pbml0IHB1ZF9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwg
cGdwcm90X3QgcHJvdCkgeyB9Cj4+ICsjZW5kaWYKPiAKPiBGYWlscyB0byBidWlsZCBmb3IgVEhQ
IGNhc2Ugc2luY2UKPiAKPiBDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0U9eQo+IENPTkZJR19I
QVZFX0FSQ0hfVFJBTlNQQVJFTlRfSFVHRVBBR0VfUFVEPW4KPiAKPiAuLi9tbS9kZWJ1Z192bV9w
Z3RhYmxlLmM6MTEyOjIwOiBlcnJvcjogcmVkZWZpbml0aW9uIG9mIOKAmHBtZF9iYXNpY190ZXN0
c+KAmQo+IAoKSG1tLCByZWFsbHkgPyBXaXRoIGFybTY0IGRlZmNvbmZpZyB3ZSBoYXZlIHRoZSBz
YW1lIGRlZmF1bHQgY29tYmluYXRpb24Kd2hlcmUgaXQgYnVpbGRzLgoKQ09ORklHX1RSQU5TUEFS
RU5UX0hVR0VQQUdFPXkKQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRT15CkNP
TkZJR19IQVZFX0FSQ0hfVFJBTlNQQVJFTlRfSFVHRVBBR0VfUFVEPW4JLyogSXQgc2hvdWxkIG5v
dCBldmVuIGFwcGVhciAqLwoKV2l0aCB0aGUgYWJvdmUgY2hhbmdlLCB3ZSBoYXZlIG5vdwoKI2lm
ZGVmIENPTkZJR19UUkFOU1BBUkVOVF9IVUdFUEFHRQpzdGF0aWMgdm9pZCBfX2luaXQgcG1kX2Jh
c2ljX3Rlc3RzKHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KQp7Ci0tLS0KLS0tLQp9
CgojaWZkZWYgQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRV9QVUQKc3RhdGlj
IHZvaWQgX19pbml0IHB1ZF9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3Qg
cHJvdCkKewotLS0tCi0tLS0KfQojZWxzZSAvKiAhQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVO
VF9IVUdFUEFHRV9QVUQgKi8Kc3RhdGljIHZvaWQgX19pbml0IHB1ZF9iYXNpY190ZXN0cyh1bnNp
Z25lZCBsb25nIHBmbiwgcGdwcm90X3QgcHJvdCkgeyB9CiNlbmRpZgojZWxzZQkvKiAhQ09ORklH
X1RSQU5TUEFSRU5UX0hVR0VQQUdFICovCnN0YXRpYyB2b2lkIF9faW5pdCBwbWRfYmFzaWNfdGVz
dHModW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHByb3QpIHsgfQpzdGF0aWMgdm9pZCBfX2lu
aXQgcHVkX2Jhc2ljX3Rlc3RzKHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KSB7IH0K
I2VuZGlmCgpXaGVuICFDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0UKCi0gRHVtbXkgZGVmaW5p
dGlvbnMgZm9yIHBtZF9iYXNpY190ZXN0cygpIGFuZCBwdWRfYmFzaWNfdGVzdHMoKQoKV2hlbiBD
T05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0UgYW5kICFDT05GSUdfSEFWRV9BUkNIX1RSQU5TUEFS
RU5UX0hVR0VQQUdFX1BVRAoKLSBBY3R1YWwgcG1kX2Jhc2ljX3Rlc3RzKCkgYW5kIGR1bW15IHB1
ZF9iYXNpY190ZXN0cygpCgpXaGVuIENPTkZJR19UUkFOU1BBUkVOVF9IVUdFUEFHRSBhbmQgQ09O
RklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRV9QVUQKCi0gQWN0dWFsIHBtZF9iYXNp
Y190ZXN0cygpIGFuZCBwdWRfYmFzaWNfdGVzdHMoKQoKVGVzdGVkIHRoaXMgb24gYXJtNjQgd2hp
Y2ggZG9lcyBub3QgaGF2ZSBDT05GSUdfSEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQQUdFX1BV
RApmb3IgVEhQIGFuZCAhVEhQIGFuZCBvbiB4ODYgd2hpY2ggaGFzIENPTkZJR19IQVZFX0FSQ0hf
VFJBTlNQQVJFTlRfSFVHRVBBR0VfUFVECmZvciBUSFAgYW5kICFUSFAgd2hpY2ggYmFzaWNhbGx5
IGNvdmVyZWQgYWxsIGNvbWJpbmF0aW9uIGZvciB0aGVzZSBjb25maWdzLgoKSXMgdGhlcmUgc29t
ZXRoaW5nIEkgYW0gc3RpbGwgbWlzc2luZyBpbiBwbGFpbiBzaWdodCA6KQoKLSBBbnNodW1hbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
