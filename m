Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07DB86269
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEMqRUFl2+ueL4hQGPYMWFFNpd0ZidZIhrjzrJT/ewM=; b=sAT3krBciBIwti
	VGYbJDz4ZlFs4sErzjK/8iR7ETiF3hy5O+wv16AF2mnzObQnN30W8ZK2wQ9nmkO0eswRt8kXAgPge
	1rmJnQ5a4pe1s/icJGipDygBD9xn/CI6TcdQ1ux9jaMqM5EWmrvnPoH/cSxcz7C1I4S7+tXMIF6jO
	lyP9gyniBo6cOdjNfLCNNZkYbtcPnpeqX4WLXF3kjzX5iSg3I3x59DJ+Ie5OIa2Rixb7PbT1w5+kX
	oVuaoqk1gfgvJENzh6EF59/bKBChuNz3iWHQRin5s5ak7Wc++iQ1Elw+jycjY8+D3gSO7xc5gjYGf
	A0ws0ykrLYRrJjKhUjaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhxU-0005jw-7L; Thu, 08 Aug 2019 12:55:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhwy-0005SO-PV
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:55:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39A7515A2;
 Thu,  8 Aug 2019 05:55:24 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D913F3F694;
 Thu,  8 Aug 2019 05:55:22 -0700 (PDT)
Date: Thu, 8 Aug 2019 13:55:16 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 6/6] PSCI: cpuidle: Refactor CPU suspend power_state
 parameter handling
Message-ID: <20190808125516.GA2246@e107155-lin>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-7-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722153745.32446-7-lorenzo.pieralisi@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_055525_003718_0D222115 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 04:37:45PM +0100, Lorenzo Pieralisi wrote:
> Current PSCI code handles idle state entry through the
> psci_cpu_suspend_enter() API, that takes an idle state index as a
> parameter and convert the index into a previously initialized
> power_state parameter before calling the PSCI.CPU_SUSPEND() with it.
>
> This is unwieldly, since it forces the PSCI firmware layer to keep track
> of power_state parameter for every idle state so that the
> index->power_state conversion can be made in the PSCI firmware layer
> instead of the CPUidle driver implementations.
>
> Move the power_state handling out of drivers/firmware/psci
> into the respective ACPI/DT PSCI CPUidle backends and convert
> the psci_cpu_suspend_enter() API to get the power_state
> parameter as input, which makes it closer to its firmware
> interface PSCI.CPU_SUSPEND() API.
>
> A notable side effect is that the PSCI ACPI/DT CPUidle backends
> now can directly handle (and if needed update) power_state
> parameters before handing them over to the PSCI firmware
> interface to trigger PSCI.CPU_SUSPEND() calls.
>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> +static __init int psci_cpu_init_idle(unsigned int cpu)
> +{
> +	struct device_node *cpu_node;
> +	int ret;
> +
> +	/*
> +	 * If the PSCI cpu_suspend function hook has not been initialized
> +	 * idle states must not be enabled, so bail out
> +	 */
> +	if (!psci_ops.cpu_suspend)
> +		return -EOPNOTSUPP;
> +
> +	cpu_node = of_get_cpu_node(cpu, NULL);

[nit] You could use of_cpu_device_node_get in linux/of_device.h as
it may avoid parsing if used later during the boot(i.e. after
cpu->of_node is populated). I think there's another instance in
psci_idle_init_cpu

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
