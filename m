Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9614151A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 20:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ba2K5MlQcFmh2d8+tm5ZhnaaZ7nK7bEkgDMiL3pxCPk=; b=XMzfQoTTMWrfHy
	7T5VrNFkGEazltfy1ywUEX2b7p2INVi9fyzIfG4CGHW3rUFhsjQ9f0TsrZJr6lpug7Z9jJR1p4ML/
	/+U87gaN7tdn8n3f/CBIe1FVZa4apHKZiFRNeGAOsKJXOpQ6OJaG/3lmL46FSY28sR8oD1Nycu6Cp
	qUD/0SfSekPjdJy6k4D7pm870OMT1JdzRj4xlBiFY9gcqAKMFs/DlPlz2mEvPCWFx0v4C2t3ElCnw
	xU0lxsgO0Y1VUf/NpEvCUKRwax+HwO1A6QNTHJLTESAoZIjtk3BLC33iHXpjYaZpo707pAkHTc02I
	yjpP4DnTA6+tBLLNjcwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTdJ-0007h6-FS; Mon, 24 Jun 2019 18:24:01 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTd9-0007fd-8Q
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 18:23:53 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2B0DC1C0005;
 Mon, 24 Jun 2019 18:23:34 +0000 (UTC)
Date: Mon, 24 Jun 2019 20:23:33 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v4 08/11] thermal: sun8i: support ahb clocks
Message-ID: <20190624182333.di7avywtdvzwukms@flea>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <20190623164206.7467-9-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623164206.7467-9-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_112351_467166_12402953 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, mchehab+samsung@kernel.org,
 rui.zhang@intel.com, paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 12:42:03PM -0400, Yangtao Li wrote:
> H3 has extra clock, so introduce something in ths_thermal_chip/ths_device
> and adds the process of the clock.
>
> This is pre-work for supprt it.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> index ed1c19bb27cf..04f53ffb6a14 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -54,6 +54,7 @@ struct tsensor {
>  };
>
>  struct ths_thermal_chip {
> +	bool            has_ahb_clk;
>  	int		sensor_num;
>  	int		offset;
>  	int		scale;
> @@ -69,6 +70,7 @@ struct ths_device {
>  	struct regmap				*regmap;
>  	struct reset_control			*reset;
>  	struct clk				*bus_clk;
> +	struct clk                              *ahb_clk;

Hmm, thinking a bit about this, the name of those two clocks doesn't
make sense. AHB is the bus being used to access that device, so the
bus clock is the AHB clock.

What is that clock being used for?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
