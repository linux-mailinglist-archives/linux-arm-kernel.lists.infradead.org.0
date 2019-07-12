Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6489066A94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/2IxpUTNO0Jozuq9vNwtrXN5N85LW/aF5Zs/ict3Ec=; b=Rk30dssVyVhN2L
	0mEnU66oBoAMb39U1QC9Q2ZwtI5aTRYNL913K7kJyMEgOF4SeCjVUXSJRY01TjgrGcCFipgnTD0Ln
	yXKiVlRfTniUnwziLf8K858DMqF9wGd9qjnS8R/jzcOk9EtonLLTC82GfRJqm+0bgvr6Et5QZB6HD
	YyGJNOvCDVaLpuTln9AaYVxsZNAYrTaW8YMRQ9PgQYnnhIVi9xR8Jq59chzaZvrdx5fqOaCL5o1Zi
	QIfZuc4eQdVVsT2xfUUnmHg2b2g/emm/fHosVTB37oWmDdBVsdRzhpMzZmnzZUUaDs1A6K1cGES+W
	X6AYtJipAFaSAs6jqfvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsOq-00073x-QY; Fri, 12 Jul 2019 10:03:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsOd-00071E-LX
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:03:22 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6C9vH6n007846; Fri, 12 Jul 2019 12:00:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=q8rDtYl/WQBRbqwLC1oW2sjUs/38iMrtuJ44W/XbyUQ=;
 b=Gim4usYKQ8TC0yRiywcInSdces4nj/WkbDdELmWLdFn5RTwK9VlutUG5GEXZdykbNEi2
 nOmlkT2NlA0vaKTytAz4k9z3SzS9REfAPbLF5vxzJtvd3aRLAMloePo27bbym01Eb+iB
 O/5/mu4eF6u+IlW0ZcfUowydCUHG8M+TN5MTOAZTqhjvvh56Utm5QHPWtqkuavcE3DcD
 tmuuYiWNDBTD/w2W6lzA+12Kf7J6qDodgZ/9onUkE5EBBd5s39NsvzAscPHhTS5zXvuS
 UZSWzOKEXQ+dmK7GwPxy7u7rlwCtI6LINuWbnPqqZPVenKRCyyl5zj0uFEN5aRVR2ZFq Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tmh51qgup-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 12 Jul 2019 12:00:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7D05C59;
 Fri, 12 Jul 2019 10:00:46 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A0142842;
 Fri, 12 Jul 2019 10:00:46 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 12 Jul
 2019 12:00:45 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Fri, 12 Jul 2019 12:00:45 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: RE: [PATCH v2 3/5] perf: stm32: ddrperfm driver creation
Thread-Topic: [PATCH v2 3/5] perf: stm32: ddrperfm driver creation
Thread-Index: AQHVDyCCI5Cs89crU0SFN7k5vdHanKat896AgABRYIA=
Date: Fri, 12 Jul 2019 10:00:45 +0000
Message-ID: <d9109967681846b09abac2e340cd21f8@SFHDAG5NODE1.st.com>
References: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
 <1558366019-24214-4-git-send-email-gerald.baeza@st.com>
 <20190626122228.GB20313@lakrids.cambridge.arm.com>
