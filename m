Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6CBE4839
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SR7Q4GRxK0dsDeLFS5wqUgd5Ced7/e200t8xFVjHHg=; b=LwpyNV6mkXEbF7
	WgtX1R3tkCdDA3xwBlyrxtr+5ljF7mX/fhLRqYTtBSyZB/3gARZQev/rWV0GmcQ1e1qzPaxlGjHem
	p90iasM1bPQ2sNIveseEbaNECHFGgPCcl9T3kPJlnsBF8S1dTCRnE1Ql6z9Y2MkUXUegXngjdTszU
	eeZ46oogHfqE1AA/1z6siy9EUuCACfcrcYQm6WVxFx1D5C7U6zTzQ9knWA+lKLwZU9dsD9BKMM1t3
	jcRfPL9ZdUMhVNdQyvaS+D3TxspBDcOboyqKTvtKGsWNVl2HDR6/qTSJaRcCVtzHG+DemWD7VLEIn
	gcQJH/HUaPT3Qn8t4kKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwYK-0004Xv-UD; Fri, 25 Oct 2019 10:10:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwXy-0004RF-2K; Fri, 25 Oct 2019 10:10:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4365B28;
 Fri, 25 Oct 2019 03:10:17 -0700 (PDT)
Received: from [10.162.41.137] (p8cg001049571a15.blr.arm.com [10.162.41.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7FC723F6C4; Fri, 25 Oct 2019 03:10:05 -0700 (PDT)
Subject: Re: [PATCH V7] mm/debug: Add tests validating architecture page table
 helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qian Cai <cai@lca.pw>
References: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
 <69256008-2235-4AF1-A3BA-0146C82CCB93@lca.pw>
 <3cfec421-4006-4159-ca32-313ff5196ff9@c-s.fr>
 <763d58b4-f532-0bba-bf2b-71433ac514fb@arm.com>
 <d811622e-0d35-3bc6-9568-36abc1bee355@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <78d13292-0cfe-31b6-7a9c-daf7fb7f3d23@arm.com>
Date: Fri, 25 Oct 2019 15:40:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <d811622e-0d35-3bc6-9568-36abc1bee355@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_031018_246301_BC81782C 
X-CRM114-Status: GOOD (  19.15  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
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
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC8yNS8yMDE5IDAyOjIyIFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDI1LzEwLzIwMTkgw6AgMTA6MjQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
Cj4+Cj4+IE9uIDEwLzI1LzIwMTkgMTI6NDEgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Pgo+Pj4KPj4+IExlIDI1LzEwLzIwMTkgw6AgMDc6NTIsIFFpYW4gQ2FpIGEgw6ljcml0wqA6Cj4+
Pj4KPj4+Pgo+Pj4+PiBPbiBPY3QgMjQsIDIwMTksIGF0IDExOjQ1IFBNLCBBbnNodW1hbiBLaGFu
ZHVhbCA8QW5zaHVtYW4uS2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IE5vdGhp
bmcgc3BlY2lmaWMuIEJ1dCBqdXN0IHRlc3RlZCB0aGlzIHdpdGggeDg2IGRlZmNvbmZpZyB3aXRo
IHJlbGV2YW50IGNvbmZpZ3MKPj4+Pj4gd2hpY2ggYXJlIHJlcXVpcmVkIGZvciB0aGlzIHRlc3Qu
IE5vdCBzdXJlIGlmIGl0IGludm9sdmVkIFc9MS4KPj4+Pgo+Pj4+IE5vLCBpdCB3aWxsIG5vdC4g
SXQgbmVlZHMgdG8gcnVuIGxpa2UsCj4+Pj4KPj4+PiBtYWtlIFc9MSAtaiA2NCAyPi90bXAvd2Fy
bnMKPj4+Pgo+Pj4KPj4+IEFyZSB3ZSB0YWxraW5nIGFib3V0IHRoaXMgcGVhY2Ugb2YgY29kZSA/
Cj4+Pgo+Pj4gK3N0YXRpYyB1bnNpZ25lZCBsb25nIF9faW5pdCBnZXRfcmFuZG9tX3ZhZGRyKHZv
aWQpCj4+PiArewo+Pj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIHJhbmRvbV92YWRkciwgcmFuZG9t
X3BhZ2VzLCB0b3RhbF91c2VyX3BhZ2VzOwo+Pj4gKwo+Pj4gK8KgwqDCoCB0b3RhbF91c2VyX3Bh
Z2VzID0gKFRBU0tfU0laRSAtIEZJUlNUX1VTRVJfQUREUkVTUykgLyBQQUdFX1NJWkU7Cj4+PiAr
Cj4+PiArwqDCoMKgIHJhbmRvbV9wYWdlcyA9IGdldF9yYW5kb21fbG9uZygpICUgdG90YWxfdXNl
cl9wYWdlczsKPj4+ICvCoMKgwqAgcmFuZG9tX3ZhZGRyID0gRklSU1RfVVNFUl9BRERSRVNTICsg
cmFuZG9tX3BhZ2VzICogUEFHRV9TSVpFOwo+Pj4gKwo+Pj4gK8KgwqDCoCBXQVJOX09OKChyYW5k
b21fdmFkZHIgPiBUQVNLX1NJWkUpIHx8Cj4+PiArwqDCoMKgwqDCoMKgwqAgKHJhbmRvbV92YWRk
ciA8IEZJUlNUX1VTRVJfQUREUkVTUykpOwo+Pj4gK8KgwqDCoCByZXR1cm4gcmFuZG9tX3ZhZGRy
Owo+Pj4gK30KPj4+ICsKPj4+Cj4+PiByYW1kb21fdmFkZHIgaXMgdW5zaWduZWQsCj4+PiByYW5k
b21fcGFnZXMgaXMgdW5zaWduZWQgYW5kIGxvd2VyIHRoYW4gdG90YWxfdXNlcl9wYWdlcwo+Pj4K
Pj4+IFNvIHRoZSBtYXggdmFsdWUgcmFuZG9tX3ZhZGRyIGNhbiBnZXQgaXMgRklSU1RfVVNFUl9B
RERSRVNTICsgKChUQVNLX1NJWkUgLSBGSVJTVF9VU0VSX0FERFJFU1MgLSAxKSAvIFBBR0VfU0la
RSkgKiBQQUdFX1NJWkUgPSBUQVNLX1NJWkUgLSAxCj4+PiBBbmQgdGhlIG1pbiB2YWx1ZSByYW5k
b21fdmFkZHIgY2FuIGdldCBpcyBGSVJTVF9VU0VSX0FERFJFU1MgKHRoYXQncyB3aGVuIHJhbmRv
bV9wYWdlcyA9IDApCj4+Cj4+IFRoYXQncyByaWdodC4KPj4KPj4+Cj4+PiBTbyB0aGUgV0FSTl9P
TigpIGlzIGp1c3QgdW5uZWVkZWQsIGlzbid0IGl0ID8KPj4KPj4gSXQgaXMganVzdCBhIHNhbml0
eSBjaGVjayBvbiBwb3NzaWJsZSB2YWRkciB2YWx1ZXMgYmVmb3JlIGl0J3MgY29ycmVzcG9uZGlu
Zwo+PiBwYWdlIHRhYmxlIG1hcHBpbmdzIGNvdWxkIGJlIGNyZWF0ZWQuIElmIGl0J3Mgd29ydGgg
dG8gZHJvcCB0aGlzIGluIGZhdm9yIG9mCj4+IGF2b2lkaW5nIHRoZXNlIHVud2FudGVkIHdhcm5p
bmcgbWVzc2FnZXMgb24geDg2LCB3aWxsIGdvIGFoZWFkIHdpdGggaXQgYXMgaXQKPj4gaXMgbm90
IHN1cGVyIGltcG9ydGFudC4KPj4KPiAKPiBCdXQgeW91IGFyZSBjaGVja2luZyB3aGF0ID8gVGhh
dCB0aGUgY29tcGlsZXIgZG9lcyBjYWxjdWxhdGlvbiBjb3JyZWN0bHkgb3Igd2hhdCA/CgpJSVJD
LCBwcm9iYWJseSB0aGlzIHdhcyBmb3IgbGF0ZXIgaWYgYW5kIHdoZW4gdGhlIHZhZGRyIGNhbGN1
bGF0aW9uIGJlY29tZXMKZGVwZW5kZW50IG9uIG90aGVyIGZhY3RvcnMgcmF0aGVyIHRoYW4gdGhp
cyBzaW1wbGUgYXJpdGhtZXRpYyBpbnZvbHZpbmcgc3RhcnQKYW5kIGVuZCBvZiBwcm9jZXNzIGFk
ZHJlc3Mgc3BhY2Ugb24gYSBwbGF0Zm9ybS4KCj4gQXMgbWVudGlvbm5lZCBqdXN0IGFib3ZlLCBi
YXNlZCBvbiB0aGUgY2FsY3VsYXRpb24gZG9uZSwgd2hhdCB5b3UgYXJlIHRlc3RpbmcgY2Fubm90
IGhhcHBlbiwgc28gSSdtIGhhdmluZyBhIGhhcmQgdGltZSB1bmRlcnN0YW5kaW5nIHdoYXQga2lu
ZCBvZiBzYW5pdHkgY2hlY2sgaXQgY2FuIGJlLgoKWW91IGFyZSByaWdodC4KCj4gCj4gQ2FuIHlv
dSBnaXZlIGFuIGV4ZW1wbGUgb2YgYSBzaXR1YXRpb24gd2hpY2ggY291bGQgdHJpZ2dlciB0aGUg
d2FybmluZyA/CgpJIHdhcyBtaXN0YWtlbi4gV2UgZG9udCBuZWVkIHRob3NlIGNoZWNrcyBmb3Ig
bm93LCBoZW5jZSB3aWxsIGRyb3AgdGhlbSBuZXh0IHRpbWUuCgo+IAo+IENocmlzdG9waGUKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
