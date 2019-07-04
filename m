Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862FE5F503
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SjxJp18r3o8cN40pVmrOYsVMBBeZOqiMUV3T+O6RRM=; b=UycygqH5y8Vlu9
	q6fZ99jmmjgdfeTDL0tvnyHv3WOSDxcNnqMbsIKGd1AZ4qazD6Qp4Fe/3KhzC/t6MT+Tz2aImf1DM
	Xtndno7Lx3y6pe75OmeO7cPMMGVK/OnpNTDn8hDnL8yvjgEfTuSBGjI4TmC14DOjCe2++3DQImyeQ
	FuX9Zdl0gOdWHDIpc91uG/sGZZjC7vXFqWtQCHyCjSKvI325VeeMhEnRwT82mAuQ9ZjTLJOrwj2pz
	bJQo+dYd6yVObmorCEIEAslPVEpQPTtS8sBndChZXh2bxS2k2slVDH3vMOcH3KI59qpdpe7ZYiR94
	2BDX+7RYy5gfr+O+HXsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixWX-00027A-8R; Thu, 04 Jul 2019 08:55:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixVN-0001Up-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:54:15 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hixVF-0004h8-53; Thu, 04 Jul 2019 10:54:05 +0200
Message-ID: <1562230444.6641.2.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] reset: imx7: Add support for i.MX8MM SoC
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson.Huang@nxp.com, robh+dt@kernel.org, mark.rutland@arm.com, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org, 
 daniel.baluta@nxp.com, ping.bai@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 04 Jul 2019 10:54:04 +0200
In-Reply-To: <20190701093944.5540-1-Anson.Huang@nxp.com>
References: <20190701093944.5540-1-Anson.Huang@nxp.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015413_197184_FC52F640 
X-CRM114-Status: GOOD (  19.71  )
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Mon, 2019-07-01 at 17:39 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM SoC has a subset of i.MX8MQ IP block variant, it can reuse
> the i.MX8MQ reset controller driver and just skip those non-existing
> IP blocks, add support for i.MX8MM SoC reset control.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/reset/reset-imx7.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
> index 3ecd770..941131f 100644
> --- a/drivers/reset/reset-imx7.c
> +++ b/drivers/reset/reset-imx7.c
> @@ -207,6 +207,26 @@ static int imx8mq_reset_set(struct reset_controller_dev *rcdev,
>  	const unsigned int bit = imx7src->signals[id].bit;
>  	unsigned int value = assert ? bit : 0;
>  
> +	if (of_machine_is_compatible("fsl,imx8mm")) {

This should be checked once during probe, not in every reset_set, if
this check has to be made at all. On i.MX8MM these unused reset controls
are not going to be hooked up via phandle, so this function should never
be called with the values that are filtered out here anyway.
And in case somebody makes an error in the device tree, does writing 1
to the reserved bits on i.MX8MM have any negative side effects at all?
Or are these bits just not hooked up? If this is no problem, I assume
this patch is not needed at all.

The correct way to protect against DT writers hooking up the non-
existing reset lines would be to replace rcdev.of_xlate with a version
that returns -EINVAL for them on i.MX8MM. Also in that case I'd check
the reset-controller compatible, not the machine compatible.

> +		switch (id) {
> +		case IMX8MQ_RESET_HDMI_PHY_APB_RESET:
> +		case IMX8MQ_RESET_PCIEPHY2: /* fallthrough */
> +		case IMX8MQ_RESET_PCIEPHY2_PERST: /* fallthrough */
> +		case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN: /* fallthrough */
> +		case IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF: /* fallthrough */
> +		case IMX8MQ_RESET_MIPI_CSI1_CORE_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_MIPI_CSI1_ESC_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_MIPI_CSI2_CORE_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_MIPI_CSI2_ESC_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_DDRC2_PHY_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_DDRC2_CORE_RESET: /* fallthrough */
> +		case IMX8MQ_RESET_DDRC2_PRST: /* fallthrough */

I think it would make sense to add IMX8MM_RESET_* defines for all but
these, to avoid confusion when reading the imx8mm.dtsi

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
