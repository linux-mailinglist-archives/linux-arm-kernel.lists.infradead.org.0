Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD89E6F7D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 05:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ovc2yymGhKcWV1okkZO1M8uZtfrorhgQy4YHS3/RsQ=; b=AVYmcBgoXfI/n4
	TiCZzipwgPSM8Gu72/rcPYIMQ6ZppYr0dqXD8vnX6DavKB7YpGS4n3qaNf26932SFneyzWmaLHiqb
	9LR0OpDSQnl6d91+sr7Jcqyp+TYJxqay5hqOSxIDWKbFsSTCCg4BI5iFoSksT2274tqdoa/w89bBL
	r5KEBbX7UBc1WbphKX/CpXLWXAPieTz9bQ6KFNYhmkpaurZn80xdie28nLc6VQKHfasSO51D8/sIs
	Pb76WOLBbT9oHS/XLUewuyr76Pv3Oavfdn9exZAa1TJ9HHbUkBPtzFEOtq1/FC31TFtPlW6f2k0N0
	I8RQafu4x7W2zTotkVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpOny-0001VH-Uu; Mon, 22 Jul 2019 03:16:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpOnl-0001Uv-E6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 03:15:50 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FB2D21953;
 Mon, 22 Jul 2019 03:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563765349;
 bh=iHwdsrxcX1l8+hROd7iGKbMdgW9v39P58MFq4E2tEIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qniQws2tjKUSYdRtQdiJFVk6z4kPGNwz+PnxJBcBT2/cETkKr7R74TNXLMg6/sADP
 D8+YqxAcK5x4aCtPbP1gPzKU3fmYv41MYgvZC5fJuYtB/esprxGLD1GO0fmgA0Y/Lp
 +ygQa5xyNV9KIX2L9v3fZIl38Hv1qzVvjXzk63EI=
Date: Mon, 22 Jul 2019 11:15:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V5 3/5] arm64: dts: imx8mm: Add system counter node
Message-ID: <20190722031517.GT3738@dragon>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <20190710063056.35689-3-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710063056.35689-3-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_201549_493982_70C7B573 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 catalin.marinas@arm.com, agx@sigxcpu.org, angus@akkea.ca,
 leonard.crestez@nxp.com, festevam@gmail.com, abel.vesa@nxp.com,
 andrew.smirnov@gmail.com, will@kernel.org, daniel.lezcano@linaro.org,
 linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, tglx@linutronix.de, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 02:30:54PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add i.MX8MM system counter node to enable timer-imx-sysctr
> broadcast timer driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Do I need to wait for patch #1 landing before I apply #3 ~ #5, or can
they be applied independently (no breaking on anything)?

Shawn

> ---
> Changes since V4:
> 	- update the clock info using fixed clock node;
> 	- correct the reg range;
> 	- update the interrupt number as the system counter driver ONLY uses 1 irq now.
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index b5637f8..8cf7f34 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -560,6 +560,14 @@
>  				#pwm-cells = <2>;
>  				status = "disabled";
>  			};
> +
> +			system_counter: timer@306a0000 {
> +				compatible = "nxp,sysctr-timer";
> +				reg = <0x306a0000 0x20000>;
> +				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&osc_24m>;
> +				clock-names = "per";
> +			};
>  		};
>  
>  		aips3: bus@30800000 {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
