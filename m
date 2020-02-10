Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C3815831C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Nb2YbevwVqN3U9BVAauNTGiO4dicVtGoFdY/A60RHo=; b=mC5QfopKbG/yC2
	wfu0u877Kj0VUL5wYx0xQRg7yrgANlV5QV/7RbmPLMTMKZ2vnLpMAIjjNGwtRdSBQhru9iGwK7Lga
	+U/JiOgnqhwJ0rNUvwcjbiKrmEGD8DAA1iWGm6U8gmAEvGszFc1Dhxto/6+nb66bc+evx4hpdQzrQ
	VVVPJss4BKO20GhIIdLzJgPjGbWllcjO+WTKAMwHDVqBY6qemHjZU0BeKRo8EAz4jcepusy9tRX60
	w8AlRoe8HpqQtKduQjBK2aKNIvgmLGvhkwARuf+S4VRhH+Pd4nOlCaLVA9SuYIpMzpU/1wLpbGErE
	5LCCmOniialUoXWg6Fkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EGN-0007xM-A9; Mon, 10 Feb 2020 18:58:31 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EGB-0007wP-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:58:20 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 12so136657pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 10:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ou01gn6VTXSH9n4brhLwrn8wvTfp/vT4RlsOWHZMqCI=;
 b=c8HSqpoi5xqPl9sJyASM8UQbbNjIxaxo0u9z6vW/OEURfpuy97kBUZbgR+55BExSRY
 MvSmh6pHzJJZ8aIb2qpWxA3nL3jFCsp/QZl0mYqzyWVQ2lX9RBreuSlzkIxcq+CljtT3
 MPEIqWivGvXxp6+W19A/C4jYcVbAnQ/kok5GX4rxoJIlK5QNHg4hl/UHXUfljc7oUCRp
 esdUy7LtvWQH7mg/qRsKjWt59HJnGBs3vYrHoxXvghL57OOowGUzlioKJyJGSGzR1xzo
 5QUuf/Lb7RjR1PnERp7OqTyH+/8gl24V4ROkH+aaaWZqi+eDUH9oBQL/oPmHxBJE3bZV
 GMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ou01gn6VTXSH9n4brhLwrn8wvTfp/vT4RlsOWHZMqCI=;
 b=T9uKzJDvprhVWtaMQ13gDIUnqavt+94SgQ1Cs8BYCYARJQr7EG4YO0CIgddqhmxhbD
 wsumXbaVGgUgnFQRwNCex/e5uqzFq+8uRwE+4W8x4Gkj8K7xtqtfCZeAipXpUGVPO/44
 XZoZgFD227CrrgOVWmH3C8mG2qQ9JoPyMfZ1kS5TDVWco5GrOJubMX/o1V/OXz848QTW
 y/c0vBPiq3o53I5+5yg+AUM8lylLZtddB/27miMuoSSn/rkPXqqYfKst9Llg/mDH950a
 71cpe9MaL8qPy3ydJBhWPMxfM/uZ3/S2GuPzFvLstsCWAc1SlCJLbX5qZh5feJ9edlMU
 N7Yw==
X-Gm-Message-State: APjAAAW2zRzh6t60EvZm/YlEpu1VN6I1KiZWtKEW84L8Xh+q8j3lYYyi
 f8WeeROKOs6yny3S9tbukstYyg==
X-Google-Smtp-Source: APXvYqxBU0sXuvgcJ/4nj1y3aQ2P33PuazSEw2YECUUYvNEg6n53CRutULLKLuOKjeYe/iD3k5UbMA==
X-Received: by 2002:a17:90a:1f8d:: with SMTP id
 x13mr543901pja.27.1581361097709; 
 Mon, 10 Feb 2020 10:58:17 -0800 (PST)
Received: from ripper (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a195sm1130031pfa.120.2020.02.10.10.58.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:58:17 -0800 (PST)
Date: Mon, 10 Feb 2020 10:57:30 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Message-ID: <20200210185730.GL955802@ripper>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210170143.20007-2-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_105819_271852_194FA1CD 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Feb 09:01 PST 2020, Nikolay Borisov wrote:
[..]
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

Please sort these.

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

Please drop the parenthesis and flip the expression around, i.e.
variable == constant.

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
> +	i >>= SPINLOCK_NUMLOCKS_BIT_OFFSET;

Please make i u32.

> +
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

Please use devm_platform_ioremap_resource()

> +	if (IS_ERR(io_base))
> +		return PTR_ERR(io_base);
> +
> +	/*
> +	 * make sure the module is enabled and clocked before reading
> +	 * the module SYSSTATUS register
> +	 */
> +	clk = devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	ret = clk_prepare_enable(clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Cannot enable clock\n");
> +		return ret;
> +	}
> +
> +	/* Disable soft reset */
> +        reset= devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +        if (IS_ERR(reset)) {
> +                ret = PTR_ERR(reset);
> +                goto out_declock;
> +        }
> +        reset_control_deassert(reset);

Indentation of this chunk looks off.

> +
> +	num_locks = sunxi_get_num_locks(io_base);
> +	if (!num_locks) {
> +		dev_err(&pdev->dev, "Unrecognised sunxi hwspinlock device\n");
> +		ret = -EINVAL;
> +		goto out_reset;
> +	}
> +
> +	hw = devm_kzalloc(&pdev->dev, sizeof(*hw) +
> +			  num_locks * sizeof(struct hwspinlock), GFP_KERNEL);

Please use struct_size() to calculate the size here.

> +	if (!hw) {
> +		ret = -ENOMEM;
> +		goto out_reset;
> +	}
> +
> +	hw->clk = clk;
> +	hw->reset = reset;
> +
> +	io_base += LOCK_BASE_OFFSET;
> +	for (i = 0; i < num_locks; i++)
> +		hw->bank.lock[i].priv = io_base + i * sizeof(u32);
> +
> +	platform_set_drvdata(pdev, hw);
> +
> +	ret = hwspin_lock_register(&hw->bank, &pdev->dev, &sunxi_hwspinlock_ops,
> +				   0, num_locks);

People will likely send patches to replace this with
devm_hwspin_lock_register(), but that will create an invalid ordering
between the clock disable, reset assert and the hwspinlock
unregistration.

You could deal with this using devm_add_action() and
devm_add_action_or_reset() for the clock and reset above. That will save
us future churn, would clean up your error handling and you could drop
the remove function completely.

> +
> +	if (!ret)
> +		return ret;
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

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
