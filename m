Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8014B189C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bExnZu4MJHNuPrfimPj+rGc6OAs6Nc1VEBO6Gjw8n6Q=; b=nvLHkbddv2FsXaRSeogZi2UE7
	1ikFDq4YLRUcpxlAX3CqqCqc6jkzuf+EbEprSL+RKhDPjZWAdegzXiCdNDeF5qij3OJ9UrbIByLcr
	5siHo+2vydHv8DVlePs3r9L/tIJS57+vW+Y2BlF5KIFiboRJFF8A99IzbLMDeGw2kOoOkXADWv0ZM
	xLw7r8Lf5VBzsEkN7nEy0yllTVYCTiVwx6duwrMjm7z1OBiptSVCqt9OuFgRQr3ga4AaVYIUy3pJZ
	uNK+/10UZ3mnTROxstqFhr2EDVl+1ngKR+o/4UsO7Uoz6J5Ms+D3EF1f3eEJO20D17ERxTH6rYGkr
	XvsjoRMDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8feE-00079g-Q0; Fri, 13 Sep 2019 07:05:39 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8fcV-00079E-BX; Fri, 13 Sep 2019 07:03:53 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46V6776BP6z9vKH5;
 Fri, 13 Sep 2019 09:03:47 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Lo9C+SEB; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id zWniB8M1cFKh; Fri, 13 Sep 2019 09:03:47 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46V6774QYRz9vKH2;
 Fri, 13 Sep 2019 09:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568358227; bh=AyuxYMR1Yo8syZCcIPlzcrvbLyPmuxun2LLiIZt5UxY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Lo9C+SEBqaduXoGOyBorDnpf+8JwISLneOlSFGcgJJY8qlWGaZzsb4C7dcuadXTZC
 e5yGHtqWF6SrMhGyiQ0R4zx8DT4H4ASM+Fu1/D2UfL9R3Mf34r4ji6F/P+voIkRuzO
 LAG9Ma5mTL5t0idPrnoCF8zSRDucaQop7Q6UvTR4=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 80E098B963;
 Fri, 13 Sep 2019 09:03:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 9VHWBJ-wdCJw; Fri, 13 Sep 2019 09:03:48 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id EBB1B8B958;
 Fri, 13 Sep 2019 09:03:47 +0200 (CEST)
Subject: Re: [PATCH] mm/pgtable/debug: Fix test validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1892b37d1fd9a4ed39e76c4b999b6556077201c0.1568355752.git.christophe.leroy@c-s.fr>
 <527dd29d-45fa-4d83-1899-6cbf268dd749@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <e2b42446-7f91-83f1-ac12-08dff75c4d35@c-s.fr>
Date: Fri, 13 Sep 2019 09:03:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <527dd29d-45fa-4d83-1899-6cbf268dd749@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_000351_846631_720C0799 
X-CRM114-Status: GOOD (  15.97  )
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
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
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

CgpMZSAxMy8wOS8yMDE5IMOgIDA4OjU4LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IE9uIDA5LzEzLzIwMTkgMTE6NTMgQU0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+IEZpeCBi
dWlsZCBmYWlsdXJlIG9uIHBvd2VycGMuCj4+Cj4+IEZpeCBwcmVlbXB0aW9uIGltYmFsYW5jZS4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBj
LXMuZnI+Cj4+IC0tLQo+PiAgIG1tL2FyY2hfcGd0YWJsZV90ZXN0LmMgfCAzICsrKwo+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL21tL2FyY2hf
cGd0YWJsZV90ZXN0LmMgYi9tbS9hcmNoX3BndGFibGVfdGVzdC5jCj4+IGluZGV4IDhiNGE5Mjc1
NmFkOC4uZjJiM2M5ZWMzNWZhIDEwMDY0NAo+PiAtLS0gYS9tbS9hcmNoX3BndGFibGVfdGVzdC5j
Cj4+ICsrKyBiL21tL2FyY2hfcGd0YWJsZV90ZXN0LmMKPj4gQEAgLTI0LDYgKzI0LDcgQEAKPj4g
ICAjaW5jbHVkZSA8bGludXgvc3dhcC5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9zd2Fwb3BzLmg+
Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaGln
aG1lbS5oPgo+IAo+IFRoaXMgaXMgb2theS4KPiAKPj4gICAjaW5jbHVkZSA8YXNtL3BnYWxsb2Mu
aD4KPj4gICAjaW5jbHVkZSA8YXNtL3BndGFibGUuaD4KPj4gICAKPj4gQEAgLTQwMCw2ICs0MDEs
OCBAQCBzdGF0aWMgaW50IF9faW5pdCBhcmNoX3BndGFibGVfdGVzdHNfaW5pdCh2b2lkKQo+PiAg
IAlwNGRfY2xlYXJfdGVzdHMocDRkcCk7Cj4+ICAgCXBnZF9jbGVhcl90ZXN0cyhtbSwgcGdkcCk7
Cj4+ICAgCj4+ICsJcHRlX3VubWFwKHB0ZXApOwo+PiArCj4gCj4gTm93IHRoZSBwcmVlbXB0aW9u
IGltYmFsYW5jZSB2aWEgcHRlX2FsbG9jX21hcCgpIHBhdGggaS5lCj4gCj4gcHRlX2FsbG9jX21h
cCgpIC0+IHB0ZV9vZmZzZXRfbWFwKCkgLT4ga21hcF9hdG9taWMoKQo+IAo+IElzIG5vdCB0aGlz
IHZlcnkgbXVjaCBwb3dlcnBjIDMyIHNwZWNpZmljIG9yIHRoaXMgd2lsbCBiZSBhcHBsaWNhYmxl
Cj4gZm9yIGFsbCBwbGF0Zm9ybSB3aGljaCB1c2VzIGttYXBfWFhYKCkgdG8gbWFwIGhpZ2ggbWVt
b3J5ID8KPiAKClNlZSAKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzgv
c291cmNlL2luY2x1ZGUvbGludXgvaGlnaG1lbS5oI0w5MQoKSSB0aGluayBpdCBhcHBsaWVzIGF0
IGxlYXN0IHRvIGFsbCBhcmNoZXMgdXNpbmcgdGhlIGdlbmVyaWMgaW1wbGVtZW50YXRpb24uCgpB
cHBsaWVzIGFsc28gdG8gYXJtOgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4z
LXJjOC9zb3VyY2UvYXJjaC9hcm0vbW0vaGlnaG1lbS5jI0w1MgoKQXBwbGllcyBhbHNvIHRvIG1p
cHM6Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjMtcmM4L3NvdXJjZS9hcmNo
L21pcHMvbW0vaGlnaG1lbS5jI0w0NwoKU2FtZSBvbiBzcGFyYzoKaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjUuMy1yYzgvc291cmNlL2FyY2gvc3BhcmMvbW0vaGlnaG1lbS5jI0w1
MgoKU2FtZSBvbiB4ODY6Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjMtcmM4
L3NvdXJjZS9hcmNoL3g4Ni9tbS9oaWdobWVtXzMyLmMjTDM0CgpJIGhhdmUgbm90IGNoZWNrZWQg
b3RoZXJzLCBidXQgSSBndWVzcyBpdCBpcyBsaWtlIHRoYXQgZm9yIGFsbC4KCkNocmlzdG9waGUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
