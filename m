Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E377842
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 12:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDyM7yhOTvX+ZP/+T7+CFSuZ2ZPq/7r5XhCkubzUKEs=; b=LO5+KBaETGVRbk
	l56IYVP+4eRDl173aBBu2wW5wumdfcUgrH/ly40q3krZv+pZ0bDBpFmVzC0KB/TFfU5mDCF2lInNS
	79leE0G0+ZPL/QvLwXSg3HogZx0ciBtJ3cdep8U2yHbfA3BHQr2PEbEmriyykHafAYwDTwWKfmvYB
	5t7dynk0te0AOSA8BOy1Tc4M2PJ+7yMfRUSbWO1oGNGCZt5S2fLvCndzvgSAYwPveqB2VnIUBUeaI
	wPgoDWWJJvvJ74uUgkMNhZHcnmnVqJqvtqyIaM/ZBHNXo5xvVWHpJWmEe7A64N6UK85bx0yM55fkW
	phvjh03XjioE/c7Of6mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrKDo-0005mz-72; Sat, 27 Jul 2019 10:46:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrKDg-0005md-Ml
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 10:46:34 +0000
Received: from localhost (lfbn-1-17239-195.w86-248.abo.wanadoo.fr
 [86.248.61.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CCAD2081B;
 Sat, 27 Jul 2019 10:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564224392;
 bh=u64zJaHojBkDbTp0t96ojvihtDs1xf7xrWbz931/50Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dqTef61oF6A8Qq8ZY3CYmHsNzAQ2jCkku6FceD6K/72NWyqsEB4UVVGhn0mIUGU3R
 ZAxQ8eo0fCkhjoCwUdSx9Boyng4mDIYwrpTCT8LiyHRJ2f9vivpE5dE+P/c8k8bqL5
 scBgxl4EKPkNXeyrd60WQZyqud4Cs5DZV6z9qV2Q=
Date: Sat, 27 Jul 2019 12:46:28 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Message-ID: <20190727104628.jsdvpxvcpzru75v5@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-4-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_034632_763806_4E582163 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jul 26, 2019 at 08:40:42PM +0200, Jernej Skrabec wrote:
> H6 PWM core needs bus clock to be enabled in order to work.
>
> Add a quirk for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/pwm/pwm-sun4i.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 1b7be8fbde86..7d3ac3f2dc3f 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -72,6 +72,7 @@ static const u32 prescaler_table[] = {
>  };
>
>  struct sun4i_pwm_data {
> +	bool has_bus_clock;
>  	bool has_prescaler_bypass;
>  	bool has_reset;
>  	unsigned int npwm;
> @@ -79,6 +80,7 @@ struct sun4i_pwm_data {
>
>  struct sun4i_pwm_chip {
>  	struct pwm_chip chip;
> +	struct clk *bus_clk;
>  	struct clk *clk;
>  	struct reset_control *rst;
>  	void __iomem *base;
> @@ -382,6 +384,16 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
>  		reset_control_deassert(pwm->rst);
>  	}
>
> +	if (pwm->data->has_bus_clock) {
> +		pwm->bus_clk = devm_clk_get(&pdev->dev, "bus");
> +		if (IS_ERR(pwm->bus_clk)) {
> +			ret = PTR_ERR(pwm->bus_clk);
> +			goto err_bus;
> +		}
> +
> +		clk_prepare_enable(pwm->bus_clk);
> +	}
> +

The patch itself looks fine, but you should clarify which clock is
being used by the old driver.

My guess is that the "new" clock is actually the mod one, while the
old one was both the clock of the register interface (bus) and the
clock of the PWM generation logic (mod).

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
