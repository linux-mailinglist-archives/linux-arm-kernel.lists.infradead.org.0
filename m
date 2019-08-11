Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBAF893BC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 22:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6GSfMTctukp5NT4M+vNPxVxmvEOYQ5Ne7e10aw6+lk=; b=nvx+xDxJfP4Hdg
	lMl8KEXc/LvslOtdTLj4bcqsYUIaoF6QGXVBBEB+iSU4spGw0GyQyrmU50VF3zMnGlS2hmI3O5h/v
	XBxkL0wqnfvt2hIsD0REzVPwW/YP3qc+nwThB5mJUui/3eMTvb3F+Cakgb05yIgCT00Xd+40XR0Aj
	QAUzynizbIXNyZIliajHjxTGHBGTi/pC+A2f8UcUHHDLVGFDOBlTGqgVJoxImOuwl9t6S35H5g985
	Otm87dBxd+tIl1pNtP5SkRJBzDWlpcniAo6fYxn4bXrcaEHQGcnJXMeI6KTOqc29CN1OXtbz3ZZ92
	uF51d3+p2mEC+v8sqRmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuhh-0000N8-4x; Sun, 11 Aug 2019 20:44:37 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuhZ-0000Bt-Jg; Sun, 11 Aug 2019 20:44:31 +0000
Received: from [192.168.1.162] ([37.4.249.106]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MzQwa-1iAAHw3YDw-00vOkk; Sun, 11 Aug 2019 22:43:44 +0200
Subject: Re: [PATCH 07/18] clk: bcm2835: Introduce SoC specific clock
 registration
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-8-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <25c31fa6-6190-2742-07ab-4b34c3e08947@i2se.com>
Date: Sun, 11 Aug 2019 22:43:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563774880-8061-8-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:2TDJV0pnWxTMmEw/5R2DuGLJse/EyfjRUa75D6a2EIAubLjCj8e
 y9C6qZ4NU5SJxkTPPV9pSiT9jvBHhbdbcmXTwtqmS4boOV/S3bqjqYttSmRWm+zqHDXaSY2
 VAdWwXkT4BYt+0xBcjbHv/TAcmtFn9HVAJZdygX8tqbKAs7jB4O6IoLUecuLq5b0+HeVhrH
 n0bptZ47g/ADqOtwZQphA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fqYs4fAxwEg=:zEOKBmVNLKaxWqvxga+DW1
 P4XlZ0Ms4fKu/fAiItFSO0xXagaME+2btpIufZtTlsBnyJ0JXEWiJR+nGgQmgRg9Vqu+kyzLn
 VmUyxK/632F2VT+f9OGIRjN2VsGpdF56WsIQUdAGxzz33ShcLBQmgPrC9nmu1dmYbYND4mRR6
 oL/aUR4vhmp3zUOAnywqZtxxxIvqCjOIfRSHr/NyepKo0H8hXIBWnfMCRSv37XGl7pt9fk4Dk
 8KY6S/NSnbXxPIdnuYqcI/WcX8ICkg1f0FxWiZ0Z7+sFjyazK+L+bZQ3TZMUQxIja8IaJxdV0
 AlVSxzMiaQ5T3OAdVDcIvSuEayvJAB7ps7QeYQhd1CrnXT54lf+l7IRJkT+RucJsW8QsnZaYg
 yiL/Q4q36TFpwNDq0ZGW0fvlw7G1XBiVbO7ZqBQkGJFmfPkoOitLGu+RCbNc7mKWCAT3D6dCU
 8e0pq1A5zNBzRA/cg5aFNjAfNWm9/Q6mwnSAlU8Vp0j8dfQ5tIXQIP2ZhWZ9nhShWQpOGhEYd
 hOLkv3p4xPoRZ2m6vXZvvUengCXGKvVDOhYjo78CsZ3d4RrxIGw+yuyFfmJJVFh8+nv5oXpUJ
 ITpztiRGh9FijcOReDtbpQauniMmA9TT+ExhbY81VdN/4OrykZ6b31xa559MPtD5E/FGIF9LX
 R51X3CoNs54yqrDr2rd4dctvP78on59VmhVZAiQk4MIbLfyAJxNML/uW82oLgwt4fUGL4sIEm
 tRdqIiHEoFMmOyky72PqD3ZuStqZw3zj+dvGLQOds/qHKwXJB71YFZTXMmA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_134429_945712_93B5FC30 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 22.07.19 um 07:54 schrieb Stefan Wahren:
> In order to support SoC specific clocks (e.g. emmc2 for BCM2711), we
> extend the description with a SoC support flag. This approach avoids long
> and mostly redundant lists of clock IDs.
>
> Suggested-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  drivers/clk/bcm/clk-bcm2835.c | 103 +++++++++++++++++++++++++++++++++++-------
>  1 file changed, 86 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 867ae3c..3231b76 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -31,7 +31,7 @@
>  #include <linux/delay.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> -#include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>  #include <dt-bindings/clock/bcm2835.h>
> @@ -289,6 +289,9 @@
>  #define LOCK_TIMEOUT_NS		100000000
>  #define BCM2835_MAX_FB_RATE	1750000000u
>
> +#define SOC_BCM2835		BIT(0)
> +#define SOC_ALL			(SOC_BCM2835)
> +
...
>  		.cm_reg = CM_PLLD,
> @@ -1775,6 +1805,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * It is in the HDMI power domain.
>  	 */
>  	[BCM2835_PLLH]		= REGISTER_PLL(
> +		SOC_ALL,
>  		"pllh",
>  		.cm_ctrl_reg = CM_PLLH,
>  		.a2w_ctrl_reg = A2W_PLLH_CTRL,
> @@ -1789,6 +1820,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.max_rate = 3000000000u,
>  		.max_fb_rate = BCM2835_MAX_FB_RATE),
>  	[BCM2835_PLLH_RCAL]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllh_rcal",
>  		.source_pll = "pllh",
>  		.cm_reg = CM_PLLH,
> @@ -1798,6 +1830,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 10,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLH_AUX]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllh_aux",
>  		.source_pll = "pllh",
>  		.cm_reg = CM_PLLH,
> @@ -1807,6 +1840,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLH_PIX]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllh_pix",
>  		.source_pll = "pllh",
>  		.cm_reg = CM_PLLH,
i was informed that at least all PLLH related clocks are BCM2835
specific. So please don't apply this patch. I will send a fixed version
soon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
