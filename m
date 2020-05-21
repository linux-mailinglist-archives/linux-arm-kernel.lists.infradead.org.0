Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4665D1DC849
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrnIIpRHsU8DetbqiyTpZ4Fn4jjOtZIYbosSbn6anKA=; b=TVGorS8SjQYH9+
	4gPDbBi23u9D6gJo9J0hyBiK28yAo10UuSk7T39qX6Y1vCHnnX/DclYL+CMJ/wmAPK6qpzIdGbSfK
	CroCVkCF1hCvUTnUlczndH7aSZ7vLNDRGfaYWdpZTcWmI2YSO9x+2hevx8M/2Sb0o+ogFUVxvXXHo
	0Wxk6KVeFXKbDNpa7AMGaELyunMjBHZ4KdGSI9Ro0UYn1A4vKRKymMX5jow5La3G5VMkLiqKmPzuR
	QuqfeWZFNuguhU646mnGEByHoAp95BIK//vmAaH6SywEabQ9hnh4JS7ucG/ZHEM2uVCZO6MVxknsK
	U6QVrUkPvzOelAiTtmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgIp-00012r-7j; Thu, 21 May 2020 08:11:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgIB-0000qS-9U
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:11:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 863E7D6E;
 Thu, 21 May 2020 01:11:01 -0700 (PDT)
Received: from bogus (unknown [10.37.12.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D689D3F52E;
 Thu, 21 May 2020 01:10:58 -0700 (PDT)
Date: Thu, 21 May 2020 09:10:55 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521081055.GD1131@bogus>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521075755.GA4668@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_011108_381926_9365C82D 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 08:57:56AM +0100, Will Deacon wrote:
> On Thu, May 21, 2020 at 09:34:10AM +0200, Arnd Bergmann wrote:
> > On Thu, May 21, 2020 at 9:07 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > On Wed, May 20, 2020 at 11:54:16PM +0200, Arnd Bergmann wrote:
> > > > On Wed, May 20, 2020 at 11:29 PM Will Deacon <will@kernel.org> wrote:
> > > > > Applied to arm64 (for-next/smccc), thanks!
> > > > >
> > > > > Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
> > > > > but please shout if you'd rather I dropped this in order to pursue an
> > > > > alternative approach.
> > > >
> > > > I missed the reply earlier, thanks for pointing me to it again.
> 
> D'oh, I took your silence as "no objections". Oh well!
> 
> > > > I'm not entirely convinced, but don't revert it for now because of that,
> > > > I assume we can find a solution.
> 
> Ok, cheers. It's on a separate branch so it's easy enough to drop if
> necessary (i.e. no reverts needed). Sudeep -- please send any extra patches
> on top of the branch.
>

Indeed, it is also last patch in the series. However if Arnd is happy
with the sysfs names, we can move to generic code later without breaking
anything.

We need not revert or drop it now. I will leave that to you or Arnd to
decide. Just that it may be too late to get acks for all the soc sysfs
drivers in time for v5.8

I am fine if you want to drop the last patch.

> > > I liked your idea of making this generic and hardcode values if required
> > > for other drivers. I will take a look at that/
> > >
> > > > However, please have a look at the build failure report for patch 5
> > > > and fix it if you can see what went wrong.
> > > >
> > >
> > > Any pointers for that failure ? I seem to have missed them. I pushed
> > > branch couple of times to my tree but got build success both times.
> > > Any specific config or compilers ?
> > 
> > See below for the reply from the 0day build bot to your email. It seems it
> > was not sent to the mailing list, but you were on Cc. Looking at it now,
> > the fix should be trivial.
> 
> [...]
> 
> > >> drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for function 'arm_smccc_version_init' [-Wmissing-prototypes]
> > void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> > ^
> > drivers/firmware/smccc/smccc.c:14:1: note: declare 'static' if the
> > function is not intended to be used outside of this translation unit
> > void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
> 
> I saw that when I applied the patches, but since the function is called from
> another compilation unit (psci/psci.o), I just ignored it as we have loads
> of these already and it only screams if you build with W=1.
> 

/me confused. Do you need the fix for this warning or you are happy to ignore?

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
