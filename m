Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EBD183AB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:37:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=auXrB09gNym7qvunZ52uIMxrvXocY/ZGzr7EdSqZoi8=; b=pz5T2fN31nLSjK
	Lx7qUI3shVW56xOlxVz2fvkH45KVo0nKLe7/seHZ4Tm/O5cpv63ZeOh+jvfGYkZC3QoQSP9NCkZpj
	Bro0xuotW49W6ui02KTh9h2S+bTCUu3hrrEM9quXEpqcrhM6gKyGjUa+gWvShcrXRbXbs2JhtTQbz
	XCWCnX6rkS3uAemgmCwGDyVOJtLtdXNmsNlRKr5rgbE/V7+4yYTWQYid2sm5E8Ct9NPYvld9hInhm
	LkP9mrs0slabv0+kPgCoBuo28T/ytdMp6dyQzH+IIcvIGsahLLCybkJNCatHz0QVP236P7qeaWj7e
	/c2yHmMdNxsE/GlQYbjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUZn-00006U-OZ; Thu, 12 Mar 2020 20:37:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUZg-00005d-FE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 20:37:02 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A74082067C;
 Thu, 12 Mar 2020 20:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584045419;
 bh=Ufrs0NrxPRpAXMAHKSK7UC+Qag5UGe1br16eZilZ6GE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cFy0DYaTnVfy9zSCJ4tZwxeYmUh9YwFvLPx5N56vblSaDRqsG/LhI/Em2XHoqFdGz
 gTxnKGk8O0tinDj4CC8ZB+7S/EECEULbXVwX4MiMjwOPAtzrI79hxwu2xUviuC+P3d
 B/qyq2ztpdkTgD0qW+BvPOIrPMLn1KSyl+kLXD6w=
