Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DAC92138
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 12:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SK3cyJnjyVCiz4c1PAY/ZE8TkRmpfbqo1YRPLz9XCgo=; b=uM6Tdt1F6eVuX2
	hCB1a3VpGr3sJ0m+smTz5WIHtHq2nVl9+EdjOQ8GO8i/qUiRQHHaPsthnfMbtuyAA1hAQycZMpvdo
	wxXnQrzWHKYecsC2GwCAKZH1x9bOBQxr5bjEdjCukYAda+A2Ckxn1Cu9RPGbfGiLyva3bS/DBBG0h
	ldg8GyNr6nWDG2MVa/DBa5g2yMmwQPpQWmwZEROLZahKYL+PnQUUfLpnVdvxl/svg1XE64d04qvdU
	C+T0BME0yPmIYX0y6tj/AtLLT5iL5g8qcwkeqaZDzuXL6UEXVTVcEyvqowCkmyoi7DVFR8gEwQSol
	lNI/cJOkYHDkOdot0eoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzenL-00060h-64; Mon, 19 Aug 2019 10:21:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzemq-00060I-IK
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 10:21:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CA62344;
 Mon, 19 Aug 2019 03:21:14 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32E0B3F706;
 Mon, 19 Aug 2019 03:21:13 -0700 (PDT)
Date: Mon, 19 Aug 2019 11:21:03 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 0/2] ARM: psci: cpuidle: defconfig updates
Message-ID: <20190819102053.GA30692@e121166-lin.cambridge.arm.com>
References: <20190814125239.6270-1-lorenzo.pieralisi@arm.com>
 <20190819075716.GG5999@X250>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819075716.GG5999@X250>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_032116_652463_55F0DA8E 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, soc@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:57:17AM +0200, Shawn Guo wrote:
> On Wed, Aug 14, 2019 at 01:52:37PM +0100, Lorenzo Pieralisi wrote:
> > Rerouting defconfig updates related to this patch series:
> > 
> > https://lore.kernel.org/linux-arm-kernel/cover.1565348376.git.lorenzo.pieralisi@arm.com/
> > 
> > to arm-soc, as agreed in:
> > 
> > https://lore.kernel.org/linux-arm-kernel/58d9677db3510ed106fe23118090c84f78a44102.1565348376.git.lorenzo.pieralisi@arm.com/
> > 
> > Patches [1-6] are already queued in the ARM64 tree.
> > 
> > Please consider pulling these defconfig changes, thank you very much.
> 
> We, platform maintainers, also send arch/arm64/configs/defconfig changes
> to arm-soc folk.  So I applied both patches to IMX tree and will send
> them to arm-soc for 5.4 inclusion.

Hi Shawn,

there is no need, these updates were already pulled in arm-soc so
there is nothing to do, please drop them.

Thanks,
Lorenzo

> Shawn
> 
> > 
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > 
> > Lorenzo Pieralisi (2):
> >   arm64: defconfig: Enable the PSCI CPUidle driver
> >   ARM: imx_v6_v7_defconfig: Enable the PSCI CPUidle driver
> > 
> >  arch/arm/configs/imx_v6_v7_defconfig | 1 +
> >  arch/arm64/configs/defconfig         | 1 +
> >  2 files changed, 2 insertions(+)
> > 
> > -- 
> > 2.21.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
