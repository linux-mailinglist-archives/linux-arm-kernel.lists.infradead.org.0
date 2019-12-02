Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3572710EDC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 18:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IryMIxSUXBCgyjcase9SIX4mXHTpdjGCHaYJUSuTb8o=; b=f+zSHg0y2pluio
	aNB5ADGZSVSak7y66s65DTYBU3StaiNR1oy/WOM2ruDlZwzlb1hX/1ySdkUXZQMXat1Z7veIBWCun
	ubEOu3v/+Ro+xAHPs85tTuAg52EuBbxvxmJV4VzhwhhQ4A0fT00Mh8h/KJuHCTb5Vz3eaz91TwAIS
	jG8d+Sa4kFagEa9HduXa2QtAI7f298KxJylz+WaacE7KXzAKFHI1PoEAgHwIt32INxPfUVnrPJ2YJ
	yW1BlDi7nI2F+o6xEzf8QSM3OthwewKGAoDPSf+7qEmJ04zqiHzh4uMjKiA1dPbPrUU5iHtzJ6cVU
	H+OOMBcAQ/26AS/sq4lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibp7z-0001QK-Ck; Mon, 02 Dec 2019 17:04:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibp7n-0001L4-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 17:04:41 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ibp7T-0007aM-Ct; Mon, 02 Dec 2019 18:04:19 +0100
Message-ID: <449968d8f085a1d1fcf4018bb8efe454fa35b3e3.camel@pengutronix.de>
Subject: Re: [PATCH 2/3] reset: hisilicon: Extend reset operation type
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jun Nie <jun.nie@linaro.org>, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, xuwei5@hisilicon.com, 
 opensource@jilayne.com, swinslow@gmail.com, allison@lohutok.net, 
 yuehaibing@huawei.com, tglx@linutronix.de, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 xuejiancheng@hisilicon.com
Date: Mon, 02 Dec 2019 18:04:19 +0100
In-Reply-To: <20191202144524.5391-3-jun.nie@linaro.org>
References: <20191202144524.5391-1-jun.nie@linaro.org>
 <20191202144524.5391-3-jun.nie@linaro.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_090439_521208_FE339007 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-12-02 at 22:45 +0800, Jun Nie wrote:
