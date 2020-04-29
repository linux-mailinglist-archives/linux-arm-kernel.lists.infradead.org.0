Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62F61BE9D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFfCz/h6bC9JrSkLtri1jRZs34RfhDf1FEBqwRuLm3A=; b=Rhp/IKTpA8EmdG
	i3AF9SYkBEzchQRurcQIZkSHdhiApY6EfgSEVkO9lpUWRq772Bzjlqt7nyh5Gac+5AqNphgXabeVV
	e+6JjoppBEYxEXe5E729e67v3uMeZdB/86dd4MAHN2ln2OYVX3jm6RBHtQwSZIz7OkDVO5APvoYxY
	e7ZY5jRnXGOavnyjv44J1WLIdTpIrcf63PBK7bzlm65JI94UXrPoO3ycnQxne4Oa64zxh3F3aPJRj
	mXaVgs2S2zlz6Uz3bwYa0Qffic35Z9sAplzwXs5ZU0Wfagg3jC7XfsKPyip5qYZdCUHaVwpe1B3CG
	HVkKpoETfY9lTFEQnsxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuDt-0006Il-Uq; Wed, 29 Apr 2020 21:26:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuDk-0006IL-1X
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:26:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 308092073E;
 Wed, 29 Apr 2020 21:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588195579;
 bh=MaCkXnxZeesUHYpyP7Lu3SfMr1AsQhB6Xpct+XkQlHs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wg6NBLr2LtkWbzxJYrDsfKqukVBwgLUfEJKVdEL0kjfpwdZ+k4QFReJsRr4NSLlOw
 nUQQq0i8zZ4EMboEDkYuWrzMT30K1TAanS76Bu+dqqte5yH4qxZqvKzwFeP7TN13BG
 3x6WHb1IJb6kCS3Nlc97pghn74qI1UnoR9H8TleE=
Date: Wed, 29 Apr 2020 22:26:15 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 00/16] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
Message-ID: <20200429212614.GD8604@willie-the-truck>
References: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
 <6749304e-8a4d-f4b9-eb40-91f0dd13166e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6749304e-8a4d-f4b9-eb40-91f0dd13166e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142620_107822_6E19F62B 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 maz@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Wed, Apr 29, 2020 at 03:07:15PM +0530, Anshuman Khandual wrote:
> On 04/14/2020 03:18 PM, Anshuman Khandual wrote:
> > This series is primarily motivated from an adhoc list from Mark Rutland
> > during our previous ID_ISAR6 discussion [1]. The current proposal also
> > accommodates some more suggestions from Will and Suzuki.
> > 
> > This series adds missing 32 bit system registers (ID_PFR2, ID_DFR1 and
> > ID_MMFR5), adds missing features bits on all existing system registers
> > (32 and 64 bit) and some other miscellaneous changes. While here it also
> > includes a patch which does macro replacement for various open bits shift
> > encodings for various CPU ID registers. There is a slight re-order of the
> > patches here as compared to the previous version (V1).
> > 
> > This series is based on v5.7-rc1. All feature bits enabled here can be
> > referred in ARM DDI 0487F.a specification. Though I have tried to select
> > appropriate values for each new feature being added here, there might be
> > some inconsistencies (or mistakes). In which case, please do let me know
> > if anything needs to change. Thank you.
> > 
> > [1] https://patchwork.kernel.org/patch/11287805/
> > 
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com> 
> > Cc: Marc Zyngier <maz@kernel.org>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Cc: kvmarm@lists.cs.columbia.edu
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > 
> > Changes in V2:
> > 
> > - Added Suggested-by tag from Mark Rutland for all changes he had proposed
> > - Added comment for SpecSEI feature on why it is HIGHER_SAFE per Suzuki
> > - Added a patch which makes ID_AA64DFR0_DOUBLELOCK a signed feature per Suzuki
> > - Added ID_DFR1 and ID_MMFR5 system register definitions per Will
> > - Added remaining features bits for relevant 64 bit system registers per Will
> > - Changed commit message on [PATCH 5/7] regarding TraceFilt feature per Suzuki
> > - Changed ID_PFR2.CSV3 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will
> > - Changed ID_PFR0.CSV2 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will 
> > - Changed some commit messages
>
> Just a gentle ping. I am wondering if you had a chance to glance
> through this updated series.

Please can you resend based on for-next/cpufeature?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
