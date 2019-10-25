Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9F6E437A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyoBtHTRD1lQaQAFfvumUf9w4wR8e8zTnNDcQpYMyZE=; b=GZ1mSulCsOJqto
	BY8ZucJMQmcRwDrTy6wj9bZpXgKKZoVj60A7NX0cWDBvpooM6xZ27h0kRzI92aLaqPHXWFGmyNiWO
	8Uv+O7sqHVtD6+1MKlqoZtAioWJrg8sfL05pkPCwxs6AWelPqDc+enXraBkAPjkPgDTHOn3m9W3hL
	ZQ2xOtbXgpyTlkX0xghvRyoI2loFUMaBzl3zJKyYIdjRYdclsioiiLclgZxSdtIyQuF3OEUu7ic7v
	tSu5z0i5edP9M6CGlmYxUjW/5nXBWn/R3FgaLrIrUKvOSI8k1qFQE2mSIvljwjb3zvuflNrsbeNyu
	WQxL0Q8zzMlLDrxh1tFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNsto-0001EJ-W9; Fri, 25 Oct 2019 06:16:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNstW-0001DM-8d
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:16:24 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B89C21929;
 Fri, 25 Oct 2019 06:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571984177;
 bh=eJMeRmKbAhpuRVElYSEUKUYFLQ3LDO7eMjTAJEVPMNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m8gkZCXhyRGc36ix3E9kgNWUk6eeapcnqP7EERuoaZvMBOfmJJXA6KUYA2ug9ChPV
 5DRUL1zqW4qduHsXtJnkr1SAHKMfcoyHXIOFbqR374Rmhdr3Gcn+XoC4bB/bm9fbJK
 4++H8v5b9Qji2Nft+4UuRItIiVDg73oiDrI+5eb8=
Date: Fri, 25 Oct 2019 14:16:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer
 interrupts
Message-ID: <20191025061601.GE3208@dragon>
References: <20191009204343.9316-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009204343.9316-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_231623_098724_B54BEA22 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, leonard.crestez@nxp.com,
 linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

@Leonard, comment?

Shawn

On Wed, Oct 09, 2019 at 05:43:43PM -0300, Fabio Estevam wrote:
> Since commit a211b8c55f3c ("ARM: dts: imx6qdl-sabreauto: Add sensors")
> a storm of accelerometer interrupts is seen:
> 
> [  114.211283] irq 260: nobody cared (try booting with the "irqpoll" option)
> [  114.218108] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.3.4 #1
> [  114.223960] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [  114.230531] [<c0112858>] (unwind_backtrace) from [<c010cdc8>] (show_stack+0x10/0x14)
> [  114.238301] [<c010cdc8>] (show_stack) from [<c0c1aa1c>] (dump_stack+0xd8/0x110)
> [  114.245644] [<c0c1aa1c>] (dump_stack) from [<c0193594>] (__report_bad_irq+0x30/0xc0)
> [  114.253417] [<c0193594>] (__report_bad_irq) from [<c01933ac>] (note_interrupt+0x108/0x298)
> [  114.261707] [<c01933ac>] (note_interrupt) from [<c018ffe4>] (handle_irq_event_percpu+0x70/0x80)
> [  114.270433] [<c018ffe4>] (handle_irq_event_percpu) from [<c019002c>] (handle_irq_event+0x38/0x5c)
> [  114.279326] [<c019002c>] (handle_irq_event) from [<c019438c>] (handle_level_irq+0xc8/0x154)
> [  114.287701] [<c019438c>] (handle_level_irq) from [<c018eda0>] (generic_handle_irq+0x20/0x34)
> [  114.296166] [<c018eda0>] (generic_handle_irq) from [<c0534214>] (mxc_gpio_irq_handler+0x30/0xf0)
> [  114.304975] [<c0534214>] (mxc_gpio_irq_handler) from [<c0534334>] (mx3_gpio_irq_handler+0x60/0xb0)
> [  114.313955] [<c0534334>] (mx3_gpio_irq_handler) from [<c018eda0>] (generic_handle_irq+0x20/0x34)
> [  114.322762] [<c018eda0>] (generic_handle_irq) from [<c018f3ac>] (__handle_domain_irq+0x64/0xe0)
> [  114.331485] [<c018f3ac>] (__handle_domain_irq) from [<c05215a8>] (gic_handle_irq+0x4c/0xa8)
> [  114.339862] [<c05215a8>] (gic_handle_irq) from [<c0101a70>] (__irq_svc+0x70/0x98)
> [  114.347361] Exception stack(0xc1301ec0 to 0xc1301f08)
> [  114.352435] 1ec0: 00000001 00000006 00000000 c130c340 00000001 c130f688 9785636d c13ea2e8
> [  114.360635] 1ee0: 9784907d 0000001a eaf99d78 0000001a 00000000 c1301f10 c0182b00 c0878de4
> [  114.368830] 1f00: 20000013 ffffffff
> [  114.372349] [<c0101a70>] (__irq_svc) from [<c0878de4>] (cpuidle_enter_state+0x168/0x5f4)
> [  114.380464] [<c0878de4>] (cpuidle_enter_state) from [<c08792ac>] (cpuidle_enter+0x28/0x38)
> [  114.388751] [<c08792ac>] (cpuidle_enter) from [<c015ef9c>] (do_idle+0x224/0x2a8)
> [  114.396168] [<c015ef9c>] (do_idle) from [<c015f3b8>] (cpu_startup_entry+0x18/0x20)
> [  114.403765] [<c015f3b8>] (cpu_startup_entry) from [<c1200e54>] (start_kernel+0x43c/0x500)
> [  114.411958] handlers:
> [  114.414302] [<a01028b8>] irq_default_primary_handler threaded [<fd7a3b08>] mma8452_interrupt
> [  114.422974] Disabling IRQ #260
> 
> # cat /proc/interrupts 
>            CPU0       CPU1       
> ....
> 260:     100001          0  gpio-mxc  31 Level     mma8451
> 
> The MMA8451 interrupt triggers as low level, so the GPIO6_IO31 pin
> needs to activate its pull up, otherwise it will stay always at low level
> generating multiple interrupts.
> 
> The current device tree does not configure the IOMUX for this pin, so
> it uses whathever comes configured from the bootloader.
> 
> The IOMUXC_SW_PAD_CTL_PAD_EIM_BCLK register value comes as 0x8000 from
> the bootloader, which has PKE bit cleared, hence disabling the
> pull-up.
> 
> Instead of relying on a previous configuration from the bootloader,
> configure the GPIO6_IO31 pin with pull-up enabled in order to fix
> this problem.
> 
> Fixes: a211b8c55f3c ("ARM: dts: imx6qdl-sabreauto: Add sensors")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx6qdl-sabreauto.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> index f3404dd10537..cf628465cd0a 100644
> --- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> @@ -230,6 +230,8 @@
>  			accelerometer@1c {
>  				compatible = "fsl,mma8451";
>  				reg = <0x1c>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&pinctrl_mma8451_int>;
>  				interrupt-parent = <&gpio6>;
>  				interrupts = <31 IRQ_TYPE_LEVEL_LOW>;
>  			};
> @@ -628,6 +630,12 @@
>  			>;
>  		};
>  
> +		pinctrl_mma8451_int: mma8451intgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0xb0b1
> +			>;
> +		};
> +
>  		pinctrl_pwm3: pwm1grp {
>  			fsl,pins = <
>  				MX6QDL_PAD_SD4_DAT1__PWM3_OUT		0x1b0b1
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
