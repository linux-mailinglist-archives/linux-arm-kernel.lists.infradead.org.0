Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9728CE485
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFfD35S1xKD7yB5GkPQnHASC30IOLFwNMJxhgav59CY=; b=EdhiP/03N2UexG
	kyDuDZsZXPCbxbCzQVJ38ObtsLOjn8/FxGEdJ43ta9rMcWC88ODroWX5lVInpPg+lfKM5E+nzmSKV
	BoRdtgpz5SVi2Nl0QjEprDep2/UgIW3IydL1YSEii+HKpftEuR6pMZiy6fIIBJPcaNXN+PW1cqULn
	M2BYjlZGs9fErVTqeUyYvjZSrVWWdVXJ5lXvqFJUgMqjVh5EntQ14yp0xnVRHkEA4x71CL/J1ngyG
	R/jWAk04TlW6ss/zLlIfLDKr63zQQrJANC41xcfA3hchbm+J6DqTgELGh/XN7bgcelujNP/3AUCtr
	eaULO3ibyvNU7wwMEJtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTZY-0008DY-Kc; Mon, 07 Oct 2019 14:01:12 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTZP-0008BF-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:01:04 +0000
Received: by mail-ed1-x543.google.com with SMTP id v8so12573800eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 07:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rKL1w3iXknpln9Ux2lFi8nURmFThC0ACAB38j7xMJOw=;
 b=1dC/oO7KYUhQk3Cp+gPvQQFfNUhXo7xBP7fOg6lJXEJoNi4xqoFx/+Z/eteEJO7TfS
 beXRbX34FM5TGrxRC9UtlPyVu0dSHSWxoZtuR+BBMIz3ysIcWEMjUC0trYfvncn0/S1K
 bedaHLGes2jPFyGX3hZIeFJI6nEWOI1RFwcmLQ/j5X/1FPSdYeaocVmbj1FV4QMO0Ct3
 gzIXMAqry05u2l85X3+0Gg6QDGEktesNKTlT1AuPCVLEt0ZvIsj2v9MyWo4Idq82kDyc
 ct/NK1YDtzPjx53EMdfO2f0gZjT1d4J5zb0WVTYkaD/x8lXnVmFKIb86ehHVrjIfm46m
 og+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rKL1w3iXknpln9Ux2lFi8nURmFThC0ACAB38j7xMJOw=;
 b=mu+gd8uY7jCTtRHTl/+RhFkK/8R2s5IR4sNR5G7gbHdrM+EOl17wzqHpAq70Siw4iE
 kQcSm8Ti28giCwNjoMJxmu1AsS+vXZWtwbJofKEWxJ9AzJpV1enQEJy0xQOszgHdNl7V
 W5RV7Z/D2AI3bs/ow60UJI8/AOTh3rLe6z45yoSSWGJrj2fWZ8sa18oxFqwfWJXM2yGF
 f8UqyR91N1+3uaVIaH1AG5C611Wnl3IczNEUN/DWIL9gCI4SMFprM+mrraGiQFJIL75/
 +i51c9IJ5K5FDMukzkXzV3BymCcdzdrcCcJJ7xjbLmhorhksIpg8PhSh8SQQ/4izb/Ka
 blbg==
X-Gm-Message-State: APjAAAU7KOiBqS1l7yGyhEvkQ6ycxHUrZaqnCl4QZ1TgIHG4wYVPVRH5
 5i0yQjR9nLpsGHrfFKoKidVgCg==
X-Google-Smtp-Source: APXvYqxuYtPtzk9H5R4kXUotDVtZLwRxmHkom44kwHAzQPnIVU9Dw79/zIRyaunZCbGIUeO/BsAK1g==
X-Received: by 2002:a17:906:4d08:: with SMTP id
 r8mr10168700eju.283.1570456860258; 
 Mon, 07 Oct 2019 07:01:00 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id r18sm3382249edl.6.2019.10.07.07.00.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 07:00:59 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id BDCFF100287; Mon,  7 Oct 2019 17:00:58 +0300 (+03)
Date: Mon, 7 Oct 2019 17:00:58 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH V4 2/2] mm/pgtable/debug: Add test validating
 architecture page table helpers
Message-ID: <20191007140058.um5g44rvxyzyiref@box>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
 <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
 <20191007130617.GB56546@gmail.com>
 <20191007132607.4q537nauwfn5thol@box>
 <20191007135158.GA36360@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007135158.GA36360@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_070103_239787_6973318C 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Oct 07, 2019 at 03:51:58PM +0200, Ingo Molnar wrote:
> 
> * Kirill A. Shutemov <kirill@shutemov.name> wrote:
> 
> > On Mon, Oct 07, 2019 at 03:06:17PM +0200, Ingo Molnar wrote:
> > > 
> > > * Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> > > 
> > > > This adds a test module which will validate architecture page table helpers
> > > > and accessors regarding compliance with generic MM semantics expectations.
> > > > This will help various architectures in validating changes to the existing
> > > > page table helpers or addition of new ones.
> > > > 
> > > > Test page table and memory pages creating it's entries at various level are
> > > > all allocated from system memory with required alignments. If memory pages
> > > > with required size and alignment could not be allocated, then all depending
> > > > individual tests are skipped.
> > > 
> > > > diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> > > > index 52e5f5f2240d..b882792a3999 100644
> > > > --- a/arch/x86/include/asm/pgtable_64_types.h
> > > > +++ b/arch/x86/include/asm/pgtable_64_types.h
> > > > @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
> > > >  #define pgtable_l5_enabled() 0
> > > >  #endif /* CONFIG_X86_5LEVEL */
> > > >  
> > > > +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> > > > +
> > > >  extern unsigned int pgdir_shift;
> > > >  extern unsigned int ptrs_per_p4d;
> > > 
> > > Any deep reason this has to be a macro instead of proper C?
> > 
> > It's a way to override the generic mm_p4d_folded(). It can be rewritten
> > as inline function + define. Something like:
> > 
> > #define mm_p4d_folded mm_p4d_folded
> > static inline bool mm_p4d_folded(struct mm_struct *mm)
> > {
> > 	return !pgtable_l5_enabled();
> > }
> > 
> > But I don't see much reason to be more verbose here than needed.
> 
> C type checking? Documentation? Yeah, I know it's just a one-liner, but 
> the principle of the death by a thousand cuts applies here.

Okay, if you think it worth it. Anshuman, could you fix it up for the next
submission?


> BTW., any reason this must be in the low level pgtable_64_types.h type 
> header, instead of one of the API level header files?

I defined it next pgtable_l5_enabled(). What is more appropriate place to
you? pgtable_64.h? Yeah, it makes sense.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
