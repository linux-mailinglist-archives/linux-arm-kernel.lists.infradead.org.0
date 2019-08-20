Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22F495D1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zoVKZ+mnOiuKDBoRwydd6m8NaXtfgOnb+/mFY7jn3U=; b=bphVU1/Wozs8sA
	+jEvqGmYJ7uxzxHWGc9/rpYt2YggrN8TBeU2jH9FakrgreSgFFyr70riLSHNpMW6Tr9dOs2XzPiwq
	lPlt0iWqPIXLZbzzSrsw4hC0L0SKpimPYiWTMxjGf6R+XlRJ9CCp8pdeBn0oSnvao2OWHyZz0AN97
	yAfjG7vEWXr9dMVSUP21pPOydn18MZ39+pMD80BN7XupTnW3ZU+Y86IzvCjHzdfKlUdLMqyor/lpq
	0lghsYSc5nkH1aqS96TKdi2lso+QNz14Xt7FJPJm5pOpOlo1E8AYhAsGHDJwp33j3v2txUe6rqzbF
	XETekGb1T/sYIu32UoLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02A0-0003UG-Am; Tue, 20 Aug 2019 11:18:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i029m-0003TN-8X
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566299906; bh=D1MInZPx34BTmINy/uQA4X0au6zTWTRVB99msOurk44=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=pqItzBN8BM8/SLCGmD35UvUue6fHpN+yI/ZCuIbJo1LSHb4jtJrmq3L+eE2h7Z1Qg
 Q/pdcC0ICv9XKfxOTYpXZCHhC6L7D0hOw62QOVkQozqhVBKQAdd5TdH59+cI4ZnpnT
 E4QzY1Nkf2gVTpiDFlKSqFqgszxGczgseTP7PurQ=
Date: Tue, 20 Aug 2019 13:18:25 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 04/10] mailbox: sunxi-msgbox: Add a new mailbox driver
Message-ID: <20190820111825.2w55fleehrnon27u@core.my.home>
Mail-Followup-To: Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-5-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820032311.6506-5-samuel@sholland.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_041830_793877_C0742E38 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Samuel,