In-Reply-To: <20190626122228.GB20313@lakrids.cambridge.arm.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-12_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030320_081648_B2332370 
X-CRM114-Status: GOOD (  41.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark

Thanks a lot for your review !

I started to rework the driver, based on your feedback but I have some ques=
tions for you: they are in line below... (where I also answer to your quest=
ions)

Best regards

G=E9rald


> -----Original Message-----
> From: Mark Rutland <Mark.Rutland@arm.com>
> Sent: mercredi 26 juin 2019 14:23
> To: Gerald BAEZA <gerald.baeza@st.com>
> Cc: Will Deacon <Will.Deacon@arm.com>; robh+dt@kernel.org;
> mcoquelin.stm32@gmail.com; Alexandre TORGUE
> <alexandre.torgue@st.com>; corbet@lwn.net; linux@armlinux.org.uk;
> olof@lixom.net; horms+renesas@verge.net.au; arnd@arndb.de; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-stm32@st-
> md-mailman.stormreply.com; linux-kernel@vger.kernel.org; linux-
> doc@vger.kernel.org
> Subject: Re: [PATCH v2 3/5] perf: stm32: ddrperfm driver creation
> =

> On Mon, May 20, 2019 at 03:27:17PM +0000, Gerald BAEZA wrote:
> > The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1
> SOC.
> >
> > This perf drivers supports the read, write, activate, idle and total
> > time counters, described in the reference manual RM0436.
> =

> Is this document publicly accessible anywhere?

Yes

> If so, could you please provide a link?

https://www.st.com/resource/en/reference_manual/DM00327659.pdf =


> > A 'bandwidth' attribute is added in the 'ddrperfm' event_source in
> > order to directly get the read and write bandwidths (in MB/s), from
> > the last read, write and total time counters reading.
> > This attribute is aside the 'events' attributes group because it is
> > not a counter, as seen by perf tool.
> =

> This should be removed. This is unusually stateful, and this can be calcu=
lated
> in userspace by using the events. I'm also not keen on creating a precede=
nt
> for weird sysfs bits for PMUs.

Ok, I will remove it in the v3.
This will also have impact on the bindings and dts since the DDR frequency =

will disappear from the clocks.

Just to be sure : should I do the bandwidth computing on userspace (via =

a script, for instance) or are you suggesting to do this in perf tool ? =


> > Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> > ---
> >  drivers/perf/Kconfig         |   6 +
> >  drivers/perf/Makefile        |   1 +
> >  drivers/perf/stm32_ddr_pmu.c | 512
> > +++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 519 insertions(+)
> >  create mode 100644 drivers/perf/stm32_ddr_pmu.c
> >
> > diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig index
> > a94e586..9add8a7 100644
> > --- a/drivers/perf/Kconfig
> > +++ b/drivers/perf/Kconfig
> > @@ -105,6 +105,12 @@ config THUNDERX2_PMU
> >     The SoC has PMU support in its L3 cache controller (L3C) and
> >     in the DDR4 Memory Controller (DMC).
> >
> > +config STM32_DDR_PMU
> > +       tristate "STM32 DDR PMU"
> > +       depends on MACH_STM32MP157
> > +       help
> > +         Support for STM32 DDR performance monitor (DDRPERFM).
> > +
> >  config XGENE_PMU
> >          depends on ARCH_XGENE
> >          bool "APM X-Gene SoC PMU"
> > diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile index
> > 3048994..fa64719 100644
> > --- a/drivers/perf/Makefile
> > +++ b/drivers/perf/Makefile
> > @@ -8,6 +8,7 @@ obj-$(CONFIG_ARM_SMMU_V3_PMU) +=3D arm_smmuv3_pmu.o
> >  obj-$(CONFIG_HISI_PMU) +=3D hisilicon/
> >  obj-$(CONFIG_QCOM_L2_PMU)+=3D qcom_l2_pmu.o
> >  obj-$(CONFIG_QCOM_L3_PMU) +=3D qcom_l3_pmu.o
> > +obj-$(CONFIG_STM32_DDR_PMU) +=3D stm32_ddr_pmu.o
> >  obj-$(CONFIG_THUNDERX2_PMU) +=3D thunderx2_pmu.o
> >  obj-$(CONFIG_XGENE_PMU) +=3D xgene_pmu.o
> >  obj-$(CONFIG_ARM_SPE_PMU) +=3D arm_spe_pmu.o diff --git
> > a/drivers/perf/stm32_ddr_pmu.c b/drivers/perf/stm32_ddr_pmu.c new file
> > mode 100644 index 0000000..ae4a813
> > --- /dev/null
> > +++ b/drivers/perf/stm32_ddr_pmu.c
> > @@ -0,0 +1,512 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * This file is the STM32 DDR performance monitor (DDRPERFM) driver
> > + *
> > + * Copyright (C) 2019, STMicroelectronics - All Rights Reserved
> > + * Author: Gerald Baeza <gerald.baeza@st.com>  */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/hrtimer.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/perf_event.h>
> > +#include <linux/reset.h>
> > +#include <linux/slab.h>
> > +#include <linux/types.h>
> > +
> > +#define POLL_MS4000/* The counter roll over after ~8s @533MHz */
> =

> I take it this is because there's no IRQ? If so, please expand the commen=
t to
> call that out, e.g.
>
> /*
>  * The PMU has no overflow IRQ, so we must poll to avoid losing events.
>  * The fastest counter can overflow in ~8s @533MHz, so we poll in 4s
>  * intervals to ensure we don't miss a rollover.
>  */
> #define POLL_MS4000

The IP is able to freeze all counters and generate an interrupt when there =
is
a counter overflow. But, relying on this means that I lose all the events t=
hat
occur between the freeze and the interrupt handler execution, corresponding
to the interrupt latency. I can avoid such events losing in polling, so tha=
t is
why I preferred to use a polling mechanism.
 =

> Which clock specifically is operating at 533MHz, and is this something th=
at
> may vary? Is it possible that this may go higher in future?

533 MHz is the DDR frequency and this is the maximum for STM32MP15.

> > +#define WORD_LENGTH4/* Bytes */
> > +#define BURST_LENGTH8/* Words */
> > +
> > +#define DDRPERFM_CTL0x000
> > +#define DDRPERFM_CFG0x004
> > +#define DDRPERFM_STATUS 0x008
> > +#define DDRPERFM_CCR0x00C
> > +#define DDRPERFM_IER0x010
> > +#define DDRPERFM_ISR0x014
> > +#define DDRPERFM_ICR0x018
> > +#define DDRPERFM_TCNT0x020
> > +#define DDRPERFM_CNT(X)(0x030 + 8 * (X)) =

> > +#define DDRPERFM_HWCFG0x3F0
> > +#define DDRPERFM_VER0x3F4 =

> > +#define DDRPERFM_ID0x3F8
> > +#define DDRPERFM_SID0x3FC
> > +
> > +#define CTL_START0x00000001
> > +#define CTL_STOP0x00000002
> > +#define CCR_CLEAR_ALL0x8000000F
> > +#define SID_MAGIC_ID0xA3C5DD01
> > +
> > +#define STRING "Read =3D %llu, Write =3D %llu, Read & Write =3D %llu (=
MB/s)\n"
> =

