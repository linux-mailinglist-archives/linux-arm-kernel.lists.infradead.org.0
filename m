Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BB956899
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 14:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46pxgQ6m/05N1YFZ4r+JIxfSfBs4XybEn1kQTUcjzLg=; b=GQX9Upncliyegd
	0FLc/8EoPgoYv1BOdQU5SgbcnF6hK/fF07brRq2g7jDV99xfJJ4d9WmYn6v8cxGSqh36F6jfPRgnC
	DZ6vtSx8CHZcKn1cDkQl233PqLkx9zbFuZxZ3CY9lMxE+YTgCXAAnM34AJB/hQctJFWYQ3zONUnsj
	BeGVjmA2iDJZuaFn0MuktPdTOze8WIVak8MbStkcOLP8eUv5fD0fbmZ7SRoJ9PPntzYzQ4CHU/aTH
	XNeGsJwCRPY60RdE04wWCrpYSrsfXEQU0VEwaIvsiiEnCf0MMzGmGZn/SkxfyoKEEh4Dm3VnLQGkp
	1l9vhOFhy5MaxJ6IhwrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6x4-0007fH-9X; Wed, 26 Jun 2019 12:23:02 +0000
Received: from mail-eopbgr30044.outbound.protection.outlook.com ([40.107.3.44]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6wf-0007Wb-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 12:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RKk+tKhMvtd1XmmEnoNjeyhxl9KSo/dkpSlC0fGz2oY=;
 b=RvZ9s4QdUlrI/ggvL+RiuFgT/21Go8VBa8PDKym71NrIpX0A+np+NFV7rwjSKcFxgly4fdlqZlx6dix5yplL/BMlowzIddl2kDiFcrNaa6R9MG879eNYpvf9q9H3qxh+5zr/moqm1AdXf68oiAFv4cA47w/yiN5Wd1x6SgnAdSE=
Received: from VI1PR08MB3742.eurprd08.prod.outlook.com (20.178.15.26) by
 VI1PR08MB2669.eurprd08.prod.outlook.com (10.175.245.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:22:31 +0000
Received: from VI1PR08MB3742.eurprd08.prod.outlook.com
 ([fe80::ad20:aaac:1958:1068]) by VI1PR08MB3742.eurprd08.prod.outlook.com
 ([fe80::ad20:aaac:1958:1068%7]) with mapi id 15.20.2008.014; Wed, 26 Jun 2019
 12:22:31 +0000
From: Mark Rutland <Mark.Rutland@arm.com>
To: Gerald BAEZA <gerald.baeza@st.com>
Subject: Re: [PATCH v2 3/5] perf: stm32: ddrperfm driver creation
Thread-Topic: [PATCH v2 3/5] perf: stm32: ddrperfm driver creation
Thread-Index: AQHVDyCFdlo1KcMpkUizGYpVlUknE6auFWOA
Date: Wed, 26 Jun 2019 12:22:31 +0000
Message-ID: <20190626122228.GB20313@lakrids.cambridge.arm.com>
References: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
 <1558366019-24214-4-git-send-email-gerald.baeza@st.com>
In-Reply-To: <1558366019-24214-4-git-send-email-gerald.baeza@st.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
x-originating-ip: [217.140.106.52]
x-clientproxiedby: LNXP265CA0040.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::28) To VI1PR08MB3742.eurprd08.prod.outlook.com
 (2603:10a6:803:bc::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Mark.Rutland@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 138e142c-a819-4997-00cc-08d6fa30f620
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR08MB2669; 
x-ms-traffictypediagnostic: VI1PR08MB2669:
x-microsoft-antispam-prvs: <VI1PR08MB2669408FC1F079EC45DFF11D84E20@VI1PR08MB2669.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(346002)(136003)(396003)(376002)(366004)(39860400002)(40434004)(199004)(189003)(51444003)(186003)(44832011)(99286004)(53936002)(486006)(476003)(5024004)(14444005)(33656002)(6436002)(256004)(26005)(86362001)(446003)(14454004)(11346002)(5660300002)(6916009)(6486002)(54906003)(8676002)(58126008)(316002)(81166006)(25786009)(81156014)(66946007)(73956011)(1076003)(66556008)(66476007)(66446008)(305945005)(7416002)(6512007)(8936002)(3846002)(6246003)(7736002)(102836004)(229853002)(76176011)(66066001)(2906002)(6506007)(71190400001)(71200400001)(386003)(72206003)(52116002)(30864003)(478600001)(6116002)(4326008)(53946003)(64756008)(68736007)(579004)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2669;
 H:VI1PR08MB3742.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UPWpiann58Iz/CLiD6k4RvsSDPYAE+L9YA2kWDoxYtZSI/9v/2U0xM3s7MvtQKbs+ZXC1l3fiCanSbzWxjqUjX5uzwcy0iBsOmfsxIL76MDssK/Qxxj3nkJepJAbhO5PJ0RUPz9/h1pglkCa7yAmTsJFPu3blwTa5mRWXBKDCGh13DyVkbzQA8ofIvt5tYDXUWfSMXHJ5PykEAstVUbP4KCpuZKKxgaaTnfTcSEQ7pkZPyephcyL3UpMuJREmwSf0lhE4hnrAmgMA/K+0gVIOUqC0VD06g7juHn0RXUJjRjGtGyd9+xLdJaB+g1dXdLQ2aB7bHCjNMcHtrjUJUCjy4qJo3nrNBVai5yW0eNmvtRRTRyzanoxLAf1LjG/60B2mDULFgBZOzcjSzj3g04z3S2+zi4DGWacTnrvlH9VyLI=
Content-ID: <041B5B55B700104AA129B319BE1BB2DE@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 138e142c-a819-4997-00cc-08d6fa30f620
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:22:31.7038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mark.Rutland@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2669
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_052237_837136_2CD5B344 
X-CRM114-Status: GOOD (  28.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <Will.Deacon@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 03:27:17PM +0000, Gerald BAEZA wrote:
> The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1 SOC.
>
> This perf drivers supports the read, write, activate, idle and total
> time counters, described in the reference manual RM0436.

Is this document publicly accessible anywhere?

If so, could you please provide a link?

> A 'bandwidth' attribute is added in the 'ddrperfm' event_source in order
> to directly get the read and write bandwidths (in MB/s), from the last
> read, write and total time counters reading.
> This attribute is aside the 'events' attributes group because it is not
> a counter, as seen by perf tool.

This should be removed. This is unusually stateful, and this can be
calculated in userspace by using the events. I'm also not keen on
creating a precedent for weird sysfs bits for PMUs.

> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> ---
>  drivers/perf/Kconfig         |   6 +
>  drivers/perf/Makefile        |   1 +
>  drivers/perf/stm32_ddr_pmu.c | 512 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 519 insertions(+)
>  create mode 100644 drivers/perf/stm32_ddr_pmu.c
>
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index a94e586..9add8a7 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -105,6 +105,12 @@ config THUNDERX2_PMU
>     The SoC has PMU support in its L3 cache controller (L3C) and
>     in the DDR4 Memory Controller (DMC).
>
> +config STM32_DDR_PMU
> +       tristate "STM32 DDR PMU"
> +       depends on MACH_STM32MP157
> +       help
> +         Support for STM32 DDR performance monitor (DDRPERFM).
> +
>  config XGENE_PMU
>          depends on ARCH_XGENE
>          bool "APM X-Gene SoC PMU"
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 3048994..fa64719 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_ARM_SMMU_V3_PMU) += arm_smmuv3_pmu.o
>  obj-$(CONFIG_HISI_PMU) += hisilicon/
>  obj-$(CONFIG_QCOM_L2_PMU)+= qcom_l2_pmu.o
>  obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
> +obj-$(CONFIG_STM32_DDR_PMU) += stm32_ddr_pmu.o
>  obj-$(CONFIG_THUNDERX2_PMU) += thunderx2_pmu.o
>  obj-$(CONFIG_XGENE_PMU) += xgene_pmu.o
>  obj-$(CONFIG_ARM_SPE_PMU) += arm_spe_pmu.o
> diff --git a/drivers/perf/stm32_ddr_pmu.c b/drivers/perf/stm32_ddr_pmu.c
> new file mode 100644
> index 0000000..ae4a813
> --- /dev/null
> +++ b/drivers/perf/stm32_ddr_pmu.c
> @@ -0,0 +1,512 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * This file is the STM32 DDR performance monitor (DDRPERFM) driver
> + *
> + * Copyright (C) 2019, STMicroelectronics - All Rights Reserved
> + * Author: Gerald Baeza <gerald.baeza@st.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/hrtimer.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/perf_event.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#define POLL_MS4000/* The counter roll over after ~8s @533MHz */

I take it this is because there's no IRQ? If so, please expand the
comment to call that out, e.g.

/*
 * The PMU has no overflow IRQ, so we must poll to avoid losing events.
 * The fastest counter can overflow in ~8s @533MHz, so we poll in 4s
 * intervals to ensure we don't miss a rollover.
 */
#define POLL_MS4000

Which clock specifically is operating at 533MHz, and is this something
that may vary? Is it possible that this may go higher in future?

> +#define WORD_LENGTH4/* Bytes */
> +#define BURST_LENGTH8/* Words */
> +
> +#define DDRPERFM_CTL0x000
> +#define DDRPERFM_CFG0x004
> +#define DDRPERFM_STATUS 0x008
> +#define DDRPERFM_CCR0x00C
> +#define DDRPERFM_IER0x010
> +#define DDRPERFM_ISR0x014
> +#define DDRPERFM_ICR0x018
> +#define DDRPERFM_TCNT0x020
> +#define DDRPERFM_CNT(X)(0x030 + 8 * (X))
> +#define DDRPERFM_HWCFG0x3F0
> +#define DDRPERFM_VER0x3F4
> +#define DDRPERFM_ID0x3F8
> +#define DDRPERFM_SID0x3FC
> +
> +#define CTL_START0x00000001
> +#define CTL_STOP0x00000002
> +#define CCR_CLEAR_ALL0x8000000F
> +#define SID_MAGIC_ID0xA3C5DD01
> +
> +#define STRING "Read = %llu, Write = %llu, Read & Write = %llu (MB/s)\n"

If you need this, please expand it in-place. As-is, this is needless
obfuscation.

> +
> +enum {
> +READ_CNT,
> +WRITE_CNT,
> +ACTIVATE_CNT,
> +IDLE_CNT,
> +TIME_CNT,
> +PMU_NR_COUNTERS
> +};

I take it these are fixed-purpose counters in the hardware?

> +
> +struct stm32_ddr_pmu {
> +struct pmu pmu;
> +void __iomem *membase;
> +struct clk *clk;
> +struct clk *clk_ddr;
> +unsigned long clk_ddr_rate;
> +struct hrtimer hrtimer;
> +ktime_t poll_period;
> +spinlock_t lock; /* for shared registers access */

All accesses to a PMU instance should be serialized on the same CPU,
so you shouldn't need a lock (though you will need to disable IRQs to
serialize with the interrupt handler).

The perf subsystem cannot sanely access the PMU across multiple CPUs.

> +struct perf_event *events[PMU_NR_COUNTERS];
> +u64 events_cnt[PMU_NR_COUNTERS];
> +};
> +
> +static inline struct stm32_ddr_pmu *pmu_to_stm32_ddr_pmu(struct pmu *p)
> +{
> +return container_of(p, struct stm32_ddr_pmu, pmu);
> +}
> +
> +static inline struct stm32_ddr_pmu *hrtimer_to_stm32_ddr_pmu(struct hrtimer *h)
> +{
> +return container_of(h, struct stm32_ddr_pmu, hrtimer);
> +}
> +
> +static u64 stm32_ddr_pmu_compute_bw(struct stm32_ddr_pmu *stm32_ddr_pmu,
> +    int counter)
> +{
> +u64 bw = stm32_ddr_pmu->events_cnt[counter], tmp;
> +u64 div = stm32_ddr_pmu->events_cnt[TIME_CNT];
> +u32 prediv = 1, premul = 1;
> +
> +if (bw && div) {
> +/* Maximize the dividend into 64 bits */
> +while ((bw < 0x8000000000000000ULL) &&
> +       (premul < 0x40000000UL)) {
> +bw = bw << 1;
> +premul *= 2;
> +}
> +/* Minimize the dividor to fit in 32 bits */
> +while ((div > 0xffffffffUL) && (prediv < 0x40000000UL)) {
> +div = div >> 1;
> +prediv *= 2;
> +}
> +/* Divide counter per time and multiply per DDR settings */
> +do_div(bw, div);
> +tmp = bw * BURST_LENGTH * WORD_LENGTH;
> +tmp *= stm32_ddr_pmu->clk_ddr_rate;
> +if (tmp < bw)
> +goto error;
> +bw = tmp;
> +/* Cancel the prediv and premul factors */
> +while (prediv > 1) {
> +bw = bw >> 1;
> +prediv /= 2;
> +}
> +while (premul > 1) {
> +bw = bw >> 1;
> +premul /= 2;
> +}
> +/* Convert MHz to Hz and B to MB, to finally get MB/s */
> +tmp = bw * 1000000;
> +if (tmp < bw)
> +goto error;
> +bw = tmp;
> +premul = 1024 * 1024;
> +while (premul > 1) {
> +bw = bw >> 1;
> +premul /= 2;
> +}
> +}
> +return bw;
> +
> +error:
> +pr_warn("stm32-ddr-pmu: overflow detected\n");
> +return 0;
> +}

IIUC this is for the stateful sysfs stuff, which should be removed.

> +
> +static void stm32_ddr_pmu_event_configure(struct perf_event *event)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +unsigned long lock_flags, config_base = event->hw.config_base;
> +u32 val;
> +
> +spin_lock_irqsave(&stm32_ddr_pmu->lock, lock_flags);
> +writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +
> +if (config_base < TIME_CNT) {
> +val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +val |= (1 << config_base);
> +writel_relaxed(val, stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +}
> +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, lock_flags);
> +}

