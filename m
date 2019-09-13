Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49005B1B4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 12:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N1jEJ1+D0PMpmet8GzXi6qMqvOJ2nkFhyiCiQ1cf2ok=; b=Y6egEsDbnyk9UyYm8EFpi244+
	oaHIcUfeG7mCi94kvNZ2VOitixeFHHBepP7v0yMP6GCEphk+LZPrd9xQI7F4fzLPobIJy+QTLipAn
	7/Fbo7+RMMKVQowx/amNwHRoakUf+/QUWqIVt6rlgB1jv086v27E2quJ3e/Io5eQxubIs+/nV38vS
	Lao757CyXNm8uuozWmBVq8TR22MxDJjh0dJ+0zEkKsRmT82DtafT3RLcjL+9u4HI6tdEkgmlKoXRC
	cL/u3Sr3r5RTFlfCBDJEssHu8YALvvqmLFVayzejer6kKY9w6WnYfr3DuPucPWnvILJ+oS7W+cUiD
	6Ul6LhOuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8iOX-0005jW-Dj; Fri, 13 Sep 2019 10:01:37 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8iO5-0005i7-Rd; Fri, 13 Sep 2019 10:01:11 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46VB3f0pVyz9tyjW;
 Fri, 13 Sep 2019 12:01:02 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Sqj8nI8N; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id wR-kri8FtY2Q; Fri, 13 Sep 2019 12:01:02 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46VB3d6fTQz9tyjG;
 Fri, 13 Sep 2019 12:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568368861; bh=2ALza02n3A6CEg96aj5aMUr3JRGvxRxQLYEMFbFE/UU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Sqj8nI8NzbdvtlrbtrCYNcrM/TyIHT3s84kxgzLuc1bHrWIX3+Flnk1NoUeSpiScl
 UtPpympvmV9LviqGRUz/Z7JinvogKFhxB4Hnk01VKvvK3cYgxdyYZdocRhBX7zGS2q
 RYCcqoehg9GVxm+zOPGaVX3kpe6owDPMAy/ACXJk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id F0DC88B982;
 Fri, 13 Sep 2019 12:01:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id fVVtef9u6zrS; Fri, 13 Sep 2019 12:01:02 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 95ADA8B958;
 Fri, 13 Sep 2019 12:01:02 +0200 (CEST)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
 <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <95ed9d92-dd43-4c45-2e52-738aed7f2fb5@c-s.fr>
Date: Fri, 13 Sep 2019 12:01:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_030110_200667_4C21D912 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

CgpMZSAxMy8wOS8yMDE5IMOgIDExOjAyLCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+Pj4gKyNpZiAhZGVmaW5lZChfX1BBR0VUQUJMRV9QTURfRk9MREVEKSAmJiAhZGVmaW5lZChf
X0FSQ0hfSEFTXzRMRVZFTF9IQUNLKQo+Pgo+PiAjaWZkZWZzIGhhdmUgdG8gYmUgYXZvaWRlZCBh
cyBtdWNoIGFzIHBvc3NpYmxlLCBzZWUgYmVsb3cKPiAKPiBZZWFoIGJ1dCBpdCBoYXMgYmVlbiBi
aXQgZGlmZmljdWx0IHRvIGF2b2lkIGFsbCB0aGVzZSAkaWZkZWYgYmVjYXVzZSBvZiB0aGUKPiBh
dmFpbGFiaWxpdHkgKG9yIGxhY2sgb2YgaXQpIGZvciBhbGwgdGhlc2UgcGd0YWJsZSBoZWxwZXJz
IGluIHZhcmlvdXMgY29uZmlnCj4gY29tYmluYXRpb25zIG9uIGFsbCBwbGF0Zm9ybXMuCgpBcyBm
YXIgYXMgSSBjYW4gc2VlIHRoZXNlIHBndGFibGUgaGVscGVycyBzaG91bGQgZXhpc3QgZXZlcnl3
aGVyZSBhdCAKbGVhc3QgdmlhIGFzbS1nZW5lcmljLyBmaWxlcy4KCkNhbiB5b3Ugc3BvdCBhIHBh
cnRpY3VsYXIgY29uZmlnIHdoaWNoIGZhaWxzID8KCj4gCj4+CgpbLi4uXQoKPj4+ICsjaWYgIWRl
ZmluZWQoX19QQUdFVEFCTEVfUFVEX0ZPTERFRCkgJiYgIWRlZmluZWQoX19BUkNIX0hBU181TEVW
RUxfSEFDSykKPj4KPj4gVGhlIHNhbWUgY2FuIGJlIGRvbmUgaGVyZS4KPiAKPiBJSVJDIG5vdCBv
bmx5IHRoZSBwYWdlIHRhYmxlIGhlbHBlcnMgYnV0IHRoZXJlIGFyZSBkYXRhIHR5cGVzIChweHhf
dCkgd2hpY2gKPiB3ZXJlIG5vdCBwcmVzZW50IG9uIHZhcmlvdXMgY29uZmlncyBhbmQgdGhlc2Ug
d3JhcHBlcnMgaGVscCBwcmV2ZW50IGJ1aWxkCj4gZmFpbHVyZXMuIEFueSB3YXlzIHdpbGwgdHJ5
IGFuZCBzZWUgaWYgdGhpcyBjYW4gYmUgaW1wcm92ZWQgZnVydGhlci4gQnV0Cj4gbWVhbndoaWxl
IGlmIHlvdSBoYXZlIHNvbWUgc3VnZ2VzdGlvbnMsIHBsZWFzZSBkbyBsZXQgbWUga25vdy4KCnBn
dF90IGFuZCBwbWRfdCBhcmUgZXZlcnl3aGVyZSBJIGd1ZXNzLgp0aGVuIHB1ZF90IGFuZCBwNGRf
dCBoYXZlIGZhbGxiYWNrcyBpbiBhc20tZ2VuZXJpYyBmaWxlcy4KClNvIGl0IHNob3VsZG4ndCBi
ZSBhbiBpc3N1ZS4gTWF5YmUgaWYgYSBjb3VwbGUgb2YgYXJjaGVzIG1pc3MgdGhlbSwgdGhlIApi
ZXN0IHdvdWxkIGJlIHRvIGZpeCB0aGUgYXJjaGVzLCBzaW5jZSB0aGF0J3MgdGhlIHB1cnBvc2Ug
b2YgeW91ciAKdGVzdHN1aXRlIGlzbid0IGl0ID8KCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
