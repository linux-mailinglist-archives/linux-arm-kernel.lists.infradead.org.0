Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023D69EACD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+edmv61gaOyrXea6JwmHFVZawij0fStfWyLf/3hoHw=; b=jsYp/tDsNk6qcg
	UCh3kKayw71yoPlx0AmrwIn5L52XMawwx79rNJoqJuBcpLVGa9/4k9k4G6Nwi4gjh7GE7VZ7dcsvh
	v2H5lDLGG8uydoBmU1cX+SrxlChJdbYMAYHIFexFZp2gGDOxROusvG8uFr2rvEKM+yyLUnpz0c6hj
	QxhsMwN7Ke6IAzrnGjFGtHK+DucvHd6Wv+ysL1lL4YQKJ4f7R64VrJLFxk0HM97ISrrpnp6ZXEEvu
	tpFa0vAU1CTw72LMlf3ABmcMQae0X7jPc9YjziHMTBWhl4acW2qxm/rSwBiyUQ8I4uwX3fcyGaL6t
	PCG6B3OtZ1ZIZWU5yM/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cLF-0002ns-EQ; Tue, 27 Aug 2019 14:21:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cL2-0002mp-Kp
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:20:50 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i2cKp-0002Db-JU; Tue, 27 Aug 2019 16:20:35 +0200
Message-ID: <1566915632.4102.19.camel@pengutronix.de>
Subject: Re: [PATCHv6] drivers/amba: add reset control to amba bus probe
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>, linux-kernel@vger.kernel.org
Date: Tue, 27 Aug 2019 16:20:32 +0200
In-Reply-To: <20190827141153.20254-1-dinguyen@kernel.org>
References: <20190827141153.20254-1-dinguyen@kernel.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072048_684074_296839F7 
X-CRM114-Status: GOOD (  22.18  )
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
Cc: devicetree@vger.kernel.org, daniel.thompson@linaro.org, tony.luck@intel.com,
 manivannan.sadhasivam@linaro.org, keescook@chromium.org, robh@kernel.org,
 linus.walleij@linaro.org, anton@enomsg.org, linux@armlinux.org.uk,
 ccross@android.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 09:11 -0500, Dinh Nguyen wrote:
> The primecell controller on some SoCs, i.e. SoCFPGA, is held in reset by
> default. Until recently, the DMA controller was brought out of reset by the
> bootloader(i.e. U-Boot). But a recent change in U-Boot, the peripherals
> that are not used are held in reset and are left to Linux to bring them
> out of reset.
> 
> Add a mechanism for getting the reset property and de-assert the primecell
> module from reset if found. This is a not a hard fail if the reset properti
> is not present in the device tree node, so the driver will continue to
> probe.
> 
> Because there are different variants of the controller that may have
> multiple reset signals, the code will find all reset(s) specified and
> de-assert them.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v6: remove the need to reset_control_get_count as
>     of_reset_control_array_get_optional_shared is already doing that
> v5: use of_reset_control_array_get_optional_shared()
> v4: cleaned up indentation in loop
>     fix up a few checkpatch warnings
>     add Reviewed-by:
> v3: add a reset_control_put()
>     add error handling
> v2: move reset control to bus code
>     find all reset properties and de-assert them
> ---
>  drivers/amba/bus.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index 100e798a5c82..f39f075abff9 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -18,6 +18,7 @@
>  #include <linux/limits.h>
>  #include <linux/clk/clk-conf.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
>  
>  #include <asm/irq.h>
>  
> @@ -401,6 +402,19 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>  	ret = amba_get_enable_pclk(dev);
>  	if (ret == 0) {
>  		u32 pid, cid;
> +		struct reset_control *rstc;
> +
> +		/*
> +		 * Find reset control(s) of the amba bus and de-assert them.
> +		 */
> +		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
> +		if (IS_ERR(rstc)) {
> +			if (PTR_ERR(rstc) != -EPROBE_DEFER)
> +				dev_err(&dev->dev, "Can't get amba reset!\n");
> +			return PTR_ERR(rstc);
> +		}
> +		reset_control_deassert(rstc);
> +		reset_control_put(rstc);
>  
>  		/*
>  		 * Read pid and cid based on size of resource

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
