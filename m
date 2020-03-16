Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5CE1863C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwAo7CETT10R9stJa56HoWnym5xjz510LL+FiLfLyh8=; b=Jep5KoP+UHz9hX
	delfGPZed4iYqi/2thobBH6d3rgqLjcnNwbGocJ0lNPWhaZLp9Ds9JtLgK2xx9iw2ATRgwcD/O+Xp
	5YhBEf/yfUo5aJz0B7ScTEuQWKTMPkdsLwVS30+WK8oygX+EjZ9ar9h41b6xGNF8DnmxWRknXWbvw
	k7QOYllP3zQZACFM+XhgkXh7hrHsFt17hv2rFFboXfdUtsZeUq2BqFhnBrmOgulZ6of3LFy48TFHf
	4I+i/lcEHmrJCqhCD3DPEOnLlO6x7SsUTnOTnLAo2sk7z3k1yc7FwxdNN/LXN037HMjVhqJHRAXwQ
	NnWvQx+B1DsGpyQYZP1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDga5-0007Hy-DO; Mon, 16 Mar 2020 03:38:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDgZr-0007HY-5y
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:38:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CAEE205ED;
 Mon, 16 Mar 2020 03:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584329886;
 bh=0VZ0auaUnnxnmEvkvSQZVjExN3L/Ybt8ODLBIb6CQ/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vE7+fh6ob4BmhTho9ZwlDoDnDIGReEj1f07eRH4bog7bDD6dIFkrc98DP7R5iGq7g
 07MKoTtoCemvU4U+BklAP5n/9n0R78Ff8PMkEMgXvjzArTIxkaEs7ujgutpLOzD20r
 9Ksj744AXEEe5vg1xLW2iCAyvvoIeZrBqJX0rU2s=
Date: Mon, 16 Mar 2020 11:37:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 2/7] firmware: imx: add COMPILE_TEST support
Message-ID: <20200316033752.GF17221@dragon>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <1583714300-19085-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583714300-19085-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_203807_248547_D17F59D4 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-rtc@vger.kernel.org,
 robh@kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 daniel.lezcano@linaro.org, krzk@kernel.org, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, rui.zhang@intel.com, ronald@innovation.ch,
 linux@roeck-us.net, linux-watchdog@vger.kernel.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 a.zummo@towertech.it, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 08:38:15AM +0800, Anson Huang wrote:
> Add COMPILE_TEST support to i.MX SCU drivers for better compile
> testing coverage.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  drivers/firmware/imx/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
> index 1d2e5b8..116707a 100644
> --- a/drivers/firmware/imx/Kconfig
> +++ b/drivers/firmware/imx/Kconfig
> @@ -12,7 +12,7 @@ config IMX_DSP
>  
>  config IMX_SCU
>  	bool "IMX SCU Protocol driver"
> -	depends on IMX_MBOX
> +	depends on IMX_MBOX || COMPILE_TEST
>  	help
>  	  The System Controller Firmware (SCFW) is a low-level system function
>  	  which runs on a dedicated Cortex-M core to provide power, clock, and
> @@ -24,6 +24,6 @@ config IMX_SCU
>  
>  config IMX_SCU_PD
>  	bool "IMX SCU Power Domain driver"
> -	depends on IMX_SCU
> +	depends on IMX_SCU || COMPILE_TEST

Just reminded by Peng, as we go without adding stubs for !IMX_SCU, any
driver depending on IMX_SCU shouldn't have COMPILE_TEST.  I fixed it up
by dropping COMPILE_TEST from IMX_SCU_PD.

Shawn

>  	help
>  	  The System Controller Firmware (SCFW) based power domain driver.
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
