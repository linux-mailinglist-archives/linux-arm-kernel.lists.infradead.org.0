Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D73B6806
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nWISK6Y4REZgK/nmn0Q/pZlWeN0BxBnHYshtXs/1tNk=; b=gebkRQ6I0GxUM9HAIICJuNcLz
	OdRfiOojc/aApmH8UZJJ1cm4FyDNo1OHBXtybpL5gKGnwqxJ0rNJ+nCqDfJWNUjgazbiAv0Vkx3dO
	8YFcZTMe/kWaDzLarNuEFS+jGpleyY5MUr9a796MHq6iUMDkh4hRPvUm9iEHwp9cGAVp8FbO6MEvt
	afm/JlezWJbUgSalOLN5KPjDm5itsHC/OG6O0iJD9QSKekXDVgzO9MkWoRznn1KSPawxJnAHcN8OE
	mecyJI6o0tSqc0vqVjj+QI3MGHIqGmnn3SLvFzR/Rmid2cKz61sb85cfqrnhS4DkRtW5d7EhdEEe7
	WqgHtklCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcmm-0000Wn-BE; Wed, 18 Sep 2019 16:26:32 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcmW-0000VQ-Qb; Wed, 18 Sep 2019 16:26:18 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46YQMh22Z3z9v1BX;
 Wed, 18 Sep 2019 18:26:08 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=pyjpbDaw; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 9Y0Ay24P9bpW; Wed, 18 Sep 2019 18:26:08 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46YQMh0fTtz9v1BW;
 Wed, 18 Sep 2019 18:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568823968; bh=UgJ2Vcem+ArVILPonqQdgD2fYngRPmGDyA7SB2VX37Y=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pyjpbDawotebglj/v7nzS+SZ56zwKmvl8UJSMakTVDe9dCV/6GjdddMgM+KIG8OC1
 kUNBRNCHr1KKmqumixwnPv1WdKVo4bZRwpWAfR0t7CPiiV7bBbJcoAYH63FALSqftC
 hwtslTTRJYeOY7/1Aq03nzD37Ir1v6MuTgWj7N0c=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8FA068B93C;
 Wed, 18 Sep 2019 18:26:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id WQXgO4akDWdq; Wed, 18 Sep 2019 18:26:09 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id F41388B937;
 Wed, 18 Sep 2019 18:26:03 +0200 (CEST)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
 <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
 <95ed9d92-dd43-4c45-2e52-738aed7f2fb5@c-s.fr>
 <f872e6f4-a5cb-069d-2034-78961930cb9f@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <64504101-d9dd-f273-02f9-e9a8b178eecc@c-s.fr>
Date: Wed, 18 Sep 2019 18:26:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f872e6f4-a5cb-069d-2034-78961930cb9f@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_092617_165174_77A17B54 
X-CRM114-Status: GOOD (  25.24  )
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