You don't need the lock here. This is called from your pmu::{start,add}
callbacks, and the perf core already ensures those are serialized (via
the context lock), and called with IRQs disabled.

> +
> +static void stm32_ddr_pmu_event_read(struct perf_event *event)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +unsigned long flags, config_base = event->hw.config_base;
> +struct hw_perf_event *hw = &event->hw;
> +u64 prev_count, new_count, mask;
> +u32 val, offset, bit;
> +
> +spin_lock_irqsave(&stm32_ddr_pmu->lock, flags);
> +
> +writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +
> +if (config_base == TIME_CNT) {
> +offset = DDRPERFM_TCNT;
> +bit = 1 << 31;
> +} else {
> +offset = DDRPERFM_CNT(config_base);
> +bit = 1 << config_base;
> +}
> +val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_STATUS);
> +if (val & bit)
> +pr_warn("stm32_ddr_pmu hardware overflow\n");
> +val = readl_relaxed(stm32_ddr_pmu->membase + offset);
> +writel_relaxed(bit, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> +writel_relaxed(CTL_START, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +
> +do {
> +prev_count = local64_read(&hw->prev_count);
> +new_count = prev_count + val;
> +} while (local64_xchg(&hw->prev_count, new_count) != prev_count);
> +
> +mask = GENMASK_ULL(31, 0);
> +local64_add(val & mask, &event->count);
> +
> +if (new_count < prev_count)
> +pr_warn("STM32 DDR PMU counter saturated\n");

Do the counter saturate, or do they roll-over?

I think that the message is misleading here, but I just want to check.

> +
> +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, flags);
> +}
> +
> +static void stm32_ddr_pmu_event_start(struct perf_event *event, int flags)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +struct hw_perf_event *hw = &event->hw;
> +unsigned long lock_flags;
> +
> +if (WARN_ON_ONCE(!(hw->state & PERF_HES_STOPPED)))
> +return;
> +
> +if (flags & PERF_EF_RELOAD)
> +WARN_ON_ONCE(!(hw->state & PERF_HES_UPTODATE));
> +
> +stm32_ddr_pmu_event_configure(event);
> +
> +/* Clear all counters to synchronize them, then start */
> +spin_lock_irqsave(&stm32_ddr_pmu->lock, lock_flags);
> +writel_relaxed(CCR_CLEAR_ALL, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> +writel_relaxed(CTL_START, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, lock_flags);

By 'clear' do you mean set the counters to zero?

Or is there a control bit that determine whether they count?

If we're updating the counter, we could update prev_count at the same
instant.

> +
> +hw->state = 0;
> +}
> +
> +static void stm32_ddr_pmu_event_stop(struct perf_event *event, int flags)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +unsigned long lock_flags, config_base = event->hw.config_base;
> +struct hw_perf_event *hw = &event->hw;
> +u32 val, bit;
> +
> +if (WARN_ON_ONCE(hw->state & PERF_HES_STOPPED))
> +return;
> +
> +spin_lock_irqsave(&stm32_ddr_pmu->lock, lock_flags);
> +writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +if (config_base == TIME_CNT)
> +bit = 1 << 31;
> +else
> +bit = 1 << config_base;
> +writel_relaxed(bit, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> +if (config_base < TIME_CNT) {
> +val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +val &= ~bit;
> +writel_relaxed(val, stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +}
> +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, lock_flags);
> +
> +hw->state |= PERF_HES_STOPPED;
> +
> +if (flags & PERF_EF_UPDATE) {
> +stm32_ddr_pmu_event_read(event);
> +hw->state |= PERF_HES_UPTODATE;
> +}
> +}
> +
> +static int stm32_ddr_pmu_event_add(struct perf_event *event, int flags)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +unsigned long config_base = event->hw.config_base;
> +struct hw_perf_event *hw = &event->hw;
> +
> +stm32_ddr_pmu->events_cnt[config_base] = 0;
> +stm32_ddr_pmu->events[config_base] = event;
> +
> +clk_enable(stm32_ddr_pmu->clk);
> +hrtimer_start(&stm32_ddr_pmu->hrtimer, stm32_ddr_pmu->poll_period,
> +      HRTIMER_MODE_REL);
> +
> +stm32_ddr_pmu_event_configure(event);
> +
> +hw->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
> +
> +if (flags & PERF_EF_START)
> +stm32_ddr_pmu_event_start(event, 0);
> +
> +return 0;
> +}
> +
> +static void stm32_ddr_pmu_event_del(struct perf_event *event, int flags)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +unsigned long config_base = event->hw.config_base;
> +bool stop = true;
> +int i;
> +
> +stm32_ddr_pmu_event_stop(event, PERF_EF_UPDATE);
> +
> +stm32_ddr_pmu->events_cnt[config_base] += local64_read(&event->count);
> +stm32_ddr_pmu->events[config_base] = NULL;
> +
> +for (i = 0; i < PMU_NR_COUNTERS; i++)
> +if (stm32_ddr_pmu->events[i])
> +stop = false;
> +if (stop)
> +hrtimer_cancel(&stm32_ddr_pmu->hrtimer);
> +
> +clk_disable(stm32_ddr_pmu->clk);

