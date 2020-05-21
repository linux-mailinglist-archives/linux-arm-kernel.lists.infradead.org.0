Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ACF1DC955
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6IkPgA31bgZfph5EGSQUsxgRzYgm00V0RvqVvPgT1c=; b=dtKgV0DzoLWOQ9
	J5p333YzdyPccbDgeg8BKaa/CKnzz3yAk/fHA65sZvFy8BDSwZW9p91GEHQ0A2YG4xFqgIIrxjSJp
	C0bCAQORgjT2Fd34wnCqpvnCvIgXpYV0UhXpGm4PnZ58gTQUxnQVW2rJ5SuVqJR7mOfrfdZXYWZn3
	rfmhDi2lGKN1kucnECYjRP1lPXXO1x3Sri1IeIvZO/ijKAFG+nxdFbomVxR+TWKZkTwJ0WSgOH65N
	DCrxI0y+AQV9ZEXidUj6T6T3EiqEWbAsdE1mgL2GAYnArEBNk/4V2WhwggHV3l4iJXdCCN0ywPEVd
	YyTGF97dBgaUU09h/A4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhAL-0002t7-Va; Thu, 21 May 2020 09:07:01 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhA4-0002in-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 09:06:46 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MhUDl-1j6mOX1MkV-00ebfa for <linux-arm-kernel@lists.infradead.org>; Thu,
 21 May 2020 11:06:42 +0200
Received: by mail-qk1-f181.google.com with SMTP id z80so6571860qka.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 02:06:40 -0700 (PDT)
X-Gm-Message-State: AOAM532t1Lkr0OEGUNphmCgZocjlXSj/WFzyGrhqGCNbko7Ew64bGoyY
 +RLWsXCzVK3Icq0JyEZwKM0rSYE6Lb/6A1sJ22E=
X-Google-Smtp-Source: ABdhPJzY8tA9XFsf4PrVPQEo6j/Vx7xBZ9oGKpIW2en2BlP6PygE3gCqxjy8F3kyxcIPHi56fHEG7aFtx3du0f0szRs=
X-Received: by 2002:a37:434b:: with SMTP id q72mr9383265qka.352.1590051999841; 
 Thu, 21 May 2020 02:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck> <20200521081055.GD1131@bogus>
In-Reply-To: <20200521081055.GD1131@bogus>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 11:06:23 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
Message-ID: <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:RgXygdnOpq+rDfC2Jn+VA67Z6VFXOaF0oCVBie4vqI0s7wSQZw4
 PoAFLpRqELRc74u9Fd/BJYCk/TejrE+poXY1BnGaMVOj2Uv0qhpEQbY+zpmoof7ljtzoP0J
 rt8bHOPUuuM6p6aEJpZdelk+9ba8SQ4GW0XCZ7Rx4ZDnP4ShPBzZ8tMAjdLvrGqiSFJU4zu
 4bpqPCoxLxV/hqS7B+xPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RzDmzCSztc8=:OE2Ms3n6G3pfrNyMkvi/9M
 XM5mdGC6vqSaJ8dPTy2f/NhsOZ1BWbfXUrWzzcBYC/yG9OYGQd91gF7A2SNfu5cJQK2LzUM6T
 UcG+r27Fvigb0QxKdxBjpdS09IioFN7raOf0LWjpFGZmPxJRLqqhVyKAdIOJDPbfJBLGy+Se7
 f30bru6datXx1g7EeCiFE8GW8Dv3/bWp+69YOjsoXDtu1MlfYBCnZhxiu4O0YKEUiNPfAj0rJ
 dK927q7LvVNI6gzF17oYz94wU8+EIeTOsIJ+RyJiDmGQlLi07+DsYG/uXUyEixnwhHlJ6TuHA
 6GmeLo1fUuuOkY5+GoMz3+WCmFOPoW3si85M/dD1hjhy02mwLjSSNqT9D/dPJH671YDzJF0c2
 k9mOxYxzCGeTXUXEvAel74NOVfLMiaIi/W2l2OS+XJvhZxj7ddDS0ASf9V/K/pmWL1nSDfGUH
 hrrLlngr/jOiKbIxUeOA9DqkIsdbJ+QjQsvykMdQHBPi8Fw7eQmPsaA4U1pRSV+u3HXkEDSIU
 Mi6YulZL/8E/yuZaWmvTndu/dgD8jWn7B/qALejuyTBbrRgQ6p6UvH2beuhiWlMBcGDrGW4h2
 BVmhFHyTdHZw6A7nFxvuEYPJAZowHF0oIesEJDQKH5aFUoD6RN/RXrxNIIXh8pz+WlPTOGlQB
 p+wBfRsb2aYYKRxoJeKwQ/DmE2/cf5k0ey2Y5Go5igwjPx18jpMz8V1FBALljZHfqvGdBprLA
 B64GUIzFTBEB0/iHH+x7IobEpoJnuuMb7hrVBKkxvJAzmQYqElAJbqVvPW4Up7bnaQNHlh19v
 C1nNJPvdQhmsUyOUwqDwZQNzVilg+2IAIoMJgbBvME7Nxck//M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_020645_186686_EEF0E3D4 
