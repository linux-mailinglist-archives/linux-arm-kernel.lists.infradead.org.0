Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBC910CA2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RusbEFxyAaCF3PNU8VmsA6/3ePbgQB4XOpcYLMg1pTA=; b=e8h8w7gCihlJH/
	0uzl48cdwlfvGpOfCDMrBTiMVRKTHXZBiNF+T9pUC0OCsoAXy7gXiG35MG9hC4au/oRPsoH7Z6b6y
	XdcBFAvFZ6alwgoF+EGgf1D3jShJBAhWJrRJTszCfmSBwSBj6yu30HiKcxcHfshboVhha8QYuCsJ+
	fgxaTaZ9sXVXY3oMVb5jme3X+9W3IDj6ABisM+KrFKMR62MVmaMTaOg1UaNxFLpjPZh9p6YIUD+WN
	lco9RTBtHAhRkXGStQRo3GK6cwVnwGP8sajtFG/39DvoI9VjJebpcXcwTQXC4CXmpDh7oWfGsrgj8
	NdUz8jZhx8uyY4MrLJjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKZh-0008Do-Tp; Thu, 28 Nov 2019 14:15:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKZV-0007Cd-Bh
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:15:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55E0530E;
 Thu, 28 Nov 2019 06:15:02 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E4643F68E;
 Thu, 28 Nov 2019 06:15:00 -0800 (PST)
Date: Thu, 28 Nov 2019 14:14:51 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
Message-ID: <20191128141443.GA31123@e121166-lin.cambridge.arm.com>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-9-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127102914.18729-9-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_061505_455865_861B7D06 
X-CRM114-Status: GOOD (  11.18  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 11:29:09AM +0100, Ulf Hansson wrote:

[...]

> +struct device *psci_dt_attach_cpu(int cpu)
> +{
> +	struct device *dev;
> +
> +	/* Currently limit the hierarchical topology to be used in OSI mode. */
> +	if (!psci_has_osi_support())
> +		return NULL;
> +
> +	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> +	if (IS_ERR_OR_NULL(dev))
> +		return dev;
> +
> +	pm_runtime_irq_safe(dev);
> +	if (cpu_online(cpu))

It is unclear to me how we handle (or rather we don't) CPU hotplug
with this series - it does not look OK unless genpd code manages
that automatically.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
