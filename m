Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA01CE36B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtfkUW9QoqDDR4UMjkEGIT6K8i0/3TNijxkxknp8xMw=; b=T8pRIir/ryIkBN
	Z/Baxh1+plHFxZlBkoCKK2FeAuM59WLMOl1+2HSBVy018TX9SaQahzmqXIUcltb38cD4/366l80HW
	Cnuu7S8fnlEqz3amErHfDPMktQZ86ZNPV9yNLclc/nLN+lUzhkF7FewtDnWU/PkRia0m6TV1J0drW
	kG1FoJrHk711Cnm6O+s7wZ8c2vF2UURbX7DWfyyP+jt9tB7aPsDZ4U7rbZM+c7fMkwelZlOui5YKw
	E4pevOEI5JGf6bbkh/5QyUoAKF0BM9uqfj+oiRLkoTUXSnkyD6ByoYNSp/4epnshxKAeV3W2/6Mmo
	Nt5sYMHpTkiqqq6LfOgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHT1m-000071-Vn; Mon, 07 Oct 2019 13:26:19 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHT1f-00005z-Kk
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:26:12 +0000
Received: by mail-ed1-x544.google.com with SMTP id r16so12369043edq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gzC3+Ai/BcUPGOo2+frzMx33cRF/lu4IW7bk4buzvfY=;
 b=LuKZCLEks+pxri1fZImZ8aWZNoPyA0k53cdFVsuHb5MDqAN5knWAMDy0wPUsgUxBCF
 gQcbOYCIkTqaNbsMxo5RKNjpP0d8lQMy7pguGPtgJSh9DP3B9YIN2mS8bmQvpx9hwj+h
 f1Slcuf8Kzh1JBnKhidomUrXDTUHxpZKdm+qSnztmiyYersQcoVvJ/ohhpzjG+T7kfj/
 les5EAK/LmmoySH+aJWZ1XdWfqQwdMTB2W4ogQ6nBwrh8QCxg6VIpsZnYghJaIlVBMwA
 tZPwZXA0ICwRWfFHd+u/u3DYHya4aQ5yYd1iqfinaPiyxKvPuAJePigymhWXfsmqSyff
 W1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gzC3+Ai/BcUPGOo2+frzMx33cRF/lu4IW7bk4buzvfY=;
 b=I8z6pTaVFr1wzi8685CTlj/H7bhScEzcrm2UamYnRzZAv/HsPdHpyBsaZ15FGaciUP
 wIz3GqfsKRicNBVEotCc4eygVwA04wmEGsNYYK1P2SmwuMovpmk2EmsL6esjGeHwB0yO
 YmggHjGfic8TCwCU3SLdotDKSYQoccWZ8xVoU6pnruYV868fDXz46Mhf5nBLX1H56nMW
 jFmDfbGgJuLua43NicAkCEvckZqyGZIlGAYuc2Fq0ZAR9arGhthKg5f53qPfC3s5YpQ3
 9uUab4d19Koo06zbGyGIIkYnjJVo5vL0yqqXESPaJg+oHP4Tma9WlsRjz7DN5BXO+Yd8
 /AGQ==
X-Gm-Message-State: APjAAAUoERwp2yQxN418pmXW4yI9GSDVrsyBUHJuctmjqsziqAiCThem
 P+6tYirnGhn5ovD0QIF7kWx5rQfbZjrq3Q==
X-Google-Smtp-Source: APXvYqzElnCPZjbODoQl3J/SFOw2KfpCAczFpMms9cACkFS6giHuVTdY1dFFe29OUP7N4OGq9tG9dw==
X-Received: by 2002:a05:6402:7c1:: with SMTP id
 u1mr29121094edy.198.1570454769090; 
 Mon, 07 Oct 2019 06:26:09 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id t30sm3414834edt.91.2019.10.07.06.26.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 06:26:08 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 4DF0F10027F; Mon,  7 Oct 2019 16:26:07 +0300 (+03)
Date: Mon, 7 Oct 2019 16:26:07 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH V4 2/2] mm/pgtable/debug: Add test validating
 architecture page table helpers
Message-ID: <20191007132607.4q537nauwfn5thol@box>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
 <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
 <20191007130617.GB56546@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007130617.GB56546@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_062611_733332_B648E213 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

On Mon, Oct 07, 2019 at 03:06:17PM +0200, Ingo Molnar wrote:
> 
> * Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
> > This adds a test module which will validate architecture page table helpers
> > and accessors regarding compliance with generic MM semantics expectations.
> > This will help various architectures in validating changes to the existing
> > page table helpers or addition of new ones.
> > 
> > Test page table and memory pages creating it's entries at various level are
> > all allocated from system memory with required alignments. If memory pages
> > with required size and alignment could not be allocated, then all depending
> > individual tests are skipped.
> 
> > diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
> > index 52e5f5f2240d..b882792a3999 100644
> > --- a/arch/x86/include/asm/pgtable_64_types.h
> > +++ b/arch/x86/include/asm/pgtable_64_types.h
> > @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
> >  #define pgtable_l5_enabled() 0
> >  #endif /* CONFIG_X86_5LEVEL */
> >  
> > +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> > +
> >  extern unsigned int pgdir_shift;
> >  extern unsigned int ptrs_per_p4d;
> 
> Any deep reason this has to be a macro instead of proper C?

It's a way to override the generic mm_p4d_folded(). It can be rewritten
as inline function + define. Something like:

#define mm_p4d_folded mm_p4d_folded
static inline bool mm_p4d_folded(struct mm_struct *mm)
{
	return !pgtable_l5_enabled();
}

But I don't see much reason to be more verbose here than needed.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
