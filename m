Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894D9B1568
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XRvuAVUOmqmy65MyEChODMsXcFsfcGZAsAQg0jG6As=; b=IBFlZxZ9tlLBN9
	t6pA6n6pYdVNm8hZDS8qj2OZjTwDNkdxw01zPq0ikB7WtFDphZdwu6H7RlyQVTzjwTUpKvLzdMoTB
	1SdoYG9dZMFps4pJenIYP2M+ZVfa4sRUneAxELgpIGV6GtY9N6nqYnEiXV+0VAXapXdaBwn/Bv+i5
	wVuoNYvVwVSrfzQYbB1WeKUY5/n1388KQpZ52DRMJW/NdJBnd4XZIquXrUwG2qq41q3x/ZaV7YeeZ
	fMfHZJjbvSu739FqqRCN3COswhxPaDMSQKYDI5h6Wjae7vXkf1gbYLhMDITOjvrkci1isWS6SUZKW
	neuuzhN1BEaOMHuJzAFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ViS-0007iH-9q; Thu, 12 Sep 2019 20:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Vg2-0007WW-Oc
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:26:52 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32B6B20830;
 Thu, 12 Sep 2019 20:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568320009;
 bh=l19LbqpY2hBqQHafDv7Xu6iCTFH9k+VC+tpz3LtafOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UFCNoVjFPh+fpGv9CiYMm812hzIN/3Eq2qmnzyppi5hG+ugtGsgv+7JyIjswXrK/K
 OTVXqdwK/45z2tsbUccVxXYsfrro4cyZPCEyDrAR/4etecx1LIJxwma9vrAez5r8F/
 bfC4h1h8is+wJKo0dLp2mX6cXiPHg+BvtDwjZtXg=
Date: Thu, 12 Sep 2019 22:26:47 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Message-ID: <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-6-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912175132.411-6-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_132650_865574_BEBD8181 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Sep 12, 2019 at 07:51:31PM +0200, Jernej Skrabec wrote:
> +	dev->regmap = devm_regmap_init_mmio(dev->dev, dev->base,
> +					    &deinterlace_regmap_config);
> +	if (IS_ERR(dev->regmap)) {
> +		dev_err(dev->dev, "Couldn't create deinterlace regmap\n");
> +
> +		return PTR_ERR(dev->regmap);
> +	}
> +
> +	ret = clk_prepare_enable(dev->bus_clk);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to enable bus clock\n");
> +
> +		return ret;
> +	}

Do you need to keep the bus clock enabled all the time? Usually, for
the SoCs that have a reset line, you only need it to read / write to
the registers, not to have the controller actually running.

If you don't, then regmap_init_mmio_clk will take care of that for
you.

> +	clk_set_rate(dev->mod_clk, 300000000);
> +
> +	ret = clk_prepare_enable(dev->mod_clk);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to enable mod clock\n");
> +
> +		goto err_bus_clk;
> +	}
> +
> +	ret = clk_prepare_enable(dev->ram_clk);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to enable ram clock\n");
> +
> +		goto err_mod_clk;
> +	}
> +
> +	ret = reset_control_reset(dev->rstc);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to apply reset\n");
> +
> +		goto err_ram_clk;
> +	}

This could be moved to a runtime_pm hook, with get_sync called in the
open. That way you won't leave the device powered on if it's unused.

> +struct deinterlace_dev {
> +	struct v4l2_device	v4l2_dev;
> +	struct video_device	vfd;
> +	struct device		*dev;
> +	struct v4l2_m2m_dev	*m2m_dev;
> +
> +	/* Device file mutex */
> +	struct mutex		dev_mutex;
> +
> +	void __iomem		*base;
> +	struct regmap		*regmap;

Do you need to store the base address in that structure if you're
using the regmap?

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
