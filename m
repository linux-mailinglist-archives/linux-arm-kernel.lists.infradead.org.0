Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9359896F82
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQWWiCZP5YJlRqAWNuRw1cjrHM/9CJLrIr7wuBUQA9E=; b=ItAwe3rmZqsWmu
	rbaJnPBJI/CfL+gfWnrGH3PvDl822s18uOxeWYsiwxrz7iIvYsBH0gfNPJDUii2YWqdeDXcfLZcyk
	tA08mUo6dtFf0mvnbTNoa2lYfxt9swUCdlLcqP7vg0EQBreeP+9Gce+xIzwns4qJ8qCwpbOjmiI3G
	u4cqzbtsJ/JqJ/TPMen5IGstcRV84Xthw0utKTkjkmCFyIsUKsoBVGorBhrNCxOGXy5QSmn0foPz9
	EAbwPYXLLdTKfDI5wOKkfl7UZ5Dh+fH2PvTq7mX0aNGntictc9ymYJ+8GNhpg3ahhF33PcRHkKWr2
	6qle+JQ+1bCE1EjjWYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GLY-0007X7-1V; Wed, 21 Aug 2019 02:27:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GKs-0006mA-JG
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:26:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id m12so456690plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0YkjWwjVU2KJmE7cbX2tm4G/gv6+OeV38KTursS7TsA=;
 b=s5Hg5dMUkluzWEkDW4ETccUU59RY025L6GdXIcFGgF74au2iROquRZodXwjtvjT3GZ
 86mWY3iIQATC6SwOViHISGDMbA8Qp2gyAk41tuufp4hq7zopx2RDQ3wOrgH2EyxylGm8
 gUmzB2j951oLTSK9ixf9bNt+SEZFhtQfB9IV1l4W7erZ11O/P4OROmSjxhrXrz+fLlVj
 ry4Kv+tUPGm5fHwfpZECViUBAfDcZxtKUECd3YLy862/yXjfYPkCCLOMjjGriv8zO2Jb
 VWQzzyEVoxXLJeCq3F2TtmwwtvakJj0OavS7jspJouOWCLLTyQ7H+BuiKD4bZeOgAgIe
 F9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0YkjWwjVU2KJmE7cbX2tm4G/gv6+OeV38KTursS7TsA=;
 b=UlFBdW87qG6PyaiaOmJaqaBOXbud28QpOoiTkLJkyG3uEoGBzklSfdicpTfe30jJyB
 aH+TPIkgPmhjoDHfOclIo+E943+dAhtbvIMvavxtbfXfUnATvAp7pHWE/HcJvwjrYmHQ
 /uygeYKOYRHgIuTyHY9yhfKMeZRR/ZHF4KUcLWRLZJcbzLgpzvvTsAIDgp5Curqcmu1T
 sAeLIff9aKMwVMQG8sgZ+FIiV57pMmLI1dvUTqw3mfu5EBk85DKt/SqjPTrdBuBO8V9z
 HaVy7G85c5QK4e4EWSWc1gFjRR8V1v82kRHYlS4KXjnplFIBKzmM3WGGdyQJL8ReWhDC
 nTRw==
X-Gm-Message-State: APjAAAV6rx8TSQlEmrcLJs9n9LVnAYTtQUgQrTTmBSNFTYo8VZXyatpA
 D/e8UhSYQk+OjVnyxXfv1lpSqfkMzg==
X-Google-Smtp-Source: APXvYqx7ZJ6QL+HNbR9/zFYWKoAd946iB/yEzn2wLA2LyiKFFhIZ3UPDQ544YLaXfQM5VF/xh8btvg==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr32031724plp.241.1566354413377; 
 Tue, 20 Aug 2019 19:26:53 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id v7sm23673857pff.87.2019.08.20.19.26.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 19:26:51 -0700 (PDT)
Date: Wed, 21 Aug 2019 07:56:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 5/7] mmc: Add Actions Semi Owl SoCs SD/MMC driver
Message-ID: <20190821022640.GA2709@Mani-XPS-13-9360>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-6-manivannan.sadhasivam@linaro.org>
 <CAPDyKFqE1Vnmq4yeoQxjgOZTTrA_k7jAZHwq5RExX4hS-rTftw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqE1Vnmq4yeoQxjgOZTTrA_k7jAZHwq5RExX4hS-rTftw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_192654_672485_68C7ACFA 
