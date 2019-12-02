Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C78510EDC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 18:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRICqat2wjKitPmd4AMLzYAj5BswMTvMeLICsPlQKr8=; b=P/hnhf3lKHpIG8
	a5m1oNH6ZfH0U8zG7ZhAJJJDunyz+Sf9z4rF+LKvSfgmoOmY2sHLDISUJMBeYHlzjPgCopEo5mORX
	PjUDraXtAAtdSjNloKqE7dxPPTjssR2NQpeFju86Dt/GVFnhnltUmiq2iDcrKta4oHlukEGd9ffnd
	KvMe679Qzd/rYZoihIbbZGKUZEdU9fCbTej7y+Fz1ezwpSBRN8x/wVeY2enfnGVoIuqNDjQg7MxMz
	EeZD88I9pfMywTbWyfFwUJrO3ViidReEWFZ7OpUMlbGhJ8iIB82Fgsdbb5peqRvSDTfiRDPFyFdAw
	6NsFL3a2ujgiqcLV9FFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibp7p-0001HO-04; Mon, 02 Dec 2019 17:04:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibp7h-0001Gw-6i
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 17:04:34 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ibp7Q-0007Zx-2p; Mon, 02 Dec 2019 18:04:16 +0100
Message-ID: <cd0fae1a6b88a37e034876b53b350e79f58c654f.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] dt-bindings: clock: Update Hisilicon reset doc
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jun Nie <jun.nie@linaro.org>, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, xuwei5@hisilicon.com, 
 opensource@jilayne.com, swinslow@gmail.com, allison@lohutok.net, 
 yuehaibing@huawei.com, tglx@linutronix.de, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 xuejiancheng@hisilicon.com
Date: Mon, 02 Dec 2019 18:04:11 +0100
In-Reply-To: <20191202144524.5391-2-jun.nie@linaro.org>
References: <20191202144524.5391-1-jun.nie@linaro.org>
 <20191202144524.5391-2-jun.nie@linaro.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_090433_246947_F39B8A31 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jun,

I have a few questions and comments about these patches. I notice that
the changed device trees only use the default setting. Are these new
features something that is required for the present SoCs, or is this in
preparation for a new SoC?

On Mon, 2019-12-02 at 22:45 +0800, Jun Nie wrote:
> Document the update of Hisilicon reset operation extension.
> 
> Signed-off-by: Jun Nie <jun.nie@linaro.org>
> ---
>  .../devicetree/bindings/clock/hisi-crg.txt    | 12 ++++----
>  include/dt-bindings/reset/hisilicon-resets.h  | 28 +++++++++++++++++++
>  2 files changed, 35 insertions(+), 5 deletions(-)
>  create mode 100644 include/dt-bindings/reset/hisilicon-resets.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/hisi-crg.txt b/Documentation/devicetree/bindings/clock/hisi-crg.txt
> index cc60b3d423f3..fd8b0a964806 100644
> --- a/Documentation/devicetree/bindings/clock/hisi-crg.txt
> +++ b/Documentation/devicetree/bindings/clock/hisi-crg.txt
> @@ -26,19 +26,21 @@ to specify the clock which they consume.
>  
>  All these identifier could be found in <dt-bindings/clock/hi3519-clock.h>.
>  
> -- #reset-cells: should be 2.
> +- #reset-cells: should be 3.
>  
>  A reset signal can be controlled by writing a bit register in the CRG module.
> -The reset specifier consists of two cells. The first cell represents the
> +The reset specifier consists of three cells. The first cell represents the
>  register offset relative to the base address. The second cell represents the
> -bit index in the register.
> +bit index in the register. The third represent the flags to operation type.
> +
> +All reset flags could be found in <dt-bindings/reset/hisilicon-resets.h>
>  
>  Example: CRG nodes
>  CRG: clock-reset-controller@12010000 {
>  	compatible = "hisilicon,hi3519-crg";
>  	reg = <0x12010000 0x10000>;
>  	#clock-cells = <1>;
> -	#reset-cells = <2>;
> +	#reset-cells = <3>;
>  };
>  
>  Example: consumer nodes
> @@ -46,5 +48,5 @@ i2c0: i2c@12110000 {
>  	compatible = "hisilicon,hi3519-i2c";
>  	reg = <0x12110000 0x1000>;
>  	clocks = <&CRG HI3519_I2C0_RST>;
> -	resets = <&CRG 0xe4 0>;
> +	resets = <&CRG 0xe4 0 (HISI_ASSERT_SET | HISI_DEASSERT_CLEAR)>;
>  };
> diff --git a/include/dt-bindings/reset/hisilicon-resets.h b/include/dt-bindings/reset/hisilicon-resets.h
> new file mode 100644
> index 000000000000..983e42a0c318
> --- /dev/null
> +++ b/include/dt-bindings/reset/hisilicon-resets.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Hisilicon Reset definitions
> + *
> + * Copyright (c) 2019 HiSilicon Technologies Co., Ltd.
> + */
> +
> +#ifndef __DT_BINDINGS_RESET_HISILICON_H__
> +#define __DT_BINDINGS_RESET_HISILICON_H__
> +
> +/*
> + * The reset does not support the feature and corresponding
> + * values are not valid
> + */
> +#define HISI_ASSERT_NONE		(1 << 0)
> +#define HISI_DEASSERT_NONE		(1 << 1)

What is the purpose of these two? Surely a reset control that does
nothing is not useful?

> +
> +/* When set this function is activated by polling/setting/clearing this bit */
> +#define HISI_ASSERT_SET		(1 << 2)
> +#define HISI_DEASSERT_SET		(1 << 3)

> +#define HISI_ASSERT_CLEAR		(0 << 4)
> +#define HISI_DEASSERT_CLEAR		(0 << 5)
> +#define HISI_ASSERT_POLL		(0 << 6)
> +#define HISI_DEASSERT_POLL		(0 << 7)

These are all zero, checking for them with an & operation in the code
always returns false.

> +
> +#define HISI_RESET_DEFAULT		(HISI_ASSERT_SET | HISI_DEASSERT_CLEAR)
> +
> +#endif

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
