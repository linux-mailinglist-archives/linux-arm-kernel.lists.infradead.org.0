Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DC319A8EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFLnhcC06wVAVME5yUA4mrD6e3DxdomLpiCYjg516/U=; b=KA1RWbaTOlaFEl
	dVB+7Pau1Ic//iCZb8zhfDlvJ9DDcqRuZELnbFXEcR2P8R0HkIFyPHH+prDMlET83rr9HmA64vH5Q
	Se6IKLu+oSLuHyp97DmtA4xisqlvvKNdzIXVm1JD1RRxWPqWZi8TTvZpLcIHb3TjE++YkxEQE7nsC
	ku80qlGYpOcCaN9lOMVelx28Fd5S0Lf4XRPZiD13eS1wweR6yDFRHHZTVr3Bt2wOf0uURKOieYNZV
	zuZq1aeYpsuTwre4SEWIHos3BOJTwrVf0JaxEaE6nZNZr78bRVzfzylrrRvUOK3WUxOUB7ugIdQdd
	kAyMn2AnCTKYzKSokqMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJa39-0006Ch-MN; Wed, 01 Apr 2020 09:52:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJa32-0006CA-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:52:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDB611FB;
 Wed,  1 Apr 2020 02:52:35 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 96DBF3F52E;
 Wed,  1 Apr 2020 02:52:34 -0700 (PDT)
Date: Wed, 1 Apr 2020 10:52:26 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200401095226.GA17163@C02TD0UTHF1T.local>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319151646.GC4876@lakrids.cambridge.arm.com>
 <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
 <20200320105315.GA35932@C02TD0UTHF1T.local>
 <A50AA800-3F65-4761-9BCF-F86A028E107D@amperemail.onmicrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A50AA800-3F65-4761-9BCF-F86A028E107D@amperemail.onmicrosoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_025236_767790_80948610 
X-CRM114-Status: GOOD (  17.16  )
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
Cc: Tuan Phan <tuanphan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:14:59PM -0700, Tuan Phan wrote:
> > On Mar 20, 2020, at 4:25 AM, Mark Rutland <mark.rutland@arm.com> wrote:
> > On Thu, Mar 19, 2020 at 12:03:43PM -0700, Tuan Phan wrote:
> >>> On Mar 19, 2020, at 8:16 AM, Mark Rutland <mark.rutland@arm.com> wrote:
> >>> On Tue, Mar 17, 2020 at 05:29:38PM -0700, Tuan Phan wrote:
> >>>> +static int arm_dmc620_pmu_dev_init(struct arm_dmc620_pmu *dmc620_pmu)
> >>>> +{
> >>>> +	struct platform_device *pdev = dmc620_pmu->pdev;
> >>>> +	int ret;
> >>>> +
> >>>> +	ret = devm_request_irq(&pdev->dev, dmc620_pmu->irq,
> >>>> +				arm_dmc620_pmu_handle_irq,
> >>>> +				IRQF_SHARED,
> >>>> +				dev_name(&pdev->dev), dmc620_pmu);
> >>> 
> >>> This should have IRQF_NOBALANCING | IRQF_NO_THREAD. I don't think we
> >>> should have IRQF_SHARED.
> >> => I agree on having IRQF_NOBALANCING and IRQF_NO_THREAD. But
> >> IRQF_SHARED is needed. In our platform all DMC620s share same IRQs and
> >> any cpus can access the pmu registers.
> > 
> > Linux needs to ensure that the same instance is concistently accessed
> > from the same CPU, and needs to migrate the IRQ to handle that. Given we
> > do that on a per-instance basis, we cannot share the IRQ with another
> > instance.
> > 
> > Please feed back to you HW designers that muxing IRQs like this causes
> > significant problems for software.
> 
> I looked at the SMMUv3 PMU driver and it also uses IRQF_SHARED. SMMUv3
> PMU and DMC620 PMU are very much similar in which counters can be
> accessed by any cores using memory map. Any special reasons
> IRQF_SHARED works with SMMUv3 PMU driver?

No; I believe that is a bug in the SMMUv3 PMU driver. If the IRQ were
shared, and another driver that held the IRQ changed the affinity,
things would go very wrong.

Note that it's also missing IRQF_NOBALANCING, which is also necessary to
avoid such issues.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
