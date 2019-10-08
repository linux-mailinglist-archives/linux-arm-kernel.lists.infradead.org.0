Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB68CF8AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xk9hdN0uH8WQi+Meo91fzHbnPerY1jaUxGNt/wUTFos=; b=oCS50CleLchVKu
	T6/l7jmbDAgy2keZMW7PkC+JrxQfdC3waI1FQNNlTebABgbtCgDal4Nj3/8xq4Jsi+JNYQg6jjECG
	cstkNkDQZQp32F7MXgH5MFkw8aPKWowzD2Ez5FarA4sIpiNDVgkgGpkGVLHeUYry1N5x67meWYNkb
	1N5C0wf312ucDS074D526wGgg8dfMDVAkQf2CR2XNCr1wek9BO2AyX2uANwL9pYYwSG5hEF/XFdkg
	fSCRY1TP+LsRdrxuujCpHJQLWXSumSGJeUgb+DD96Mzi8kEGDLrsB2ygPYdUAeSFyR5fjkXoEE5OX
	aE3wUAmhSByeIw7+Q2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnqF-0001Wd-J9; Tue, 08 Oct 2019 11:39:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnq6-0001W0-73
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:39:40 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iHnpw-0005f2-Tq; Tue, 08 Oct 2019 13:39:28 +0200
Message-ID: <1570534767.18914.1.camel@pengutronix.de>
Subject: Re: [PATCHv7 2/9] soc: ti: add initial PRM driver with reset
 control support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org, 
 ssantosh@kernel.org
Date: Tue, 08 Oct 2019 13:39:27 +0200
In-Reply-To: <20191008071913.28740-3-t-kristo@ti.com>
References: <20191008071913.28740-1-t-kristo@ti.com>
 <20191008071913.28740-3-t-kristo@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043938_259091_E2351A88 
