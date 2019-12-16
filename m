Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9101A1211C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:31:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+H4edCiRD6J3qvHIterRfW6KVzEkYabYZXklR7YNM0=; b=kZSXj2pVN4J56M
	mmO/MU2/bT9+zQ9zSOmL9ENvKhfbtavzPxd8kjmLxrMZKnfEuBnJRVo6aqtqm57kVPjNUNmZR20fw
	qSlc4Zv65zRJWUK51lW2saXfHYmF0gFyXJqR3CdobOL9to+3VHwoVaMs8iYel9fIqIjH5oH9p7cpz
	lQgtRFInYgF1lFtiJxHRdcj/ZhZcIVlV23sc+4sn4VzIQJdLx15qSacT9WC/uz/NB1LB5HV630gVT
	UN3C4+p6D6iSTYhQ0jUmAGq2X4EGIR0saZN3KF35MEVstzaQ5fu8APZcBFCokGqMntAEOSebZE0Mm
	eRHO8Rj3PiEtQ1feEQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguD2-00062K-6y; Mon, 16 Dec 2019 17:31:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguCt-00060l-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:30:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so8315529wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 09:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7fWYDGMp/nApDNbsrJ+5xWU9putwDijDotVARBJn+ns=;
 b=gdIMAIf97ukxAmjomWXZt5U5oVo5ZHPpBsn8yC+LUJsUpG/0g7jNbRu+fF+T5QXIRv
 dUc+6/GMVd4y8Dn2BUkBrZAVDct54i+OJAb18XlddDIlSOeTLs5ZX6V6nJD04poiKKjh
 MhFytbWzx2fnX2crjrCcKdUmIPgC/Kh4VMnTWPHWuXs92o0u5Zn8uFTP7URYbKd/yNYA
 H1pK3pAA/pcShk0GqJBgQ3yHpAsRyELjKg7Wq/ouI7OBxjm8qbhr8qcWOb3LU1mhCJXV
 rolTLcMf2FYfJZvSerMd2MPTvBNIu61GdGWwGrGBtp8FZQqzVVyRurinNqK9NnLPpzsh
 Drrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7fWYDGMp/nApDNbsrJ+5xWU9putwDijDotVARBJn+ns=;
 b=fGvPAMnBHJybga3nSRdnPRW72q/BMiSA+1S4aOxols3chpxnt+HEgRHMJA/0v+rjIq
 FTLCpSht4lz1n5UyQbjQLkgX5REwPuIT/ukWb04uy5rTeHZ8rWH7yDc9CsPoGCov3Wri
 jj/3kedQbVT/UPWlrFuAIUPPcRHZMMQXk+P6a+Dtxxk0/oP66vaJyJQIGwaJhTURwc++
 uhGjb9Vx6r4SL+PeDgUCyZ+zIdG1+0z/mtJVSNdi4XfH+cRa2V6gHu6qHtqfmuW60m/Y
 pGNunpvkWadykQlVUSiYsKtnG7YJzXwCs7SlfY0T3MD8QdMZTM2jwli4gB7ryeropeUf
 sCVw==
X-Gm-Message-State: APjAAAUJRNk5tI/egWtw9STvNwmm2T31sYzIR5LV5TPuHgDoWNfiWx7J
 XAu/InKPBNZJZRF223PGiJJnqlRgiwQZXZomiszE+Q==
X-Google-Smtp-Source: APXvYqyoF+KvnzIYNr2E7q8HeyNbCKjQw7uAH6xStgdJExVzXSR0xSCZPRzKzq+G6oWrvHrRDKICuZ+IOnGR+n/Xc8k=
X-Received: by 2002:a5d:4984:: with SMTP id r4mr30348162wrq.137.1576517448748; 
 Mon, 16 Dec 2019 09:30:48 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-21-catalin.marinas@arm.com>
 <ef61bbc6-76d6-531d-2156-b57efc070da4@arm.com>
