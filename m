Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA651DC754
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXkbtc5u3/rDfo4/E4oTYpNTdN3fsbd8pcfcNGFu/Gc=; b=AFS97Sny6M4zHi
	OPSfK2oic11f+F6QmPhGzkIgEsKs4knWIPgMLbYg7YDKcJ3WBoAXl5A4RcRqEV97BPbLA6Zajnefx
	BFPSW3gmhKYxNcVrHOuQEJWK6e0kKF3OzlZdKLiIPMDO45SHjrQngiXem9J1dJcuV+E77FaFPXz2R
	8x2uXloaswFDxbipwzgSuG8pY6l+w/2Euq1aSEIA7XGEaVrsFoYxUlsiMPH244WBDXl+G0BGGlZFW
	8MupZ/9F7k1t1mpiHDvki9PxHTOMdY1lcD2ry3EIqchTHTrA1OL0WKqrWVVZFrUrg7DLD7Y2MONFU
	66ScKRq6+TPmQ6ymNodA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfJ9-0001qD-3k; Thu, 21 May 2020 07:07:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfIk-0001oN-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:07:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2E77D6E;
 Thu, 21 May 2020 00:07:22 -0700 (PDT)
Received: from bogus (unknown [10.37.12.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CADE3F52E;
 Thu, 21 May 2020 00:07:20 -0700 (PDT)
Date: Thu, 21 May 2020 08:07:12 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521070629.GB1131@bogus>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_000734_454564_D29544E4 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:54:16PM +0200, Arnd Bergmann wrote:
> On Wed, May 20, 2020 at 11:29 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, 18 May 2020 10:12:15 +0100, Sudeep Holla wrote:
> > > This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
> > > This doesn't add other changes added in SMCCC v1.2 yet. They will
> > > follow these soon along with its first user SPCI/PSA-FF.
> > >
> > > This is tested using upstream TF-A + the patch[3] fixing the original
> > > implementation there.
> > >
> > > [...]
> >
> > Applied to arm64 (for-next/smccc), thanks!
> >
> > [1/7] firmware: smccc: Add HAVE_ARM_SMCCC_DISCOVERY to identify SMCCC v1.1 and above
> >       https://git.kernel.org/arm64/c/e5bfb21d98b6
> > [2/7] firmware: smccc: Update link to latest SMCCC specification
> >       https://git.kernel.org/arm64/c/15c704ab6244
> > [3/7] firmware: smccc: Add the definition for SMCCCv1.2 version/error codes
> >       https://git.kernel.org/arm64/c/0441bfe7f00a
> > [4/7] firmware: smccc: Drop smccc_version enum and use ARM_SMCCC_VERSION_1_x instead
> >       https://git.kernel.org/arm64/c/ad5a57dfe434
> > [5/7] firmware: smccc: Refactor SMCCC specific bits into separate file
> >       https://git.kernel.org/arm64/c/f2ae97062a48
> > [6/7] firmware: smccc: Add function to fetch SMCCC version
> >       https://git.kernel.org/arm64/c/a4fb17465182
> > [7/7] firmware: smccc: Add ARCH_SOC_ID support
> >       https://git.kernel.org/arm64/c/ce6488f0ce09
> >
> > Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
> > but please shout if you'd rather I dropped this in order to pursue an
> > alternative approach.
>
> I missed the reply earlier, thanks for pointing me to it again.
>
> I'm not entirely convinced, but don't revert it for now because of that,
> I assume we can find a solution.
>

I liked your idea of making this generic and hardcode values if required
for other drivers. I will take a look at that/

> However, please have a look at the build failure report for patch 5
> and fix it if you can see what went wrong.
>

Any pointers for that failure ? I seem to have missed them. I pushed
branch couple of times to my tree but got build success both times.
Any specific config or compilers ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