CgpMZSAxOC8wOS8yMDE5IMOgIDA3OjA0LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDA5LzEzLzIwMTkgMDM6MzEgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Cj4+Cj4+IExlIDEzLzA5LzIwMTkgw6AgMTE6MDIsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0
wqA6Cj4+Pgo+Pj4+PiArI2lmICFkZWZpbmVkKF9fUEFHRVRBQkxFX1BNRF9GT0xERUQpICYmICFk
ZWZpbmVkKF9fQVJDSF9IQVNfNExFVkVMX0hBQ0spCj4+Pj4KPj4+PiAjaWZkZWZzIGhhdmUgdG8g
YmUgYXZvaWRlZCBhcyBtdWNoIGFzIHBvc3NpYmxlLCBzZWUgYmVsb3cKPj4+Cj4+PiBZZWFoIGJ1
dCBpdCBoYXMgYmVlbiBiaXQgZGlmZmljdWx0IHRvIGF2b2lkIGFsbCB0aGVzZSAkaWZkZWYgYmVj
YXVzZSBvZiB0aGUKPj4+IGF2YWlsYWJpbGl0eSAob3IgbGFjayBvZiBpdCkgZm9yIGFsbCB0aGVz
ZSBwZ3RhYmxlIGhlbHBlcnMgaW4gdmFyaW91cyBjb25maWcKPj4+IGNvbWJpbmF0aW9ucyBvbiBh
bGwgcGxhdGZvcm1zLgo+Pgo+PiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoZXNlIHBndGFibGUgaGVs
cGVycyBzaG91bGQgZXhpc3QgZXZlcnl3aGVyZSBhdCBsZWFzdCB2aWEgYXNtLWdlbmVyaWMvIGZp
bGVzLgo+IAo+IEJ1dCB0aGV5IG1pZ2h0IG5vdCBhY3R1YWxseSBkbyB0aGUgcmlnaHQgdGhpbmcu
Cj4gCj4+Cj4+IENhbiB5b3Ugc3BvdCBhIHBhcnRpY3VsYXIgY29uZmlnIHdoaWNoIGZhaWxzID8K
PiAKPiBMZXRzIGNvbnNpZGVyIHRoZSBmb2xsb3dpbmcgZXhhbXBsZSAoYWZ0ZXIgcmVtb3Zpbmcg
dGhlICRpZmRlZnMgYXJvdW5kIGl0KQo+IHdoaWNoIHRob3VnaCBidWlsZHMgc3VjY2Vzc2Z1bGx5
IGJ1dCBmYWlscyB0byBwYXNzIHRoZSBpbnRlbmRlZCB0ZXN0LiBUaGlzCj4gaXMgd2l0aCBhcm02
NCBjb25maWcgNEsgcGFnZXMgc2l6ZXMgd2l0aCAzOSBiaXRzIFZBIHNwYWNlIHdoaWNoIGVuZHMg
dXAKPiB3aXRoIGEgMyBsZXZlbCBwYWdlIHRhYmxlIGFycmFuZ2VtZW50Lgo+IAo+IHN0YXRpYyB2
b2lkIF9faW5pdCBwNGRfY2xlYXJfdGVzdHMocDRkX3QgKnA0ZHApCj4gewo+ICAgICAgICAgIHA0
ZF90IHA0ZCA9IFJFQURfT05DRSgqcDRkcCk7CgpNeSBzdWdnZXN0aW9uIHdhcyBub3QgdG8gY29t
cGxldGVseSBkcm9wIHRoZSAjaWZkZWYgYnV0IHRvIGRvIGxpa2UgeW91IApkaWQgaW4gcGdkX2Ns
ZWFyX3Rlc3RzKCkgZm9yIGluc3RhbmNlLCBpZSB0byBhZGQgdGhlIGZvbGxvd2luZyB0ZXN0IG9u
IAp0b3Agb2YgdGhlIGZ1bmN0aW9uOgoKCWlmIChtbV9wdWRfZm9sZGVkKG1tKSB8fCBpc19kZWZp
bmVkKF9fQVJDSF9IQVNfNUxFVkVMX0hBQ0spKQoJCXJldHVybjsKCj4gCj4gICAgICAgICAgcDRk
ID0gX19wNGQocDRkX3ZhbChwNGQpIHwgUkFORE9NX09SVkFMVUUpOwo+ICAgICAgICAgIFdSSVRF
X09OQ0UoKnA0ZHAsIHA0ZCk7Cj4gICAgICAgICAgcDRkX2NsZWFyKHA0ZHApOwo+ICAgICAgICAg
IHA0ZCA9IFJFQURfT05DRSgqcDRkcCk7Cj4gICAgICAgICAgV0FSTl9PTighcDRkX25vbmUocDRk
KSk7Cj4gfQo+IAo+IFRoZSBmb2xsb3dpbmcgdGVzdCBoaXRzIGFuIGVycm9yIGF0IFdBUk5fT04o
IXA0ZF9ub25lKHA0ZCkpCj4gCj4gWyAgIDE2Ljc1NzMzM10gLS0tLS0tLS0tLS0tWyBjdXQgaGVy
ZSBdLS0tLS0tLS0tLS0tCj4gWyAgIDE2Ljc1ODAxOV0gV0FSTklORzogQ1BVOiAxMSBQSUQ6IDEg
YXQgbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYzoxODcgYXJjaF9wZ3RhYmxlX3Rlc3RzX2luaXQrMHgy
NGMvMHg0NzQKPiBbICAgMTYuNzU5NDU1XSBNb2R1bGVzIGxpbmtlZCBpbjoKPiBbICAgMTYuNzU5
OTUyXSBDUFU6IDExIFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNS4zLjAtbmV4
dC0yMDE5MDkxNi0wMDAwNS1nNjFjMjE4MTUzYmI4LWRpcnR5ICMyMjIKPiBbICAgMTYuNzYxNDQ5
XSBIYXJkd2FyZSBuYW1lOiBsaW51eCxkdW1teS12aXJ0IChEVCkKPiBbICAgMTYuNzYyMTg1XSBw
c3RhdGU6IDAwNDAwMDA1IChuemN2IGRhaWYgK1BBTiAtVUFPKQo+IFsgICAxNi43NjI5NjRdIHBj
IDogYXJjaF9wZ3RhYmxlX3Rlc3RzX2luaXQrMHgyNGMvMHg0NzQKPiBbICAgMTYuNzYzNzUwXSBs
ciA6IGFyY2hfcGd0YWJsZV90ZXN0c19pbml0KzB4MTc0LzB4NDc0Cj4gWyAgIDE2Ljc2NDUzNF0g
c3AgOiBmZmZmZmZjMDExZDdiZDUwCj4gWyAgIDE2Ljc2NTA2NV0geDI5OiBmZmZmZmZjMDExZDdi
ZDUwIHgyODogZmZmZmZmZmYxNzU2YmFjMAo+IFsgICAxNi43NjU5MDhdIHgyNzogZmZmZmZmODVk
ZGFmMzAwMCB4MjY6IDAwMDAwMDAwMDAwMDAyZTgKPiBbICAgMTYuNzY2NzY3XSB4MjU6IGZmZmZm
ZmMwMTExY2UwMDAgeDI0OiBmZmZmZmY4NWRkYWYzMmU4Cj4gWyAgIDE2Ljc2NzYwNl0geDIzOiBm
ZmZmZmY4NWRkYWVmMjc4IHgyMjogMDAwMDAwNDVjYzg0NDAwMAo+IFsgICAxNi43Njg0NDVdIHgy
MTogMDAwMDAwMDY1ZGFlZjAwMyB4MjA6IGZmZmZmZmZmMTc1NDAwMDAKPiBbICAgMTYuNzY5Mjgz
XSB4MTk6IGZmZmZmZjg1ZGRiNjAwMDAgeDE4OiAwMDAwMDAwMDAwMDAwMDE0Cj4gWyAgIDE2Ljc3
MDEyMl0geDE3OiAwMDAwMDAwMDk4MDQyNmJiIHgxNjogMDAwMDAwMDA2OTg1OTRjNgo+IFsgICAx
Ni43NzA5NzZdIHgxNTogMDAwMDAwMDA2NmUyNWE4OCB4MTQ6IDAwMDAwMDAwMDAwMDAwMDAKPiBb
ICAgMTYuNzcxODEzXSB4MTM6IGZmZmZmZmZmMTc1NDAwMDAgeDEyOiAwMDAwMDAwMDAwMDAwMDBh
Cj4gWyAgIDE2Ljc3MjY1MV0geDExOiBmZmZmZmY4NWZjZmQwYTQwIHgxMDogMDAwMDAwMDAwMDAw
MDAwMQo+IFsgICAxNi43NzM0ODhdIHg5IDogMDAwMDAwMDAwMDAwMDAwOCB4OCA6IGZmZmZmZmMw
MTE0M2FiMjYKPiBbICAgMTYuNzc0MzM2XSB4NyA6IDAwMDAwMDAwMDAwMDAwMDAgeDYgOiAwMDAw
MDAwMDAwMDAwMDAwCj4gWyAgIDE2Ljc3NTE4MF0geDUgOiAwMDAwMDAwMDAwMDAwMDAwIHg0IDog
MDAwMDAwMDAwMDAwMDAwMAo+IFsgICAxNi43NzYwMThdIHgzIDogZmZmZmZmZmYxNzU2YmJlOCB4
MiA6IDAwMDAwMDA2NWRhZWIwMDMKPiBbICAgMTYuNzc2ODU2XSB4MSA6IDAwMDAwMDAwMDA2NWRh
ZWIgeDAgOiBmZmZmZmZmZmZmZmZmMDAwCj4gWyAgIDE2Ljc3NzY5M10gQ2FsbCB0cmFjZToKPiBb
ICAgMTYuNzc4MDkyXSAgYXJjaF9wZ3RhYmxlX3Rlc3RzX2luaXQrMHgyNGMvMHg0NzQKPiBbICAg
MTYuNzc4ODQzXSAgZG9fb25lX2luaXRjYWxsKzB4NzQvMHgxYjAKPiBbICAgMTYuNzc5NDU4XSAg
a2VybmVsX2luaXRfZnJlZWFibGUrMHgxY2MvMHgyOTAKPiBbICAgMTYuNzgwMTUxXSAga2VybmVs
X2luaXQrMHgxMC8weDEwMAo+IFsgICAxNi43ODA3MTBdICByZXRfZnJvbV9mb3JrKzB4MTAvMHgx
OAo+IFsgICAxNi43ODEyODJdIC0tLVsgZW5kIHRyYWNlIDA0MmU2YzQwYzBhM2IwMzggXS0tLQo+
IAo+IE9uIGFybTY0ICg0SyBwYWdlIHNpemV8MzkgYml0cyBWQXwzIGxldmVsIHBhZ2UgdGFibGUp
Cj4gCj4gI2VsaWYgQ09ORklHX1BHVEFCTEVfTEVWRUxTID09IDMJLyogQXBwbGljYWJsZSBoZXJl
ICovCj4gI2RlZmluZSBfX0FSQ0hfVVNFXzVMRVZFTF9IQUNLCj4gI2luY2x1ZGUgPGFzbS1nZW5l
cmljL3BndGFibGUtbm9wdWQuaD4KPiAKPiBXaGljaCBwdWxscyBpbgo+IAo+ICNpbmNsdWRlIDxh
c20tZ2VuZXJpYy9wZ3RhYmxlLW5vcDRkLWhhY2suaD4KPiAKPiB3aGljaCBwdWxscyBpbgo+IAo+
ICNpbmNsdWRlIDxhc20tZ2VuZXJpYy81bGV2ZWwtZml4dXAuaD4KPiAKPiB3aGljaCBkZWZpbmVz
Cj4gCj4gc3RhdGljIGlubGluZSBpbnQgcDRkX25vbmUocDRkX3QgcDRkKQo+IHsKPiAgICAgICAg
ICByZXR1cm4gMDsKPiB9Cj4gCj4gd2hpY2ggd2lsbCBpbnZhcmlhYmx5IHRyaWdnZXIgV0FSTl9P
TighcDRkX25vbmUocDRkKSkuCj4gCj4gU2ltaWxhcmx5IGZvciBuZXh0IHRlc3QgcDRkX3BvcHVs
YXRlX3Rlc3RzKCkgd2hpY2ggd2lsbCBhbHdheXMgYmUKPiBzdWNjZXNzZnVsIGJlY2F1c2UgcDRk
X2JhZCgpIGludmFyaWFibHkgcmV0dXJucyBuZWdhdGl2ZS4KPiAKPiBzdGF0aWMgaW5saW5lIGlu
dCBwNGRfYmFkKHA0ZF90IHA0ZCkKPiB7Cj4gICAgICAgICAgcmV0dXJuIDA7Cj4gfQo+IAo+IHN0
YXRpYyB2b2lkIF9faW5pdCBwNGRfcG9wdWxhdGVfdGVzdHMoc3RydWN0IG1tX3N0cnVjdCAqbW0s
IHA0ZF90ICpwNGRwLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHB1
ZF90ICpwdWRwKQo+IHsKPiAgICAgICAgICBwNGRfdCBwNGQ7Cj4gCj4gICAgICAgICAgLyoKPiAg
ICAgICAgICAgKiBUaGlzIGVudHJ5IHBvaW50cyB0byBuZXh0IGxldmVsIHBhZ2UgdGFibGUgcGFn
ZS4KPiAgICAgICAgICAgKiBIZW5jZSB0aGlzIG11c3Qgbm90IHF1YWxpZnkgYXMgcDRkX2JhZCgp
Lgo+ICAgICAgICAgICAqLwo+ICAgICAgICAgIHB1ZF9jbGVhcihwdWRwKTsKPiAgICAgICAgICBw
NGRfY2xlYXIocDRkcCk7Cj4gICAgICAgICAgcDRkX3BvcHVsYXRlKG1tLCBwNGRwLCBwdWRwKTsK
PiAgICAgICAgICBwNGQgPSBSRUFEX09OQ0UoKnA0ZHApOwo+ICAgICAgICAgIFdBUk5fT04ocDRk
X2JhZChwNGQpKTsKPiB9Cj4gCj4gV2Ugc2hvdWxkIG5vdCBydW4gdGhlc2UgdGVzdHMgZm9yIHRo
ZSBhYm92ZSBjb25maWcgYmVjYXVzZSB0aGV5IGFyZQo+IG5vdCBhcHBsaWNhYmxlIGFuZCB3aWxs
IGludmFyaWFibHkgcHJvZHVjZSBzYW1lIHJlc3VsdC4KPiAKPj4KPj4+Cj4+Pj4KPj4KPj4gWy4u
Ll0KPj4KPj4+Pj4gKyNpZiAhZGVmaW5lZChfX1BBR0VUQUJMRV9QVURfRk9MREVEKSAmJiAhZGVm
aW5lZChfX0FSQ0hfSEFTXzVMRVZFTF9IQUNLKQo+Pj4+Cj4+Pj4gVGhlIHNhbWUgY2FuIGJlIGRv
bmUgaGVyZS4KPj4+Cj4+PiBJSVJDIG5vdCBvbmx5IHRoZSBwYWdlIHRhYmxlIGhlbHBlcnMgYnV0
IHRoZXJlIGFyZSBkYXRhIHR5cGVzIChweHhfdCkgd2hpY2gKPj4+IHdlcmUgbm90IHByZXNlbnQg
b24gdmFyaW91cyBjb25maWdzIGFuZCB0aGVzZSB3cmFwcGVycyBoZWxwIHByZXZlbnQgYnVpbGQK
Pj4+IGZhaWx1cmVzLiBBbnkgd2F5cyB3aWxsIHRyeSBhbmQgc2VlIGlmIHRoaXMgY2FuIGJlIGlt
cHJvdmVkIGZ1cnRoZXIuIEJ1dAo+Pj4gbWVhbndoaWxlIGlmIHlvdSBoYXZlIHNvbWUgc3VnZ2Vz
dGlvbnMsIHBsZWFzZSBkbyBsZXQgbWUga25vdy4KPj4KPj4gcGd0X3QgYW5kIHBtZF90IGFyZSBl
dmVyeXdoZXJlIEkgZ3Vlc3MuCj4+IHRoZW4gcHVkX3QgYW5kIHA0ZF90IGhhdmUgZmFsbGJhY2tz
IGluIGFzbS1nZW5lcmljIGZpbGVzLgo+IAo+IExldHMgdGFrZSBhbm90aGVyIGV4YW1wbGUgd2hl
cmUgaXQgZmFpbHMgdG8gY29tcGlsZS4gT24gYXJtNjQgd2l0aCAxNksKPiBwYWdlIHNpemUsIDQ4
IGJpdHMgVkEsIDQgbGV2ZWwgcGFnZSB0YWJsZSBhcnJhbmdlbWVudCBpbiB0aGUgZm9sbG93aW5n
Cj4gdGVzdCwgcGdkX3BvcHVsYXRlKCkgZG9lcyBub3QgaGF2ZSB0aGUgcmVxdWlyZWQgc2lnbmF0
dXJlLgo+IAo+IHN0YXRpYyB2b2lkIHBnZF9wb3B1bGF0ZV90ZXN0cyhzdHJ1Y3QgbW1fc3RydWN0
ICptbSwgcGdkX3QgKnBnZHAsIHA0ZF90ICpwNGRwKQo+IHsKPiAgICAgICAgICBwZ2RfdCBwZ2Q7
Cj4gCj4gICAgICAgICAgaWYgKG1tX3A0ZF9mb2xkZWQobW0pKQo+ICAgICAgICAgICAgICAgICAg
cmV0dXJuOwo+IAo+ICAgICAgICAgLyoKPiAgICAgICAgICAgKiBUaGlzIGVudHJ5IHBvaW50cyB0
byBuZXh0IGxldmVsIHBhZ2UgdGFibGUgcGFnZS4KPiAgICAgICAgICAgKiBIZW5jZSB0aGlzIG11
c3Qgbm90IHF1YWxpZnkgYXMgcGdkX2JhZCgpLgo+ICAgICAgICAgICAqLwo+ICAgICAgICAgIHA0
ZF9jbGVhcihwNGRwKTsKPiAgICAgICAgICBwZ2RfY2xlYXIocGdkcCk7Cj4gICAgICAgICAgcGdk
X3BvcHVsYXRlKG1tLCBwZ2RwLCBwNGRwKTsKPiAgICAgICAgICBwZ2QgPSBSRUFEX09OQ0UoKnBn
ZHApOwo+ICAgICAgICAgIFdBUk5fT04ocGdkX2JhZChwZ2QpKTsKPiB9Cj4gCj4gbW0vYXJjaF9w
Z3RhYmxlX3Rlc3QuYzogSW4gZnVuY3Rpb24g4oCYcGdkX3BvcHVsYXRlX3Rlc3Rz4oCZOgo+IG1t
L2FyY2hfcGd0YWJsZV90ZXN0LmM6MjU0OjI1OiBlcnJvcjogcGFzc2luZyBhcmd1bWVudCAzIG9m
IOKAmHBnZF9wb3B1bGF0ZeKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XZXJy
b3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCj4gICAgcGdkX3BvcHVsYXRlKG1tLCBwZ2Rw
LCBwNGRwKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn4KPiBJbiBmaWxlIGluY2x1
ZGVkIGZyb20gbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYzoyNzowOgo+IC4vYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9wZ2FsbG9jLmg6ODE6MjA6IG5vdGU6IGV4cGVjdGVkIOKAmHB1ZF90ICoge2FrYSBz
dHJ1Y3QgPGFub255bW91cz4gKn3igJkgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg4oCYcGdkX3Qg
KiB7YWthIHN0cnVjdCA8YW5vbnltb3VzPiAqfeKAmQo+ICAgc3RhdGljIGlubGluZSB2b2lkIHBn
ZF9wb3B1bGF0ZShzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcGdkX3QgKnBnZHAsIHB1ZF90ICpwdWRw
KQo+IAo+IFRoZSBidWlsZCBmYWlsdXJlIGlzIGJlY2F1c2UgcDRkX3QgKiBtYXBzIHRvIHBnZF90
ICogYnV0IHRoZSBhcHBsaWNhYmxlCj4gKGl0IGRvZXMgbm90IGZhbGxiYWNrIG9uIGdlbmVyaWMg
b25lcykgcGdkX3BvcHVsYXRlKCkgZXhwZWN0cyBhIHB1ZF90ICouCj4gCj4gRXhjZXB0IGZvciBh
cmNocyB3aGljaCBoYXZlIDUgbGV2ZWwgcGFnZSBhYmxlLCBwZ2RfcG9wdWxhdGUoKSBhbHdheXMg
YWNjZXB0cwo+IGxvd2VyIGxldmVsIHBhZ2UgdGFibGUgcG9pbnRlcnMgYXMgdGhlIGxhc3QgYXJn
dW1lbnQgYXMgdGhleSBkb250IGhhdmUgdGhhdAo+IG1hbnkgbGV2ZWxzLgo+IAo+IGFyY2gveDg2
L2luY2x1ZGUvYXNtL3BnYWxsb2MuaDpzdGF0aWMgaW5saW5lIHZvaWQgcGdkX3BvcHVsYXRlKHN0
cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwZ2RfdCAqcGdkLCBwNGRfdCAqcDRkKQo+IGFyY2gvczM5MC9p
bmNsdWRlL2FzbS9wZ2FsbG9jLmg6c3RhdGljIGlubGluZSB2b2lkIHBnZF9wb3B1bGF0ZShzdHJ1
Y3QgbW1fc3RydWN0ICptbSwgcGdkX3QgKnBnZCwgcDRkX3QgKnA0ZCkKPiAKPiBCdXQgb3RoZXJz
Cj4gCj4gYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ2FsbG9jLmg6c3RhdGljIGlubGluZSB2b2lk
IHBnZF9wb3B1bGF0ZShzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcGdkX3QgKnBnZHAsIHB1ZF90ICpw
dWRwKQo+IGFyY2gvbTY4ay9pbmNsdWRlL2FzbS9tb3Rvcm9sYV9wZ2FsbG9jLmg6c3RhdGljIGlu
bGluZSB2b2lkIHBnZF9wb3B1bGF0ZShzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcGdkX3QgKnBnZCwg
cG1kX3QgKnBtZCkKPiBhcmNoL21pcHMvaW5jbHVkZS9hc20vcGdhbGxvYy5oOnN0YXRpYyBpbmxp
bmUgdm9pZCBwZ2RfcG9wdWxhdGUoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHBnZF90ICpwZ2QsIHB1
ZF90ICpwdWQpCj4gYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL2Jvb2szcy82NC9wZ2FsbG9jLmg6
c3RhdGljIGlubGluZSB2b2lkIHBnZF9wb3B1bGF0ZShzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcGdk
X3QgKnBnZCwgcHVkX3QgKnB1ZCkKPiAKPiBJIHJlbWVtYmVyIGdvaW5nIHRocm91Z2ggYWxsIHRo
ZXNlIGNvbWJpbmF0aW9ucyBiZWZvcmUgYXJyaXZpbmcgYXQgdGhlCj4gY3VycmVudCBzdGF0ZSBv
ZiAjaWZkZWYgZXhjbHVzaW9ucy4gUHJvYmFibHksIHRvIHNvbHZlZCB0aGlzIGFsbCBwbGF0Zm9y
bXMKPiBoYXZlIHRvIGRlZmluZSBweHhfcG9wdWxhdGUoKSBoZWxwZXJzIGFzc3VtaW5nIHRoZXkg
c3VwcG9ydCA1IGxldmVsIHBhZ2UKPiB0YWJsZS4KPiAKPj4KPj4gU28gaXQgc2hvdWxkbid0IGJl
IGFuIGlzc3VlLiBNYXliZSBpZiBhIGNvdXBsZSBvZiBhcmNoZXMgbWlzcyB0aGVtLCB0aGUgYmVz
dCB3b3VsZCBiZSB0byBmaXggdGhlIGFyY2hlcywgc2luY2UgdGhhdCdzIHRoZSBwdXJwb3NlIG9m
IHlvdXIgdGVzdHN1aXRlIGlzbid0IGl0ID8KPiAKPiBUaGUgcnVuIHRpbWUgZmFpbHVyZXMgYXMg
ZXhwbGFpbmVkIHByZXZpb3VzbHkgaXMgYmVjYXVzZSBvZiB0aGUgZm9sZGluZyB3aGljaAo+IG5l
ZWRzIHRvIGJlIHByb3RlY3RlZCBhcyB0aGV5IGFyZSBub3QgZXZlbiBhcHBsaWNhYmxlLiBUaGUg
Y29tcGlsZSB0aW1lCj4gZmFpbHVyZXMgYXJlIGJlY2F1c2UgcHh4X3BvcHVsYXRlKCkgc2lnbmF0
dXJlcyBhcmUgcGxhdGZvcm0gc3BlY2lmaWMgZGVwZW5kaW5nCj4gb24gaG93IG1hbnkgcGFnZSB0
YWJsZSBsZXZlbHMgdGhleSByZWFsbHkgc3VwcG9ydC4KPiAKClNvIElJVUMsIHRoZSBjb21waWxl
dGltZSBwcm9ibGVtIGlzIGFyb3VuZCBfX0FSQ0hfSEFTXzVMRVZFTF9IQUNLLiBGb3IgCmFsbCAj
aWYgIWRlZmluZWQoX19QQUdFVEFCTEVfUFhYX0ZPTERFRCksIHNvbWV0aGluZyBlcXVpdmFsZW50
IHRvIHRoZSAKZm9sbG93aW5nIHNob3VsZCBtYWtlIHRoZSB0cmljay4KCglpZiAobW1fcHh4X2Zv
bGRlZCgpKQoJCXJldHVybjsKCgpGb3IgdGhlIF9fQVJDSF9IQVNfNUxFVkVMX0hBQ0sgc3R1ZmYs
IEkgdGhpbmsgd2Ugc2hvdWxkIGJlIGFibGUgdG8gCnJlZ3JvdXAgYWxsIGltcGFjdGVkIGZ1bmN0
aW9ucyBpbnNpZGUgYSBzaW5nbGUgI2lmZGVmIApfX0FSQ0hfSEFTXzVMRVZFTF9IQUNLCgpDaHJp
c3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
