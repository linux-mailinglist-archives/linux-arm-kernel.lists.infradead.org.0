Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CE416B5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhGnrAVK2AMT95XCoMFYY+SDnF3+MH/4mcT+dbzpj/w=; b=bXdTIznj5i9uQK
	N6q/KnSGkntUvFAMKRlkOj/u5OReaNrAjMpM49h7AGQFHsUepGrcaW6krcDyZeLEKuVGBoX4+DYjO
	RFt+cTS+Pvu9LC9BxrcjVMSLovpMRACuQ9F6KNQz/N2Oz/ehcf5d9UzT5a/7Jf0e8SA5d11nKzMBG
	ndESVh9kiJcDiMwW9cVodgf1Jq63JI/qyeOuUqpdmyCUNwyjug4UpJGgw6YTgJV12XzMAarlpnFMw
	uuZK3NudSDqK3XmelYoopbVBoizXKlyzonU1pQM3sqgHn20pwr5DP7EaV1aZFqAkk9OTJJhU/1q3v
	81NDGWaSHrlyxO5LckWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5nl-0003Bz-7B; Tue, 07 May 2019 19:30:57 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5nc-0003Av-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:30:50 +0000
Received: by mail-it1-x143.google.com with SMTP id o190so88916itc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GEWt1way9yw/s+Cad0tB3uZuQpxe173GbLBmeRNSaKw=;
 b=f0P9HCjH3npT0hrZ/TlTbuZahvqajcCEnKTA3uWq1YQC54uwgcOCr8T1ZciQdviS6m
 0iWT92KGvM/+afZ77a8u3YrwgH7tLV4+S1E+W0OwdSzrcjV1b3n6D4PUdRxMkHuD/6uT
 Xzrdlul7PvCHVHPOY7Gl1uNZzBUJ5+b8umvOoiq/RTHzYvYR/tqbnzv3JssuOh+F0Yai
 Ejrg5D2wHQ3HY4eo4IWmZ9va7mCIPpmqnERhVz4aHSoS2SlGn0tin81em3vPWOBkwsOq
 93CcCvo/yf2qDXsl9+fW3E1svzag8PQXhWERnqiTWxL6dbl3vHLH/bbap28XhGa6cJR7
 N5zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GEWt1way9yw/s+Cad0tB3uZuQpxe173GbLBmeRNSaKw=;
 b=GDEWQQKPdBnZ0CxD7GkLpUY1XB7Wsmj8NAWHXTR7EnjqtoQIQjHmVUwDozYHXn90tl
 KVyfQ1TmVL+elFa46rm+zjZR8lC+r07vgE8SH8653NRMMVvOKjOxEkTVXf5z3m5UP22B
 ku+jC+RQwr56dLFz8ReVq+sTnAPCMum4fPg+od83KSMprNshB6Ja+uZumu3CE7ORCLFx
 vIZEfWKLsO3QBCmVIHcEi6fxYFqGnI7OcXhRTWiq+eHEP4qMFQc/rayfWcfIALT4zmNT
 R8a6hfMyxBUVxe65LeMCX329nKRzsSo9UNUNe+5c9Ibn0D6reevp/qaLDVg2GpvRAlFw
 xuXQ==
X-Gm-Message-State: APjAAAVOFmpEIVAsPo3AI1oUj1ceoD+aMWxOgB7/oqLKXyOCClwY0WjO
 oLJ3UIY3LkyeBbfqpVMQofUrplB1tfAiz8vJeNI=
X-Google-Smtp-Source: APXvYqzFzmjhzfrvYpaValJP0oBHfVCzwADh+ntnksywhpIRzOENnMQcn4mLSah15XeybcX9IjdwUC+spVjmEhUdHp0=
X-Received: by 2002:a24:c545:: with SMTP id f66mr76500itg.114.1557257446383;
 Tue, 07 May 2019 12:30:46 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 7 May 2019 12:30:34 -0700