> If you need this, please expand it in-place. As-is, this is needless obfu=
scation.
 =

This will be removed in v3, so no problem.

> > +
> > +enum {
> > +READ_CNT,
> > +WRITE_CNT,
> > +ACTIVATE_CNT,
> > +IDLE_CNT,
> > +TIME_CNT,
> > +PMU_NR_COUNTERS
> > +};
> =

> I take it these are fixed-purpose counters in the hardware?

Yes

> > +
> > +struct stm32_ddr_pmu {
> > +struct pmu pmu;
> > +void __iomem *membase;
> > +struct clk *clk;
> > +struct clk *clk_ddr;
> > +unsigned long clk_ddr_rate;
> > +struct hrtimer hrtimer;
> > +ktime_t poll_period;
> > +spinlock_t lock; /* for shared registers access */
> =

> All accesses to a PMU instance should be serialized on the same CPU, so y=
ou
> shouldn't need a lock (though you will need to disable IRQs to serialize =
with
> the interrupt handler).
> =

> The perf subsystem cannot sanely access the PMU across multiple CPUs.

Ok, so I will only control the IP from one core and remove the lock in v3.

> > +struct perf_event *events[PMU_NR_COUNTERS];
> > +u64 events_cnt[PMU_NR_COUNTERS];
> > +};
> > +
> > +static inline struct stm32_ddr_pmu *pmu_to_stm32_ddr_pmu(struct
> pmu
> > +*p) { return container_of(p, struct stm32_ddr_pmu, pmu); }
> > +
> > +static inline struct stm32_ddr_pmu *hrtimer_to_stm32_ddr_pmu(struct
> > +hrtimer *h) { return container_of(h, struct stm32_ddr_pmu, hrtimer);
> > +}
> > +
> > +static u64 stm32_ddr_pmu_compute_bw(struct stm32_ddr_pmu
> *stm32_ddr_pmu,
> > +    int counter)
> > +{
> > +u64 bw =3D stm32_ddr_pmu->events_cnt[counter], tmp;
> > +u64 div =3D stm32_ddr_pmu->events_cnt[TIME_CNT];
> > +u32 prediv =3D 1, premul =3D 1;
> > +
> > +if (bw && div) {
> > +/* Maximize the dividend into 64 bits */ while ((bw <
> > +0x8000000000000000ULL) &&
> > +       (premul < 0x40000000UL)) {
> > +bw =3D bw << 1;
> > +premul *=3D 2;
> > +}
> > +/* Minimize the dividor to fit in 32 bits */ while ((div >
> > +0xffffffffUL) && (prediv < 0x40000000UL)) { div =3D div >> 1; prediv *=
=3D
> > +2; }
> > +/* Divide counter per time and multiply per DDR settings */
> > +do_div(bw, div); tmp =3D bw * BURST_LENGTH * WORD_LENGTH; tmp *=3D
> > +stm32_ddr_pmu->clk_ddr_rate; if (tmp < bw) goto error; bw =3D tmp;
> > +/* Cancel the prediv and premul factors */ while (prediv > 1) { bw =3D
> > +bw >> 1; prediv /=3D 2; } while (premul > 1) { bw =3D bw >> 1; premul =
/=3D
> > +2; }
> > +/* Convert MHz to Hz and B to MB, to finally get MB/s */ tmp =3D bw *
> > +1000000; if (tmp < bw) goto error; bw =3D tmp; premul =3D 1024 * 1024;
> > +while (premul > 1) { bw =3D bw >> 1; premul /=3D 2; } } return bw;
> > +
> > +error:
> > +pr_warn("stm32-ddr-pmu: overflow detected\n"); return 0; }
> =

