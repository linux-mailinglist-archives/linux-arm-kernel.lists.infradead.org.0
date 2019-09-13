Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A53B18B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yfjrEdg3WbaZBLZ32bZKWlnOm+lewwEIVqoY/gK+XxU=; b=nL80arHt/n6BBWcg+N+0T7aeg
	Owyp9/7WQ0XI16XMev0KteA77RkE1bmT1DRDatN5vJ6/5VNXhA9ytsN6PnvLUCu2iri/0XaHCL0/c
	XMWJpXuRgX52XpAKbTszhh2FYBLiJ/+ZNXkxKeXTEtnBK8AWJjaCtvBwSxT0iuqcWaThGehNAw2xc
	ku7ojF4Gr4+kJlYJy6o00EYWVe30rq5AAuG3oABAl30ix8EuP/DfZVi04uyxhyuUhD6EyBF6i2qWd
	JGUNc4TZYR0BA60v5GiEClLBXfDYUgZHnGSCYswfVVEUup5MKVCmzrCHSm2Bj8nTHzzvZzeNuoy+p
	WtBafslew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8flR-0002m0-JW; Fri, 13 Sep 2019 07:13:06 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8fkK-0002j4-30; Fri, 13 Sep 2019 07:12:00 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46V6JR5Tvtz9tx5P;
 Fri, 13 Sep 2019 09:11:51 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=UJ7cXfv+; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id bnDgViFqh-wM; Fri, 13 Sep 2019 09:11:51 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46V6JR2lDWz9tx4q;
 Fri, 13 Sep 2019 09:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568358711; bh=SKMq9rsjiToR1XeaTtZaZt/ZVEVZP1tQeQ1xFEfo9qg=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=UJ7cXfv+eBfnhyPf3nZi2bp8LPd3ec5emLPKdnxbi++UttiefE18hXhlgFdX8hS4M
 Qb+y4OdLyxrGYBNBbE0rg59w7Fq7U4kvfShMqiAfaExqQhGKEoc8XoASSbxk/5LWUJ
 AnnZQSsx92tpe/Y9wcUDVAMlSabwRdE/QheT7Q2I=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 503638B966;
 Fri, 13 Sep 2019 09:11:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id erem9Jv6ULxz; Fri, 13 Sep 2019 09:11:52 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 912508B958;
 Fri, 13 Sep 2019 09:11:51 +0200 (CEST)
Subject: Re: [PATCH] mm/pgtable/debug: Fix test validating architecture page
 table helpers
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1892b37d1fd9a4ed39e76c4b999b6556077201c0.1568355752.git.christophe.leroy@c-s.fr>
 <527dd29d-45fa-4d83-1899-6cbf268dd749@arm.com>
 <e2b42446-7f91-83f1-ac12-08dff75c4d35@c-s.fr>