In-Reply-To: <ef61bbc6-76d6-531d-2156-b57efc070da4@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Mon, 16 Dec 2019 09:30:36 -0800
Message-ID: <CAMn1gO6KGbeSkuEJB_j+WG8DAjbn81OdfA6DQQ+FFA5F6dcsVQ@mail.gmail.com>
Subject: Re: [PATCH 20/22] arm64: mte: Allow user control of the excluded tags
 via prctl()
To: Kevin Brodsky <kevin.brodsky@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_093055_333131_84DF95D4 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Branislav Rankov <Branislav.Rankov@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-mm@kvack.org,
 Marc Zyngier <maz@kernel.org>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 6:20 AM Kevin Brodsky <kevin.brodsky@arm.com> wrote:
>
> +Branislav, Peter
>
> In this patch, the default exclusion mask remains 0 (i.e. all tags can be generated).
> After some more discussions, Branislav and I think that it would be better to start
> with the reverse, i.e. all tags but 0 excluded (mask = 0xfe or 0xff).
>
> This should simplify the MTE setup in the early C runtime quite a bit. Indeed, if all
> tags can be generated, doing any heap or stack tagging before the
> PR_SET_TAGGED_ADDR_CTRL prctl() is issued can cause problems, notably because tagged
> addresses could end up being passed to syscalls. Conversely, if IRG and ADDG never
> set the top byte by default, then tagging operations should be no-ops until the
> prctl() is issued. This would be particularly useful given that it may not be
> straightforward for the C runtime to issue the prctl() before doing anything else.
>
> Additionally, since the default tag checking mode is PR_MTE_TCF_NONE, it would make
> perfect sense not to generate tags by default.
>
> Any thoughts?

This would indeed allow the early C runtime startup code to pass
tagged addresses to syscalls, but I don't think it would entirely free
the code from the burden of worrying about stack tagging. Either way,
any stack frames that are active at the point when the prctl() is
issued would need to be compiled without stack tagging, because
otherwise those stack frames may use ADDG to rematerialize a stack
object address, which may produce a different address post-prctl.
Setting the exclude mask to 0xffff would at least make it more likely
for this problem to be detected, though.

If we change the default in this way, maybe it would be worth
considering flipping the meaning of the tag mask and have it be a mask
of tags to allow. That would be consistent with the existing behaviour
where userspace sets bits in tagged_addr_ctrl in order to enable
tagging features.

Peter

