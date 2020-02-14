Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B4615D7A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPGEBg1PFvn26OjGTsS/BwSAeSQbt2bzsTcV12RIomU=; b=RZqVn4okrhzumJ
	qEsN/kc3ub2SJVa5gp/Lj+G10Z572O/I6OS/Ajz2KiIgYXx1tfMayXQkeDNspxXc7vWpBTt13MF3A
	qqhcbslU1ceLWYbrp2TwZDrve1Nxm+V5K7eJ0OHKWldSNp5wuTcCpJxTNSFvpnCHYZRhDLwHEfsT9
	Iv/FPAz0F7qh5/lnHa0MKDllbbR+FO7D6/+z715LM4vI/vDwhcfjQ3DesD1O/uQ2DpA2E+tQgQiki
	c1BnJUbNAoh02JZLjWTEoyPCdvaqmnP6RLXuuQDBv/MPjtM4+g+7UoKe6oNf7ucsOtaq28+g8gtdV
	eh+1qVwoQYa1dlcT6sFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2aNR-00053N-9S; Fri, 14 Feb 2020 12:47:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2aNH-000532-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:47:16 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D3AC20675;
 Fri, 14 Feb 2020 12:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581684435;
 bh=nGHcZeLEc8JzgZrdyhDdZUKrqvwbSxdLiogLT4ZcRP8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=C5JK862a2NePQDap8pa4EdH/89REDZ7QdhkQsOoqOl+W38SRAq7VkXGt/eEPYB4Iz
 2X0DEzI1Q4uS0NS1hgoXYezRDsMN8ytJqxxLOdFxOTChPiad4S36cM3TDG+T+jeCYo
 Io1TXgtJEKNSFm1v9mtqxiNPJUehpxzBTiAETaMc=
Date: Fri, 14 Feb 2020 12:47:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] counter: stm32-timer-cnt: remove iio headers
Message-ID: <20200214124710.758215e3@archlinux>
In-Reply-To: <1581418566-31954-1-git-send-email-fabrice.gasnier@st.com>
References: <1581418566-31954-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_044715_389807_183C33D0 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: benjamin.gaignard@st.com, linux-iio@vger.kernel.org, vilhelm.gray@gmail.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Feb 2020 11:56:06 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> The stm32-timer-cnt driver doesn't use the iio interface. The iio headers
> aren't relevant and can be removed as reported by William in [1].
> With this change, mod_devicetable.h needs to be added to define the
> 'of_device_id' struct.
> 
> [1] https://lkml.org/lkml/2020/2/10/1516
> 
> Reported-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied.

thanks,

Jonathan

> ---
> Note this applies on top of:
> - "counter: stm32-timer-cnt: add power management support"
> ---
>  drivers/counter/stm32-timer-cnt.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> index 50496f4..ef2a974 100644
> --- a/drivers/counter/stm32-timer-cnt.c
> +++ b/drivers/counter/stm32-timer-cnt.c
> @@ -8,9 +8,8 @@
>   *
>   */
>  #include <linux/counter.h>
> -#include <linux/iio/iio.h>
> -#include <linux/iio/types.h>
>  #include <linux/mfd/stm32-timers.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
