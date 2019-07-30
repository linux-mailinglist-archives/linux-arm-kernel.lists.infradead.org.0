Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D717B04A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOllxXUGMuiwdtrzp6fS2jaQq3hZobR6rfXnThYF6TA=; b=tDfr96vEHZVJjg
	kYwCxN0LXT4RfomuF975tJeDydOWHDw+G+1knk+nLQTxNW3A12jftKDN7pAwbx96vXAGwbGhQ4s0q
	EoChvIFm+4eemQjDC7JVBesqwLA2bfFJK1waNjFiYFNaeuVjCCEl7navgdiNZ9SUpdOBOndGYqQyv
	VkCjjlQulhPQitv9CEljRwSjSeMCtPTYFXh+C3bryUIGOTVapXiAWjhihF3Z5S0wMR0BJQH7dz42O
	EZysFNM71Ar7tFfn3SOqv90nsi4knN8nGtG2XD2jg7i0eE0FOsh9fflX1m4UsIzbo9Gd5QisQgsbx
	qQ3ETmHDdMlvavsQOM/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsW7I-0002iy-M4; Tue, 30 Jul 2019 17:40:52 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsW78-0002ie-HB
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:40:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id k8so130114383iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BFeR4tAU5ONwRxrZH74vD9rAw7q+rir0LAtgn600pQo=;
 b=QYqMqliMOGNxlsIuyMiYTDi/8qLlryHF904OuiWIPby5+f+Zti2FYyn7bGij7xfWSc
 sZxvxYZjN1IgFmeo0Nr8e2FItipeC18I9dpXvWk2QV9e7Y4IEEn88pYVeKFt/J9VYEK8
 60bvc1Ljcp06AS/1bY3KfN39DgfYkIKnHr7zzhAH/Vvid9WNpeXdwIqXxM6SuFZo+wbg
 EvP+R2/sf76vXi55+Ib/CNpKNW4SCqDJg9yk2Dqa/tjnZF/BAl10c//pUbwi7/+TlfgR
 BriluIdEHMp17zMb8ChyGrvo/r2DT7ss5a877gh6nOb3Ht7IpjxiCbdZo3dmVL8FY0tR
 U6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BFeR4tAU5ONwRxrZH74vD9rAw7q+rir0LAtgn600pQo=;
 b=BvFAeIHcx8N6M6AFcioqxS0Kgu0kfUKj9azz/1ipterlgt4XS08da+szveFVAdyRH2
 IhXsqTW/cC12D434j3ZyJoRddPPrS01gQxHwvCVav5CSIG7ZxBNVadplmj16UyiPMVgK
 g1sReLawRC5dtA+xpbaX3+j0Fb/+4Og//U1B3YFKo7f6DMsdj9xKB7+T5mjZvDefDatc
 GULGAwduTr9Vy/nLmXn+clt0IfVlySMvLo5PECzbR2LtEewEdNmUgaMx/mBZpn1msnO6
 4cQ7TvjfbGDCGQRkQRRSaQx8IfSu3XlGokXjuVF/ZhOUlzWqz7kXtKiF3mMsltwDY+x6
 Dr3g==
X-Gm-Message-State: APjAAAUNCnOcwZbPqte1rgzqvx3px0mGPilQBHhiaaAC4d4T3pfCWdq5
 nBA+KgztMLXUzxkEBSZZU1+Kl+ZVg9SQn66Hnbn1ug==
X-Google-Smtp-Source: APXvYqyFyzeZEgjdnOHpTCFYjQXdvTAFGxut6M5XUcyeytb3kogaKxVjONsRirs4U6naOSG1mOZAA9EZ8Zq62eP1is4=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr101182344iop.58.1564508441663; 
 Tue, 30 Jul 2019 10:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190726160839.12478-1-suzuki.poulose@arm.com>
In-Reply-To: <20190726160839.12478-1-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 30 Jul 2019 11:40:30 -0600
Message-ID: <CANLsYkzFY_N=JfgJ2fOcA3SDKHXL1+cGvPN_-3r4hD-_G=49Ow@mail.gmail.com>
Subject: Re: [PATCH] coresight: acpi: Static funnel support
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_104042_581948_DFD99635 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019 at 10:08, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> The ACPI bindings for CoreSight has been updated to add the device
> id for non-programmable CoreSight funnels (aka static funnels) as of
> v1.1 [0]. Add the ACPI id for static funnels in the driver.
>
> [0] https://static.docs.arm.com/den0067/a/DEN0067_CoreSight_ACPI_1.1.pdf
>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index fa97cb9ab4f9..0c99848a5d69 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -5,6 +5,7 @@
>   * Description: CoreSight Funnel driver
>   */
>
> +#include <linux/acpi.h>
>  #include <linux/kernel.h>
>  #include <linux/init.h>
>  #include <linux/types.h>
> @@ -302,11 +303,19 @@ static const struct of_device_id static_funnel_match[] = {
>         {}
>  };
>
> +#ifdef CONFIG_ACPI
> +static const struct acpi_device_id static_funnel_ids[] = {
> +       {"ARMHC9FE", 0},
> +       {},
> +};
> +#endif
> +
>  static struct platform_driver static_funnel_driver = {
>         .probe          = static_funnel_probe,
>         .driver         = {
>                 .name   = "coresight-static-funnel",
>                 .of_match_table = static_funnel_match,
> +               .acpi_match_table = ACPI_PTR(static_funnel_ids),
>                 .pm     = &funnel_dev_pm_ops,
>                 .suppress_bind_attrs = true,
>         },

I haved also applied this patch.

Mathieu

> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
