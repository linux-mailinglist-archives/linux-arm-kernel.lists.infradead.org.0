Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59070158A9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uRRg6gxHiRlCGgfSncTmh1KoUoyZxGbYm9l1lJ+pAHc=; b=QsvzB4obvgMb4eJ9E+z/Y49pK
	ZDMjSJXswvsNs6ErHQasCN8FvK/qtGZWUT/qt2HKdi7J0geDaRCdlGnFYXoAmbOUoXX4hePvVeYpT
	85AupTy2Vt3WfCiXaGC9bbD+57/yIVQJML2dGwmv9dvhCeCSQZC2gBV0k3DQfUhSMMd76TapXbEbB
	1ogwHMnMVztuYgYrz4q8bb88cG7ovVDIb/dAy/vyEIyWREYkqEYDrBhByL0WKNMmrAWhagLPsGpH2
	1cvc8WD0rteGbv7xqR9wiGXDkIbejlbgAhkl5yF+jGshR+jr8Qa7GXilJ19usAyJ64DOsQEzV+ZCA
	NBESaNyZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QG7-0001AO-53; Tue, 11 Feb 2020 07:47:03 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QFy-00019x-5m
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:46:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 08BAC21BF9;
 Tue, 11 Feb 2020 02:46:51 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 02:46:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=WGv+qh4g6HJOYbLcYvOiCrXQtP8
 Tawqb5EuA2ayeHOc=; b=Mt0tRmuKm35TBy1x3hCg4bDqUPgvnKog1xC4ZqqSDUQ
 0zMuuXhgkPz9JJ7uTN+MgQvJg4sBC1Mtj62045D5IRMHj0hHg3+eGfnQmEeOqZAS
 ZDzc1oGnkcENwAyM/JV5l57aFjkyHEuL3YYEZ7fFeQVhbp8Yp8MWicYXkjMnpY23
 hXSSpinPjA1Pm/R5zuE76RnJ1W/CnFMoZ1Zc39REpJ0j5c9krlWg127CpP+Ao34K
 x/pA1otgPWBGIRGTeGzD3Oy4lQ3Ad6eGrwdYBrun7PS55zoe5UbO8tqyuqMia8eW
 IO7gIexkcq+lgtLDJXxyWJFzkenWwaAhfd+0kIqHhNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WGv+qh
 4g6HJOYbLcYvOiCrXQtP8Tawqb5EuA2ayeHOc=; b=awI+7jjncaQ25xd7OQE0w9
 oY4LLFW8e/saF1Sxf9K4A+qSQn63LYR37QLT3HWxKFF0NOaF532fdS7G/Ntgkv/p
 aDatnW+HH/k1KeNutgf1KjfumSrWoc8tAxbuQHWvaTdYHORruw9Y/xgdX1qWKTXP
 7Rjc7kpgD2QG4iP2oFWSog16v9WUJ2EjUvOcYovz4+q9uQyv3FIOvWpH3dpVT5H9
 dqJ9U7QvXCAX6uK4hRHw1Zsmm7nA8orgXLlEpuCrTxFaXJTu9uCSH+pGkUGKF7um
 1HZpjSQQ6Yvw6S7WmR6s1wI5eXYUDgE3bh+yJXXF4h1TWVR27jHVkmqbTQttoZkA
 ==
X-ME-Sender: <xms:5VtCXikKUNlGGbvY3pD-9hXFds6yizfCboqjURqI72AhlVeiw9z6rg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:5VtCXtnuYT9YWzK5E6u26fM7cS57wcq7R2twHnPFd1GtoxUk18Vr0Q>
 <xmx:5VtCXpi0nTxJOomdv_xVj_Jwzmus24V6Vgbg9mUEe9PZjbgFIejjxQ>
 <xmx:5VtCXuvbffq_pNq1bCJaiYY8xx5D1k5APZkykdDE-GHwA_jSTFDLsA>
 <xmx:6ltCXmLy-nf5KYu3LW7LY8kdW2XoqFAYJ-vqt4DnyPUf7CTV3RqQ7Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 48C4A3280059;
 Tue, 11 Feb 2020 02:46:45 -0500 (EST)
Date: Tue, 11 Feb 2020 08:46:43 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Message-ID: <20200211074643.uhhzpp4ycvkaz4pd@gilmour.lan>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
MIME-Version: 1.0
In-Reply-To: <20200210170143.20007-2-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_234654_360925_959D63A2 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: multipart/mixed; boundary="===============1401746314553569053=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1401746314553569053==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4ptuso52sfx2jdlw"
Content-Disposition: inline


--4ptuso52sfx2jdlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Feb 10, 2020 at 07:01:41PM +0200, Nikolay Borisov wrote:
> Based on the datasheet this implements support for the hwspinlock IP
> block.

How was this tested?

There's also a lot of checkpatch issues, make sure you fix those.

