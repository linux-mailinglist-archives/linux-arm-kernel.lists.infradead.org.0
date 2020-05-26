Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4437B1E1E61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7wdHymu7CK/TLmtq1csLL0wzhxLC3Hj69tLpjpMVqI=; b=YSJcElmkryp5HL
	eDMV9gF38EVkXdr1jxi421XrP3kWIvBT4++hzW1M/r7DytLfL+VH5UFpPCpkGwxkMQy3DBkhR4Sjq
	NuS1iRPE7/uLpIR1IUN7RYgIpyVudrMjMGHLziwfJjYmVcYR5XgrXYvgNkc5jvqGm1EROjcX/BLqN
	3DY9ynNJxKgcfUwCKm5w028FyacbbQC97rChHnkD85VNY9a2IeXdTBe1QUaK7qPDi5ddbb03onTLL
	sNRKeRNjjo0rqGxxkjgnaz9CSpQaeJwZUWKQFkuZ0IZMSxmghqoau/dGY6+Xg+I/IVZDM31Aam35N
	MapTD7leBj0y2ZQj3tgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVnA-0002Co-1J; Tue, 26 May 2020 09:22:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVmt-0002BB-BM; Tue, 26 May 2020 09:22:21 +0000
X-UUID: 9e4c3c98654c4f0e968ec73826e05b18-20200526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gLvWi1nqtTxrY8+10s7N7a3KehB3j++1xRvGDtVazhY=; 
 b=Rb2GH9EwZK3ETfLusjirYtuSWnmALYnlgFzpgoWXcsyyR58eT+ve6O3szIotCeTWYpK6doHc0I1gDwApu+g3qA+RokdWteEIqTQukoq0s+9bJ5pYMuFGbxpkTbkIqlUR3zMJUIHfHJ4JbISW3D6SsXVlO/4mSLCqh6u5NedDldM=;
X-UUID: 9e4c3c98654c4f0e968ec73826e05b18-20200526
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1637176630; Tue, 26 May 2020 01:22:02 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 26 May 2020 02:12:07 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 26 May 2020 17:12:06 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 26 May 2020 17:12:06 +0800
Message-ID: <1590484328.4392.44.camel@mtksdaap41>
Subject: Re: [PATCH v8 3/3] PM / AVS: SVS: Introduce SVS engine
From: Roger Lu <roger.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 26 May 2020 17:12:08 +0800
In-Reply-To: <3b810588-ac4a-7fec-2163-38555dd83928@gmail.com>
References: <20200518092403.22647-1-roger.lu@mediatek.com>
 <20200518092403.22647-4-roger.lu@mediatek.com>
 <CAFqH_527ZJEmsvrk-n-uNSc+Bx87ZVppn=rNKDWPGYUuf+gvPA@mail.gmail.com>
 <1590140434.4392.22.camel@mtksdaap41>
 <3b810588-ac4a-7fec-2163-38555dd83928@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_022219_415497_0E4A28E1 