X-CRM114-Status: GOOD (  27.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-actions@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 thomas.liau@actions-semi.com, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

Sorry for the delay!

On Mon, Jul 22, 2019 at 03:41:59PM +0200, Ulf Hansson wrote:
> On Sat, 8 Jun 2019 at 21:54, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > Add SD/MMC driver for Actions Semi Owl SoCs. This driver currently
> > supports standard, high speed, SDR12, SDR25 and SDR50. DDR50 mode is
> > supported but it is untested. There is no SDIO support for now.
> >
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/mmc/host/Kconfig   |   8 +
> >  drivers/mmc/host/Makefile  |   1 +
> >  drivers/mmc/host/owl-mmc.c | 705 +++++++++++++++++++++++++++++++++++++
> >  3 files changed, 714 insertions(+)
> >  create mode 100644 drivers/mmc/host/owl-mmc.c
> >
> > diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> > index 931770f17087..7ae65eff26a4 100644
> > --- a/drivers/mmc/host/Kconfig
> > +++ b/drivers/mmc/host/Kconfig
> > @@ -1006,3 +1006,11 @@ config MMC_SDHCI_AM654
> >           If you have a controller with this interface, say Y or M here.
> >
> >           If unsure, say N.
> > +
> > +config MMC_OWL
> > +       tristate "Actions Semi Owl SD/MMC Host Controller support"
> > +       depends on HAS_DMA
> > +       depends on ARCH_ACTIONS || COMPILE_TEST
> > +       help
> > +         This selects support for the SD/MMC Host Controller on
> > +         Actions Semi Owl SoCs.
> > diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
> > index 73578718f119..41a0b1728389 100644
> > --- a/drivers/mmc/host/Makefile
> > +++ b/drivers/mmc/host/Makefile
> > @@ -73,6 +73,7 @@ obj-$(CONFIG_MMC_SUNXI)               += sunxi-mmc.o
> >  obj-$(CONFIG_MMC_USDHI6ROL0)   += usdhi6rol0.o
> >  obj-$(CONFIG_MMC_TOSHIBA_PCI)  += toshsd.o
> >  obj-$(CONFIG_MMC_BCM2835)      += bcm2835.o
> > +obj-$(CONFIG_MMC_OWL)          += owl-mmc.o
> >
> >  obj-$(CONFIG_MMC_REALTEK_PCI)  += rtsx_pci_sdmmc.o
> >  obj-$(CONFIG_MMC_REALTEK_USB)  += rtsx_usb_sdmmc.o
> > diff --git a/drivers/mmc/host/owl-mmc.c b/drivers/mmc/host/owl-mmc.c
> > new file mode 100644
> > index 000000000000..8158ebedb2a4
> > --- /dev/null
> > +++ b/drivers/mmc/host/owl-mmc.c
> > @@ -0,0 +1,705 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Actions Semi Owl SoCs SD/MMC driver
> > + *
> > + * Copyright (c) 2014 Actions Semi Inc.
> > + * Copyright (c) 2019 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > + *
> > + * TODO: SDIO support
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/dmaengine.h>
> > +#include <linux/dma-direction.h>
> > +#include <linux/dma-mapping.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/mmc/host.h>
> > +#include <linux/mmc/slot-gpio.h>
> > +#include <linux/module.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/reset.h>
> > +#include <linux/spinlock.h>
> > +
> > +/*
> > + * SDC registers
> > + */
> > +#define OWL_REG_SD_EN                  0x0000
> > +#define OWL_REG_SD_CTL                 0x0004
> > +#define OWL_REG_SD_STATE               0x0008
> > +#define OWL_REG_SD_CMD                 0x000c
> > +#define OWL_REG_SD_ARG                 0x0010
> > +#define OWL_REG_SD_RSPBUF0             0x0014
> > +#define OWL_REG_SD_RSPBUF1             0x0018
> > +#define OWL_REG_SD_RSPBUF2             0x001c
> > +#define OWL_REG_SD_RSPBUF3             0x0020
> > +#define OWL_REG_SD_RSPBUF4             0x0024
> > +#define OWL_REG_SD_DAT                 0x0028
> > +#define OWL_REG_SD_BLK_SIZE            0x002c
> > +#define OWL_REG_SD_BLK_NUM             0x0030
> > +#define OWL_REG_SD_BUF_SIZE            0x0034
> > +
> > +/* SD_EN Bits */
> > +#define OWL_SD_EN_RANE                 BIT(31)
> > +#define OWL_SD_EN_RAN_SEED(x)          (((x) & 0x3f) << 24)
> > +#define OWL_SD_EN_S18EN                        BIT(12)
> > +#define OWL_SD_EN_RESE                 BIT(10)
> > +#define OWL_SD_EN_DAT1_S               BIT(9)
> > +#define OWL_SD_EN_CLK_S                        BIT(8)
> > +#define OWL_SD_ENABLE                  BIT(7)
> > +#define OWL_SD_EN_BSEL                 BIT(6)
> > +#define OWL_SD_EN_SDIOEN               BIT(3)
> > +#define OWL_SD_EN_DDREN                        BIT(2)
> > +#define OWL_SD_EN_DATAWID(x)           (((x) & 0x3) << 0)
> > +
> > +/* SD_CTL Bits */
> > +#define OWL_SD_CTL_TOUTEN              BIT(31)
> > +#define OWL_SD_CTL_TOUTCNT(x)          (((x) & 0x7f) << 24)
> > +#define OWL_SD_CTL_DELAY_MSK           GENMASK(23, 16)
> > +#define OWL_SD_CTL_RDELAY(x)           (((x) & 0xf) << 20)
> > +#define OWL_SD_CTL_WDELAY(x)           (((x) & 0xf) << 16)
> > +#define OWL_SD_CTL_CMDLEN              BIT(13)
> > +#define OWL_SD_CTL_SCC                 BIT(12)
> > +#define OWL_SD_CTL_TCN(x)              (((x) & 0xf) << 8)
> > +#define OWL_SD_CTL_TS                  BIT(7)
> > +#define OWL_SD_CTL_LBE                 BIT(6)
> > +#define OWL_SD_CTL_C7EN                        BIT(5)
> > +#define OWL_SD_CTL_TM(x)               (((x) & 0xf) << 0)
> > +
> > +#define OWL_SD_DELAY_LOW_CLK           0x0f
> > +#define OWL_SD_DELAY_MID_CLK           0x0a
> > +#define OWL_SD_DELAY_HIGH_CLK          0x09
> > +#define OWL_SD_RDELAY_DDR50            0x0a
> > +#define OWL_SD_WDELAY_DDR50            0x08
> > +
> > +/* SD_STATE Bits */
> > +#define OWL_SD_STATE_DAT1BS            BIT(18)
> > +#define OWL_SD_STATE_SDIOB_P           BIT(17)
> > +#define OWL_SD_STATE_SDIOB_EN          BIT(16)
> > +#define OWL_SD_STATE_TOUTE             BIT(15)
> > +#define OWL_SD_STATE_BAEP              BIT(14)
> > +#define OWL_SD_STATE_MEMRDY            BIT(12)
> > +#define OWL_SD_STATE_CMDS              BIT(11)
> > +#define OWL_SD_STATE_DAT1AS            BIT(10)
> > +#define OWL_SD_STATE_SDIOA_P           BIT(9)
> > +#define OWL_SD_STATE_SDIOA_EN          BIT(8)
> > +#define OWL_SD_STATE_DAT0S             BIT(7)
> > +#define OWL_SD_STATE_TEIE              BIT(6)
> > +#define OWL_SD_STATE_TEI               BIT(5)
> > +#define OWL_SD_STATE_CLNR              BIT(4)
> > +#define OWL_SD_STATE_CLC               BIT(3)
> > +#define OWL_SD_STATE_WC16ER            BIT(2)
> > +#define OWL_SD_STATE_RC16ER            BIT(1)
> > +#define OWL_SD_STATE_CRC7ER            BIT(0)
> > +
> > +struct owl_mmc_host {
> > +       struct device *dev;
> > +       struct reset_control *reset;
> > +       void __iomem *base;
> > +       struct clk *clk;
> > +       struct completion sdc_complete;
> > +       spinlock_t lock;
> > +       int irq;
> > +       u32 clock;
> > +       bool ddr_50;
> > +
> > +       enum dma_data_direction dma_dir;
> > +       struct dma_chan *dma;
> > +       struct dma_async_tx_descriptor *desc;
> > +       struct dma_slave_config dma_cfg;
> > +       struct completion dma_complete;
> > +
> > +       struct mmc_host *mmc;
> > +       struct mmc_request *mrq;
> > +       struct mmc_command *cmd;
> > +       struct mmc_data *data;
> > +};
> > +
> > +static inline void mmc_writel(struct owl_mmc_host *owl_host, u32 reg, u32 data)
> > +{
> > +       writel(data, owl_host->base + reg);
> > +}
> > +
> > +static inline u32 mmc_readl(struct owl_mmc_host *owl_host, u32 reg)
> > +{
> > +       return readl(owl_host->base + reg);
> > +}
> 
> Please drop these wrappers, as they don't make the code more readable.
> 

Okay.

> > +
> > +static void mmc_update_reg(void __iomem *reg, unsigned int val, bool state)
> 
> Please use the "owl" as prefix for function names, that makes it more
> consistent.
> 

Okay.

> > +{
> > +       unsigned int regval;
> > +
> > +       regval = readl(reg);
> 
> Rather than reading the register here, perhaps you could use a
> variable for caching the register value. Thus avoiding to read the
> register for every update.
> 

Some of the registers are non cacheable, for instance STATE register.
So, I'll keep this as it is.

Thanks,
Mani

> 
> > +
> > +       if (state)
> > +               regval |= val;
> > +       else
> > +               regval &= ~val;
> > +
> > +       writel(regval, reg);
> > +}
> > +
> > +static irqreturn_t owl_irq_handler(int irq, void *devid)
> > +{
> > +       struct owl_mmc_host *owl_host = devid;
> > +       unsigned long flags;
> > +       u32 state;
> > +
> > +       spin_lock_irqsave(&owl_host->lock, flags);
> > +
> > +       state = mmc_readl(owl_host, OWL_REG_SD_STATE);
> > +       if (state & OWL_SD_STATE_TEI) {
> > +               state = mmc_readl(owl_host, OWL_REG_SD_STATE);
> > +               state |= OWL_SD_STATE_TEI;
> > +               mmc_writel(owl_host, OWL_REG_SD_STATE, state);
> > +               complete(&owl_host->sdc_complete);
> > +       }
> > +
> > +       spin_unlock_irqrestore(&owl_host->lock, flags);
> > +
> > +       return IRQ_HANDLED;
> > +}
> > +
> > +static void owl_mmc_finish_request(struct owl_mmc_host *owl_host)
> > +{
> > +       struct mmc_request *mrq = owl_host->mrq;
> > +       struct mmc_data *data = mrq->data;
> > +
> > +       /* Should never be NULL */
> > +       WARN_ON(!mrq);
> > +
> > +       owl_host->mrq = NULL;
> > +
> > +       if (data)
> > +               dma_unmap_sg(owl_host->dma->device->dev, data->sg, data->sg_len,
> > +                            owl_host->dma_dir);
> > +
> > +       /* Finally finish request */
> > +       mmc_request_done(owl_host->mmc, mrq);
> > +}
> > +
> > +static void owl_mmc_send_cmd(struct owl_mmc_host *owl_host,
> > +                            struct mmc_command *cmd,
> > +                            struct mmc_data *data)
> > +{
> > +       u32 mode, state, resp[2];
> > +       u32 cmd_rsp_mask = 0;
> > +
> > +       init_completion(&owl_host->sdc_complete);
> > +
> > +       switch (mmc_resp_type(cmd)) {
> > +       case MMC_RSP_NONE:
> > +               mode = OWL_SD_CTL_TM(0);
> > +               break;
> > +
> > +       case MMC_RSP_R1:
> > +               if (data) {
> > +                       if (data->flags & MMC_DATA_READ)
> > +                               mode = OWL_SD_CTL_TM(4);
> > +                       else
> > +                               mode = OWL_SD_CTL_TM(5);
> > +               } else {
> > +                       mode = OWL_SD_CTL_TM(1);
> > +               }
> > +               cmd_rsp_mask = OWL_SD_STATE_CLNR | OWL_SD_STATE_CRC7ER;
> > +
> > +               break;
> > +
> > +       case MMC_RSP_R1B:
> > +               mode = OWL_SD_CTL_TM(3);
> > +               cmd_rsp_mask = OWL_SD_STATE_CLNR | OWL_SD_STATE_CRC7ER;
> > +               break;
> > +
> > +       case MMC_RSP_R2:
> > +               mode = OWL_SD_CTL_TM(2);
> > +               cmd_rsp_mask = OWL_SD_STATE_CLNR | OWL_SD_STATE_CRC7ER;
> > +               break;
> > +
> > +       case MMC_RSP_R3:
> > +               mode = OWL_SD_CTL_TM(1);
> > +               cmd_rsp_mask = OWL_SD_STATE_CLNR;
> > +               break;
> > +
> > +       default:
> > +               dev_warn(owl_host->dev, "Unknown MMC command\n");
> > +               cmd->error = -EINVAL;
> > +               return;
> > +       }
> > +
> > +       /* Keep current WDELAY and RDELAY */
> > +       mode |= (mmc_readl(owl_host, OWL_REG_SD_CTL) & (0xff << 16));
> > +
> > +       /* Start to send corresponding command type */
> > +       mmc_writel(owl_host, OWL_REG_SD_ARG, cmd->arg);
> > +       mmc_writel(owl_host, OWL_REG_SD_CMD, cmd->opcode);
> > +
> > +       /* Set LBE to send clk at the end of last read block */
> > +       if (data) {
> > +               mode |= (OWL_SD_CTL_TS | OWL_SD_CTL_LBE | 0x64000000);
> > +       } else {
> > +               mode &= ~(OWL_SD_CTL_TOUTEN | OWL_SD_CTL_LBE);
> > +               mode |= OWL_SD_CTL_TS;
> > +       }
> > +
> > +       owl_host->cmd = cmd;
> > +
> > +       /* Start transfer */
> > +       mmc_writel(owl_host, OWL_REG_SD_CTL, mode);
> > +
> > +       if (data)
> > +               return;
> > +
> > +       if (!wait_for_completion_timeout(&owl_host->sdc_complete, 30 * HZ)) {
> > +               dev_err(owl_host->dev, "CMD interrupt timeout\n");
> > +               cmd->error = -ETIMEDOUT;
> > +               return;
> > +       }
> > +
> > +       state = mmc_readl(owl_host, OWL_REG_SD_STATE);
> > +       if (mmc_resp_type(cmd) & MMC_RSP_PRESENT) {
> > +               if (cmd_rsp_mask & state) {
> > +                       if (state & OWL_SD_STATE_CLNR) {
> > +                               dev_err(owl_host->dev, "Error CMD_NO_RSP\n");
> > +                               cmd->error = -EILSEQ;
> > +                               return;
> > +                       }
> > +
> > +                       if (state & OWL_SD_STATE_CRC7ER) {
> > +                               dev_err(owl_host->dev, "Error CMD_RSP_CRC\n");
> > +                               cmd->error = -EILSEQ;
> > +                               return;
> > +                       }
> > +               }
> > +
> > +               if (mmc_resp_type(cmd) & MMC_RSP_136) {
> > +                       cmd->resp[3] = mmc_readl(owl_host, OWL_REG_SD_RSPBUF0);
> > +                       cmd->resp[2] = mmc_readl(owl_host, OWL_REG_SD_RSPBUF1);
> > +                       cmd->resp[1] = mmc_readl(owl_host, OWL_REG_SD_RSPBUF2);
> > +                       cmd->resp[0] = mmc_readl(owl_host, OWL_REG_SD_RSPBUF3);
> > +               } else {
> > +                       resp[0] = mmc_readl(owl_host, OWL_REG_SD_RSPBUF0);
> > +                       resp[1] = mmc_readl(owl_host, OWL_REG_SD_RSPBUF1);
> > +                       cmd->resp[0] = resp[1] << 24 | resp[0] >> 8;
> > +                       cmd->resp[1] = resp[1] >> 8;
> > +               }
> > +       }
> > +}
> > +
> > +static void owl_mmc_dma_complete(void *param)
> > +{
> > +       struct owl_mmc_host *owl_host = param;
> > +       struct mmc_data *data = owl_host->data;
> > +
> > +       if (data)
> > +               complete(&owl_host->dma_complete);
> > +}
> > +
> > +static int owl_mmc_prepare_data(struct owl_mmc_host *owl_host,
> > +                               struct mmc_data *data)
> > +{
> > +       u32 total;
> > +
> > +       mmc_update_reg(owl_host->base + OWL_REG_SD_EN, OWL_SD_EN_BSEL, true);
> > +       mmc_writel(owl_host, OWL_REG_SD_BLK_NUM, data->blocks);
> > +       mmc_writel(owl_host, OWL_REG_SD_BLK_SIZE, data->blksz);
> > +       total = data->blksz * data->blocks;
> > +
> > +       if (total < 512)
> > +               mmc_writel(owl_host, OWL_REG_SD_BUF_SIZE, total);
> > +       else
> > +               mmc_writel(owl_host, OWL_REG_SD_BUF_SIZE, 512);
> > +
> > +       if (data->flags & MMC_DATA_WRITE) {
> > +               owl_host->dma_dir = DMA_TO_DEVICE;
> > +               owl_host->dma_cfg.direction = DMA_MEM_TO_DEV;
> > +       } else {
> > +               owl_host->dma_dir = DMA_FROM_DEVICE;
> > +               owl_host->dma_cfg.direction = DMA_DEV_TO_MEM;
> > +       }
> > +
> > +       dma_map_sg(owl_host->dma->device->dev, data->sg,
> > +                  data->sg_len, owl_host->dma_dir);
> > +
> > +       dmaengine_slave_config(owl_host->dma, &owl_host->dma_cfg);
> > +       owl_host->desc = dmaengine_prep_slave_sg(owl_host->dma, data->sg,
> > +                                                data->sg_len,
> > +                                                owl_host->dma_cfg.direction,
> > +                                                DMA_PREP_INTERRUPT |
> > +                                                DMA_CTRL_ACK);
> > +       if (!owl_host->desc) {
> > +               dev_err(owl_host->dev, "Can't prepare slave sg\n");
> > +               return -EBUSY;
> > +       }
> > +
> > +       owl_host->data = data;
> > +
> > +       owl_host->desc->callback = owl_mmc_dma_complete;
> > +       owl_host->desc->callback_param = (void *)owl_host;
> > +       data->error = 0;
> > +
> > +       return 0;
> > +}
> > +
> > +static void owl_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
> > +{
> > +       struct owl_mmc_host *owl_host = mmc_priv(mmc);
> > +       struct mmc_data *data = mrq->data;
> > +       int ret;
> > +
> > +       owl_host->mrq = mrq;
> > +       if (mrq->data) {
> > +               ret = owl_mmc_prepare_data(owl_host, data);
> > +               if (ret < 0) {
> > +                       data->error = ret;
> > +                       goto err_out;
> > +               }
> > +
> > +               init_completion(&owl_host->dma_complete);
> > +               dmaengine_submit(owl_host->desc);
> > +               dma_async_issue_pending(owl_host->dma);
> > +       }
> > +
> > +       owl_mmc_send_cmd(owl_host, mrq->cmd, data);
> > +
> > +       if (data) {
> > +               if (!wait_for_completion_timeout(&owl_host->sdc_complete,
> > +                                                10 * HZ)) {
> > +                       dev_err(owl_host->dev, "CMD interrupt timeout\n");
> > +                       mrq->cmd->error = -ETIMEDOUT;
> > +                       dmaengine_terminate_all(owl_host->dma);
> > +                       goto err_out;
> > +               }
> > +
> > +               if (!wait_for_completion_timeout(&owl_host->dma_complete,
> > +                                                5 * HZ)) {
> > +                       dev_err(owl_host->dev, "DMA interrupt timeout\n");
> > +                       mrq->cmd->error = -ETIMEDOUT;
> > +                       dmaengine_terminate_all(owl_host->dma);
> > +                       goto err_out;
> > +               }
> > +
> > +               if (data->stop)
> > +                       owl_mmc_send_cmd(owl_host, data->stop, NULL);
> > +
> > +               data->bytes_xfered = data->blocks * data->blksz;
> > +       }
> > +
> > +err_out:
> > +       owl_mmc_finish_request(owl_host);
> > +}
> > +
> > +static int owl_mmc_set_clk_rate(struct owl_mmc_host *owl_host,
> > +                               unsigned int rate)
> > +{
> > +       unsigned long clk_rate;
> > +       int ret;
> > +       u32 reg;
> > +
> > +       reg = mmc_readl(owl_host, OWL_REG_SD_CTL);
> > +       reg &= ~OWL_SD_CTL_DELAY_MSK;
> > +
> > +       /* Set RDELAY and WDELAY based on the clock */
> > +       if (rate <= 1000000) {
> > +               mmc_writel(owl_host, OWL_REG_SD_CTL, reg |
> > +                      OWL_SD_CTL_RDELAY(OWL_SD_DELAY_LOW_CLK) |
> > +                      OWL_SD_CTL_WDELAY(OWL_SD_DELAY_LOW_CLK));
> > +       } else if ((rate > 1000000) && (rate <= 26000000)) {
> > +               mmc_writel(owl_host, OWL_REG_SD_CTL, reg |
> > +                      OWL_SD_CTL_RDELAY(OWL_SD_DELAY_MID_CLK) |
> > +                      OWL_SD_CTL_WDELAY(OWL_SD_DELAY_MID_CLK));
> > +       } else if ((rate > 26000000) && (rate <= 52000000) && !owl_host->ddr_50) {
> > +               mmc_writel(owl_host, OWL_REG_SD_CTL, reg |
> > +                      OWL_SD_CTL_RDELAY(OWL_SD_DELAY_HIGH_CLK) |
> > +                      OWL_SD_CTL_WDELAY(OWL_SD_DELAY_HIGH_CLK));
> > +       /* DDR50 mode has special delay chain */
> > +       } else if ((rate > 26000000) && (rate <= 52000000) && owl_host->ddr_50) {
> > +               mmc_writel(owl_host, OWL_REG_SD_CTL, reg |
> > +                      OWL_SD_CTL_RDELAY(OWL_SD_RDELAY_DDR50) |
> > +                      OWL_SD_CTL_WDELAY(OWL_SD_WDELAY_DDR50));
> > +       } else {
> > +               dev_err(owl_host->dev, "SD clock rate not supported\n");
> > +               return -EINVAL;
> > +       }
> > +
> > +       clk_rate = clk_round_rate(owl_host->clk, rate << 1);
> > +       ret = clk_set_rate(owl_host->clk, clk_rate);
> > +
> > +       return ret;
> > +}
> > +
> > +static void owl_mmc_set_clk(struct owl_mmc_host *owl_host, struct mmc_ios *ios)
> > +{
> > +       if (!ios->clock)
> > +               return;
> > +
> > +       owl_host->clock = ios->clock;
> > +       owl_mmc_set_clk_rate(owl_host, ios->clock);
> > +}
> > +
> > +static void owl_mmc_set_bus_width(struct owl_mmc_host *owl_host,
> > +                                 struct mmc_ios *ios)
> > +{
> > +       u32 reg;
> > +
> > +       reg = mmc_readl(owl_host, OWL_REG_SD_EN);
> > +       reg &= ~0x03;
> > +       switch (ios->bus_width) {
> > +       case MMC_BUS_WIDTH_1:
> > +               break;
> > +       case MMC_BUS_WIDTH_4:
> > +               reg |= OWL_SD_EN_DATAWID(1);
> > +               break;
> > +       case MMC_BUS_WIDTH_8:
> > +               reg |= OWL_SD_EN_DATAWID(2);
> > +               break;
> > +       }
> > +
> > +       mmc_writel(owl_host, OWL_REG_SD_EN, reg);
> > +}
> > +
> > +static void owl_mmc_ctr_reset(struct owl_mmc_host *owl_host)
> > +{
> > +       reset_control_assert(owl_host->reset);
> > +       udelay(20);
> > +       reset_control_deassert(owl_host->reset);
> > +}
> > +
> > +static void owl_mmc_power_on(struct owl_mmc_host *owl_host)
> > +{
> > +       u32 mode;
> > +
> > +       init_completion(&owl_host->sdc_complete);
> > +
> > +       /* Enable transfer end IRQ */
> > +       mmc_update_reg(owl_host->base + OWL_REG_SD_STATE,
> > +                      OWL_SD_STATE_TEIE, true);
> > +
> > +       /* Send init clk */
> > +       mode = (mmc_readl(owl_host, OWL_REG_SD_CTL) & (0xff << 16));
> > +       mode |= OWL_SD_CTL_TS | OWL_SD_CTL_TCN(5) | OWL_SD_CTL_TM(8);
> > +       mmc_writel(owl_host, OWL_REG_SD_CTL, mode);
> > +
> > +       if (!wait_for_completion_timeout(&owl_host->sdc_complete, HZ)) {
> > +               dev_err(owl_host->dev, "CMD interrupt timeout\n");
> > +               return;
> > +       }
> > +}
> > +
> > +static void owl_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
> > +{
> > +       struct owl_mmc_host *owl_host = mmc_priv(mmc);
> > +
> > +       switch (ios->power_mode) {
> > +       case MMC_POWER_UP:
> > +               dev_dbg(owl_host->dev, "Powering card up\n");
> > +
> > +               /* Reset the SDC controller to clear all previous states */
> > +               owl_mmc_ctr_reset(owl_host);
> > +               clk_prepare_enable(owl_host->clk);
> > +               mmc_writel(owl_host, OWL_REG_SD_EN, OWL_SD_ENABLE |
> > +                          OWL_SD_EN_RESE);
> > +
> > +               break;
> > +
> > +       case MMC_POWER_ON:
> > +               dev_dbg(owl_host->dev, "Powering card on\n");
> > +               owl_mmc_power_on(owl_host);
> > +
> > +               break;
> > +
> > +       case MMC_POWER_OFF:
> > +               dev_dbg(owl_host->dev, "Powering card off\n");
> > +               clk_disable_unprepare(owl_host->clk);
> > +
> > +               return;
> > +
> > +       default:
> > +               dev_dbg(owl_host->dev, "Ignoring unknown card power state\n");
> > +               break;
> > +       }
> > +
> > +       if (ios->clock != owl_host->clock)
> > +               owl_mmc_set_clk(owl_host, ios);
> > +
> > +       owl_mmc_set_bus_width(owl_host, ios);
> > +
> > +       /* Enable DDR mode if requested */
> > +       if (ios->timing == MMC_TIMING_UHS_DDR50) {
> > +               owl_host->ddr_50 = 1;
> > +               mmc_update_reg(owl_host->base + OWL_REG_SD_EN,
> > +                              OWL_SD_EN_DDREN, true);
> > +       } else {
> > +               owl_host->ddr_50 = 0;
> > +       }
> > +}
> > +
> > +static int owl_mmc_start_signal_voltage_switch(struct mmc_host *mmc,
> > +                                              struct mmc_ios *ios)
> > +{
> > +       struct owl_mmc_host *owl_host = mmc_priv(mmc);
> > +
> > +       /* It is enough to change the pad ctrl bit for voltage switch */
> > +       switch (ios->signal_voltage) {
> > +       case MMC_SIGNAL_VOLTAGE_330:
> > +               mmc_update_reg(owl_host->base + OWL_REG_SD_EN,
> > +                              OWL_SD_EN_S18EN, false);
> > +               break;
> > +       case MMC_SIGNAL_VOLTAGE_180:
> > +               mmc_update_reg(owl_host->base + OWL_REG_SD_EN,
> > +                              OWL_SD_EN_S18EN, true);
> > +               break;
> > +       default:
> > +               return -ENOTSUPP;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct mmc_host_ops owl_mmc_ops = {
> > +       .request        = owl_mmc_request,
> > +       .set_ios        = owl_mmc_set_ios,
> > +       .get_ro         = mmc_gpio_get_ro,
> > +       .get_cd         = mmc_gpio_get_cd,
> > +       .start_signal_voltage_switch = owl_mmc_start_signal_voltage_switch,
> > +};
> > +
> > +static int owl_mmc_probe(struct platform_device *pdev)
> > +{
> > +       struct owl_mmc_host *owl_host;
> > +       struct mmc_host *mmc;
> > +       struct resource *res;
> > +       int ret;
> > +
> > +       mmc = mmc_alloc_host(sizeof(struct owl_mmc_host), &pdev->dev);
> > +       if (!mmc) {
> > +               dev_err(&pdev->dev, "mmc alloc host failed\n");
> > +               return -ENOMEM;
> > +       }
> > +       platform_set_drvdata(pdev, mmc);
> > +
> > +       owl_host = mmc_priv(mmc);
> > +       owl_host->dev = &pdev->dev;
> > +       owl_host->mmc = mmc;
> > +       spin_lock_init(&owl_host->lock);
> > +
> > +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       owl_host->base = devm_ioremap_resource(&pdev->dev, res);
> > +       if (IS_ERR(owl_host->base)) {
> > +               dev_err(&pdev->dev, "Failed to remap registers\n");
> > +               ret = PTR_ERR(owl_host->base);
> > +               goto err_free_host;
> > +       }
> > +
> > +       owl_host->clk = devm_clk_get(&pdev->dev, NULL);
> > +       if (IS_ERR(owl_host->clk)) {
> > +               dev_err(&pdev->dev, "No clock defined\n");
> > +               ret = PTR_ERR(owl_host->clk);
> > +               goto err_free_host;
> > +       }
> > +
> > +       owl_host->reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> > +       if (IS_ERR(owl_host->reset)) {
> > +               dev_err(&pdev->dev, "Could not get reset control\n");
> > +               ret = PTR_ERR(owl_host->reset);
> > +               goto err_free_host;
> > +       }
> > +
> > +       mmc->ops                = &owl_mmc_ops;
> > +       mmc->max_blk_count      = 512;
> > +       mmc->max_blk_size       = 512;
> > +       mmc->max_segs           = 256;
> > +       mmc->max_seg_size       = 262144;
> > +       mmc->max_req_size       = 262144;
> > +       /* 100kHz ~ 52MHz */
> > +       mmc->f_min              = 100000;
> > +       mmc->f_max              = 52000000;
> > +       mmc->caps              |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED |
> > +                                 MMC_CAP_4_BIT_DATA;
> > +       mmc->caps2              = (MMC_CAP2_BOOTPART_NOACC | MMC_CAP2_NO_SDIO);
> > +       mmc->ocr_avail          = MMC_VDD_32_33 | MMC_VDD_33_34 |
> > +                                 MMC_VDD_165_195;
> > +
> > +       ret = mmc_of_parse(mmc);
> > +       if (ret)
> > +               goto err_free_host;
> > +
> > +       pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
> > +       pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;
> > +       owl_host->dma = dma_request_slave_channel(&pdev->dev, "mmc");
> > +       if (!owl_host->dma) {
> > +               dev_err(owl_host->dev, "Failed to get external DMA channel.\n");
> > +               ret = -ENXIO;
> > +               goto err_free_host;
> > +       }
> > +
> > +       dev_info(&pdev->dev, "Using %s for DMA transfers\n",
> > +                dma_chan_name(owl_host->dma));
> > +
> > +       owl_host->dma_cfg.src_addr = res->start + OWL_REG_SD_DAT;
> > +       owl_host->dma_cfg.dst_addr = res->start + OWL_REG_SD_DAT;
> > +       owl_host->dma_cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
> > +       owl_host->dma_cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
> > +       owl_host->dma_cfg.device_fc = false;
> > +
> > +       owl_host->irq = platform_get_irq(pdev, 0);
> > +       if (owl_host->irq < 0) {
> > +               ret = -EINVAL;
> > +               goto err_free_host;
> > +       }
> > +
> > +       ret = devm_request_irq(&pdev->dev, owl_host->irq, owl_irq_handler,
> > +                              0, dev_name(&pdev->dev), owl_host);
> > +       if (ret) {
> > +               dev_err(&pdev->dev, "Failed to request irq %d\n",
> > +                       owl_host->irq);
> > +               goto err_free_host;
> > +       }
> > +
> > +       ret = mmc_add_host(mmc);
> > +       if (ret) {
> > +               dev_err(&pdev->dev, "Failed to add host\n");
> > +               goto err_free_host;
> > +       }
> > +
> > +       dev_dbg(&pdev->dev, "Owl MMC Controller Initialized\n");
> > +
> > +       return 0;
> > +
> > +err_free_host:
> > +       mmc_free_host(mmc);
> > +
> > +       return ret;
> > +}
> > +
> > +static int owl_mmc_remove(struct platform_device *pdev)
> > +{
> > +       struct mmc_host *mmc = platform_get_drvdata(pdev);
> > +       struct owl_mmc_host *owl_host = mmc_priv(mmc);
> > +
> > +       mmc_remove_host(mmc);
> > +       disable_irq(owl_host->irq);
> > +       mmc_free_host(mmc);
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct of_device_id owl_mmc_of_match[] = {
> > +       {.compatible = "actions,owl-mmc",},
> > +       { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, owl_mmc_of_match);
> > +
> > +static struct platform_driver owl_mmc_driver = {
> > +       .driver = {
> > +               .name   = "owl_mmc",
> > +               .of_match_table = of_match_ptr(owl_mmc_of_match),
> > +       },
> > +       .probe          = owl_mmc_probe,
> > +       .remove         = owl_mmc_remove,
> > +};
> > +module_platform_driver(owl_mmc_driver);
> > +
> > +MODULE_DESCRIPTION("Actions Semi Owl SoCs SD/MMC Driver");
> > +MODULE_AUTHOR("Actions Semi");
> > +MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
> > +MODULE_LICENSE("GPL");
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