> Signed-off-by: Nikolay Borisov <nborisov@suse.com>
> ---
>  drivers/hwspinlock/Kconfig            |   9 ++
>  drivers/hwspinlock/Makefile           |   1 +
>  drivers/hwspinlock/sunxi_hwspinlock.c | 181 ++++++++++++++++++++++++++
>  3 files changed, 191 insertions(+)
>  create mode 100644 drivers/hwspinlock/sunxi_hwspinlock.c
>
> diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
> index 37740e992cfa..ebc1ea48ef16 100644
> --- a/drivers/hwspinlock/Kconfig
> +++ b/drivers/hwspinlock/Kconfig
> @@ -68,3 +68,12 @@ config HSEM_U8500
>  	  SoC.
>
>  	  If unsure, say N.
> +
> +config HWSPINLOCK_SUNXI
> +	tristate "Allwinner Hardware Spinlock device"
> +	depends on ARCH_SUNXI
> +	depends on HWSPINLOCK
> +	help
> +	  Say y here to support the SUNXI Hardware Spinlock device.
> +
> +	  If unsure, say N.

sunxi doesn't really mean anything though, the A10 is also part of the
sunxi family and doesn't have that IP. Similarly, nothing prevents a
future SoC from changing that design. The first SoC that used it was
the A33 iirc, so let's just use sun8i.

> diff --git a/drivers/hwspinlock/Makefile b/drivers/hwspinlock/Makefile
> index ed053e3f02be..6be5ebef906e 100644
> --- a/drivers/hwspinlock/Makefile
> +++ b/drivers/hwspinlock/Makefile
> @@ -8,5 +8,6 @@ obj-$(CONFIG_HWSPINLOCK_OMAP)		+= omap_hwspinlock.o
>  obj-$(CONFIG_HWSPINLOCK_QCOM)		+= qcom_hwspinlock.o
>  obj-$(CONFIG_HWSPINLOCK_SIRF)		+= sirf_hwspinlock.o
>  obj-$(CONFIG_HWSPINLOCK_SPRD)		+= sprd_hwspinlock.o
> +obj-$(CONFIG_HWSPINLOCK_SUNXI)		+= sunxi_hwspinlock.o