>
> Thanks,
> Kevin
>
> On 11/12/2019 18:40, Catalin Marinas wrote:
> > The IRG, ADDG and SUBG instructions insert a random tag in the resulting
> > address. Certain tags can be excluded via the GCR_EL1.Exclude bitmap
> > when, for example, the user wants a certain colour for freed buffers.
> > Since the GCR_EL1 register is not accessible at EL0, extend the
> > prctl(PR_SET_TAGGED_ADDR_CTRL) interface to include a 16-bit field in
> > the first argument for controlling the excluded tags. This setting is
> > pre-thread.
> >
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >   arch/arm64/include/asm/processor.h |  1 +
> >   arch/arm64/include/asm/sysreg.h    |  7 +++++++
> >   arch/arm64/kernel/process.c        | 27 +++++++++++++++++++++++----
> >   include/uapi/linux/prctl.h         |  3 +++
> >   4 files changed, 34 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> > index 91aa270afc7d..5b6988035334 100644
> > --- a/arch/arm64/include/asm/processor.h
> > +++ b/arch/arm64/include/asm/processor.h
> > @@ -150,6 +150,7 @@ struct thread_struct {
> >   #endif
> >   #ifdef CONFIG_ARM64_MTE
> >       u64                     sctlr_tcf0;
> > +     u64                     gcr_excl;
> >   #endif
> >   };
> >
> > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > index 9e5753272f4b..b6bb6d31f1cd 100644
> > --- a/arch/arm64/include/asm/sysreg.h
> > +++ b/arch/arm64/include/asm/sysreg.h
> > @@ -901,6 +901,13 @@
> >               write_sysreg(__scs_new, sysreg);                        \
> >   } while (0)
> >
> > +#define sysreg_clear_set_s(sysreg, clear, set) do {                  \
> > +     u64 __scs_val = read_sysreg_s(sysreg);                          \
> > +     u64 __scs_new = (__scs_val & ~(u64)(clear)) | (set);            \
> > +     if (__scs_new != __scs_val)                                     \
> > +             write_sysreg_s(__scs_new, sysreg);                      \
> > +} while (0)
> > +
> >   #endif
> >
> >   #endif      /* __ASM_SYSREG_H */
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index 47ce98f47253..5ec6889795fc 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -502,6 +502,15 @@ static void update_sctlr_el1_tcf0(u64 tcf0)
> >       sysreg_clear_set(sctlr_el1, SCTLR_EL1_TCF0_MASK, tcf0);
> >   }
> >
> > +static void update_gcr_el1_excl(u64 excl)
> > +{
> > +     /*
> > +      * No need for ISB since this only affects EL0 currently, implicit
> > +      * with ERET.
> > +      */
> > +     sysreg_clear_set_s(SYS_GCR_EL1, SYS_GCR_EL1_EXCL_MASK, excl);
> > +}
> > +
> >   /* Handle MTE thread switch */
> >   static void mte_thread_switch(struct task_struct *next)
> >   {
> > @@ -511,6 +520,7 @@ static void mte_thread_switch(struct task_struct *next)
> >       /* avoid expensive SCTLR_EL1 accesses if no change */
> >       if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
> >               update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
> > +     update_gcr_el1_excl(next->thread.gcr_excl);
> >   }
> >   #else
> >   static void mte_thread_switch(struct task_struct *next)
> > @@ -641,22 +651,31 @@ static long set_mte_ctrl(unsigned long arg)
> >       update_sctlr_el1_tcf0(tcf0);
> >       preempt_enable();
> >
> > +     current->thread.gcr_excl = (arg & PR_MTE_EXCL_MASK) >> PR_MTE_EXCL_SHIFT;
> > +     update_gcr_el1_excl(current->thread.gcr_excl);
> > +
> >       return 0;
> >   }
> >
> >   static long get_mte_ctrl(void)
> >   {
> > +     unsigned long ret;
> > +
> >       if (!system_supports_mte())
> >               return 0;
> >
> > +     ret = current->thread.gcr_excl << PR_MTE_EXCL_SHIFT;
> > +
> >       switch (current->thread.sctlr_tcf0) {
> >       case SCTLR_EL1_TCF0_SYNC:
> > -             return PR_MTE_TCF_SYNC;
> > +             ret |= PR_MTE_TCF_SYNC;
> > +             break;
> >       case SCTLR_EL1_TCF0_ASYNC:
> > -             return PR_MTE_TCF_ASYNC;
> > +             ret |= PR_MTE_TCF_ASYNC;
> > +             break;
> >       }
> >
> > -     return 0;
> > +     return ret;
> >   }
> >   #else
> >   static long set_mte_ctrl(unsigned long arg)
> > @@ -684,7 +703,7 @@ long set_tagged_addr_ctrl(unsigned long arg)
> >               return -EINVAL;
> >
> >       if (system_supports_mte())
> > -             valid_mask |= PR_MTE_TCF_MASK;
> > +             valid_mask |= PR_MTE_TCF_MASK | PR_MTE_EXCL_MASK;
> >
> >       if (arg & ~valid_mask)
> >               return -EINVAL;
> > diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
> > index 5e9323e66a38..749de5ab4f9f 100644
> > --- a/include/uapi/linux/prctl.h
> > +++ b/include/uapi/linux/prctl.h
> > @@ -239,5 +239,8 @@ struct prctl_mm_map {
> >   # define PR_MTE_TCF_SYNC            (1UL << PR_MTE_TCF_SHIFT)
> >   # define PR_MTE_TCF_ASYNC           (2UL << PR_MTE_TCF_SHIFT)
> >   # define PR_MTE_TCF_MASK            (3UL << PR_MTE_TCF_SHIFT)
> > +/* MTE tag exclusion mask */
> > +# define PR_MTE_EXCL_SHIFT           3
> > +# define PR_MTE_EXCL_MASK            (0xffffUL << PR_MTE_EXCL_SHIFT)
> >
> >   #endif /* _LINUX_PRCTL_H */
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