X-CRM114-Status: GOOD (  33.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Angus Lin <Angus.Lin@mediatek.com>,
 Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>, YT Lee <yt.lee@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Thanks for the feedback.

On Fri, 2020-05-22 at 17:38 +0200, Matthias Brugger wrote:
> 
> On 22/05/2020 11:40, Roger Lu wrote:
> > 
> > Hi Enric,
> > 
> > On Tue, 2020-05-19 at 17:30 +0200, Enric Balletbo Serra wrote:
> >> Hi Roger,
> >>
> >> Thank you for your patch. I have the feeling that this driver is
> >> complex and difficult to follow and I am wondering if it wouldn't be
> >> better if you can send a version that simply adds basic functionality
> >> for now. Some comments below.
> > 
> > Thanks for the advices. I'll submit SVS v9 with basic functionality
> > patch + step by step functionalities' patches. 
> > 
> >>
> >> Missatge de Roger Lu <roger.lu@mediatek.com> del dia dl., 18 de maig
> >> 2020 a les 11:25:
> >>>
> >>> The SVS (Smart Voltage Scaling) engine is a piece
> >>> of hardware which is used to calculate optimized
> >>> voltage values of several power domains,
> >>> e.g. CPU/GPU/CCI, according to chip process corner,
> >>> temperatures, and other factors. Then DVFS driver
> >>> could apply those optimized voltage values to reduce
> >>> power consumption.
> >>>
> >>> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> >>> ---
> >>>  drivers/power/avs/Kconfig     |   10 +
> >>>  drivers/power/avs/Makefile    |    1 +
> >>>  drivers/power/avs/mtk_svs.c   | 2119 +++++++++++++++++++++++++++++++++
> >>>  include/linux/power/mtk_svs.h |   23 +
> >>>  4 files changed, 2153 insertions(+)
> >>>  create mode 100644 drivers/power/avs/mtk_svs.c
> >>>  create mode 100644 include/linux/power/mtk_svs.h
> >>>
> >>> diff --git a/drivers/power/avs/Kconfig b/drivers/power/avs/Kconfig
> >>> index cdb4237bfd02..67089ac6040e 100644
> >>> --- a/drivers/power/avs/Kconfig
> >>> +++ b/drivers/power/avs/Kconfig
> >>> @@ -35,3 +35,13 @@ config ROCKCHIP_IODOMAIN
> >>>           Say y here to enable support io domains on Rockchip SoCs. It is
> >>>           necessary for the io domain setting of the SoC to match the
> >>>           voltage supplied by the regulators.
> >>> +
> >>> +config MTK_SVS
> >>> +       bool "MediaTek Smart Voltage Scaling(SVS)"
> >>
> >> Can't be this a module? Why? In such case, you should use tristate option
> > 
> > Generally, MTK_SVS is needed in MTK SoC(mt81xx) products. So, we don't provide
> > module option in config. If, somehow, SVS isn't needed, we suggest
> > CONFIG_MTK_SVS=n to be set.
> > 
> 
> The question here is if it needs to be probed before we probe the modules. If
> not, we should add a Kconfig option for MT81xx SoCs to select MTK_SVS.

Excuse me to make you confuse. MT81xx SoCs is the subset MTK ICs that
will use CONFIG_MTK_SVS. In other words, CONFIG_MTK_SVS will be used
with other MTK ICs as well. So, MTK_SVS is the general naming for MTK IC
to enable SVS power feature. Anyway, back to Enric's question, I'll make
MTK_SVS become a tristate feature in the next patch. Thanks.

> 
> >>
> >>> +       depends on POWER_AVS && MTK_EFUSE && NVMEM
> >>> +       help
> >>> +         The SVS engine is a piece of hardware which is used to calculate
> >>> +         optimized voltage values of several power domains, e.g.
> >>> +         CPU clusters/GPU/CCI, according to chip process corner, temperatures,
> >>> +         and other factors. Then DVFS driver could apply those optimized voltage
> >>> +         values to reduce power consumption.
> >>> diff --git a/drivers/power/avs/Makefile b/drivers/power/avs/Makefile
> >>> index 9007d05853e2..231adf078582 100644
> >>> --- a/drivers/power/avs/Makefile
> >>> +++ b/drivers/power/avs/Makefile
> >>> @@ -2,3 +2,4 @@
> >>>  obj-$(CONFIG_POWER_AVS_OMAP)           += smartreflex.o
> >>>  obj-$(CONFIG_QCOM_CPR)                 += qcom-cpr.o
> >>>  obj-$(CONFIG_ROCKCHIP_IODOMAIN)                += rockchip-io-domain.o
> >>> +obj-$(CONFIG_MTK_SVS)                  += mtk_svs.o
> >>
> >> Will this driver be SoC specific or the idea is to support different
> >> SoCs? If the answer to the first question is yes, please name the file
> >> with the SoC prefix (i.e mt8183_svs). However, If the answer to the
> >> second question is yes, make sure you prefix common
> >> functions/structs/defines with a generic prefix mtk_svs but use the
> >> SoC prefix for the ones you expect will be different between SoC, i.e
> >> mt8183_svs_. This helps the readability of the driver. Also, try to
> >> avoid too generic names.
> > 
> > MTK_SVS is designed for supporting different MTK SoCs.Therefore, the answer is second
> > question and thanks for the heads-up.
> > 
> >>
> >>> diff --git a/drivers/power/avs/mtk_svs.c b/drivers/power/avs/mtk_svs.c
> >>> new file mode 100644
> >>> index 000000000000..a4083b3ef175
> >>> --- /dev/null
> >>> +++ b/drivers/power/avs/mtk_svs.c
> >>> @@ -0,0 +1,2119 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>
> >> I suspect you want this only GPLv2 compliant. Use GPL-2.0-only
> > 
> > OK. I'll use GPL-2.0-only.Thanks.
> > 
> >>
> >>> +/*
> >>> + * Copyright (C) 2020 MediaTek Inc.
> >>> + */
> >>> +
> >>> +#define pr_fmt(fmt)    "[mtk_svs] " fmt
> >>
> >> I don't see any reason to use pr_fmt in this driver. Use dev_*
> >> functions instead and remove the above.
> > 
> > Ok. I will remove it. Thanks.
> > 
> >>
> >>> +
> >>> +#include <linux/bits.h>
> >>> +#include <linux/clk.h>
> >>> +#include <linux/completion.h>
> >>> +#include <linux/init.h>
> >>> +#include <linux/interrupt.h>
> >>> +#include <linux/kernel.h>
> >>> +#include <linux/kthread.h>
> >>> +#include <linux/module.h>
> >>> +#include <linux/mutex.h>
> >>> +#include <linux/nvmem-consumer.h>
> >>> +#include <linux/of_address.h>
> >>> +#include <linux/of_irq.h>
> >>> +#include <linux/of_platform.h>
> >>> +#include <linux/platform_device.h>
> >>> +#include <linux/pm_domain.h>
> >>> +#include <linux/pm_opp.h>
> >>> +#include <linux/pm_qos.h>
> >>> +#include <linux/pm_runtime.h>
> >>> +#include <linux/power/mtk_svs.h>
> >>> +#include <linux/proc_fs.h>
> >>> +#include <linux/regulator/consumer.h>
> >>> +#include <linux/reset.h>
> >>> +#include <linux/seq_file.h>
> >>> +#include <linux/slab.h>
> >>> +#include <linux/spinlock.h>
> >>> +#include <linux/thermal.h>
> >>> +#include <linux/uaccess.h>
> >>> +
> >>> +/* svs 1-line sw id */
> >>> +#define SVS_CPU_LITTLE                 BIT(0)
> >>> +#define SVS_CPU_BIG                    BIT(1)
> >>> +#define SVS_CCI                                BIT(2)
> >>> +#define SVS_GPU                                BIT(3)
> >>> +
> >>> +/* svs bank mode support */
> >>> +#define SVSB_MODE_ALL_DISABLE          (0)
> >>
> >> nit: SVS_BMODE_?
> > 
> > Oh. If we add bank wording like SVS_Bxxx, it might cause some confusion when B combines
> > with other words. So, I'll keep SVSB for SVS Bank representation.
> > E.g: SVS_BDC_SIGNED_BIT might lead to be explained differently ("SVS bank + DC_SIGNED_BIT" or "SVS + BDC_SIGNED_BIT")
> >      - "SVS bank + DC_SIGNED_BIT" is what we want for naming SVS_BDC_SIGNED_BIT but it might be misunderstood.
> > 
> >>
> >>> +#define SVSB_MODE_INIT01               BIT(1)
> >>> +#define SVSB_MODE_INIT02               BIT(2)
> >>> +#define SVSB_MODE_MON                  BIT(3)
> >>> +
> >>> +/* svs bank init01 condition */
> >>> +#define SVSB_INIT01_VOLT_IGNORE                BIT(1)
> >>> +#define SVSB_INIT01_VOLT_INC_ONLY      BIT(2)
> >>> +
> >>> +/* svs bank common setting */
> >>> +#define HIGH_TEMP_MAX                  (U32_MAX)
> >>
> >> nit: SVS_*
> > 
> > ok. I will add SVS or SVSB when it refers to SVS BANK.
> > 
> >>
> >>> +#define RUNCONFIG_DEFAULT              (0x80000000)
> >>
> >> Btw, there is any public datasheet where I can see those addresses and
> >> registers and bit fields?
> > 
> > Excuse us, there is no public datasheet. We can reply it on patchwork. Thanks.
> > 
> >>
> >>> +#define DC_SIGNED_BIT                  (0x8000)
> >>> +#define INTEN_INIT0x                   (0x00005f01)
> >>> +#define INTEN_MONVOPEN                 (0x00ff0000)
> >>> +#define SVSEN_OFF                      (0x0)
> >>> +#define SVSEN_MASK                     (0x7)
> >>> +#define SVSEN_INIT01                   (0x1)
> >>> +#define SVSEN_INIT02                   (0x5)
> >>> +#define SVSEN_MON                      (0x2)
> >>> +#define INTSTS_MONVOP                  (0x00ff0000)
> >>> +#define INTSTS_COMPLETE                        (0x1)
> >>> +#define INTSTS_CLEAN                   (0x00ffffff)
> >>> +
> >>> +#define proc_fops_rw(name) \
> >>> +       static int name ## _proc_open(struct inode *inode,      \
> >>> +                                     struct file *file)        \
> >>> +       {                                                       \
> >>> +               return single_open(file, name ## _proc_show,    \
> >>> +                                  PDE_DATA(inode));            \
> >>> +       }                                                       \
> >>> +       static const struct proc_ops name ## _proc_fops = {     \
> >>> +               .proc_open      = name ## _proc_open,           \
> >>> +               .proc_read      = seq_read,                     \
> >>> +               .proc_lseek     = seq_lseek,                    \
> >>> +               .proc_release   = single_release,               \
> >>> +               .proc_write     = name ## _proc_write,          \
> >>> +       }
> >>> +
> >>> +#define proc_fops_ro(name) \
> >>> +       static int name ## _proc_open(struct inode *inode,      \
> >>> +                                     struct file *file)        \
> >>> +       {                                                       \
> >>> +               return single_open(file, name ## _proc_show,    \
> >>> +                                  PDE_DATA(inode));            \
> >>> +       }                                                       \
> >>> +       static const struct proc_ops name ## _proc_fops = {     \
> >>> +               .proc_open      = name ## _proc_open,           \
> >>> +               .proc_read      = seq_read,                     \
> >>> +               .proc_lseek     = seq_lseek,                    \
> >>> +               .proc_release   = single_release,               \
> >>> +       }
> >>> +
> >>> +#define proc_entry(name)       {__stringify(name), &name ## _proc_fops}
> >>> +
> >>
> >> /proc is usually the old way of exporting files to userspace, so
> >> unless you have a really good reason use sysfs instead, or even
> >> better, if it is only for debug purposes use debugfs. Also, you should
> >> document the entries in Documentation.
> > 
> > Ok. I'll change it to debugfs and could you give us an example about entries in documentation?
> > We can follow them. Thanks.
> > 
> >>
> >>> +static DEFINE_SPINLOCK(mtk_svs_lock);
> >>> +struct mtk_svs;
> >>> +
> >>> +enum svsb_phase {
> >>
> >> nit: mtk_svs_bphase?
> > 
> > ditto
> > 
> >>
> >>> +       SVSB_PHASE_INIT01 = 0,
> >>
> >> nit: SVS_BPHASE_?
> > 
> > ditto
> > 
> >>
> >>> +       SVSB_PHASE_INIT02,
> >>> +       SVSB_PHASE_MON,
> >>> +       SVSB_PHASE_ERROR,
> >>> +};
> >>> +
> >>> +enum reg_index {
> >>
> >> nit: svs_reg_index?
> > 
> > OK. Thanks.
> > 
> >>
> >>> +       TEMPMONCTL0 = 0,
> >>> +       TEMPMONCTL1,
> >>> +       TEMPMONCTL2,
> >>> +       TEMPMONINT,
> >>> +       TEMPMONINTSTS,
> >>> +       TEMPMONIDET0,
> >>> +       TEMPMONIDET1,
> >>> +       TEMPMONIDET2,
> >>> +       TEMPH2NTHRE,
> >>> +       TEMPHTHRE,
> >>> +       TEMPCTHRE,
> >>> +       TEMPOFFSETH,
> >>> +       TEMPOFFSETL,
> >>> +       TEMPMSRCTL0,
> >>> +       TEMPMSRCTL1,
> >>> +       TEMPAHBPOLL,
> >>> +       TEMPAHBTO,
> >>> +       TEMPADCPNP0,
> >>> +       TEMPADCPNP1,
> >>> +       TEMPADCPNP2,
> >>> +       TEMPADCMUX,
> >>> +       TEMPADCEXT,
> >>> +       TEMPADCEXT1,
> >>> +       TEMPADCEN,
> >>> +       TEMPPNPMUXADDR,
> >>> +       TEMPADCMUXADDR,
> >>> +       TEMPADCEXTADDR,
> >>> +       TEMPADCEXT1ADDR,
> >>> +       TEMPADCENADDR,
> >>> +       TEMPADCVALIDADDR,
> >>> +       TEMPADCVOLTADDR,
> >>> +       TEMPRDCTRL,
> >>> +       TEMPADCVALIDMASK,
> >>> +       TEMPADCVOLTAGESHIFT,
> >>> +       TEMPADCWRITECTRL,
> >>> +       TEMPMSR0,
> >>> +       TEMPMSR1,
> >>> +       TEMPMSR2,
> >>> +       TEMPADCHADDR,
> >>> +       TEMPIMMD0,
> >>> +       TEMPIMMD1,
> >>> +       TEMPIMMD2,
> >>> +       TEMPMONIDET3,
> >>> +       TEMPADCPNP3,
> >>> +       TEMPMSR3,
> >>> +       TEMPIMMD3,
> >>> +       TEMPPROTCTL,
> >>> +       TEMPPROTTA,
> >>> +       TEMPPROTTB,
> >>> +       TEMPPROTTC,
> >>> +       TEMPSPARE0,
> >>> +       TEMPSPARE1,
> >>> +       TEMPSPARE2,
> >>> +       TEMPSPARE3,
> >>> +       TEMPMSR0_1,
> >>> +       TEMPMSR1_1,
> >>> +       TEMPMSR2_1,
> >>> +       TEMPMSR3_1,
> >>> +       DESCHAR,
> >>> +       TEMPCHAR,
> >>> +       DETCHAR,
> >>> +       AGECHAR,
> >>> +       DCCONFIG,
> >>> +       AGECONFIG,
> >>> +       FREQPCT30,
> >>> +       FREQPCT74,
> >>> +       LIMITVALS,
> >>> +       VBOOT,
> >>> +       DETWINDOW,
> >>> +       CONFIG,
> >>> +       TSCALCS,
> >>> +       RUNCONFIG,
> >>> +       SVSEN,
> >>> +       INIT2VALS,
> >>> +       DCVALUES,
> >>> +       AGEVALUES,
> >>> +       VOP30,
> >>> +       VOP74,
> >>> +       TEMP,
> >>> +       INTSTS,
> >>> +       INTSTSRAW,
> >>> +       INTEN,
> >>> +       CHKINT,
> >>> +       CHKSHIFT,
> >>> +       STATUS,
> >>> +       VDESIGN30,
> >>> +       VDESIGN74,
> >>> +       DVT30,
> >>> +       DVT74,
> >>> +       AGECOUNT,
> >>> +       SMSTATE0,
> >>> +       SMSTATE1,
> >>> +       CTL0,
> >>> +       DESDETSEC,
> >>> +       TEMPAGESEC,
> >>> +       CTRLSPARE0,
> >>> +       CTRLSPARE1,
> >>> +       CTRLSPARE2,
> >>> +       CTRLSPARE3,
> >>> +       CORESEL,
> >>> +       THERMINTST,
> >>> +       INTST,
> >>> +       THSTAGE0ST,
> >>> +       THSTAGE1ST,
> >>> +       THSTAGE2ST,
> >>> +       THAHBST0,
> >>> +       THAHBST1,
> >>> +       SPARE0,
> >>> +       SPARE1,
> >>> +       SPARE2,
> >>> +       SPARE3,
> >>> +       THSLPEVEB,
> >>> +       reg_num,
> >>> +};
> >>> +
> >>> +static const u32 svs_regs_v2[] = {
> >>
> >> Is this SoC specific or shared between SoCs?
> > 
> > Shared between SoCs. Some SVS in MTK SoCs use v2 register map.
> > 
> 
> And which silicon uses v1 then? Is v2 a MediaTek internal naming you want to keep?

1. MT8173 IC uses v1 register map. 
2. Yes, I'll keep v2 postfix.

> 
> >>
> >>> +       [TEMPMONCTL0]           = 0x000,
> >>> +       [TEMPMONCTL1]           = 0x004,
> >>> +       [TEMPMONCTL2]           = 0x008,
> >>> +       [TEMPMONINT]            = 0x00c,
> >>> +       [TEMPMONINTSTS]         = 0x010,
> >>> +       [TEMPMONIDET0]          = 0x014,
> >>> +       [TEMPMONIDET1]          = 0x018,
> >>> +       [TEMPMONIDET2]          = 0x01c,
> >>> +       [TEMPH2NTHRE]           = 0x024,
> >>> +       [TEMPHTHRE]             = 0x028,
> >>> +       [TEMPCTHRE]             = 0x02c,
> >>> +       [TEMPOFFSETH]           = 0x030,
> >>> +       [TEMPOFFSETL]           = 0x034,
> >>> +       [TEMPMSRCTL0]           = 0x038,
> >>> +       [TEMPMSRCTL1]           = 0x03c,
> >>> +       [TEMPAHBPOLL]           = 0x040,
> >>> +       [TEMPAHBTO]             = 0x044,
> >>> +       [TEMPADCPNP0]           = 0x048,
> >>> +       [TEMPADCPNP1]           = 0x04c,
> >>> +       [TEMPADCPNP2]           = 0x050,
> >>> +       [TEMPADCMUX]            = 0x054,
> >>> +       [TEMPADCEXT]            = 0x058,
> >>> +       [TEMPADCEXT1]           = 0x05c,
> >>> +       [TEMPADCEN]             = 0x060,
> >>> +       [TEMPPNPMUXADDR]        = 0x064,
> >>> +       [TEMPADCMUXADDR]        = 0x068,
> >>> +       [TEMPADCEXTADDR]        = 0x06c,
> >>> +       [TEMPADCEXT1ADDR]       = 0x070,
> >>> +       [TEMPADCENADDR]         = 0x074,
> >>> +       [TEMPADCVALIDADDR]      = 0x078,
> >>> +       [TEMPADCVOLTADDR]       = 0x07c,
> >>> +       [TEMPRDCTRL]            = 0x080,
> >>> +       [TEMPADCVALIDMASK]      = 0x084,
> >>> +       [TEMPADCVOLTAGESHIFT]   = 0x088,
> >>> +       [TEMPADCWRITECTRL]      = 0x08c,
> >>> +       [TEMPMSR0]              = 0x090,
> >>> +       [TEMPMSR1]              = 0x094,
> >>> +       [TEMPMSR2]              = 0x098,
> >>> +       [TEMPADCHADDR]          = 0x09c,
> >>> +       [TEMPIMMD0]             = 0x0a0,
> >>> +       [TEMPIMMD1]             = 0x0a4,
> >>> +       [TEMPIMMD2]             = 0x0a8,
> >>> +       [TEMPMONIDET3]          = 0x0b0,
> >>> +       [TEMPADCPNP3]           = 0x0b4,
> >>> +       [TEMPMSR3]              = 0x0b8,
> >>> +       [TEMPIMMD3]             = 0x0bc,
> >>> +       [TEMPPROTCTL]           = 0x0c0,
> >>> +       [TEMPPROTTA]            = 0x0c4,
> >>> +       [TEMPPROTTB]            = 0x0c8,
> >>> +       [TEMPPROTTC]            = 0x0cc,
> >>> +       [TEMPSPARE0]            = 0x0f0,
> >>> +       [TEMPSPARE1]            = 0x0f4,
> >>> +       [TEMPSPARE2]            = 0x0f8,
> >>> +       [TEMPSPARE3]            = 0x0fc,
> >>> +       [TEMPMSR0_1]            = 0x190,
> >>> +       [TEMPMSR1_1]            = 0x194,
> >>> +       [TEMPMSR2_1]            = 0x198,
> >>> +       [TEMPMSR3_1]            = 0x1b8,
> >>> +       [DESCHAR]               = 0xc00,
> >>> +       [TEMPCHAR]              = 0xc04,
> >>> +       [DETCHAR]               = 0xc08,
> >>> +       [AGECHAR]               = 0xc0c,
> >>> +       [DCCONFIG]              = 0xc10,
> >>> +       [AGECONFIG]             = 0xc14,
> >>> +       [FREQPCT30]             = 0xc18,
> >>> +       [FREQPCT74]             = 0xc1c,
> >>> +       [LIMITVALS]             = 0xc20,
> >>> +       [VBOOT]                 = 0xc24,
> >>> +       [DETWINDOW]             = 0xc28,
> >>> +       [CONFIG]                = 0xc2c,
> >>> +       [TSCALCS]               = 0xc30,
> >>> +       [RUNCONFIG]             = 0xc34,
> >>> +       [SVSEN]                 = 0xc38,
> >>> +       [INIT2VALS]             = 0xc3c,
> >>> +       [DCVALUES]              = 0xc40,
> >>> +       [AGEVALUES]             = 0xc44,
> >>> +       [VOP30]                 = 0xc48,
> >>> +       [VOP74]                 = 0xc4c,
> >>> +       [TEMP]                  = 0xc50,
> >>> +       [INTSTS]                = 0xc54,
> >>> +       [INTSTSRAW]             = 0xc58,
> >>> +       [INTEN]                 = 0xc5c,
> >>> +       [CHKINT]                = 0xc60,
> >>> +       [CHKSHIFT]              = 0xc64,
> >>> +       [STATUS]                = 0xc68,
> >>> +       [VDESIGN30]             = 0xc6c,
> >>> +       [VDESIGN74]             = 0xc70,
> >>> +       [DVT30]                 = 0xc74,
> >>> +       [DVT74]                 = 0xc78,
> >>> +       [AGECOUNT]              = 0xc7c,
> >>> +       [SMSTATE0]              = 0xc80,
> >>> +       [SMSTATE1]              = 0xc84,
> >>> +       [CTL0]                  = 0xc88,
> >>> +       [DESDETSEC]             = 0xce0,
> >>> +       [TEMPAGESEC]            = 0xce4,
> >>> +       [CTRLSPARE0]            = 0xcf0,
> >>> +       [CTRLSPARE1]            = 0xcf4,
> >>> +       [CTRLSPARE2]            = 0xcf8,
> >>> +       [CTRLSPARE3]            = 0xcfc,
> >>> +       [CORESEL]               = 0xf00,
> >>> +       [THERMINTST]            = 0xf04,
> >>> +       [INTST]                 = 0xf08,
> >>> +       [THSTAGE0ST]            = 0xf0c,
> >>> +       [THSTAGE1ST]            = 0xf10,
> >>> +       [THSTAGE2ST]            = 0xf14,
> >>> +       [THAHBST0]              = 0xf18,
> >>> +       [THAHBST1]              = 0xf1c,
> >>> +       [SPARE0]                = 0xf20,
> >>> +       [SPARE1]                = 0xf24,
> >>> +       [SPARE2]                = 0xf28,
> >>> +       [SPARE3]                = 0xf2c,
> >>> +       [THSLPEVEB]             = 0xf30,
> >>> +};
> >>> +
> >>> +struct thermal_parameter {
> >>
> >> In general, not only in this struct, would be good have some
> >> documentation to have a better undestanding of the fields. That makes
> >> the job of the reviewer a bit easier.
> > 
> > Ok. Could you share a documentation example to us? We'll share the
> > information as much as we can. Thanks a lot.
> > 
> 
> you should find that in all drivers, eg:
> https://elixir.bootlin.com/linux/latest/source/drivers/soc/mediatek/mtk-scpsys.c#L111

No problem Sir. Thanks for showing a direction to me. I'll take a look
at it.

> 
> Regards,
> Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