> IIUC this is for the stateful sysfs stuff, which should be removed.
> =


Yes, you are right : to be removed in v3.

> > +
> > +static void stm32_ddr_pmu_event_configure(struct perf_event *event) {
> > +struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +pmu_to_stm32_ddr_pmu(event->pmu); unsigned long lock_flags,
> > +config_base =3D event->hw.config_base;
> > +u32 val;
> > +
> > +spin_lock_irqsave(&stm32_ddr_pmu->lock, lock_flags);
> > +writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> > +
> > +if (config_base < TIME_CNT) {
> > +val =3D readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_CFG); val |=3D=
 (1
> > +<< config_base); writel_relaxed(val, stm32_ddr_pmu->membase +
> > +DDRPERFM_CFG); } spin_unlock_irqrestore(&stm32_ddr_pmu->lock,
> > +lock_flags); }
> =

> You don't need the lock here. This is called from your pmu::{start,add}
> callbacks, and the perf core already ensures those are serialized (via the
> context lock), and called with IRQs disabled.
> =


Ok

> > +
> > +static void stm32_ddr_pmu_event_read(struct perf_event *event) {
> > +struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +pmu_to_stm32_ddr_pmu(event->pmu); unsigned long flags, config_base =3D
> > +event->hw.config_base; struct hw_perf_event *hw =3D &event->hw;
> > +u64 prev_count, new_count, mask;
> > +u32 val, offset, bit;
> > +
> > +spin_lock_irqsave(&stm32_ddr_pmu->lock, flags);
> > +
> > +writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> > +
> > +if (config_base =3D=3D TIME_CNT) {
> > +offset =3D DDRPERFM_TCNT;
> > +bit =3D 1 << 31;
> > +} else {
> > +offset =3D DDRPERFM_CNT(config_base);
> > +bit =3D 1 << config_base;
> > +}
> > +val =3D readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_STATUS);
> > +if (val & bit) pr_warn("stm32_ddr_pmu hardware overflow\n"); val =3D
> > +readl_relaxed(stm32_ddr_pmu->membase + offset); writel_relaxed(bit,
> > +stm32_ddr_pmu->membase + DDRPERFM_CCR);
> > + writel_relaxed(CTL_START, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> > +
> > +do {
> > +prev_count =3D local64_read(&hw->prev_count); new_count =3D prev_count
> > +val; } while (local64_xchg(&hw->prev_count, new_count) !=3D
> > +prev_count);
> > +
> > +mask =3D GENMASK_ULL(31, 0);
> > +local64_add(val & mask, &event->count);
> > +
> > +if (new_count < prev_count)
> > +pr_warn("STM32 DDR PMU counter saturated\n");
> =

> Do the counter saturate, or do they roll-over?
> =

> I think that the message is misleading here, but I just want to check.

This check is on the software counter, that may roll-over after a very long=
 capture time.
I took the "counter saturated" warning from "cache-l2x0-pmu.c" but I can ch=
ange to
something more explicit.

The hardware counters, in DDRPERFM IP, are frozen in case of overflow (this=
 is when
the interrupt mentioned above can be generated).
If this occurs, a "stm32_ddr_pmu hardware overflow" warning is generated.

Is this clearer ? Should I change anything ?

> > +
> > +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, flags); }
> > +
> > +static void stm32_ddr_pmu_event_start(struct perf_event *event, int
> > +flags) { struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +pmu_to_stm32_ddr_pmu(event->pmu);
> > +struct hw_perf_event *hw =3D &event->hw; unsigned long lock_flags;
> > +
> > +if (WARN_ON_ONCE(!(hw->state & PERF_HES_STOPPED))) return;
> > +
> > +if (flags & PERF_EF_RELOAD)
> > +WARN_ON_ONCE(!(hw->state & PERF_HES_UPTODATE));
> > +
> > +stm32_ddr_pmu_event_configure(event);
> > +
> > +/* Clear all counters to synchronize them, then start */
> > +spin_lock_irqsave(&stm32_ddr_pmu->lock, lock_flags);
> > +writel_relaxed(CCR_CLEAR_ALL, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> > +writel_relaxed(CTL_START, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> > +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, lock_flags);
> =

> By 'clear' do you mean set the counters to zero?
> =

> Or is there a control bit that determine whether they count?

There is one "enable" bit per counter (except the total counter that is ena=
bled by default).
"Clear" means that the counters are set to zero and the counting will only =
be started with =

the "Start" for all enabled counters.

> If we're updating the counter, we could update prev_count at the same
> instant.

This synchronization is just for the start because the events are enabled &=
 started one
per one by perf tool. Since each counter has to be compared to the "time" c=
ount that is
the overall reference for all, I want to ensure that "time" and all the ena=
bled counters =

finally start at the same time. Thus, this synchro.

Do you mean that, to be consistent, I should set prev_count to zero here al=
so ?

> =

> > +
> > +hw->state =3D 0;
> > +}
> > +
> > +static void stm32_ddr_pmu_event_stop(struct perf_event *event, int
> > +flags) { struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +pmu_to_stm32_ddr_pmu(event->pmu);
> > +unsigned long lock_flags, config_base =3D event->hw.config_base; struct
> > +hw_perf_event *hw =3D &event->hw;
> > +u32 val, bit;
> > +
> > +if (WARN_ON_ONCE(hw->state & PERF_HES_STOPPED)) return;
> > +
> > +spin_lock_irqsave(&stm32_ddr_pmu->lock, lock_flags);
> > +writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase +
> DDRPERFM_CTL); if
> > +(config_base =3D=3D TIME_CNT) bit =3D 1 << 31; else bit =3D 1 << confi=
g_base;
> > +writel_relaxed(bit, stm32_ddr_pmu->membase + DDRPERFM_CCR); if
> > +(config_base < TIME_CNT) { val =3D readl_relaxed(stm32_ddr_pmu-
> >membase
> > ++ DDRPERFM_CFG); val &=3D ~bit; writel_relaxed(val,
> > +stm32_ddr_pmu->membase + DDRPERFM_CFG); }
> > +spin_unlock_irqrestore(&stm32_ddr_pmu->lock, lock_flags);
> > +
> > +hw->state |=3D PERF_HES_STOPPED;
> > +
> > +if (flags & PERF_EF_UPDATE) {
> > +stm32_ddr_pmu_event_read(event);
> > +hw->state |=3D PERF_HES_UPTODATE;
> > +}
> > +}
> > +
> > +static int stm32_ddr_pmu_event_add(struct perf_event *event, int
> > +flags) { struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +pmu_to_stm32_ddr_pmu(event->pmu);
> > +unsigned long config_base =3D event->hw.config_base; struct
> > +hw_perf_event *hw =3D &event->hw;
> > +
> > +stm32_ddr_pmu->events_cnt[config_base] =3D 0;
> > +stm32_ddr_pmu->events[config_base] =3D event;
> > +
> > +clk_enable(stm32_ddr_pmu->clk);
> > +hrtimer_start(&stm32_ddr_pmu->hrtimer, stm32_ddr_pmu-poll_period,
> > +      HRTIMER_MODE_REL);
> > +
> > +stm32_ddr_pmu_event_configure(event);
> > +
> > +hw->state =3D PERF_HES_STOPPED | PERF_HES_UPTODATE;
> > +
> > +if (flags & PERF_EF_START)
> > +stm32_ddr_pmu_event_start(event, 0);
> > +
> > +return 0;
> > +}
> > +
> > +static void stm32_ddr_pmu_event_del(struct perf_event *event, int
> > +flags) { struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +pmu_to_stm32_ddr_pmu(event->pmu);
> > +unsigned long config_base =3D event->hw.config_base; bool stop =3D tru=
e;
> > +int i;
> > +
> > +stm32_ddr_pmu_event_stop(event, PERF_EF_UPDATE);
> > +
> > +stm32_ddr_pmu->events_cnt[config_base] +=3D
> > +local64_read(&event->count); stm32_ddr_pmu->events[config_base] =3D
> > +NULL;
> > +
> > +for (i =3D 0; i < PMU_NR_COUNTERS; i++) if (stm32_ddr_pmu->events[i])
> > +stop =3D false; if (stop) hrtimer_cancel(&stm32_ddr_pmu->hrtimer);
> > +
> > +clk_disable(stm32_ddr_pmu->clk);
> =

> This doesn't look right. If I add two events A and B, then delete event A,
> surely we want the clock on for event B?
> =


clk_enable() is called for each event enable and clk_disable() is called fo=
r =

each event disable. So with your example we have:
+A -> clk_enable()
+B -> clk_enable()
-B -> clk_disable()
And the clock remains enabled until A is also deleted.

> Does the clock only affect whether the counters count, or does it also af=
fect
> whether the register file is usable?

Both

> =

> > +}
> > +
> > +static int stm32_ddr_pmu_event_init(struct perf_event *event) {
> > +struct hw_perf_event *hw =3D &event->hw;
> > +
> > +if (is_sampling_event(event))
> > +return -EINVAL;
> > +
> > +if (event->attach_state & PERF_ATTACH_TASK) return -EINVAL;
> > +
> > +if (event->attr.exclude_user   ||
> > +    event->attr.exclude_kernel ||
> > +    event->attr.exclude_hv     ||
> > +    event->attr.exclude_idle   ||
> > +    event->attr.exclude_host   ||
> > +    event->attr.exclude_guest)
> > +return -EINVAL;
> > +
> > +if (event->cpu < 0)
> > +return -EINVAL;
> =

> For a system PMU like this, you must ensure that all events are assigned =
to
> the same CPU.
> =

> You'll need to designate some arbitrary CPU to mange the PMU, expose that
> under sysfs, and upon hotplug events you must choose a new CPU and
> migrate existing events.
> =

> For a simple example, see arch/arm/mm/cache-l2x0-pmu.c.

Among CPU#0 and CPU#1, the CPU#0 is the only one that can be running alone
(in other words, we disable CPU#1 before low power transition and CPU#0 will
finally enter low power).
So I think I can avoid to manage any migration by systematically launching =
the PMU
on CPU#0. =


Is this fine for you or do you anyway prefer a generic approach that I coul=
d find =

in arch/arm/mm/cache-l2x0-pmu.c ?

> > +
> > +hw->config_base =3D event->attr.config;
> > +
> > +return 0;
> > +}
> > +
> > +static enum hrtimer_restart stm32_ddr_pmu_poll(struct hrtimer
> > +*hrtimer) { struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> > +hrtimer_to_stm32_ddr_pmu(hrtimer);
> > +int i;
> > +
> > +for (i =3D 0; i < PMU_NR_COUNTERS; i++) if (stm32_ddr_pmu->events[i])
> > +stm32_ddr_pmu_event_read(stm32_ddr_pmu->events[i]);
> > +
> > +hrtimer_forward_now(hrtimer, stm32_ddr_pmu->poll_period);
> > +
> > +return HRTIMER_RESTART;
> > +}
> > +
> > +static ssize_t stm32_ddr_pmu_sysfs_show(struct device *dev, struct
> > +device_attribute *attr, char *buf) { struct dev_ext_attribute *eattr;
> > +
> > +eattr =3D container_of(attr, struct dev_ext_attribute, attr);
> > +
> > +return sprintf(buf, "config=3D0x%lx\n", (unsigned long)eattr->var); }
> > +
> > +static ssize_t bandwidth_show(struct device *dev,
> > +      struct device_attribute *attr,
> > +      char *buf)
> > +{
> > +struct stm32_ddr_pmu *stm32_ddr_pmu =3D dev_get_drvdata(dev);
> > +u64 r_bw, w_bw;
> > +int ret;
> > +
> > +if (stm32_ddr_pmu->events_cnt[TIME_CNT]) { r_bw =3D
> > +stm32_ddr_pmu_compute_bw(stm32_ddr_pmu, READ_CNT); w_bw =3D
> > +stm32_ddr_pmu_compute_bw(stm32_ddr_pmu, WRITE_CNT);
> > +
> > +ret =3D snprintf(buf, PAGE_SIZE, STRING,
> > +       r_bw, w_bw, (r_bw + w_bw));
> > +} else {
> > +ret =3D snprintf(buf, PAGE_SIZE, "No data available\n"); }
> > +
> > +return ret;
> > +}
> =

