Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A372A12438D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 10:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DJtH/MTupYWjZ8OLaw1pA056EwiQgYYb+Lc6d6EFyKs=; b=bf3mwcFGPkxWmYhqlbhzE70Qi
	HApk1NXr382736MoE0iAPO822LLvyz/OBYiL5QW0SO99qa9d396+BREu/0Sbuh682NpNmdCVQx8xh
	uRA0lFbT997T5YkEduHYWhCC2URReVjvVu8ewF6UBQMJ2MLbLeplRfHbJl1aaZp2EVdHysNDOk0Rr
	hK43R11qjBCtlelqnh0nq2fUKeBKnhfkJ/IRefDPkZrwEA4AG8c8liiybTno/ET+g0kAdsF5phDWM
	LDD+Fd5IVlvu7vF24ZDQP285XG99mONyfBlla3MAZ/8Nh9aypPQIGOrJSFGFZPxMMo+JbeP94cDDK
	v6vIAqlmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVtd-0000JC-3z; Wed, 18 Dec 2019 09:45:33 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVtU-0000IN-SZ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 09:45:26 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihVtN-0004U6-2R; Wed, 18 Dec 2019 10:45:17 +0100
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX interrupt
 multiplexer
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 09:45:16 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1576653615-27954-2-git-send-email-qiangqing.zhang@nxp.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576653615-27954-2-git-send-email-qiangqing.zhang@nxp.com>
Message-ID: <254925e345493019c3e1e558b37e46f2@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: qiangqing.zhang@nxp.com, tglx@linutronix.de,
 jason@lakedaemon.net, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, shengjiu.wang@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fugang.duan@nxp.com,
 aisheng.dong@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_014525_065118_9D5F5D89 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, fugang.duan@nxp.com,
 jason@lakedaemon.net, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, aisheng.dong@nxp.com, tglx@linutronix.de,
 shawnguo@kernel.org, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-18 07:20, Joakim Zhang wrote:
> This patch adds the DT bindings for the NXP INTMUX interrupt 
> multiplexer
> found in the i.MX8 family SoCs.
>
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  .../interrupt-controller/fsl,intmux.txt       | 34 
> +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
>
> diff --git
> 
> a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
> 
> b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
> new file mode 100644
> index 000000000000..be3c6848f36c
> --- /dev/null
> +++ 
> b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
> @@ -0,0 +1,34 @@
> +Freescale INTMUX interrupt multiplexer
> +
> +Required properties:
> +
> +- compatible: Should be:
> +	- "fsl,imx-intmux"
> +- reg: Physical base address and size of registers.
> +- interrupts: Should contain the parent interrupt lines (up to 8) 
> used to
> +  multiplex the input interrupts.
> +- clocks: Should contain one clock for entry in clock-names.
> +- clock-names:
> +   - "ipg": main logic clock
> +- interrupt-controller: Identifies the node as an interrupt 
> controller.
> +- #interrupt-cells: Specifies the number of cells needed to encode 
> an
> +  interrupt source. The value must be 1.
> +
> +Optional properties:
> +
> +- fsl,intmux_chans: The number of channels used for interrupt 
> source. The
> +  Maximum value is 8.
> +
> +Example:
> +
> +	intmux@37400000 {
> +		compatible = "fsl,imx-intmux";
> +		reg = <0x37400000 0x1000>;
> +		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&clk IMX8QM_CM40_IPG_CLK>;
> +		clock-names = "ipg";
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		fsl,intmux_chans = <1>;
> +	};
> +

What I don't understand is how the interrupt descriptor can indicate
which channel it is multiplexed on. The driver doesn't makes this
clear either, and I strongly suspect that it was never tested with
more than a single channel...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
