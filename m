Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFCA212CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 06:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WTzUmIM2XBT/Kci0EvSQ/Zlk2j3TYBb9hVcRNxBIsA=; b=K/vwqgQHWN7Z0s
	5nurXOx0UOoWNDtUaGVFpCRsHk8xGFenyLrga6V+4lTq3KkvlW6m8yTLRyK3u+M6J7cvc0uPYxPKM
	DZdQ32DxVhqiN2azoKwMR08BphmAmP6/NlzAr5HGs5yMkA8Xd7wW6OdyN9dyhBqoon0YtKY+a8MEF
	yj6mE5HK7Z5hyVmVCVjzDYxxluBANErcBbnXTXfz9cE57/mFu2egQq0UQjo+UHqFX6qG++OUpPFmF
	PU6706h174TvW7uyWnN5lqDlqn2rJRqquVQXSGNGSE8AEqUcUCA36MBDxsrrBdy4qC+hdLyPzs6PE
	LhC7E0VZriwY1ku7F99w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRULO-0000aU-Ay; Fri, 17 May 2019 04:19:42 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRULH-0000Zl-9Y; Fri, 17 May 2019 04:19:37 +0000
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x4H4J80g014744;
 Fri, 17 May 2019 13:19:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x4H4J80g014744
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1558066749;
 bh=J7yAUK19cep0kEYDzk4DJ/4J6NgS5gQ7gjFkMhf0nf0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c0LtECK4wG0ntD78HJSVal1PgIaDPnG3TYgZdKUwPQb1na1TUOyc7O8nFlNd6CaCm
 AXsspHBBBxyBH+xc+yKwpj4hyYVIlPFcjcW/vHsJL5fSi5Q2gSwjjErNYCHX7DoDJk
 uzHnaxZfaH6FQsso8f00WBIqbL0o02CmwbkFxF8m6vBwnpe79+CLRENPKmsLOuBRZS
 H1BuxVeZipFZOyAH3A/7goUgdI8wKHrHt3j0pC8tQP/JX2YVrYwXhbMxIntV2ieT5M
 FSH/2b85VtqV4XO16MdlVD3fBZ0eNwSQDAHODI3YrVqSmTCnoT21JK380X6v99doLI
 2TTH2dRT0iNEA==
X-Nifty-SrcIP: [209.85.222.41]
Received: by mail-ua1-f41.google.com with SMTP id d4so2180887uaj.7;
 Thu, 16 May 2019 21:19:08 -0700 (PDT)
X-Gm-Message-State: APjAAAXgrBfDCXyBw284CgCQYHSN9iQ31EHhjqcC4MwkBj+WxP0uSyoT
 U58D99Jsht5fT/iXmgp3DM1JwhhI3U6//BxRTt0=
X-Google-Smtp-Source: APXvYqw2YDleh3v/xnLGvb0ytg007xtjBjm7KsoOOxcHJpN/6dfsgAIRhFvSJ0T46JhQEFnSRL0PruWBvw6llY+KDwI=
X-Received: by 2002:ab0:3058:: with SMTP id x24mr23094567ual.95.1558066747792; 
 Thu, 16 May 2019 21:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190423034959.13525-1-yamada.masahiro@socionext.com>
 <20190423034959.13525-11-yamada.masahiro@socionext.com>
 <ca74c830-fe1b-7bff-8dfd-353fca57b647@redhat.com>
In-Reply-To: <ca74c830-fe1b-7bff-8dfd-353fca57b647@redhat.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 17 May 2019 13:18:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNASjc8rmJvv5kgk6Mxo3mcB4EgB4XJG_8JY47ZQbrsSSXg@mail.gmail.com>
Message-ID: <CAK7LNASjc8rmJvv5kgk6Mxo3mcB4EgB4XJG_8JY47ZQbrsSSXg@mail.gmail.com>
Subject: Re: [RESEND PATCH v3 10/11] powerpc/mm/radix: mark as __tlbie_pid()
 and friends as__always_inline
To: Laura Abbott <labbott@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_211935_545974_4B183355 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
 linux-s390 <linux-s390@vger.kernel.org>, Mathieu Malaterre <malat@debian.org>,
 X86 ML <x86@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laura,


On Fri, May 17, 2019 at 7:55 AM Laura Abbott <labbott@redhat.com> wrote:

> What gcc version was this tested with?

I use kernel.org toolchains
https://mirrors.edge.kernel.org/pub/tools/crosstool/

It is GCC 8.1


> We're still seeing errors on
> Fedora rawhide with gcc 9.1.1 on a version (8c05f3b965da14e7790711026b32cc10a4c06213)
> that should have this fix in it:
>
> BUILDSTDERR: arch/powerpc/mm/book3s64/radix_tlb.c: In function '_tlbiel_pid':
> BUILDSTDERR: arch/powerpc/mm/book3s64/radix_tlb.c:104:2: warning: asm operand 3 probably doesn't match constraints
> BUILDSTDERR:   104 |  asm volatile(PPC_TLBIEL(%0, %4, %3, %2, %1)
> BUILDSTDERR:       |  ^~~
> BUILDSTDERR: arch/powerpc/mm/book3s64/radix_tlb.c:104:2: error: impossible constraint in 'asm'
> BUILDSTDERR: make[3]: *** [scripts/Makefile.build:279: arch/powerpc/mm/book3s64/radix_tlb.o] Error 1
> BUILDSTDERR: make[2]: *** [scripts/Makefile.build:489: arch/powerpc/mm/book3s64] Error 2
> BUILDSTDERR: make[1]: *** [scripts/Makefile.build:489: arch/powerpc/mm] Error 2

Thanks for the report.

Does this work for you?


diff --git a/arch/powerpc/mm/book3s64/radix_tlb.c
b/arch/powerpc/mm/book3s64/radix_tlb.c
index 4d841369399f..9a6befdd5e74 100644
--- a/arch/powerpc/mm/book3s64/radix_tlb.c
+++ b/arch/powerpc/mm/book3s64/radix_tlb.c

@@ -239,7 +239,7 @@ static inline void fixup_tlbie_lpid(unsigned long lpid)
 /*
  * We use 128 set in radix mode and 256 set in hpt mode.
  */
-static inline void _tlbiel_pid(unsigned long pid, unsigned long ric)
+static __always_inline void _tlbiel_pid(unsigned long pid, unsigned long ric)
 {
        int set;




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