Message-ID: <CAHQ1cqGszjTZ+kSTeqHjoZ-QPKd6f1Afn+00-haJy_dJY4X4+g@mail.gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Frank Li <frank.li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123048_109222_12F84E47 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 11:43 AM Frank Li <frank.li@nxp.com> wrote:
>
> Add ddr performance monitor support for iMX8QXP
>
> There are 4 counters for ddr perfomance events.
> counter 0 is dedicated for cycles.
> you choose any up to 3 no cycles events.
>
> for example:
>
> perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
>
> Support below events.
>
>   imx8_ddr0/activate/                                     [Kernel PMU event]
>   imx8_ddr0/axid-read/                                    [Kernel PMU event]
>   imx8_ddr0/axid-write/                                   [Kernel PMU event]
>   imx8_ddr0/cycles/                                       [Kernel PMU event]
>   imx8_ddr0/hp-read-credit-cnt/                           [Kernel PMU event]
>   imx8_ddr0/hp-read/                                      [Kernel PMU event]
>   imx8_ddr0/hp-req-nodcredit/                             [Kernel PMU event]
>   imx8_ddr0/hp-xact-credit/                               [Kernel PMU event]
>   imx8_ddr0/load-mode/                                    [Kernel PMU event]
>   imx8_ddr0/lp-read-credit-cnt/                           [Kernel PMU event]
>   imx8_ddr0/lp-req-nocredit/                              [Kernel PMU event]
>   imx8_ddr0/lp-xact-credit/                               [Kernel PMU event]
>   imx8_ddr0/mwr/                                          [Kernel PMU event]
>   imx8_ddr0/precharge/                                    [Kernel PMU event]
>   imx8_ddr0/raw-hazard/                                   [Kernel PMU event]
>   imx8_ddr0/read-access/                                  [Kernel PMU event]
>   imx8_ddr0/read-activate/                                [Kernel PMU event]
>   imx8_ddr0/read-command/                                 [Kernel PMU event]
>   imx8_ddr0/read-cycles/                                  [Kernel PMU event]
>   imx8_ddr0/read-modify-write-command/                    [Kernel PMU event]
>   imx8_ddr0/read-queue-depth/                             [Kernel PMU event]
>   imx8_ddr0/read-write-transition/                        [Kernel PMU event]
>   imx8_ddr0/read/                                         [Kernel PMU event]
>   imx8_ddr0/refresh/                                      [Kernel PMU event]
>   imx8_ddr0/selfresh/                                     [Kernel PMU event]
>   imx8_ddr0/wr-xact-credit/                               [Kernel PMU event]
>   imx8_ddr0/write-access/                                 [Kernel PMU event]
>   imx8_ddr0/write-command/                                [Kernel PMU event]
>   imx8_ddr0/write-credit-cnt/                             [Kernel PMU event]
>   imx8_ddr0/write-cycles/                                 [Kernel PMU event]
>   imx8_ddr0/write-queue-depth/                            [Kernel PMU event]
>   imx8_ddr0/write/
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Don't really have anything to suggest, that I already haven't. LGTM, so:

Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>