On Mon, Aug 19, 2019 at 10:23:05PM -0500, Samuel Holland wrote:
> Allwinner sun8i, sun9i, and sun50i SoCs contain a hardware message box
> used for communication between the ARM CPUs and the ARISC management
> coprocessor. The hardware contains 8 unidirectional 4-message FIFOs.
> 
> Add a driver for it, so it can be used for SCPI or other communication
> protocols.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/mailbox/Kconfig        |  10 +
>  drivers/mailbox/Makefile       |   2 +
>  drivers/mailbox/sunxi-msgbox.c | 323 +++++++++++++++++++++++++++++++++
>  3 files changed, 335 insertions(+)
>  create mode 100644 drivers/mailbox/sunxi-msgbox.c
> 
> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
> index ab4eb750bbdd..57d12936175e 100644
> --- a/drivers/mailbox/Kconfig
> +++ b/drivers/mailbox/Kconfig
> @@ -227,4 +227,14 @@ config ZYNQMP_IPI_MBOX
>  	  message to the IPI buffer and will access the IPI control
>  	  registers to kick the other processor or enquire status.
>  
> +config SUNXI_MSGBOX
> +	tristate "Allwinner sunxi Message Box"
> +	depends on ARCH_SUNXI || COMPILE_TEST
> +	default ARCH_SUNXI
> +	help
> +	  Mailbox implementation for the hardware message box present in
> +	  Allwinner sun8i, sun9i, and sun50i SoCs. The hardware message box is
> +	  used for communication between the application CPUs and the power
> +	  management coprocessor.
> +
>  endif
> diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
> index c22fad6f696b..bec2d50b0976 100644
> --- a/drivers/mailbox/Makefile
> +++ b/drivers/mailbox/Makefile
> @@ -48,3 +48,5 @@ obj-$(CONFIG_STM32_IPCC) 	+= stm32-ipcc.o
>  obj-$(CONFIG_MTK_CMDQ_MBOX)	+= mtk-cmdq-mailbox.o
>  
>  obj-$(CONFIG_ZYNQMP_IPI_MBOX)	+= zynqmp-ipi-mailbox.o
> +
> +obj-$(CONFIG_SUNXI_MSGBOX)	+= sunxi-msgbox.o
> diff --git a/drivers/mailbox/sunxi-msgbox.c b/drivers/mailbox/sunxi-msgbox.c
> new file mode 100644
> index 000000000000..29a5101a5390
> --- /dev/null
> +++ b/drivers/mailbox/sunxi-msgbox.c
> @@ -0,0 +1,323 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2017-2019 Samuel Holland <samuel@sholland.org>
> +
> +#include <linux/bitops.h>
> +#include <linux/clk.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/mailbox_controller.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +#include <linux/spinlock.h>
> +
> +#define NUM_CHANS		8
> +
> +#define CTRL_REG(n)		(0x0000 + 0x4 * ((n) / 4))
> +#define CTRL_RX(n)		BIT(0 + 8 * ((n) % 4))
> +#define CTRL_TX(n)		BIT(4 + 8 * ((n) % 4))
> +
> +#define REMOTE_IRQ_EN_REG	0x0040
> +#define REMOTE_IRQ_STAT_REG	0x0050
> +#define LOCAL_IRQ_EN_REG	0x0060
> +#define LOCAL_IRQ_STAT_REG	0x0070
> +
> +#define RX_IRQ(n)		BIT(0 + 2 * (n))
> +#define RX_IRQ_MASK		0x5555
> +#define TX_IRQ(n)		BIT(1 + 2 * (n))
> +#define TX_IRQ_MASK		0xaaaa
> +
> +#define FIFO_STAT_REG(n)	(0x0100 + 0x4 * (n))
> +#define FIFO_STAT_MASK		GENMASK(0, 0)
> +
> +#define MSG_STAT_REG(n)		(0x0140 + 0x4 * (n))
> +#define MSG_STAT_MASK		GENMASK(2, 0)
> +
> +#define MSG_DATA_REG(n)		(0x0180 + 0x4 * (n))
> +
> +#define mbox_dbg(mbox, ...)	dev_dbg((mbox)->controller.dev, __VA_ARGS__)
> +
> +struct sunxi_msgbox {
> +	struct mbox_controller controller;
> +	struct clk *clk;
> +	spinlock_t lock;
> +	void __iomem *regs;
> +};
> +
> +static bool sunxi_msgbox_last_tx_done(struct mbox_chan *chan);
> +static bool sunxi_msgbox_peek_data(struct mbox_chan *chan);
> +
> +static inline int channel_number(struct mbox_chan *chan)
> +{
> +	return chan - chan->mbox->chans;
> +}
> +
> +static inline struct sunxi_msgbox *channel_to_msgbox(struct mbox_chan *chan)
> +{
> +	return chan->con_priv;
> +}
> +
> +static irqreturn_t sunxi_msgbox_irq(int irq, void *dev_id)
> +{
> +	struct sunxi_msgbox *mbox = dev_id;
> +	uint32_t status;
> +	int n;
> +
> +	/* Only examine channels that are currently enabled. */
> +	status = readl(mbox->regs + LOCAL_IRQ_EN_REG) &
> +		 readl(mbox->regs + LOCAL_IRQ_STAT_REG);
> +
> +	if (!(status & RX_IRQ_MASK))
> +		return IRQ_NONE;
> +
> +	for (n = 0; n < NUM_CHANS; ++n) {
> +		struct mbox_chan *chan = &mbox->controller.chans[n];
> +
> +		if (!(status & RX_IRQ(n)))
> +			continue;
> +
> +		while (sunxi_msgbox_peek_data(chan)) {
> +			uint32_t msg = readl(mbox->regs + MSG_DATA_REG(n));
> +
> +			mbox_dbg(mbox, "Channel %d received 0x%08x\n", n, msg);
> +			mbox_chan_received_data(chan, &msg);
> +		}
> +
> +		/* The IRQ can be cleared only once the FIFO is empty. */
> +		writel(RX_IRQ(n), mbox->regs + LOCAL_IRQ_STAT_REG);
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int sunxi_msgbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
> +	int n = channel_number(chan);
> +	uint32_t msg = *(uint32_t *)data;
> +
> +	/* Using a channel backwards gets the hardware into a bad state. */
> +	if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
> +		return 0;
> +
> +	/* We cannot post a new message if the FIFO is full. */
> +	if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
> +		mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
> +		return -EBUSY;
> +	}
> +
> +	writel(msg, mbox->regs + MSG_DATA_REG(n));
> +	mbox_dbg(mbox, "Channel %d sent 0x%08x\n", n, msg);
> +
> +	return 0;
> +}
> +
> +static int sunxi_msgbox_startup(struct mbox_chan *chan)
> +{
> +	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
> +	int n = channel_number(chan);
> +
> +	/* The coprocessor is responsible for setting channel directions. */
> +	if (readl(mbox->regs + CTRL_REG(n)) & CTRL_RX(n)) {
> +		/* Flush the receive FIFO. */
> +		while (sunxi_msgbox_peek_data(chan))
> +			readl(mbox->regs + MSG_DATA_REG(n));
> +		writel(RX_IRQ(n), mbox->regs + LOCAL_IRQ_STAT_REG);
> +
> +		/* Enable the receive IRQ. */
> +		spin_lock(&mbox->lock);
> +		writel(readl(mbox->regs + LOCAL_IRQ_EN_REG) | RX_IRQ(n),
> +		       mbox->regs + LOCAL_IRQ_EN_REG);
> +		spin_unlock(&mbox->lock);
> +	}
> +
> +	mbox_dbg(mbox, "Channel %d startup complete\n", n);
> +
> +	return 0;
> +}
> +
> +static void sunxi_msgbox_shutdown(struct mbox_chan *chan)
> +{
> +	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
> +	int n = channel_number(chan);
> +
> +	if (readl(mbox->regs + CTRL_REG(n)) & CTRL_RX(n)) {
> +		/* Disable the receive IRQ. */
> +		spin_lock(&mbox->lock);
> +		writel(readl(mbox->regs + LOCAL_IRQ_EN_REG) & ~RX_IRQ(n),
> +		       mbox->regs + LOCAL_IRQ_EN_REG);
> +		spin_unlock(&mbox->lock);
> +
> +		/* Attempt to flush the FIFO until the IRQ is cleared. */
> +		do {
> +			while (sunxi_msgbox_peek_data(chan))
> +				readl(mbox->regs + MSG_DATA_REG(n));
> +			writel(RX_IRQ(n), mbox->regs + LOCAL_IRQ_STAT_REG);
> +		} while (readl(mbox->regs + LOCAL_IRQ_STAT_REG) & RX_IRQ(n));
> +	}
> +
> +	mbox_dbg(mbox, "Channel %d shutdown complete\n", n);
> +}
> +
> +static bool sunxi_msgbox_last_tx_done(struct mbox_chan *chan)
> +{
> +	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
> +	int n = channel_number(chan);
> +
> +	/*
> +	 * The hardware allows snooping on the remote user's IRQ statuses.
> +	 * We consider a message to be acknowledged only once the receive IRQ
> +	 * for that channel is cleared. Since the receive IRQ for a channel
> +	 * cannot be cleared until the FIFO for that channel is empty, this
> +	 * ensures that the message has actually been read. It also gives the
> +	 * recipient an opportunity to perform minimal processing before
> +	 * acknowledging the message.
> +	 */
> +	return !(readl(mbox->regs + REMOTE_IRQ_STAT_REG) & RX_IRQ(n));
> +}
> +
> +static bool sunxi_msgbox_peek_data(struct mbox_chan *chan)
> +{
> +	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
> +	int n = channel_number(chan);
> +
> +	return readl(mbox->regs + MSG_STAT_REG(n)) & MSG_STAT_MASK;
> +}
> +
> +static const struct mbox_chan_ops sunxi_msgbox_chan_ops = {
> +	.send_data    = sunxi_msgbox_send_data,
> +	.startup      = sunxi_msgbox_startup,
> +	.shutdown     = sunxi_msgbox_shutdown,
> +	.last_tx_done = sunxi_msgbox_last_tx_done,
> +	.peek_data    = sunxi_msgbox_peek_data,
> +};
> +
> +static int sunxi_msgbox_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mbox_chan *chans;
> +	struct reset_control *reset;
> +	struct resource *res;
> +	struct sunxi_msgbox *mbox;
> +	int i, ret;
> +
> +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> +	if (!mbox)
> +		return -ENOMEM;
> +
> +	chans = devm_kcalloc(dev, NUM_CHANS, sizeof(*chans), GFP_KERNEL);
> +	if (!chans)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < NUM_CHANS; ++i)
> +		chans[i].con_priv = mbox;
> +
> +	mbox->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(mbox->clk)) {
> +		ret = PTR_ERR(mbox->clk);
> +		dev_err(dev, "Failed to get clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(mbox->clk);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	reset = devm_reset_control_get(dev, NULL);
> +	if (IS_ERR(reset)) {
> +		ret = PTR_ERR(reset);
> +		dev_err(dev, "Failed to get reset control: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}
> +
> +	ret = reset_control_deassert(reset);
> +	if (ret) {
> +		dev_err(dev, "Failed to deassert reset: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}

You need to assert the reset again from now on, in error paths. devm
will not do that for you.

> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		ret = -ENODEV;
> +		goto err_disable_unprepare;
> +	}
> +
> +	mbox->regs = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(mbox->regs)) {
> +		ret = PTR_ERR(mbox->regs);
> +		dev_err(dev, "Failed to map MMIO resource: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}
> +
> +	/* Disable all IRQs for this end of the msgbox. */
> +	writel(0, mbox->regs + LOCAL_IRQ_EN_REG);
> +
> +	ret = devm_request_irq(dev, irq_of_parse_and_map(dev->of_node, 0),
> +			       sunxi_msgbox_irq, 0, dev_name(dev), mbox);
> +	if (ret) {
> +		dev_err(dev, "Failed to register IRQ handler: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}
> +
> +	mbox->controller.dev           = dev;
> +	mbox->controller.ops           = &sunxi_msgbox_chan_ops;
> +	mbox->controller.chans         = chans;
> +	mbox->controller.num_chans     = NUM_CHANS;
> +	mbox->controller.txdone_irq    = false;
> +	mbox->controller.txdone_poll   = true;
> +	mbox->controller.txpoll_period = 5;
> +
> +	spin_lock_init(&mbox->lock);
> +	platform_set_drvdata(pdev, mbox);
> +
> +	ret = mbox_controller_register(&mbox->controller);
> +	if (ret) {
> +		dev_err(dev, "Failed to register controller: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}
> +
> +	return 0;
> +
> +err_disable_unprepare:
> +	clk_disable_unprepare(mbox->clk);
> +
> +	return ret;
> +}
> +
> +static int sunxi_msgbox_remove(struct platform_device *pdev)
> +{
> +	struct sunxi_msgbox *mbox = platform_get_drvdata(pdev);
> +
> +	mbox_controller_unregister(&mbox->controller);
> +	clk_disable_unprepare(mbox->clk);

Also, assert the reset here.

regards,
	o.

> +	return 0;
> +}
> +
> +static const struct of_device_id sunxi_msgbox_of_match[] = {
> +	{ .compatible = "allwinner,sun6i-a31-msgbox", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sunxi_msgbox_of_match);
> +
> +static struct platform_driver sunxi_msgbox_driver = {
> +	.driver = {
> +		.name = "sunxi-msgbox",
> +		.of_match_table = sunxi_msgbox_of_match,
> +	},
> +	.probe  = sunxi_msgbox_probe,
> +	.remove = sunxi_msgbox_remove,
> +};
> +module_platform_driver(sunxi_msgbox_driver);
> +
> +MODULE_AUTHOR("Samuel Holland <samuel@sholland.org>");
> +MODULE_DESCRIPTION("Allwinner sunxi Message Box");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
