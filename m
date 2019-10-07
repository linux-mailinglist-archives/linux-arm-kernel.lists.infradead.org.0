Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB22CE446
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMCqKcsXxJRUBjkvxZ2YXJTC5P/wxYA4mX/pLrLgCaI=; b=QAfZ2Q8D69rZLk
	U7EFRyKmqZv47SJrP1QmBqo4N7DWzBXreXmd9n7hiokH+xW1A7xTBA7F8t3Bf0cgmSZ7gWNFInTCi
	al1LKLVGsYFkEJl6MfCuMGmI3XLYXglYSOVMFeYeAgeWbAnNKykVQlZgFLDON9ZrxxsO2hEZeWbKL
	+AO7znkh0iojnKq5C2MbQH64/nY+Fxx+gKD8lKleAxlxlty1YM+voygjwD2qmnYPOQuAXRBnP1H5s
	g5ik3M3kMsKddHNWavQagj+VWAqPfeSktIOZ3YC5U3n1geYy2xPLTEIgjEU1Cz4lmVgoxoOvRcwKw
	g6zx3+Y5QFThfdi3/RWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTQs-00045q-93; Mon, 07 Oct 2019 13:52:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTQl-00044b-Ag; Mon, 07 Oct 2019 13:52:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so15430519wrd.3;
 Mon, 07 Oct 2019 06:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NqDKw2q0fE+vHWOgUAiru/n1NoCQkdZ2AUuiN/uBGU8=;
 b=ic0JkvFI48xbG9WtluZM0Hf2PaBXHEnROez7bzryeyJvDMyBL5e6TbbMM0jUfHQLcj
 N60dwtHrD83rN8DO0nAWlFYhXP8KC2u6M4pUl5c0nz2hn71y23NUwAnaxYFkxrH4ok93
 +qfxQR+o9B6oGOhK4vKltZbgeMC0rGmYE19yAJrAQ1/yj8WoUn37LJOzT1mjCMj3nWxf
 T+d+hYdoZYOlliAXcaBDcfhvlDagJJO/aYGfkcviRX3zUAubMvNmWNjd1pemdF4Sv8ip
 gy5V18KXkquelqXpy56UmV1xBTQrBaryDxBotNjsV4DVgQZQSEqRJYVQMZJf/ufLy8+j
 SRrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=NqDKw2q0fE+vHWOgUAiru/n1NoCQkdZ2AUuiN/uBGU8=;
 b=k1hWHzJUi5E2YpOw4tbh/c3c8yRLkTuAcnX78a11LgqsWOH0ShAhJQwcEWcJyzLnae
 knsiNOgCcl/+NEV+lzFqTPbaeSVk+IeKeGFCKSeL73AmhsZv0I4iS6O4aCEyHdsoqWHr
 2pYBlD4hkdV2mmipIpIQ8xlfKKSJ+07z50ps6wYdOgKaxJeKsyKFNA8JNO2CISgZNCEs
 z/GtVY4EdpgAx6NWGxVBvkz7Rufm3XCKwWnQZLCPA6gmaPQR2KgMVEhFtJJFo+2m2Kli
 WyI6zRjThMUQGVg6vUO5Sz0IZEWH/ol0AdBv4YEsw1yF9qW0vbpk11+rvsfQHAcoEeRI
 7dBQ==
X-Gm-Message-State: APjAAAU7CaF9wSn6IRbp2ynGhx6NS8JM3TeQ8di8FT1RYDwXWJr33Hel
 rOI8xacqKFIpx1pnzZwTGBw=
X-Google-Smtp-Source: APXvYqwFD0AmO4hRi+9l8ADVfmGE8OkR9Fnj4QRZ24lM5fadabYkivM/y6etDxaG7ZOadEedrbv48w==
X-Received: by 2002:a5d:6441:: with SMTP id d1mr16719177wrw.254.1570456322346; 
 Mon, 07 Oct 2019 06:52:02 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id q19sm41499530wra.89.2019.10.07.06.52.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:52:01 -0700 (PDT)
Date: Mon, 7 Oct 2019 15:51:58 +0200
From: Ingo Molnar <mingo@kernel.org>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: Re: [PATCH V4 2/2] mm/pgtable/debug: Add test validating
 architecture page table helpers
Message-ID: <20191007135158.GA36360@gmail.com>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
 <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
 <20191007130617.GB56546@gmail.com>
 <20191007132607.4q537nauwfn5thol@box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007132607.4q537nauwfn5thol@box>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_065207_368589_C968D28E 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Kirill A. Shutemov <kirill@shutemov.name> wrote:

> On Mon, Oct 07, 2019 at 03:06:17PM +0200, Ingo Molnar wrote:
> > 
> > * Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> > 
> > > This adds a test module which will validate architecture page table helpers
> > > and accessors regarding compliance with generic MM semantics expectations.
> > > This will help various architectures in validating changes to the existing
> > > page table helpers or addition of new ones.
> > > 
> > > Test page table and memory pages creating it's entries at various level are
> > > all allocated from system memory with required alignments. If memory pages
> > > with required size and alignment could not be allocated, then all depending
> > > individual tests are skipped.
> > 
> > > diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> > > index 52e5f5f2240d..b882792a3999 100644
> > > --- a/arch/x86/include/asm/pgtable_64_types.h
> > > +++ b/arch/x86/include/asm/pgtable_64_types.h
> > > @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
> > >  #define pgtable_l5_enabled() 0
> > >  #endif /* CONFIG_X86_5LEVEL */
> > >  
> > > +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> > > +
> > >  extern unsigned int pgdir_shift;
> > >  extern unsigned int ptrs_per_p4d;
> > 
> > Any deep reason this has to be a macro instead of proper C?
> 
> It's a way to override the generic mm_p4d_folded(). It can be rewritten
> as inline function + define. Something like:
> 
> #define mm_p4d_folded mm_p4d_folded
> static inline bool mm_p4d_folded(struct mm_struct *mm)
> {
> 	return !pgtable_l5_enabled();
> }
> 
> But I don't see much reason to be more verbose here than needed.

C type checking? Documentation? Yeah, I know it's just a one-liner, but 
the principle of the death by a thousand cuts applies here.

BTW., any reason this must be in the low level pgtable_64_types.h type 
header, instead of one of the API level header files?

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