> ---
>
> Notes:
>     Change from v11 to v12
>     * change name from imx_ddr to imx8_ddr
>
>     Change from v10 to v11
>      * using devm_platform_ioremap_resource
>      * using help macro IMX8_DDR_PMU_EVENT_ATTR
>
>     Change from v9 to v10
>      * use name imx8_ddr_perf_pmu
>      * cpuhp_setup_state_multi use DDR_PERF_DEV_NAME
>      * config: 0-7
>      * use read_relaxed() at ddr_perf_read_counter
>      * add .capabilities = PERF_PMU_CAP_NO_EXCLUDE
>      * raname ddr_perf_event_start to ddr_perf_counter_enable
>      * use FIELD_PREP
>      * write 0 to disalbe counter at ddr_perf_event_enable
>      * update hwc->state
>      * remove local64_set at ddr_perf_event_add
>      * move perf_pmu_register after irq_register to simplfy err handle
>
>     No change from v8 to v9
>
>     Change from v7 to v8
>      * remove unused define
>      * change total_events to active_events, change active_events to events
>      * remove flags,
>      * fix multi line comments code sytle
>      * add pmu_enable\disable function
>      * disable event at irq handle
>      * remove counter check at ddr_perf_free_counter
>      * remove pmu->irq check
>      * add group check
>
>     Change from v6 to v7
>      * added irq affinity handle, ref arm-ccn.c
>      * added IRQF_NOBALANCING | IRQF_NO_THREAD
>      * added ida_simple_remove at failure path
>
>     Change from v5 to v6
>      * fix insmod\rmmod problem
>      * remove randunt register read at irq handle
>      * change u32 irq to int
>      * devm_request_irq use default flags.
>
>     Change from v4 to v5
>      * Remove AXI ID filter function
>
>     Change from v3 to v4
>      * Change FSL_IMX8_DDR_PERF to FSL_IMX8_DDR_PMU
>      * sort include
>      * remove struct fsl_ddr_devtype_data
>      * Added comment need disable control first
>      * Added comment about must enable cycle counter
>      * Added macro for EVENT_AXI_READ, remove hardcode 0x41 and 0x42
>      * Added comment about cycle counter is fastest one
>
>     Change from v2 to v3
>      * remove kfree
>
>     Change from V1 to V2
>      * update Kconfig by use i.MX8 instead of i.MX8 QXP
>      * remove gpl statememnt since SPDX tag
>      * use dev_kzalloc
>      * use dev_err
>      * commit message show axi_read 0x41\axi_write 0x42
>      * commit message show cycles must be enabled
>      * Irq only issue at cycles overflow
>      * use NUM_COUNTER
>      * use devm_request_irq
>      * add hotplug callback to handle context migration
>
>  drivers/perf/Kconfig             |   7 +
>  drivers/perf/Makefile            |   1 +
>  drivers/perf/fsl_imx8_ddr_perf.c | 552 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 560 insertions(+)
>  create mode 100644 drivers/perf/fsl_imx8_ddr_perf.c
>
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index a94e586..9bc3785 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -70,6 +70,13 @@ config ARM_DSU_PMU
>           system, control logic. The PMU allows counting various events related
>           to DSU.
>
> +config FSL_IMX8_DDR_PMU
> +       tristate "Freescale i.MX8 DDR perf monitor"
> +       depends on ARCH_MXC
> +         help
> +         Provides support for ddr perfomance monitor in i.MX8. Provide memory
> +         througput information.
> +
>  config HISI_PMU
>         bool "HiSilicon SoC PMU"
>         depends on ARM64 && ACPI
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 3048994..2ebb4de 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -5,6 +5,7 @@ obj-$(CONFIG_ARM_DSU_PMU) += arm_dsu_pmu.o
>  obj-$(CONFIG_ARM_PMU) += arm_pmu.o arm_pmu_platform.o
>  obj-$(CONFIG_ARM_PMU_ACPI) += arm_pmu_acpi.o
>  obj-$(CONFIG_ARM_SMMU_V3_PMU) += arm_smmuv3_pmu.o
> +obj-$(CONFIG_FSL_IMX8_DDR_PMU) += fsl_imx8_ddr_perf.o
>  obj-$(CONFIG_HISI_PMU) += hisilicon/
>  obj-$(CONFIG_QCOM_L2_PMU)      += qcom_l2_pmu.o
>  obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> new file mode 100644
> index 0000000..15b0772
> --- /dev/null
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -0,0 +1,552 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2017 NXP
> + * Copyright 2016 Freescale Semiconductor, Inc.
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/init.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/of_irq.h>
> +#include <linux/perf_event.h>
> +#include <linux/slab.h>
> +
> +#define COUNTER_CNTL           0x0
> +#define COUNTER_READ           0x20
> +
> +#define COUNTER_DPCR1          0x30
> +
> +#define CNTL_OVER              0x1
> +#define CNTL_CLEAR             0x2
> +#define CNTL_EN                        0x4
> +#define CNTL_EN_MASK           0xFFFFFFFB
> +#define CNTL_CLEAR_MASK                0xFFFFFFFD
> +#define CNTL_OVER_MASK         0xFFFFFFFE
> +
> +#define CNTL_CSV_SHIFT         24
> +#define CNTL_CSV_MASK          (0xFF << CNTL_CSV_SHIFT)
> +
> +#define EVENT_CYCLES_ID                0
> +#define EVENT_CYCLES_COUNTER   0
> +#define NUM_COUNTERS           4
> +
> +#define to_ddr_pmu(p)          container_of(p, struct ddr_pmu, pmu)
> +
> +#define DDR_PERF_DEV_NAME      "imx8_ddr_perf_pmu"
> +
> +static DEFINE_IDA(ddr_ida);
> +
> +static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
> +       { .compatible = "fsl,imx8-ddr-pmu",},
> +       { .compatible = "fsl,imx8m-ddr-pmu",},
> +       { /* sentinel */ }
> +};
> +
> +struct ddr_pmu {
> +       struct pmu pmu;
> +       void __iomem *base;
> +       unsigned int cpu;
> +       struct  hlist_node node;
> +       struct  device *dev;
> +       struct perf_event *events[NUM_COUNTERS];
> +       int active_events;
> +       enum cpuhp_state cpuhp_state;
> +       int irq;
> +       int id;
> +};
> +
> +static ssize_t ddr_perf_cpumask_show(struct device *dev,
> +                               struct device_attribute *attr, char *buf)
> +{
> +       struct ddr_pmu *pmu = dev_get_drvdata(dev);
> +
> +       return cpumap_print_to_pagebuf(true, buf, cpumask_of(pmu->cpu));
> +}
> +
> +static struct device_attribute ddr_perf_cpumask_attr =
> +       __ATTR(cpumask, 0444, ddr_perf_cpumask_show, NULL);
> +
> +static struct attribute *ddr_perf_cpumask_attrs[] = {
> +       &ddr_perf_cpumask_attr.attr,
> +       NULL,
> +};
> +
> +static struct attribute_group ddr_perf_cpumask_attr_group = {
> +       .attrs = ddr_perf_cpumask_attrs,
> +};
> +
> +static ssize_t
> +ddr_pmu_event_show(struct device *dev, struct device_attribute *attr,
> +                  char *page)
> +{
> +       struct perf_pmu_events_attr *pmu_attr;
> +
> +       pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
> +       return sprintf(page, "event=0x%02llx\n", pmu_attr->id);
> +}
> +
> +#define IMX8_DDR_PMU_EVENT_ATTR(_name, _id)                            \
> +       (&((struct perf_pmu_events_attr[]) {                            \
> +               { .attr = __ATTR(_name, 0444, ddr_pmu_event_show, NULL),\
> +                 .id = _id, }                                          \
> +       })[0].attr.attr)
> +
> +static struct attribute *ddr_perf_events_attrs[] = {
> +       IMX8_DDR_PMU_EVENT_ATTR(cycles, EVENT_CYCLES_ID),
> +       IMX8_DDR_PMU_EVENT_ATTR(selfresh, 0x01),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-accesses, 0x04),
> +       IMX8_DDR_PMU_EVENT_ATTR(write-accesses, 0x05),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-queue-depth, 0x08),
> +       IMX8_DDR_PMU_EVENT_ATTR(write-queue-depth, 0x09),
> +       IMX8_DDR_PMU_EVENT_ATTR(lp-read-credit-cnt, 0x10),
> +       IMX8_DDR_PMU_EVENT_ATTR(hp-read-credit-cnt, 0x11),
> +       IMX8_DDR_PMU_EVENT_ATTR(write-credit-cnt, 0x12),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-command, 0x20),
> +       IMX8_DDR_PMU_EVENT_ATTR(write-command, 0x21),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-modify-write-command, 0x22),
> +       IMX8_DDR_PMU_EVENT_ATTR(hp-read, 0x23),
> +       IMX8_DDR_PMU_EVENT_ATTR(hp-req-nocredit, 0x24),
> +       IMX8_DDR_PMU_EVENT_ATTR(hp-xact-credit, 0x25),
> +       IMX8_DDR_PMU_EVENT_ATTR(lp-req-nocredit, 0x26),
> +       IMX8_DDR_PMU_EVENT_ATTR(lp-xact-credit, 0x27),
> +       IMX8_DDR_PMU_EVENT_ATTR(wr-xact-credit, 0x29),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-cycles, 0x2a),
> +       IMX8_DDR_PMU_EVENT_ATTR(write-cycles, 0x2b),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-write-transition, 0x30),
> +       IMX8_DDR_PMU_EVENT_ATTR(precharge, 0x31),
> +       IMX8_DDR_PMU_EVENT_ATTR(activate, 0x32),
> +       IMX8_DDR_PMU_EVENT_ATTR(load-mode, 0x33),
> +       IMX8_DDR_PMU_EVENT_ATTR(perf-mwr, 0x34),
> +       IMX8_DDR_PMU_EVENT_ATTR(read, 0x35),
> +       IMX8_DDR_PMU_EVENT_ATTR(read-activate, 0x36),
> +       IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
> +       IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
> +       IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
> +       NULL,
> +};
> +
> +static struct attribute_group ddr_perf_events_attr_group = {
> +       .name = "events",
> +       .attrs = ddr_perf_events_attrs,
> +};
> +
> +PMU_FORMAT_ATTR(event, "config:0-7");
> +
> +static struct attribute *ddr_perf_format_attrs[] = {
> +       &format_attr_event.attr,
> +       NULL,
> +};
> +
> +static struct attribute_group ddr_perf_format_attr_group = {
> +       .name = "format",
> +       .attrs = ddr_perf_format_attrs,
> +};
> +
> +static const struct attribute_group *attr_groups[] = {
> +       &ddr_perf_events_attr_group,
> +       &ddr_perf_format_attr_group,
> +       &ddr_perf_cpumask_attr_group,
> +       NULL,
> +};
> +
> +static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
> +{
> +       int i;
> +
> +       /*
> +        * Always map cycle event to counter 0
> +        * Cycles counter is dedicated for cycle event
> +        * can't used for the other events
> +        */
> +       if (event == EVENT_CYCLES_ID) {
> +               if (pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> +                       return EVENT_CYCLES_COUNTER;
> +               else
> +                       return -ENOENT;
> +       }
> +
> +       for (i = 1; i < NUM_COUNTERS; i++) {
> +               if (pmu->events[i] == NULL)
> +                       return i;
> +       }
> +
> +       return -ENOENT;
> +}
> +
> +static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
> +{
> +       pmu->events[counter] = NULL;
> +}
> +
> +static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
> +{
> +       return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
> +}
> +
> +static int ddr_perf_event_init(struct perf_event *event)
> +{
> +       struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +       struct hw_perf_event *hwc = &event->hw;
> +       struct perf_event *sibling;
> +
> +       if (event->attr.type != event->pmu->type)
> +               return -ENOENT;
> +
> +       if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
> +               return -EOPNOTSUPP;
> +
> +       if (event->cpu < 0) {
> +               dev_warn(pmu->dev, "Can't provide per-task data!\n");
> +               return -EOPNOTSUPP;
> +       }
> +
> +       /*
> +        * We must NOT create groups containing mixed PMUs, although software
> +        * events are acceptable (for example to create a CCN group
> +        * periodically read when a hrtimer aka cpu-clock leader triggers).
> +        */
> +       if (event->group_leader->pmu != event->pmu &&
> +                       !is_software_event(event->group_leader))
> +               return -EINVAL;
> +
> +       for_each_sibling_event(sibling, event->group_leader) {
> +               if (sibling->pmu != event->pmu &&
> +                               !is_software_event(sibling))
> +                       return -EINVAL;
> +       }
> +
> +       event->cpu = pmu->cpu;
> +       hwc->idx = -1;
> +
> +       return 0;
> +}
> +
> +
> +static void ddr_perf_event_update(struct perf_event *event)
> +{
> +       struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +       struct hw_perf_event *hwc = &event->hw;
> +       u64 delta, prev_raw_count, new_raw_count;
> +       int counter = hwc->idx;
> +
> +       do {
> +               prev_raw_count = local64_read(&hwc->prev_count);
> +               new_raw_count = ddr_perf_read_counter(pmu, counter);
> +       } while (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
> +                       new_raw_count) != prev_raw_count);
> +
> +       delta = (new_raw_count - prev_raw_count) & 0xFFFFFFFF;
> +
> +       local64_add(delta, &event->count);
> +}
> +
> +static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
> +                                 int counter, bool enable)
> +{
> +       u8 reg = counter * 4 + COUNTER_CNTL;
> +       int val;
> +
> +       if (enable) {
> +               /*
> +                * must disable first, then enable again
> +                * otherwise, cycle counter will not work
> +                * if previous state is enabled.
> +                */
> +               writel(0, pmu->base + reg);
> +               val = CNTL_EN | CNTL_CLEAR;
> +               val |= FIELD_PREP(CNTL_CSV_MASK, config);
> +               writel(val, pmu->base + reg);
> +       } else {
> +               /* Disable counter */
> +               writel(0, pmu->base + reg);
> +       }
> +}
> +
> +static void ddr_perf_event_start(struct perf_event *event, int flags)
> +{
> +       struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +       struct hw_perf_event *hwc = &event->hw;
> +       int counter = hwc->idx;
> +
> +       local64_set(&hwc->prev_count, 0);
> +
> +       ddr_perf_counter_enable(pmu, event->attr.config, counter, true);
> +
> +       hwc->state = 0;
> +}
> +
> +static int ddr_perf_event_add(struct perf_event *event, int flags)
> +{
> +       struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +       struct hw_perf_event *hwc = &event->hw;
> +       int counter;
> +       int cfg = event->attr.config;
> +
> +       counter = ddr_perf_alloc_counter(pmu, cfg);
> +       if (counter < 0) {
> +               dev_dbg(pmu->dev, "There are not enough counters\n");
> +               return -EOPNOTSUPP;
> +       }
> +
> +       pmu->events[counter] = event;
> +       pmu->active_events++;
> +       hwc->idx = counter;
> +
> +       hwc->state |= PERF_HES_STOPPED;
> +
> +       if (flags & PERF_EF_START)
> +               ddr_perf_event_start(event, flags);
> +
> +       return 0;
> +}
> +
> +static void ddr_perf_event_stop(struct perf_event *event, int flags)
> +{
> +       struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +       struct hw_perf_event *hwc = &event->hw;
> +       int counter = hwc->idx;
> +
> +       ddr_perf_counter_enable(pmu, event->attr.config, counter, false);
> +       ddr_perf_event_update(event);
> +
> +       hwc->state |= PERF_HES_STOPPED;
> +}
> +
> +static void ddr_perf_event_del(struct perf_event *event, int flags)
> +{
> +       struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +       struct hw_perf_event *hwc = &event->hw;
> +       int counter = hwc->idx;
> +
> +       ddr_perf_event_stop(event, PERF_EF_UPDATE);
> +
> +       ddr_perf_free_counter(pmu, counter);
> +       pmu->active_events--;
> +       hwc->idx = -1;
> +}
> +
> +static void ddr_perf_pmu_enable(struct pmu *pmu)
> +{
> +       struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
> +
> +       /* enable cycle counter if cycle is not active event list */
> +       if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> +               ddr_perf_counter_enable(ddr_pmu,
> +                                     EVENT_CYCLES_ID,
> +                                     EVENT_CYCLES_COUNTER,
> +                                     true);
> +}
> +
> +static void ddr_perf_pmu_disable(struct pmu *pmu)
> +{
> +       struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
> +
> +       if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> +               ddr_perf_counter_enable(ddr_pmu,
> +                                     EVENT_CYCLES_ID,
> +                                     EVENT_CYCLES_COUNTER,
> +                                     false);
> +}
> +
> +static int ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
> +                        struct device *dev)
> +{
> +       *pmu = (struct ddr_pmu) {
> +               .pmu = (struct pmu) {
> +                       .capabilities = PERF_PMU_CAP_NO_EXCLUDE,
> +                       .task_ctx_nr = perf_invalid_context,
> +                       .attr_groups = attr_groups,
> +                       .event_init  = ddr_perf_event_init,
> +                       .add         = ddr_perf_event_add,
> +                       .del         = ddr_perf_event_del,
> +                       .start       = ddr_perf_event_start,
> +                       .stop        = ddr_perf_event_stop,
> +                       .read        = ddr_perf_event_update,
> +                       .pmu_enable  = ddr_perf_pmu_enable,
> +                       .pmu_disable = ddr_perf_pmu_disable,
> +               },
> +               .base = base,
> +               .dev = dev,
> +       };
> +
> +       pmu->id = ida_simple_get(&ddr_ida, 0, 0, GFP_KERNEL);
> +       return pmu->id;
> +}
> +
> +static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
> +{
> +       int i;
> +       struct ddr_pmu *pmu = (struct ddr_pmu *) p;
> +       struct perf_event *event, *cycle_event = NULL;
> +
> +       /* all counter will stop if cycle counter disabled */
> +       ddr_perf_counter_enable(pmu,
> +                             EVENT_CYCLES_ID,
> +                             EVENT_CYCLES_COUNTER,
> +                             false);
> +       /*
> +        * When the cycle counter overflows, all counters are stopped,
> +        * and an IRQ is raised. If any other counter overflows, it
> +        * continues counting, and no IRQ is raised.
> +        *
> +        * Cycles occur at least 4 times as often as other events, so we
> +        * can update all events on a cycle counter overflow and not
> +        * lose events.
> +        *
> +        */
> +       for (i = 0; i < NUM_COUNTERS; i++) {
> +
> +               if (!pmu->events[i])
> +                       continue;
> +
> +               event = pmu->events[i];
> +
> +               ddr_perf_event_update(event);
> +
> +               if (event->hw.idx == EVENT_CYCLES_COUNTER)
> +                       cycle_event = event;
> +       }
> +
> +       ddr_perf_counter_enable(pmu,
> +                             EVENT_CYCLES_ID,
> +                             EVENT_CYCLES_COUNTER,
> +                             true);
> +       if (cycle_event)
> +               ddr_perf_event_update(cycle_event);
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
> +{
> +       struct ddr_pmu *pmu = hlist_entry_safe(node, struct ddr_pmu, node);
> +       int target;
> +
> +       if (cpu != pmu->cpu)
> +               return 0;
> +
> +       target = cpumask_any_but(cpu_online_mask, cpu);
> +       if (target >= nr_cpu_ids)
> +               return 0;
> +
> +       perf_pmu_migrate_context(&pmu->pmu, cpu, target);
> +       pmu->cpu = target;
> +
> +       WARN_ON(irq_set_affinity_hint(pmu->irq, cpumask_of(pmu->cpu)));
> +
> +       return 0;
> +}
> +
> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +       struct ddr_pmu *pmu;
> +       struct device_node *np;
> +       void __iomem *base;
> +       char *name;
> +       int num;
> +       int ret;
> +       int irq;
> +
> +       base = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       np = pdev->dev.of_node;
> +
> +       pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +       if (!pmu)
> +               return -ENOMEM;
> +
> +       num = ddr_perf_init(pmu, base, &pdev->dev);
> +
> +       platform_set_drvdata(pdev, pmu);
> +
> +       name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx8_ddr%d", num);
> +       if (!name)
> +               return -ENOMEM;
> +
> +       pmu->cpu = raw_smp_processor_id();
> +       ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> +                                     DDR_PERF_DEV_NAME,
> +                                     NULL,
> +                                     ddr_perf_offline_cpu);
> +
> +       if (ret < 0) {
> +               dev_err(&pdev->dev, "cpuhp_setup_state_multi failed\n");
> +               goto ddr_perf_err;
> +       }
> +
> +       pmu->cpuhp_state = ret;
> +
> +       /* Register the pmu instance for cpu hotplug */
> +       cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +
> +       /* Request irq */
> +       irq = of_irq_get(np, 0);
> +       if (irq < 0) {
> +               dev_err(&pdev->dev, "Failed to get irq: %d", irq);
> +               ret = irq;
> +               goto ddr_perf_err;
> +       }
> +
> +       ret = devm_request_irq(&pdev->dev, irq,
> +                                       ddr_perf_irq_handler,
> +                                       IRQF_NOBALANCING | IRQF_NO_THREAD,
> +                                       DDR_PERF_DEV_NAME,
> +                                       pmu);
> +       if (ret < 0) {
> +               dev_err(&pdev->dev, "Request irq failed: %d", ret);
> +               goto ddr_perf_err;
> +       }
> +
> +       pmu->irq = irq;
> +       ret = irq_set_affinity_hint(pmu->irq, cpumask_of(pmu->cpu));
> +       if (ret) {
> +               dev_err(pmu->dev, "Failed to set interrupt affinity!\n");
> +               goto ddr_perf_err;
> +       }
> +
> +       ret = perf_pmu_register(&pmu->pmu, name, -1);
> +       if (ret)
> +               goto ddr_perf_err;
> +
> +       return 0;
> +
> +ddr_perf_err:
> +       if (pmu->cpuhp_state)
> +               cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +
> +       ida_simple_remove(&ddr_ida, pmu->id);
> +       dev_warn(&pdev->dev, "i.MX8 DDR Perf PMU failed (%d), disabled\n", ret);
> +       return ret;
> +}
> +
> +static int ddr_perf_remove(struct platform_device *pdev)
> +{
> +       struct ddr_pmu *pmu = platform_get_drvdata(pdev);
> +
> +       cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +       irq_set_affinity_hint(pmu->irq, NULL);
> +
> +       perf_pmu_unregister(&pmu->pmu);
> +
> +       ida_simple_remove(&ddr_ida, pmu->id);
> +       return 0;
> +}
> +
> +static struct platform_driver imx_ddr_pmu_driver = {
> +       .driver         = {
> +               .name   = "imx-ddr-pmu",
> +               .of_match_table = imx_ddr_pmu_dt_ids,
> +       },
> +       .probe          = ddr_perf_probe,
> +       .remove         = ddr_perf_remove,
> +};
> +
> +module_platform_driver(imx_ddr_pmu_driver);
> +MODULE_LICENSE("GPL v2");
> --
> 2.5.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