Message-ID: <cb226b56-ff20-3136-7ffb-890657e56870@c-s.fr>
Date: Fri, 13 Sep 2019 09:11:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e2b42446-7f91-83f1-ac12-08dff75c4d35@c-s.fr>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_001157_109358_C1B63EB9 
X-CRM114-Status: GOOD (  16.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
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

CgpMZSAxMy8wOS8yMDE5IMOgIDA5OjAzLCBDaHJpc3RvcGhlIExlcm95IGEgw6ljcml0wqA6Cj4g
Cj4gCj4gTGUgMTMvMDkvMjAxOSDDoCAwODo1OCwgQW5zaHVtYW4gS2hhbmR1YWwgYSDDqWNyaXTC
oDoKPj4gT24gMDkvMTMvMjAxOSAxMTo1MyBBTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPj4+
IEZpeCBidWlsZCBmYWlsdXJlIG9uIHBvd2VycGMuCj4+Pgo+Pj4gRml4IHByZWVtcHRpb24gaW1i
YWxhbmNlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9w
aGUubGVyb3lAYy1zLmZyPgo+Pj4gLS0tCj4+PiDCoCBtbS9hcmNoX3BndGFibGVfdGVzdC5jIHwg
MyArKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYyBiL21tL2FyY2hfcGd0YWJsZV90ZXN0LmMK
Pj4+IGluZGV4IDhiNGE5Mjc1NmFkOC4uZjJiM2M5ZWMzNWZhIDEwMDY0NAo+Pj4gLS0tIGEvbW0v
YXJjaF9wZ3RhYmxlX3Rlc3QuYwo+Pj4gKysrIGIvbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYwo+Pj4g
QEAgLTI0LDYgKzI0LDcgQEAKPj4+IMKgICNpbmNsdWRlIDxsaW51eC9zd2FwLmg+Cj4+PiDCoCAj
aW5jbHVkZSA8bGludXgvc3dhcG9wcy5oPgo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21t
Lmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L2hpZ2htZW0uaD4KPj4KPj4gVGhpcyBpcyBva2F5Lgo+
Pgo+Pj4gwqAgI2luY2x1ZGUgPGFzbS9wZ2FsbG9jLmg+Cj4+PiDCoCAjaW5jbHVkZSA8YXNtL3Bn
dGFibGUuaD4KPj4+IEBAIC00MDAsNiArNDAxLDggQEAgc3RhdGljIGludCBfX2luaXQgYXJjaF9w
Z3RhYmxlX3Rlc3RzX2luaXQodm9pZCkKPj4+IMKgwqDCoMKgwqAgcDRkX2NsZWFyX3Rlc3RzKHA0
ZHApOwo+Pj4gwqDCoMKgwqDCoCBwZ2RfY2xlYXJfdGVzdHMobW0sIHBnZHApOwo+Pj4gK8KgwqDC
oCBwdGVfdW5tYXAocHRlcCk7Cj4+PiArCj4+Cj4+IE5vdyB0aGUgcHJlZW1wdGlvbiBpbWJhbGFu
Y2UgdmlhIHB0ZV9hbGxvY19tYXAoKSBwYXRoIGkuZQo+Pgo+PiBwdGVfYWxsb2NfbWFwKCkgLT4g
cHRlX29mZnNldF9tYXAoKSAtPiBrbWFwX2F0b21pYygpCj4+Cj4+IElzIG5vdCB0aGlzIHZlcnkg
bXVjaCBwb3dlcnBjIDMyIHNwZWNpZmljIG9yIHRoaXMgd2lsbCBiZSBhcHBsaWNhYmxlCj4+IGZv
ciBhbGwgcGxhdGZvcm0gd2hpY2ggdXNlcyBrbWFwX1hYWCgpIHRvIG1hcCBoaWdoIG1lbW9yeSA/
Cj4+Cj4gCj4gU2VlIAo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjMtcmM4
L3NvdXJjZS9pbmNsdWRlL2xpbnV4L2hpZ2htZW0uaCNMOTEgCj4gCj4gCj4gSSB0aGluayBpdCBh
cHBsaWVzIGF0IGxlYXN0IHRvIGFsbCBhcmNoZXMgdXNpbmcgdGhlIGdlbmVyaWMgaW1wbGVtZW50
YXRpb24uCj4gCj4gQXBwbGllcyBhbHNvIHRvIGFybToKPiBodHRwczovL2VsaXhpci5ib290bGlu
LmNvbS9saW51eC92NS4zLXJjOC9zb3VyY2UvYXJjaC9hcm0vbW0vaGlnaG1lbS5jI0w1Mgo+IAo+
IEFwcGxpZXMgYWxzbyB0byBtaXBzOgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y1LjMtcmM4L3NvdXJjZS9hcmNoL21pcHMvbW0vaGlnaG1lbS5jI0w0Nwo+IAo+IFNhbWUgb24g
c3BhcmM6Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgvc291cmNl
L2FyY2gvc3BhcmMvbW0vaGlnaG1lbS5jI0w1MiAKPiAKPiAKPiBTYW1lIG9uIHg4NjoKPiBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4zLXJjOC9zb3VyY2UvYXJjaC94ODYvbW0v
aGlnaG1lbV8zMi5jI0wzNCAKPiAKPiAKPiBJIGhhdmUgbm90IGNoZWNrZWQgb3RoZXJzLCBidXQg
SSBndWVzcyBpdCBpcyBsaWtlIHRoYXQgZm9yIGFsbC4KPiAKCgpTZWVtcyBsaWtlIEkgYW5zd2Vy
ZWQgdG9vIHF1aWNrbHkuIEFsbCBrbWFwX2F0b21pYygpIGRvIApwcmVlbXB0X2Rpc2FibGUoKSwg
YnV0IG5vdCBhbGwgcHRlX2FsbG9jX21hcCgpIGNhbGwga21hcF9hdG9taWMoKS4KCkhvd2V2ZXIs
IGZvciBpbnN0YW5jZSBBUk0gZG9lczoKCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y1LjMtcmM4L3NvdXJjZS9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgjTDIwMAoKQW5k
IFg4NiBhcyB3ZWxsOgoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgv
c291cmNlL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfMzIuaCNMNTEKCk1pY3JvYmxhemUg
YWxzbzoKCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjMtcmM4L3NvdXJjZS9h
cmNoL21pY3JvYmxhemUvaW5jbHVkZS9hc20vcGd0YWJsZS5oI0w0OTUKCkNocmlzdG9waGUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