> Extend reset operations to support combination of three type flags:
> ASSERT/DEASSERT SET/CLEAR POLL.
> 
> Signed-off-by: Jun Nie <jun.nie@linaro.org>
> ---
>  drivers/clk/hisilicon/reset.c | 58 ++++++++++++++++++++++++++++++++---
>  1 file changed, 53 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/hisilicon/reset.c b/drivers/clk/hisilicon/reset.c
> index 93cee17db8b1..de7d186b0894 100644
> --- a/drivers/clk/hisilicon/reset.c
> +++ b/drivers/clk/hisilicon/reset.c
> @@ -2,20 +2,25 @@
>  /*
>   * Hisilicon Reset Controller Driver
>   *
> - * Copyright (c) 2015-2016 HiSilicon Technologies Co., Ltd.
> + * Copyright (c) 2015-2019 HiSilicon Technologies Co., Ltd.
>   */
>  
>  #include <linux/io.h>
> +#include <linux/iopoll.h>
>  #include <linux/of_address.h>
>  #include <linux/platform_device.h>
>  #include <linux/reset-controller.h>
>  #include <linux/slab.h>
>  #include <linux/spinlock.h>
> +
> +#include <dt-bindings/reset/hisilicon-resets.h>
>  #include "reset.h"
>  
>  #define	HISI_RESET_BIT_MASK	0x1f
>  #define	HISI_RESET_OFFSET_SHIFT	8
>  #define	HISI_RESET_OFFSET_MASK	0xffff00
> +#define	HISI_RESET_FLAG_SHIFT	24
> +#define	HISI_RESET_FLAG_MASK	0xff000000
>  
>  struct hisi_reset_controller {
>  	spinlock_t	lock;
> @@ -30,14 +35,17 @@ struct hisi_reset_controller {
>  static int hisi_reset_of_xlate(struct reset_controller_dev *rcdev,
>  			const struct of_phandle_args *reset_spec)
>  {
> +	unsigned long flags;
>  	u32 offset;
>  	u8 bit;
>  
> +	flags = (reset_spec->args[2] << HISI_RESET_FLAG_SHIFT)
> +		& HISI_RESET_FLAG_MASK;
>  	offset = (reset_spec->args[0] << HISI_RESET_OFFSET_SHIFT)
>  		& HISI_RESET_OFFSET_MASK;
>  	bit = reset_spec->args[1] & HISI_RESET_BIT_MASK;
>  
> -	return (offset | bit);
> +	return (flags | offset | bit);
>  }
>  
>  static int hisi_reset_assert(struct reset_controller_dev *rcdev,
> @@ -48,13 +56,33 @@ static int hisi_reset_assert(struct reset_controller_dev *rcdev,
>  	u32 offset, reg;
>  	u8 bit;
>  
> +	flags = (id & HISI_RESET_FLAG_MASK) >> HISI_RESET_FLAG_SHIFT;
> +	if (flags & HISI_ASSERT_NONE)
> +		return -ENOTSUPP; /* assert not supported for this reset */

As long as .assert and .deassert are the only implemented operations for
this reset controller, this does not make any sense to me. Are there
resets that can only be deasserted?

> +
>  	offset = (id & HISI_RESET_OFFSET_MASK) >> HISI_RESET_OFFSET_SHIFT;
>  	bit = id & HISI_RESET_BIT_MASK;
>  
> +	pr_devel("%s %s to %s 0x%x:bit[%d]\n", __func__,
> +		flags & HISI_ASSERT_POLL ? "poll" : "",
> +		flags & HISI_ASSERT_SET ? "set":"clear", offset, bit);
> +
> +	if (flags & HISI_ASSERT_POLL) {

Since HISI_ASSERT_POLL is 0, this is always false.

> +		if (flags & HISI_ASSERT_SET)
> +			return readl_poll_timeout(rstc->membase + offset,
> +						  reg, reg & BIT(bit), 0, 5000);
> +		else
> +			return readl_poll_timeout(rstc->membase + offset,
> +						  reg, !(reg & BIT(bit)),
> +						  0, 5000);

And this is effectively dead code. Do you really have hardware that
asserts or asserts a reset line in reaction to a read access?

Should HISI_ASSERT_POLL and HISI_DEASSERT_POLL be mutually exclusive?

> +	}
> +
>  	spin_lock_irqsave(&rstc->lock, flags);
>  
>  	reg = readl(rstc->membase + offset);
> -	writel(reg | BIT(bit), rstc->membase + offset);
> +	/* Default is setting to assert for no flag case. */
> +	reg = (flags & HISI_ASSERT_CLEAR) ? reg & ~BIT(bit) : reg | BIT(bit);

Consider moving this into a helper function with a boolean set/clear
parameter.

As long as HISI_ASSERT_CLEAR is 0, the first branch is dead code.

> +	writel(reg, rstc->membase + offset);
>  
>  	spin_unlock_irqrestore(&rstc->lock, flags);
>  
> @@ -69,13 +97,33 @@ static int hisi_reset_deassert(struct reset_controller_dev *rcdev,
>  	u32 offset, reg;
>  	u8 bit;
>  
> +	flags = (id & HISI_RESET_FLAG_MASK) >> HISI_RESET_FLAG_SHIFT;
> +	if (flags & HISI_DEASSERT_NONE)
> +		return -ENOTSUPP; /* deassert not supported for this reset */
> +

Are there resets that can only ever be asserted?

>  	offset = (id & HISI_RESET_OFFSET_MASK) >> HISI_RESET_OFFSET_SHIFT;
>  	bit = id & HISI_RESET_BIT_MASK;
>  
> +	pr_devel("%s %s to %s 0x%x:bit[%d]\n", __func__,
> +		flags & HISI_DEASSERT_POLL ? "poll" : "",
> +		flags & HISI_DEASSERT_SET ? "clear":"set", offset, bit);
> +
> +	if (flags & HISI_DEASSERT_POLL) {
> +		if (flags & HISI_DEASSERT_SET)
> +			return readl_poll_timeout(rstc->membase + offset,
> +						  reg, reg & BIT(bit), 0, 5000);
> +		else
> +			return readl_poll_timeout(rstc->membase + offset,
> +						  reg, !(reg & BIT(bit)),
> +						  0, 5000);

See above, this code currently can never be reached.

> +	}
> +
>  	spin_lock_irqsave(&rstc->lock, flags);
>  
>  	reg = readl(rstc->membase + offset);
> -	writel(reg & ~BIT(bit), rstc->membase + offset);
> +	/* Default is clearing to deasseart for no flag case. */
> +	reg = (flags & HISI_DEASSERT_SET) ? reg | BIT(bit) : reg & ~BIT(bit);

Same as above, the read-modify-write for set/clear could be split out
into a helper.

> +	writel(reg, rstc->membase + offset);
>  
>  	spin_unlock_irqrestore(&rstc->lock, flags);
>  
> @@ -103,7 +151,7 @@ struct hisi_reset_controller *hisi_reset_init(struct platform_device *pdev)
>  	rstc->rcdev.owner = THIS_MODULE;
>  	rstc->rcdev.ops = &hisi_reset_ops;
>  	rstc->rcdev.of_node = pdev->dev.of_node;
> -	rstc->rcdev.of_reset_n_cells = 2;
> +	rstc->rcdev.of_reset_n_cells = 3;

This breaks current device trees (before patch 3). You can make sure
device trees with #reset-cells = <2> keep working by parsing the #reset-
cells and setting this value to 2 for old DTs.

>  	rstc->rcdev.of_xlate = hisi_reset_of_xlate;
>  	reset_controller_register(&rstc->rcdev);

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
