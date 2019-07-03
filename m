Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067515EA67
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5V6e9GtkmtgSs+95IascLStunLd23w3b2sh0NiGWBw=; b=BLAIkz9BykAqJf
	MvJJjAAXlNWM/LduDrHaU8uz2PfgXILUUVoPpHuZ2sZrbYIaJUVpp+sGjnakzMppjYz/V5lUW3AwN
	cnayEu/hYP7PWQk8YV+KhAsF+6ti05pJLaR8Yq3CzUilH0DRRCoSRuDRtLUkWat/iDoPQtUuNELVk
	RduVjdxEOrfgwEzMFcyngoU08KnDu/P7PFu3pG95kEb2/P4cK8G9qRHdx6hSbaWHywPHuzH+GKbK0
	YFoytqJ7YaiYZWTyDmfGjAe4KGYAVbOx1temzkquLjtHgGfAv1RBZn7kGKoY59LyHJpZfJf+sGrFl
	aRVoUY5LVeADlGsjTkZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hij05-0007sv-T3; Wed, 03 Jul 2019 17:24:57 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiizn-0007sE-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:24:41 +0000
Received: by mail-qt1-x842.google.com with SMTP id d23so4614739qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 10:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jWLpZXNsM3p1lTZJX7ibWXQLVjnLmHCj16wtFukaXUE=;
 b=K+Z/emuyyEu2GtrW6DwpMUytgxyzefDmap3xK+ih+5k6Yz7qGbT2WMhfe5xiksDjr2
 nq97Vzlb15tYoo6y/uCV+CZ6cpxvdy8VudBrG0l3x0MbQP5y7ql8BK5BXXk3GnlVbW7I
 ZjVnV6pBuABhtaAksWCOFGGiMV3oN2JBn4NtMAjdE5rA3EQdLuHx8I0D0Fv5uRd0D8zL
 VGjDOQ+g2tVgYGb/jebFO8OR0CM109mmu2hfJgLPlPoHRaeeHiFQfme10QHCfyF4gfgm
 SIkAn7hMXPgV7MKcSFoGIRdT1DyVwpIv7Rs4ckHb3sZNgoP5LksLeVYuaiS8HIAvvw4p
 8QpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jWLpZXNsM3p1lTZJX7ibWXQLVjnLmHCj16wtFukaXUE=;
 b=rcfnZimzVmTHV7QAxpj0WWSiF0GeFxYbfQVClLifmzE/QQZ3T04AMhLUDLaZk959wg
 Ong2z72wlt56sfvNQGp52dqj+1Lj+FJN/RuWDuLu0ij4l2FaV3EWLHcqQa6HBosFK4qn
 oguRoo8aldHd+JfUh4LRhPMpme6ovpxzB2/3mrjcpj2ldfMHB1iTFmavQf/AVeB60Rbd
 nF2rfAQeQVVEMClGZTHqBn0zQE85MjVIRlRrJNTmcyF0bQnkD/7mBlZeFInunUeGZZpg
 ff9THHmsupC1b4Sj/BmQYJCzgODERInpvPIQSg0qWuu+sAKo541euWmWd0Tc8xvaJ418
 5otQ==
X-Gm-Message-State: APjAAAUHBQ58h9cjA6GHlcSUxWQSHPZEs/da/qK+Z+EePt3Qv2mz4hoW
 SeGOTPN4AmHdPS6P5F86wfEoTOh+VGYOFujPkvGSzw==
X-Google-Smtp-Source: APXvYqzfCXHR7AdEFmhAVziQehhOQUss9jDtQBcLd32WC6403cGso4D3MyynOBLu1Lg4Gj24PStyaR78IU3QTlpr2aw=
X-Received: by 2002:ac8:6c9:: with SMTP id j9mr854936qth.76.1562174678092;
 Wed, 03 Jul 2019 10:24:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
 <20190702234135.78780-1-nhuck@google.com>
 <20190703112139.GA29570@lakrids.cambridge.arm.com>
In-Reply-To: <20190703112139.GA29570@lakrids.cambridge.arm.com>
From: Nathan Huckleberry <nhuck@google.com>
Date: Wed, 3 Jul 2019 10:24:26 -0700
Message-ID: <CAJkfWY6kZnd3TSTvZ3CqhPOT7Lu+koCsfwS6ACEg04xXX6szgw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: mm: Fix dead assignment of old_pte
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_102439_489798_28EFC119 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Warning is not triggered in next. Looks like this patch is unnecessary.

Thanks,
Nathan Huckleberry

On Wed, Jul 3, 2019 at 4:23 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Jul 02, 2019 at 04:41:35PM -0700, Nathan Huckleberry wrote:
> > When analyzed with the clang static analyzer the
> > following warning occurs
> >
> > line 251, column 2
> > Value stored to 'old_pte' is never read
> >
> > This warning is repeated every time pgtable.h is
> > included by another file and produces ~3500
> > extra warnings.
> >
> > Moving old_pte into preprocessor guard.
> >
> > Cc: clang-built-linux@googlegroups.com
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> > Changes from v1 -> v2
> > * Added scope to avoid [-Wdeclaration-after-statement]
> >  arch/arm64/include/asm/pgtable.h | 27 ++++++++++++++++-----------
> >  1 file changed, 16 insertions(+), 11 deletions(-)
>
> As Will asked, does this also trigger in linux-next?
>
> I rewrote this code to avoid to only perform the READ_ONCE() when we'd
> use the value, and IIUC that may be sufficient to avoid the warning:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=9b604722059039a1a3ff69fb8dfd024264046024
>
> Thanks,
> Mark.
>
> >
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index fca26759081a..12b7f08db40d 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -238,8 +238,6 @@ extern void __sync_icache_dcache(pte_t pteval);
> >  static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
> >                             pte_t *ptep, pte_t pte)
> >  {
> > -     pte_t old_pte;
> > -
> >       if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
> >               __sync_icache_dcache(pte);
> >
> > @@ -248,16 +246,23 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
> >        * hardware updates of the pte (ptep_set_access_flags safely changes
> >        * valid ptes without going through an invalid entry).
> >        */
> > -     old_pte = READ_ONCE(*ptep);
> > -     if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
> > -        (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
> > -             VM_WARN_ONCE(!pte_young(pte),
> > -                          "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
> > -                          __func__, pte_val(old_pte), pte_val(pte));
> > -             VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
> > -                          "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
> > -                          __func__, pte_val(old_pte), pte_val(pte));
> > +     #if IS_ENABLED(CONFIG_DEBUG_VM)
> > +     {
> > +             pte_t old_pte;
> > +
> > +             old_pte = READ_ONCE(*ptep);
> > +             if (pte_valid(old_pte) && pte_valid(pte) &&
> > +               (mm == current->active_mm ||
> > +                atomic_read(&mm->mm_users) > 1)) {
> > +                     VM_WARN_ONCE(!pte_young(pte),
> > +                                  "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
> > +                                  __func__, pte_val(old_pte), pte_val(pte));
> > +                     VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
> > +                                  "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
> > +                                  __func__, pte_val(old_pte), pte_val(pte));
> > +             }
> >       }
> > +     #endif
> >
> >       set_pte(ptep, pte);
> >  }
> > --
> > 2.22.0.410.gd8fdbe21b5-goog
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