Date: Thu, 12 Mar 2020 15:36:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Qi Liu <liuqi115@huawei.com>
Subject: Re: [PATCH RFC] perf:Add driver for HiSilicon PCIe PMU
Message-ID: <20200312203657.GA175613@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584014816-1908-1-git-send-email-liuqi115@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_133700_636647_53DD894C 
X-CRM114-Status: GOOD (  26.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: mark.rutland@arm.com, linux-pci@vger.kernel.org, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use "git log --oneline drivers/perf" to see the convention, and update
subject to follow suit.  At least add a space in "perf:Add".

On Thu, Mar 12, 2020 at 08:06:56PM +0800, Qi Liu wrote:
> From: Qi liu <liuqi115@huawei.com>
> 
> PCIe PMU Root Complex Integrate End Point(IEP) device is
> supported to sample bandwidth, latency, buffer occupation,
> bandwidth utilization etc.
> Each PMU IEP device monitors multiple root ports, and each
> IEP is registered as a pmu in /sys/bus/event_source/devices,
> so users can select the target IEP, and use filter to select
> root port, function and event.
> Filtering options are:
> event:    - select the event.
> subevent: - select the subevent.
> port:     - select target root port.
> func:     - select target EP device under the port.

The above *looks* like it's supposed to be three separate paragraphs;
please add blank lines between them.

s/Integrate/Integrated/

I assume this is a vendor-specific device; if so, please mention the
vendor so it doesn't look like something generic.

> Example: hisi_pcie_00_14_00/event=0x08,subevent=0x04,   \
> port=0x05,func=0x00/ -I 1000
> 
> PMU IEP device is described by its bus, device and function,
> target root port is 0x05 and target EP under it is function
> 0x00. Subevent 0x04 of event 0x08 is sampled.
> 
> Note that in this RFC:
> 1. PCIe PMU IEP hardware is still in development.
> 2. Perf common event list is undetermined, and name of these
> events still need to be discussed.
> 3. port filter could only select one port each time.
> 4. There are two possible schemes of pmu registration, one is
> register each root port as a pmu, it is easier for users to
> select target port. The other one is register each IEP as pmu,
> for counters are per IEP, not per root port, the second scheme
> describes hardware PMC much more reasonable, but need to add
> "port" filter option to select port. We use the second one in
> this RFC.
> 
> Signed-off-by: Qi Liu <liuqi115@huawei.com>
> ---
>  drivers/perf/Kconfig             |  10 +
>  drivers/perf/Makefile            |   1 +
>  drivers/perf/pci/Makefile        |   2 +
>  drivers/perf/pci/hisi_pcie_pmu.c | 887 +++++++++++++++++++++++++++++++++++++++
>  include/linux/cpuhotplug.h       |   1 +
>  5 files changed, 901 insertions(+)
>  create mode 100644 drivers/perf/pci/Makefile
>  create mode 100644 drivers/perf/pci/hisi_pcie_pmu.c
> 
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index 09ae8a9..047022b 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -114,6 +114,16 @@ config THUNDERX2_PMU
>  	   The SoC has PMU support in its L3 cache controller (L3C) and
>  	   in the DDR4 Memory Controller (DMC).
>  
> +config PCIE_PMU

This config symbol is too generic for a vendor-specific device.

> +	tristate "PCIE PERF PMU"
> +	depends on ARM64
> +	default m
> +	help
> +	   Provide support for 1630 PCIe performance monitoring unit (PMU)
> +	   IEP devices.
> +	   Adds the PCIe PMU into perf events system for monitoring latency,
> +	   bandwidth etc.

> +static int hisi_pcie_pmu_irq_register(struct pci_dev *pdev,
> +				      struct hisi_pcie_pmu *pcie_pmu)
> +{
> +	int irq, ret;
> +
> +	irq = pci_irq_vector(pdev, HISI_PCIE_EVENT_IRQ_VECTOR);
> +	ret = request_irq(irq, hisi_pcie_pmu_irq, IRQF_SHARED,
> +			  pcie_pmu->dev_name, pcie_pmu);
> +	if (ret)
> +		return ret;
> +
> +	pcie_pmu->irq = irq;
> +	return ret;

  return 0;

> +}

> +static int hisi_pcie_init_pmu(struct pci_dev *pdev,
> +			      struct hisi_pcie_pmu *pcie_pmu)
> +{
> +	char *name;
> +	int ret;
> +
> +	hisi_get_pcie_pmu(pdev, pcie_pmu);
> +
> +	ret = cpuhp_state_add_instance(CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE,
> +				       &pcie_pmu->node);
> +	if (ret) {
> +		pci_err(pdev, "Error %d registering hotplug;\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * domain_id is 0x00 means continuous domain, we use bdf num to
> +	 * select IEP. Otherwise, use domain_id + bdf.

I don't see what this comment applies to.  Nothing in this function
uses "domain_id".  In fact, pcie_pmu->domain_id is set but never used
anywhere.

> +	 */
> +	name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
> +			      "hisi_pcie_%x_%x_%x", pcie_pmu->bus_id,
> +			      pcie_pmu->device_id, pcie_pmu->func_id);

> +static int hisi_pcie_pmu_probe(struct pci_dev *pdev,
> +			       const struct pci_device_id *id)
> +{
> +	struct hisi_pcie_pmu *pcie_pmu;
> +	int ret;
> +
> +	pcie_pmu = devm_kzalloc(&pdev->dev, sizeof(*pcie_pmu), GFP_KERNEL);
> +	if (!pcie_pmu)
> +		return -ENOMEM;
> +
> +	pci_set_drvdata(pdev, pcie_pmu);
> +	ret = hisi_pcie_init_dev(pdev);
> +	if (ret)
> +		return ret;
> +
> +	ret = hisi_pcie_init_pmu(pdev, pcie_pmu);
> +	if (ret)
> +		return ret;
> +
> +	return ret;

This is the same as:

  return hisi_pcie_init_pmu(pdev, pcie_pmu);

> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