X-CRM114-Status: GOOD (  20.59  )
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
Cc: tony@atomide.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 10:19 +0300, Tero Kristo wrote:
> Add initial PRM (Power and Reset Management) driver for TI OMAP class
> SoCs. Initially this driver only supports reset control, but can be
> extended to support rest of the functionality, like powerdomain
> control, PRCM irq support etc.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  arch/arm/mach-omap2/Kconfig |   1 +
>  drivers/soc/ti/Makefile     |   1 +
>  drivers/soc/ti/omap_prm.c   | 259 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 261 insertions(+)
>  create mode 100644 drivers/soc/ti/omap_prm.c
> 
> diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
> index fdb6743760a2..ad08d470a2ca 100644
> --- a/arch/arm/mach-omap2/Kconfig
> +++ b/arch/arm/mach-omap2/Kconfig
> @@ -109,6 +109,7 @@ config ARCH_OMAP2PLUS
>  	select TI_SYSC
>  	select OMAP_IRQCHIP
>  	select CLKSRC_TI_32K
> +	select ARCH_HAS_RESET_CONTROLLER
>  	help
>  	  Systems based on OMAP2, OMAP3, OMAP4 or OMAP5
>  
> diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
> index b3868d392d4f..788b5cd1e180 100644
> --- a/drivers/soc/ti/Makefile
> +++ b/drivers/soc/ti/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_KEYSTONE_NAVIGATOR_QMSS)	+= knav_qmss.o
>  knav_qmss-y := knav_qmss_queue.o knav_qmss_acc.o
>  obj-$(CONFIG_KEYSTONE_NAVIGATOR_DMA)	+= knav_dma.o
>  obj-$(CONFIG_AMX3_PM)			+= pm33xx.o
> +obj-$(CONFIG_ARCH_OMAP2PLUS)		+= omap_prm.o
>  obj-$(CONFIG_WKUP_M3_IPC)		+= wkup_m3_ipc.o
>  obj-$(CONFIG_TI_SCI_PM_DOMAINS)		+= ti_sci_pm_domains.o
>  obj-$(CONFIG_TI_SCI_INTA_MSI_DOMAIN)	+= ti_sci_inta_msi.o
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> new file mode 100644
> index 000000000000..ab0b66ad715d
> --- /dev/null
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -0,0 +1,259 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * OMAP2+ PRM driver
> + *
> + * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> + *	Tero Kristo <t-kristo@ti.com>
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/delay.h>
> +
> +struct omap_rst_map {
> +	s8 rst;
> +	s8 st;
> +};
> +
> +struct omap_prm_data {
> +	u32 base;
> +	const char *name;
> +	u16 rstctrl;
> +	u16 rstst;
> +	const struct omap_rst_map *rstmap;
> +	u8 flags;
> +};
> +
> +struct omap_prm {
> +	const struct omap_prm_data *data;
> +	void __iomem *base;
> +};
> +
> +struct omap_reset_data {
> +	struct reset_controller_dev rcdev;
> +	struct omap_prm *prm;
> +	u32 mask;
> +	spinlock_t lock;
> +};
> +
> +#define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
> +
> +#define OMAP_MAX_RESETS		8
> +#define OMAP_RESET_MAX_WAIT	10000
> +
> +#define OMAP_PRM_HAS_RSTCTRL	BIT(0)
> +#define OMAP_PRM_HAS_RSTST	BIT(1)
> +
> +#define OMAP_PRM_HAS_RESETS	(OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_RSTST)
> +
> +static const struct of_device_id omap_prm_id_table[] = {
> +	{ },
> +};
> +
> +static bool _is_valid_reset(struct omap_reset_data *reset, unsigned long id)
> +{
> +	if (reset->mask & BIT(id))
> +		return true;
> +
> +	return false;
> +}
> +
> +static int omap_reset_get_st_bit(struct omap_reset_data *reset,
> +				 unsigned long id)
> +{
> +	const struct omap_rst_map *map = reset->prm->data->rstmap;
> +
> +	while (map->rst >= 0) {
> +		if (map->rst == id)
> +			return map->st;
> +
> +		map++;
> +	}
> +
> +	return id;
> +}
> +
> +static int omap_reset_status(struct reset_controller_dev *rcdev,
> +			     unsigned long id)
> +{
> +	struct omap_reset_data *reset = to_omap_reset_data(rcdev);
> +	u32 v;
> +	int st_bit = omap_reset_get_st_bit(reset, id);
> +	bool has_rstst = reset->prm->data->rstst ||
> +		(reset->prm->data->flags & OMAP_PRM_HAS_RSTST);
> +
> +	/* Check if we have rstst */
> +	if (!has_rstst)
> +		return -ENOTSUPP;
> +
> +	/* Check if hw reset line is asserted */
> +	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctrl);
> +	if (v & BIT(id))
> +		return 1;
> +
> +	/*
> +	 * Check reset status, high value means reset sequence has been
> +	 * completed successfully so we can return 0 here (reset deasserted)
> +	 */
> +	v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
> +	v >>= st_bit;
> +	v &= 1;
> +
> +	return !v;
> +}
> +
> +static int omap_reset_assert(struct reset_controller_dev *rcdev,
> +			     unsigned long id)
> +{
> +	struct omap_reset_data *reset = to_omap_reset_data(rcdev);
> +	u32 v;
> +	unsigned long flags;
> +
> +	/* assert the reset control line */
> +	spin_lock_irqsave(&reset->lock, flags);
> +	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctrl);
> +	v |= 1 << id;
> +	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
> +	spin_unlock_irqrestore(&reset->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int omap_reset_deassert(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	struct omap_reset_data *reset = to_omap_reset_data(rcdev);
> +	u32 v;
> +	int st_bit;
> +	bool has_rstst;
> +	unsigned long flags;
> +
> +	has_rstst = reset->prm->data->rstst ||
> +		(reset->prm->data->flags & OMAP_PRM_HAS_RSTST);
> +
> +	if (has_rstst) {
> +		st_bit = omap_reset_get_st_bit(reset, id);
> +
> +		/* Clear the reset status by writing 1 to the status bit */
> +		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
> +		v |= 1 << st_bit;
> +		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);

Could this accidentally clear the bits of other already completed
resets? If this is a "write 1 to clear" register, and writing zero bits
has no effect, I'd expect this to be just:

		v = 1 << st_bit;
		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);

With this fixed (or, if I am mistaken, clarified):
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