X-CRM114-Status: GOOD (  24.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 10:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> On Thu, May 21, 2020 at 08:57:56AM +0100, Will Deacon wrote:
> > On Thu, May 21, 2020 at 09:34:10AM +0200, Arnd Bergmann wrote:
> > > On Thu, May 21, 2020 at 9:07 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > On Wed, May 20, 2020 at 11:54:16PM +0200, Arnd Bergmann wrote:
> > > > > On Wed, May 20, 2020 at 11:29 PM Will Deacon <will@kernel.org> wrote:
> > > > > > Applied to arm64 (for-next/smccc), thanks!
> > > > > >
> > > > > > Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
> > > > > > but please shout if you'd rather I dropped this in order to pursue an
> > > > > > alternative approach.
> > > > >
> > > > > I missed the reply earlier, thanks for pointing me to it again.
> >
> > D'oh, I took your silence as "no objections". Oh well!
> >
> > > > > I'm not entirely convinced, but don't revert it for now because of that,
> > > > > I assume we can find a solution.
> >
> > Ok, cheers. It's on a separate branch so it's easy enough to drop if
> > necessary (i.e. no reverts needed). Sudeep -- please send any extra patches
> > on top of the branch.
> >
>
> Indeed, it is also last patch in the series. However if Arnd is happy
> with the sysfs names, we can move to generic code later without breaking
> anything.
>
> We need not revert or drop it now. I will leave that to you or Arnd to
> decide. Just that it may be too late to get acks for all the soc sysfs
> drivers in time for v5.8
>
> I am fine if you want to drop the last patch.

Ok, let's drop that patch then and make sure we do something that
everyone is happy with later on. I'm already in favor of adding
a more reliable soc_device instance based on this, but we need to
be sure we don't screw up the contents of the attributes when we
can't change them later.

> > > >> drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for function 'arm_smccc_version_init' [-Wmissing-prototypes]
> > > void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> > > ^
> > > drivers/firmware/smccc/smccc.c:14:1: note: declare 'static' if the
> > > function is not intended to be used outside of this translation unit
> > > void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> >
> > I saw that when I applied the patches, but since the function is called from
> > another compilation unit (psci/psci.o), I just ignored it as we have loads
> > of these already and it only screams if you build with W=1.
> >
>
> /me confused. Do you need the fix for this warning or you are happy to ignore?

I want a fix for that, as I hope we can eventually turn this warning on by
default and stop playing whack-a-mole when they come up. Most of these
warnings are harmless, but occasionally the prototypes don't match exactly
and cause real bugs depending on the configuration, and ensuring both
sides include a common header file is an easy way to make it work
more reliably.

Note that the warning should come up for either W=1 or C=1, and I also
think that
new code should generally be written sparse-clean and have no warnings with
'make C=1' as a rule.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