This doesn't look right. If I add two events A and B, then delete event
A, surely we want the clock on for event B?

Does the clock only affect whether the counters count, or does it also
affect whether the register file is usable?

> +}
> +
> +static int stm32_ddr_pmu_event_init(struct perf_event *event)
> +{
> +struct hw_perf_event *hw = &event->hw;
> +
> +if (is_sampling_event(event))
> +return -EINVAL;
> +
> +if (event->attach_state & PERF_ATTACH_TASK)
> +return -EINVAL;
> +
> +if (event->attr.exclude_user   ||
> +    event->attr.exclude_kernel ||
> +    event->attr.exclude_hv     ||
> +    event->attr.exclude_idle   ||
> +    event->attr.exclude_host   ||
> +    event->attr.exclude_guest)
> +return -EINVAL;
> +
> +if (event->cpu < 0)
> +return -EINVAL;

For a system PMU like this, you must ensure that all events are assigned
to the same CPU.

You'll need to designate some arbitrary CPU to mange the PMU, expose
that under sysfs, and upon hotplug events you must choose a new CPU and
migrate existing events.

For a simple example, see arch/arm/mm/cache-l2x0-pmu.c.

> +
> +hw->config_base = event->attr.config;
> +
> +return 0;
> +}
> +
> +static enum hrtimer_restart stm32_ddr_pmu_poll(struct hrtimer *hrtimer)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = hrtimer_to_stm32_ddr_pmu(hrtimer);
> +int i;
> +
> +for (i = 0; i < PMU_NR_COUNTERS; i++)
> +if (stm32_ddr_pmu->events[i])
> +stm32_ddr_pmu_event_read(stm32_ddr_pmu->events[i]);
> +
> +hrtimer_forward_now(hrtimer, stm32_ddr_pmu->poll_period);
> +
> +return HRTIMER_RESTART;
> +}
> +
> +static ssize_t stm32_ddr_pmu_sysfs_show(struct device *dev,
> +struct device_attribute *attr,
> +char *buf)
> +{
> +struct dev_ext_attribute *eattr;
> +
> +eattr = container_of(attr, struct dev_ext_attribute, attr);
> +
> +return sprintf(buf, "config=0x%lx\n", (unsigned long)eattr->var);
> +}
> +
> +static ssize_t bandwidth_show(struct device *dev,
> +      struct device_attribute *attr,
> +      char *buf)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = dev_get_drvdata(dev);
> +u64 r_bw, w_bw;
> +int ret;
> +
> +if (stm32_ddr_pmu->events_cnt[TIME_CNT]) {
> +r_bw = stm32_ddr_pmu_compute_bw(stm32_ddr_pmu, READ_CNT);
> +w_bw = stm32_ddr_pmu_compute_bw(stm32_ddr_pmu, WRITE_CNT);
> +
> +ret = snprintf(buf, PAGE_SIZE, STRING,
> +       r_bw, w_bw, (r_bw + w_bw));
> +} else {
> +ret = snprintf(buf, PAGE_SIZE, "No data available\n");
> +}
> +
> +return ret;
> +}