Ditto for the name of the file (and basically every symbol in your
driver.

>  obj-$(CONFIG_HWSPINLOCK_STM32)		+= stm32_hwspinlock.o
>  obj-$(CONFIG_HSEM_U8500)		+= u8500_hsem.o
> diff --git a/drivers/hwspinlock/sunxi_hwspinlock.c b/drivers/hwspinlock/sunxi_hwspinlock.c
> new file mode 100644
> index 000000000000..8e5685357fbf
> --- /dev/null
> +++ b/drivers/hwspinlock/sunxi_hwspinlock.c
> @@ -0,0 +1,181 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Author: Nikolay Borisov <nborisov@suse.com> */
> +
> +#include <linux/clk.h>
> +#include <linux/reset.h>
> +#include <linux/hwspinlock.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +#include "hwspinlock_internal.h"
> +
> +/* Spinlock register offsets */
> +#define LOCK_BASE_OFFSET		0x0100
> +
> +#define SPINLOCK_NUMLOCKS_BIT_OFFSET	(28)
> +/* Possible values of SPINLOCK_LOCK_REG */
> +#define SPINLOCK_NOTTAKEN		(0)	/* free */
> +#define SPINLOCK_TAKEN			(1)	/* locked */
> +
> +struct sunxi_hwspinlock {
> +	struct clk *clk;
> +	struct reset_control *reset;
> +	struct hwspinlock_device bank;
> +};
> +
> +static int sunxi_hwspinlock_trylock(struct hwspinlock *lock)
> +{
> +	void __iomem *lock_addr = lock->priv;
> +
> +	/* attempt to acquire the lock by reading its value */
> +	return (SPINLOCK_NOTTAKEN == readl(lock_addr));
> +}
> +
> +static void sunxi_hwspinlock_unlock(struct hwspinlock *lock)
> +{
> +	void __iomem *lock_addr = lock->priv;
> +
> +	/* release the lock by writing 0 to it */
> +	writel(SPINLOCK_NOTTAKEN, lock_addr);
> +}
> +
> +static const struct hwspinlock_ops sunxi_hwspinlock_ops = {
> +	.trylock	= sunxi_hwspinlock_trylock,
> +	.unlock		= sunxi_hwspinlock_unlock,
> +};
> +
> +static int sunxi_get_num_locks(void __iomem *io_base)
> +{
> +	int i = readl(io_base);

readl returns a u32.

> +	i >>= SPINLOCK_NUMLOCKS_BIT_OFFSET;

And you probably want to mask the value to avoid other bitfields in
the register from messing with that value. FIELD_GET will help you to
do so.

> +	switch (i) {
> +	case 0x1: return 32;
> +	case 0x2: return 64;
> +	case 0x3: return 128;
> +	case 0x4: return 256;
> +	}
> +
> +	return 0;
> +}
> +
> +static int sunxi_hwspinlock_probe(struct platform_device *pdev)
> +{
> +	struct sunxi_hwspinlock *hw;
> +	void __iomem *io_base;
> +	struct resource *res;
> +	struct clk *clk;
> +	struct reset_control *reset;
> +	int i, ret, num_locks;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	io_base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(io_base))
> +		return PTR_ERR(io_base);
> +
> +	/*
> +	 * make sure the module is enabled and clocked before reading
> +	 * the module SYSSTATUS register
> +	 */

You don't define that register anywhere?

> +	clk = devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	ret = clk_prepare_enable(clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Cannot enable clock\n");
> +		return ret;
> +	}

Can't we do that with runtime_pm?

> +	/* Disable soft reset */
> +        reset= devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +        if (IS_ERR(reset)) {
> +                ret = PTR_ERR(reset);
> +                goto out_declock;
> +        }
> +        reset_control_deassert(reset);

We might have the same issue than the mailbox driver where the
firmware will need to access the block at any time, so we can't really
toggle the reset line as we want.

> +	num_locks = sunxi_get_num_locks(io_base);
> +	if (!num_locks) {
> +		dev_err(&pdev->dev, "Unrecognised sunxi hwspinlock device\n");
> +		ret = -EINVAL;
> +		goto out_reset;
> +	}
> +
> +	hw = devm_kzalloc(&pdev->dev, sizeof(*hw) +
> +			  num_locks * sizeof(struct hwspinlock), GFP_KERNEL);
> +	if (!hw) {
> +		ret = -ENOMEM;
> +		goto out_reset;
> +	}

That looks rather convoluted (especially since the variable length
array is at the second level), and can be made more obvious by:

- Removing the hwspinlock_device from sunxi_hwspinlock and allocating
  both separately.

- And then allocate the hwspinlock_device separately with struct_size

> +	hw->clk = clk;
> +	hw->reset = reset;

Why not using the structure directly instead of having temporary
variables?

> +	io_base += LOCK_BASE_OFFSET;
> +	for (i = 0; i < num_locks; i++)
> +		hw->bank.lock[i].priv = io_base + i * sizeof(u32);

Using a define for the registers offset would be nice here.

> +	platform_set_drvdata(pdev, hw);
> +
> +	ret = hwspin_lock_register(&hw->bank, &pdev->dev, &sunxi_hwspinlock_ops,
> +				   0, num_locks);
> +
> +	if (!ret)
> +		return ret;

That's a slightly weird construct too, since in pretty much all the
driver you return early on error and here you return early on
success. Just return ret if there's an error just like you're doing
everywhere else, and return 0 after that.

> +out_reset:
> +	reset_control_assert(reset);
> +out_declock:
> +	clk_disable_unprepare(clk);
> +	return ret;
> +}
> +
> +static int sunxi_hwspinlock_remove(struct platform_device *pdev)
> +{
> +	struct sunxi_hwspinlock *hw = platform_get_drvdata(pdev);
> +	int ret;
> +
> +	ret = hwspin_lock_unregister(&hw->bank);
> +	if (ret)
> +		dev_err(&pdev->dev, "%s failed: %d\n", __func__, ret);
> +
> +	reset_control_assert(hw->reset);
> +	clk_disable_unprepare(hw->clk);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sunxi_hwpinlock_ids[] = {
> +	{ .compatible = "allwinner,sun50i-a64-hwspinlock", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sunxi_hwpinlock_ids);
> +
> +static struct platform_driver sunxi_hwspinlock_driver = {
> +	.probe		= sunxi_hwspinlock_probe,
> +	.remove		= sunxi_hwspinlock_remove,
> +	.driver		= {
> +		.name	= "sunxi_hwspinlock",
> +		.of_match_table = sunxi_hwpinlock_ids,
> +	},
> +};
> +
> +static int __init sunxi_hwspinlock_init(void)
> +{
> +	return platform_driver_register(&sunxi_hwspinlock_driver);
> +}
> +/* board init code might need to reserve hwspinlocks for predefined purposes */
> +postcore_initcall(sunxi_hwspinlock_init);

We don't have any board init code. Can't we just use a regular
module_platform_driver call here?

Thanks!
Maxime

--4ptuso52sfx2jdlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJb4wAKCRDj7w1vZxhR
xcePAQCVQtBxWrb6uZg9+u0YFjPSa2rp+TBFH8/O19f0qJMSwAEAmPbcovpW+8tq
F9ueW46pD6YZSkGhRwrVYEMBDVaUDwA=
=SXP2
-----END PGP SIGNATURE-----

--4ptuso52sfx2jdlw--


--===============1401746314553569053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1401746314553569053==--

