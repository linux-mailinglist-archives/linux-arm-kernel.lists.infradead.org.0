Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B06C7D4BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 07:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZ14eXbz20Gc8pu05GU7+hhzwpCVm1KlU8dDCdbqaD4=; b=WqAYkGorAGtx7d
	4Ey98BV/mcAtkJMjX/+/apN9/fxBALRKOEjZAESj0xfjaq1hYynWumkbnJc52ek/Zp6RX9iQWK/hN
	aP2gfN2NjDeivWAZusxupcRPpVl/kmLTDqyGX33oHM6/YlAvDHySFNDVJOMRuEdK1UtySaUq+iUI+
	8s/XB9nIKAco/yz0FEfNRw2RitCB24ld++2ZFUpQT4BCAMIYybwoCQWEdsa69InAia2uXLfja385O
	udlRn+8UCCMTAwSfh7xB8uYz4mgtkVQQSCKukwINlS2tvt7d2mt7eSGCyh4CDnIaFgRhutk2n1BpI
	2TKMPUec4xAYzsxAdlbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht3Ld-0001iw-Rs; Thu, 01 Aug 2019 05:09:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht3LW-0001ic-9i
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 05:09:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so33292237pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 22:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aLdgdj1EfeMVZ7XgY351LcWiVocr39+rpYFuoMHIDzQ=;
 b=J6WKPdKG6lEuXUsEYdwSy+xXv0V2TB0Z8XnXVWGAfSI03/7hdQibTWHOxe716G5xhM
 lVw4xNWem6Fu7CuOsEUUqxP0oofy0T9E7pdyW78vVRYVb6M3DltijB08Tx8l3WTIGWU3
 vEU/pgi59ZsJ1Y+LtclQ0nplNgRIgqpAFQjN3JN3ZtHZOv5JeBuzprH5oyt0vsWZXj8U
 QEi/vGMjIUIkXMo8G7x9XQ4ea6SVxYCDp9WTv98D7rhlPEE3YMqmufiwwuQ4hXj+EiCV
 yqQynWBPfF/aWGk3pQ2loi+B0jcSZy67pmd9Gp9LwPx29htlwRJH9ez/MdeiVc8KCXnC
 U5nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aLdgdj1EfeMVZ7XgY351LcWiVocr39+rpYFuoMHIDzQ=;
 b=o6yWnfT/R64DEori8KRWtJGL/hMy1EMVW9QLdulaGUR22RVjOJacEPW3UrIXOb/PJn
 18pZvP+xwlmbdanKAIFLTST93dz5Dw04AILlil59nlP26ffnNgomHH9UbdolK7TZP6qz
 GFhRLiV+h0JYALGLgP8YJyHL96R12UnV6WKZNW/tutVQuRDfAv5kQ/vQEcvnD1ZwDtMv
 v0BWsSj6EFCPUeqpC/Bo8uM+ipsOtyS3uunw6P0VDZ+CH797rxLiMZVVuOBF3XmG610I
 yuj5gVpqtld0bjSQZcKPFXMWnTCMIamWomQrfUgrbFw/50AQaox722nXZbBCWA8eoa0L
 pAYw==
X-Gm-Message-State: APjAAAV1lhQYG7X3+35aaBwwLWjwbYTUSEQvU6DCrQxtmDyBy8ht1bXO
 hR1Z33XYQtrRXe1LCGoxl+616A==
X-Google-Smtp-Source: APXvYqyqM+VVslQdFWG491bGgkdXzFwyEniKtN5NsnBUBiF85SJ7Qanfs0z+9szSSwZNTIBayOyBaw==
X-Received: by 2002:a17:90a:4806:: with SMTP id
 a6mr6543128pjh.38.1564636185001; 
 Wed, 31 Jul 2019 22:09:45 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id t96sm3320891pjb.1.2019.07.31.22.09.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 22:09:43 -0700 (PDT)
Date: Thu, 1 Aug 2019 10:39:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
Message-ID: <20190801050940.h65crfawrdifsrgg@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_220946_402328_7AB01C7C 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com, julien.thierry.kdev@gmail.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31-07-19, 14:09, Julien Thierry wrote:
> 
> 
> On 12/07/2019 06:28, Viresh Kumar wrote:
> > From: Marc Zyngier <marc.zyngier@arm.com>
> > 
> > commit a8e4c0a919ae310944ed2c9ace11cf3ccd8a609b upstream.
> > 
> > We call arm64_apply_bp_hardening() from post_ttbr_update_workaround,
> > which has the unexpected consequence of being triggered on every
> > exception return to userspace when ARM64_SW_TTBR0_PAN is selected,
> > even if no context switch actually occured.
> > 
> > This is a bit suboptimal, and it would be more logical to only
> > invalidate the branch predictor when we actually switch to
> > a different mm.
> > 
> > In order to solve this, move the call to arm64_apply_bp_hardening()
> > into check_and_switch_context(), where we're guaranteed to pick
> > a different mm context.
> > 
> > Acked-by: Will Deacon <will.deacon@arm.com>
> > Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> >  arch/arm64/mm/context.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> > index be42bd3dca5c..de5afc27b4e6 100644
> > --- a/arch/arm64/mm/context.c
> > +++ b/arch/arm64/mm/context.c
> > @@ -183,6 +183,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
> >  	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
> >  
> >  switch_mm_fastpath:
> > +	arm64_apply_bp_hardening();
> > +
> >  	cpu_switch_mm(mm->pgd, mm);
> >  }
> >  
> > @@ -193,8 +195,6 @@ asmlinkage void post_ttbr_update_workaround(void)
> >  			"ic iallu; dsb nsh; isb",
> >  			ARM64_WORKAROUND_CAVIUM_27456,
> >  			CONFIG_CAVIUM_ERRATUM_27456));
> > -
> > -	arm64_apply_bp_hardening();
> 
> Patches 22 and 23 factorize the post_ttbr_update_workaround() and move
> it to C code just so we would and a call to arm64_apply_bp_hardening()
> in patch 24 that now gets moved elsewhere?
> 
> Is it really worth backporting patches 22 and 23?

If I can merge patch 24 and 25 into a single patch while backporting,
then patch 22 and 23 won't be required. I am not sure how should the
commit log look like in that case though :)

Is mentioning both the upstream commit ids along with log of the first
patch (which was more important) enough, like this ?

Author: Will Deacon <will.deacon@arm.com>
Date:   Wed Jan 3 11:17:58 2018 +0000

    arm64: Add skeleton to harden the branch predictor against aliasing attacks
    
    commit 0f15adbb2861ce6f75ccfc5a92b19eae0ef327d0 upstream.
    commit a8e4c0a919ae310944ed2c9ace11cf3ccd8a609b upstream.
    
    Aliasing attacks against CPU branch predictors can allow an attacker to
    redirect speculative control flow on some CPUs and potentially divulge
    information from one context to another.
    
    This patch adds initial skeleton code behind a new Kconfig option to
    enable implementation-specific mitigations against these attacks for
    CPUs that are affected.
    
    Co-developed-by: Marc Zyngier <marc.zyngier@arm.com>
    Signed-off-by: Will Deacon <will.deacon@arm.com>
    Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
    [ v4.4: Changes made according to 4.4 codebase ]
    Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
