Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260921DC810
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swgKyb3NWb2FjsJBX/ZxQOmJz+R/9ZgGTKma3TF47K0=; b=KZ15K2EPIWciGY
	QKQjiTV/CVFmLAZxlxbZ1HX/F08vO07lgf8TfprS/cMSoZPLtyuddBQRAt6UVEuDt+PhaB6bnxfD9
	hmx2FhtezaFRB4XtrOuIDrnxiStNog8yhWOdGsSsN4B22k3/0TJZloFh+FWgjr1T73vXXY2YdCP5i
	A4smm6EpirOtE4AOl4izOxMB4oqJ7bc5QpSW48u/T0hkSy8DiaFYuznW92p4fTiT0ddjmCF6BAHA1
	1xVU5YM0RbanAvzxyiUxmTXQwibD5rVI2Xyha7D58pwMbTxG/bYFL98ngD4g03wvF7U0ux3kkm5xk
	q30cIXNYDKtoXwhU1yyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbg5o-00087v-FB; Thu, 21 May 2020 07:58:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbg5f-000871-0l
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:58:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EAB332065F;
 Thu, 21 May 2020 07:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590047881;
 bh=4lM/8ShYtWTr1Pw2EKWG6DtgkHZzD7Wz1k87Xzi6HFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HY+eX+3wW8axbeDNmoF0xI9NLvnL9Gmq4GjQ8bgzy/k8kxiCQPsggsu9KVYa3Nvr2
 fy+LEkd1RklhMh/qZbSdi/UVuBG1Mec6Fvwb3lFNtOzQAldPGf0dwr0Mmd13yLLQ2Z
 MxO3HXq1CgEVUpIjZXlKLJ8YZSMvdMobRHiUkdgo=
Date: Thu, 21 May 2020 08:57:56 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521075755.GA4668@willie-the-truck>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_005807_099490_7D841008 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 09:34:10AM +0200, Arnd Bergmann wrote:
> On Thu, May 21, 2020 at 9:07 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > On Wed, May 20, 2020 at 11:54:16PM +0200, Arnd Bergmann wrote:
> > > On Wed, May 20, 2020 at 11:29 PM Will Deacon <will@kernel.org> wrote:
> > > > Applied to arm64 (for-next/smccc), thanks!
> > > >
> > > > Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
> > > > but please shout if you'd rather I dropped this in order to pursue an
> > > > alternative approach.
> > >
> > > I missed the reply earlier, thanks for pointing me to it again.

D'oh, I took your silence as "no objections". Oh well!

> > > I'm not entirely convinced, but don't revert it for now because of that,
> > > I assume we can find a solution.

Ok, cheers. It's on a separate branch so it's easy enough to drop if
necessary (i.e. no reverts needed). Sudeep -- please send any extra patches
on top of the branch.

> > I liked your idea of making this generic and hardcode values if required
> > for other drivers. I will take a look at that/
> >
> > > However, please have a look at the build failure report for patch 5
> > > and fix it if you can see what went wrong.
> > >
> >
> > Any pointers for that failure ? I seem to have missed them. I pushed
> > branch couple of times to my tree but got build success both times.
> > Any specific config or compilers ?
> 
> See below for the reply from the 0day build bot to your email. It seems it
> was not sent to the mailing list, but you were on Cc. Looking at it now,
> the fix should be trivial.

[...]

> >> drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for function 'arm_smccc_version_init' [-Wmissing-prototypes]
> void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> ^
> drivers/firmware/smccc/smccc.c:14:1: note: declare 'static' if the
> function is not intended to be used outside of this translation unit
> void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)

I saw that when I applied the patches, but since the function is called from
another compilation unit (psci/psci.o), I just ignored it as we have loads
of these already and it only screams if you build with W=1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
