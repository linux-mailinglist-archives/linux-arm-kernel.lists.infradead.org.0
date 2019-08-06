Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAA2835DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1A2yHHbduiWtcJOR/TFo55BX7rlWFR/J4GuoEnKCOM=; b=atazQKLBKIm8YT
	8BudNrrzR8QdjsQKHhe90dGrKz8XL+/oxSLA2WfiRxYVAZV1u9bx3W83RKYJf0sz4PLpeh/lzniry
	fZ1iRnI/UN7HNrsJ/f18HCTQn2GgzQyP3HvNlCS33jluTt/Uis9A7+gNR3VuT3JjuuopSvWyocHp1
	hGIgZdxLR6XSWVaqjfM0AqfL+Rf/KlYmNt27SlBWOWqZka+eXtIdSWEoEwH6C71ZqQd3ThtdyivCK
	dj66xogDfdYg2nLw1oOj4HuCDxHG1eC4Ff0Jlq0g7ikMWxWKfewIOroLRtHmdrlFJ1WrifCqSizVD
	9jz/UELyLy4tJZj6RVag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1n1-00032x-9O; Tue, 06 Aug 2019 15:54:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1mt-000325-3Q
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:54:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88C01344;
 Tue,  6 Aug 2019 08:54:10 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 351913F575;
 Tue,  6 Aug 2019 08:54:09 -0700 (PDT)
Date: Tue, 6 Aug 2019 16:54:07 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 3/6] drivers: firmware: psci: Decouple checker from
 generic ARM CPUidle
Message-ID: <20190806155407.GC16546@e107155-lin>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-4-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722153745.32446-4-lorenzo.pieralisi@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_085411_187825_3E2F0580 
X-CRM114-Status: GOOD (  12.42  )
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
 linux-pm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 04:37:42PM +0100, Lorenzo Pieralisi wrote:
> The PSCI checker currently relies on the generic ARM CPUidle
> infrastructure to enter an idle state, which in turn creates
> a dependency that is not really needed.
> 
> The PSCI checker code to test PSCI CPU suspend is built on
> top of the CPUidle framework and can easily reuse the
> struct cpuidle_state.enter() function (previously initialized
> by an idle driver, with a PSCI back-end) to trigger an entry
> into an idle state, decoupling the PSCI checker from the
> generic ARM CPUidle infrastructure and simplyfing the code
> in the process.
> 
> Convert the PSCI checker suspend entry function to use
> the struct cpuidle_state.enter() function callback.
> 
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

Not sure why we didn't take this path from the beginning.
Anyways make sense and much needed for later patches in the series.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
