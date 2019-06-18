Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6148C4A02D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQjtR/QPRh/9sE0zBWyYW4spE9/1uodDnviW9UOciYA=; b=dpBeX+pDWFzIeK
	QPXZt4jwIQNi6jIeL6fnxhMwsVBJv6W6kFuC0h8gPfdAT2U3KADR4lf420l56G8OGtppbrtA+mveu
	ipGypcJMg43oCn/c7Nr6HYngevUTB5DV/1nLnLLUlmOW1j5Hg3b7hOcVIN9hQRYoDsVROfiu2mdWS
	1YH76jYOhy07S8XNKtIYvAt/gIGQKyxXvRf3qpr7Fv6TXTIeq3mUsX0SGnGuBPsSCu1ePjyQv8fnE
	M+Sy1ZV2aXAzz0h87SgyVW1GN53a0jw2CTSWOYcx/avsxVS68dBPNQhkq1jZIYxe7HKrB/s6axE6t
	PaGXFJJNIyCyG8482AsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCpa-0000jY-Cy; Tue, 18 Jun 2019 12:03:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCpR-0000ik-Eo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:03:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96F1A2B;
 Tue, 18 Jun 2019 05:03:06 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9E003F246;
 Tue, 18 Jun 2019 05:03:04 -0700 (PDT)
Date: Tue, 18 Jun 2019 13:02:59 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
Message-ID: <20190618120259.GA31041@fuggles.cambridge.arm.com>
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
 <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
 <20190617164553.GI30800@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617164553.GI30800@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050309_587298_0DE34516 
X-CRM114-Status: GOOD (  21.95  )
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
 Peter Maydell <peter.maydell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Ard,

On Mon, Jun 17, 2019 at 05:45:56PM +0100, Will Deacon wrote:
> On Mon, Jun 17, 2019 at 06:32:16PM +0200, Ard Biesheuvel wrote:
> > The problem is not about the types we're *exporting*. Genksyms just
> > gives up halfway through the file, as soon as it encounters something
> > it doesn't like, and any symbol that hasn't been encountered yet at
> > that point will not have a crc generated for it.
> 
> Hmm, but it appears to be either working or failing silently for me, which
> doesn't match what Arnd is seeing. I'd prefer to fix genksyms but I'm not
> happy touching it if I can't show it's broken to begin with. If I pass '-w'
> I see it barfing on all sorts of random stuff, for example the static_assert
> in include/linux/fs.h:
> 
> 	static_assert(offsetof(struct filename, iname) % sizeof(long) == 0);

Ok, I had some more fun with this today. First of all, we needed a new
.config, but also, the issue only appears with linux-next. With that
configuration, I can hit the issue.

What seems to occur is that when parsing:

	static __uint128_t arm64_cpu_to_le128(__uint128_t x)
	{
		u64 a = swab64(x);
		u64 b = swab64(x >> 64);

		return ((__uint128_t)a << 64) | b;
	}

in fpsimd.c, then genksyms doesn't treate __uint128_t as a type and
therefore fails to figure out that this is a function. Consequently, it
keeps trying (and failing) to parse until it sees the end of the current
expression. This happens when it hits:

	EXPORT_SYMBOL(kernel_neon_begin);

thanks to the semi-colon.

So one nasty bodge to fix this is:


diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index bb42cd04baec..693a978f41f9 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -368,6 +368,8 @@ static __uint128_t arm64_cpu_to_le128(__uint128_t x)
 }
 #endif
 
+short of_fixing_genksyms_we_must_use_this_hack;
+
 #define arm64_le128_to_cpu(x) arm64_cpu_to_le128(x)
 
 /*


but actually, I think I've managed to hack genksyms itself. Patch below.

Will

--->8

From 6e004b8824d4eb6a4e61cd794fbc3a761b50135b Mon Sep 17 00:00:00 2001
From: Will Deacon <will.deacon@arm.com>
Date: Tue, 18 Jun 2019 12:56:49 +0100
Subject: [PATCH] genksyms: Teach parse about __uint128_t built-in type

__uint128_t crops up in a few files that export symbols to modules, so
teach genksyms about it so that we don't end up skipping the CRC
generation for some symbols due to the parser failing to spot them:

  | WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version
  |          generation failed, symbol will not be versioned.
  | ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against
  |     `__crc_kernel_neon_begin' can not be used when making a shared
  |     object
  | ld: arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation:
  |     unsupported relocation

Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 scripts/genksyms/keywords.c | 1 +
 scripts/genksyms/parse.y    | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/scripts/genksyms/keywords.c b/scripts/genksyms/keywords.c
index 9f40bcd17d07..6ec585febfa4 100644
--- a/scripts/genksyms/keywords.c
+++ b/scripts/genksyms/keywords.c
@@ -53,6 +53,7 @@ static struct resword {
 	{ "struct", STRUCT_KEYW },
 	{ "typedef", TYPEDEF_KEYW },
 	{ "typeof", TYPEOF_KEYW },
+	{ "__uint128_t", BUILTIN_INT_KEYW },
 	{ "union", UNION_KEYW },
 	{ "unsigned", UNSIGNED_KEYW },
 	{ "void", VOID_KEYW },
diff --git a/scripts/genksyms/parse.y b/scripts/genksyms/parse.y
index 00a6d7e54971..1ebcf52cd0f9 100644
--- a/scripts/genksyms/parse.y
+++ b/scripts/genksyms/parse.y
@@ -76,6 +76,7 @@ static void record_compound(struct string_list **keyw,
 %token ATTRIBUTE_KEYW
 %token AUTO_KEYW
 %token BOOL_KEYW
+%token BUILTIN_INT_KEYW
 %token CHAR_KEYW
 %token CONST_KEYW
 %token DOUBLE_KEYW
@@ -263,6 +264,7 @@ simple_type_specifier:
 	| VOID_KEYW
 	| BOOL_KEYW
 	| VA_LIST_KEYW
+	| BUILTIN_INT_KEYW
 	| TYPE			{ (*$1)->tag = SYM_TYPEDEF; $$ = $1; }
 	;
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