> As commented above, this should not be exposed under sysfs. It doesn't
> follow the usual ABI rules, it's weirdly stateful, and it's redundant.
> =


Ok

> > +
> > +#define STM32_DDR_PMU_ATTR(_name, _func, _config)\ (&((struct
> > +dev_ext_attribute[]) {\
> > +{ __ATTR(_name, 0444, _func, NULL), (void *)_config }   \
> > +})[0].attr.attr)
> > +
> > +#define STM32_DDR_PMU_EVENT_ATTR(_name, _config)\
> > +STM32_DDR_PMU_ATTR(_name, stm32_ddr_pmu_sysfs_show,\
> > +   (unsigned long)_config)
> > +
> > +static struct attribute *stm32_ddr_pmu_event_attrs[] =3D {
> > +STM32_DDR_PMU_EVENT_ATTR(read_cnt, READ_CNT),
> > +STM32_DDR_PMU_EVENT_ATTR(write_cnt, WRITE_CNT),
> > +STM32_DDR_PMU_EVENT_ATTR(activate_cnt, ACTIVATE_CNT),
> > +STM32_DDR_PMU_EVENT_ATTR(idle_cnt, IDLE_CNT),
> > +STM32_DDR_PMU_EVENT_ATTR(time_cnt, TIME_CNT), NULL };
> > +
> > +static DEVICE_ATTR_RO(bandwidth);
> > +static struct attribute *stm32_ddr_pmu_bandwidth_attrs[] =3D {
> > +&dev_attr_bandwidth.attr, NULL, };
> > +
> > +static struct attribute_group stm32_ddr_pmu_event_attrs_group =3D {
> > +.name =3D "events", .attrs =3D stm32_ddr_pmu_event_attrs, };
> > +
> > +static struct attribute_group stm32_ddr_pmu_bandwidth_attrs_group =3D {
> > +.attrs =3D stm32_ddr_pmu_bandwidth_attrs, };
> > +
> > +static const struct attribute_group *stm32_ddr_pmu_attr_groups[] =3D {
> > +&stm32_ddr_pmu_event_attrs_group,
> > +&stm32_ddr_pmu_bandwidth_attrs_group,
> > +NULL,
> > +};
> > +
> > +static int stm32_ddr_pmu_device_probe(struct platform_device *pdev) {
> > +struct stm32_ddr_pmu *stm32_ddr_pmu; struct reset_control *rst;
> > +struct resource *res; int i, ret;
> > +u32 val;
> > +
> > +stm32_ddr_pmu =3D devm_kzalloc(&pdev->dev, sizeof(struct
> stm32_ddr_pmu),
> > +     GFP_KERNEL);
> > +if (!stm32_ddr_pmu)
> > +return -ENOMEM;
> > +platform_set_drvdata(pdev, stm32_ddr_pmu);
> > +
> > +res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +stm32_ddr_pmu->membase =3D devm_ioremap_resource(&pdev->dev,
> res); if
> > +(IS_ERR(stm32_ddr_pmu->membase)) { pr_warn("Unable to get STM32
> DDR
> > +PMU membase\n"); return PTR_ERR(stm32_ddr_pmu->membase); }
> > +
> > +stm32_ddr_pmu->clk =3D devm_clk_get(&pdev->dev, "bus"); if
> > +(IS_ERR(stm32_ddr_pmu->clk)) { pr_warn("Unable to get STM32 DDR
> PMU
> > +clock\n"); return PTR_ERR(stm32_ddr_pmu->clk); }
> > +
> > +ret =3D clk_prepare_enable(stm32_ddr_pmu->clk);
> > +if (ret) {
> > +pr_warn("Unable to prepare STM32 DDR PMU clock\n"); return ret; }
> > +
> > +stm32_ddr_pmu->clk_ddr =3D devm_clk_get(&pdev->dev, "ddr"); if
> > +(IS_ERR(stm32_ddr_pmu->clk_ddr)) { pr_warn("Unable to get STM32
> DDR
> > +clock\n"); return PTR_ERR(stm32_ddr_pmu->clk_ddr); }
> > +stm32_ddr_pmu->clk_ddr_rate =3D clk_get_rate(stm32_ddr_pmu-
> >clk_ddr);
> > +stm32_ddr_pmu->clk_ddr_rate /=3D 1000000;
> > +
> > +stm32_ddr_pmu->poll_period =3D ms_to_ktime(POLL_MS);
> > +hrtimer_init(&stm32_ddr_pmu->hrtimer, CLOCK_MONOTONIC,
> > +     HRTIMER_MODE_REL);
> > +stm32_ddr_pmu->hrtimer.function =3D stm32_ddr_pmu_poll;
> > +spin_lock_init(&stm32_ddr_pmu->lock);
> > +
> > +for (i =3D 0; i < PMU_NR_COUNTERS; i++) { stm32_ddr_pmu->events[i] =3D
> > +NULL; stm32_ddr_pmu->events_cnt[i] =3D 0; }
> > +
> > +val =3D readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_SID); if
> (val
> > +!=3D SID_MAGIC_ID) return -EINVAL;
> > +
> > +stm32_ddr_pmu->pmu =3D (struct pmu) {
> > +.task_ctx_nr =3D perf_invalid_context,
> > +.start =3D stm32_ddr_pmu_event_start,
> > +.stop =3D stm32_ddr_pmu_event_stop,
> > +.add =3D stm32_ddr_pmu_event_add,
> > +.del =3D stm32_ddr_pmu_event_del,
> > +.event_init =3D stm32_ddr_pmu_event_init, .attr_groups =3D
> > +stm32_ddr_pmu_attr_groups, }; ret =3D
> > +perf_pmu_register(&stm32_ddr_pmu->pmu, "ddrperfm", -1);
> =

> Please give this a better name. The usual convention is to use "_pmu" as =
the
> suffix, so we should use that rather than "perfm".
> =

> To be unambiguous, something like "stm32_ddr_pmu" would be good.

Ok, understood

> =

> Thanks,
> Mark.
> =

> > +if (ret) {
> > +pr_warn("Unable to register STM32 DDR PMU\n"); return ret; }
> > +
> > +rst =3D devm_reset_control_get_exclusive(&pdev->dev, NULL); if
> > +(!IS_ERR(rst)) { reset_control_assert(rst); udelay(2);
> > +reset_control_deassert(rst); }
> > +
> > +pr_info("stm32-ddr-pmu: probed (ID=3D0x%08x VER=3D0x%08x),
> DDR@%luMHz\n",
> > +readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_ID),
> > +readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_VER),
> > +stm32_ddr_pmu->clk_ddr_rate);
> > +
> > +clk_disable(stm32_ddr_pmu->clk);
> > +
> > +return 0;
> > +}
> > +
> > +static int stm32_ddr_pmu_device_remove(struct platform_device *pdev)
> > +{ struct stm32_ddr_pmu *stm32_ddr_pmu =3D
> platform_get_drvdata(pdev);
> > +
> > +perf_pmu_unregister(&stm32_ddr_pmu->pmu);
> > +
> > +return 0;
> > +}
> > +
> > +static const struct of_device_id stm32_ddr_pmu_of_match[] =3D { {
> > +.compatible =3D "st,stm32-ddr-pmu" }, { }, };
> > +
> > +static struct platform_driver stm32_ddr_pmu_driver =3D { .driver =3D {
> > +.name=3D "stm32-ddr-pmu", .of_match_table =3D
> > +of_match_ptr(stm32_ddr_pmu_of_match),
> > +},
> > +.probe =3D stm32_ddr_pmu_device_probe,
> > +.remove =3D stm32_ddr_pmu_device_remove, };
> > +
> > +module_platform_driver(stm32_ddr_pmu_driver);
> > +
> > +MODULE_DESCRIPTION("Perf driver for STM32 DDR performance
> monitor");
> > +MODULE_AUTHOR("Gerald Baeza <gerald.baeza@st.com>");
> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.7.4
> IMPORTANT NOTICE: The contents of this email and any attachments are
> confidential and may also be privileged. If you are not the intended reci=
pient,
> please notify the sender immediately and do not disclose the contents to =
any
> other person, use it for any purpose, or store or copy the information in=
 any
> medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