As commented above, this should not be exposed under sysfs. It doesn't
follow the usual ABI rules, it's weirdly stateful, and it's redundant.

> +
> +#define STM32_DDR_PMU_ATTR(_name, _func, _config)\
> +(&((struct dev_ext_attribute[]) {\
> +{ __ATTR(_name, 0444, _func, NULL), (void *)_config }   \
> +})[0].attr.attr)
> +
> +#define STM32_DDR_PMU_EVENT_ATTR(_name, _config)\
> +STM32_DDR_PMU_ATTR(_name, stm32_ddr_pmu_sysfs_show,\
> +   (unsigned long)_config)
> +
> +static struct attribute *stm32_ddr_pmu_event_attrs[] = {
> +STM32_DDR_PMU_EVENT_ATTR(read_cnt, READ_CNT),
> +STM32_DDR_PMU_EVENT_ATTR(write_cnt, WRITE_CNT),
> +STM32_DDR_PMU_EVENT_ATTR(activate_cnt, ACTIVATE_CNT),
> +STM32_DDR_PMU_EVENT_ATTR(idle_cnt, IDLE_CNT),
> +STM32_DDR_PMU_EVENT_ATTR(time_cnt, TIME_CNT),
> +NULL
> +};
> +
> +static DEVICE_ATTR_RO(bandwidth);
> +static struct attribute *stm32_ddr_pmu_bandwidth_attrs[] = {
> +&dev_attr_bandwidth.attr,
> +NULL,
> +};
> +
> +static struct attribute_group stm32_ddr_pmu_event_attrs_group = {
> +.name = "events",
> +.attrs = stm32_ddr_pmu_event_attrs,
> +};
> +
> +static struct attribute_group stm32_ddr_pmu_bandwidth_attrs_group = {
> +.attrs = stm32_ddr_pmu_bandwidth_attrs,
> +};
> +
> +static const struct attribute_group *stm32_ddr_pmu_attr_groups[] = {
> +&stm32_ddr_pmu_event_attrs_group,
> +&stm32_ddr_pmu_bandwidth_attrs_group,
> +NULL,
> +};
> +
> +static int stm32_ddr_pmu_device_probe(struct platform_device *pdev)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu;
> +struct reset_control *rst;
> +struct resource *res;
> +int i, ret;
> +u32 val;
> +
> +stm32_ddr_pmu = devm_kzalloc(&pdev->dev, sizeof(struct stm32_ddr_pmu),
> +     GFP_KERNEL);
> +if (!stm32_ddr_pmu)
> +return -ENOMEM;
> +platform_set_drvdata(pdev, stm32_ddr_pmu);
> +
> +res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +stm32_ddr_pmu->membase = devm_ioremap_resource(&pdev->dev, res);
> +if (IS_ERR(stm32_ddr_pmu->membase)) {
> +pr_warn("Unable to get STM32 DDR PMU membase\n");
> +return PTR_ERR(stm32_ddr_pmu->membase);
> +}
> +
> +stm32_ddr_pmu->clk = devm_clk_get(&pdev->dev, "bus");
> +if (IS_ERR(stm32_ddr_pmu->clk)) {
> +pr_warn("Unable to get STM32 DDR PMU clock\n");
> +return PTR_ERR(stm32_ddr_pmu->clk);
> +}
> +
> +ret = clk_prepare_enable(stm32_ddr_pmu->clk);
> +if (ret) {
> +pr_warn("Unable to prepare STM32 DDR PMU clock\n");
> +return ret;
> +}
> +
> +stm32_ddr_pmu->clk_ddr = devm_clk_get(&pdev->dev, "ddr");
> +if (IS_ERR(stm32_ddr_pmu->clk_ddr)) {
> +pr_warn("Unable to get STM32 DDR clock\n");
> +return PTR_ERR(stm32_ddr_pmu->clk_ddr);
> +}
> +stm32_ddr_pmu->clk_ddr_rate = clk_get_rate(stm32_ddr_pmu->clk_ddr);
> +stm32_ddr_pmu->clk_ddr_rate /= 1000000;
> +
> +stm32_ddr_pmu->poll_period = ms_to_ktime(POLL_MS);
> +hrtimer_init(&stm32_ddr_pmu->hrtimer, CLOCK_MONOTONIC,
> +     HRTIMER_MODE_REL);
> +stm32_ddr_pmu->hrtimer.function = stm32_ddr_pmu_poll;
> +spin_lock_init(&stm32_ddr_pmu->lock);
> +
> +for (i = 0; i < PMU_NR_COUNTERS; i++) {
> +stm32_ddr_pmu->events[i] = NULL;
> +stm32_ddr_pmu->events_cnt[i] = 0;
> +}
> +
> +val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_SID);
> +if (val != SID_MAGIC_ID)
> +return -EINVAL;
> +
> +stm32_ddr_pmu->pmu = (struct pmu) {
> +.task_ctx_nr = perf_invalid_context,
> +.start = stm32_ddr_pmu_event_start,
> +.stop = stm32_ddr_pmu_event_stop,
> +.add = stm32_ddr_pmu_event_add,
> +.del = stm32_ddr_pmu_event_del,
> +.event_init = stm32_ddr_pmu_event_init,
> +.attr_groups = stm32_ddr_pmu_attr_groups,
> +};
> +ret = perf_pmu_register(&stm32_ddr_pmu->pmu, "ddrperfm", -1);

Please give this a better name. The usual convention is to use "_pmu" as
the suffix, so we should use that rather than "perfm".

To be unambiguous, something like "stm32_ddr_pmu" would be good.

Thanks,
Mark.

> +if (ret) {
> +pr_warn("Unable to register STM32 DDR PMU\n");
> +return ret;
> +}
> +
> +rst = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +if (!IS_ERR(rst)) {
> +reset_control_assert(rst);
> +udelay(2);
> +reset_control_deassert(rst);
> +}
> +
> +pr_info("stm32-ddr-pmu: probed (ID=0x%08x VER=0x%08x), DDR@%luMHz\n",
> +readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_ID),
> +readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_VER),
> +stm32_ddr_pmu->clk_ddr_rate);
> +
> +clk_disable(stm32_ddr_pmu->clk);
> +
> +return 0;
> +}
> +
> +static int stm32_ddr_pmu_device_remove(struct platform_device *pdev)
> +{
> +struct stm32_ddr_pmu *stm32_ddr_pmu = platform_get_drvdata(pdev);
> +
> +perf_pmu_unregister(&stm32_ddr_pmu->pmu);
> +
> +return 0;
> +}
> +
> +static const struct of_device_id stm32_ddr_pmu_of_match[] = {
> +{ .compatible = "st,stm32-ddr-pmu" },
> +{ },
> +};
> +
> +static struct platform_driver stm32_ddr_pmu_driver = {
> +.driver = {
> +.name= "stm32-ddr-pmu",
> +.of_match_table = of_match_ptr(stm32_ddr_pmu_of_match),
> +},
> +.probe = stm32_ddr_pmu_device_probe,
> +.remove = stm32_ddr_pmu_device_remove,
> +};
> +
> +module_platform_driver(stm32_ddr_pmu_driver);
> +
> +MODULE_DESCRIPTION("Perf driver for STM32 DDR performance monitor");
> +MODULE_AUTHOR("Gerald Baeza <gerald.baeza@st.com>");
> +MODULE_LICENSE("GPL v2");
> --
> 2.7.4
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
