Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1556611C834
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 09:29:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXpvT/RaNFwMN7uhHIxfb8ZLp1BY5po5aPLfYqzyjrM=; b=LI85LOfnMQ1WqZ
	jP2kxg3WXwNyk+pSQEn6D5oUezb4fOuVUBUoQ2LY2jU/SwlWqDIHNusAlzZKB1CcIp8tct2DnCW1b
	1l6sed/18w14m2Vqttl4hJiwNEzXP9Y117hGhCpm8L6ZH2Iu8kqZnDB0Dil9ZLwd3LVft5RC12+1+
	A1bgl81Ke51tQGtZYMENSuRrW5oSwtEUjvTUBwUPCyf5q9t0GFgZFbMjG/4cnpkUZvPIGp8wojWsj
	YYSZRDcOaIdA7CJ9GNuHTCRmcfH4tiaexUSH975pa9tQf7RRixpFFlHTHvZfsgkvvp4tk7ZMbPqY7
	bvTM5deJuiBbCUD/IlKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJqe-0004nv-RM; Thu, 12 Dec 2019 08:29:24 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJqV-0004lT-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 08:29:16 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x4so939909vsx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 00:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XgxCnRiTfja1L+B6Xn0JuIUwn0x0QrtKVBtLGuTEljg=;
 b=gVztby/BHQJ9PZBKa3D0z7om1skfkDzVsuhBRH82k9/hXT9aRdfZ6KGtjWHOutFleq
 uF1WSfJ8tUrou3WPu+hDg5If+SNIO2Ufb6a+9pPgHemfEqDmvBGYc79gx+x1N0w8G0b1
 l1mEnz/PBcmVnZppUrc7t6d4FNIcEk6K6weCBa6/VehlKZP6Ob5UcMo1iORqF65cBM/c
 Iv41qh9jbeSX7tFgULRbU1bGCyznTNPQrmyJqJoywgSrOx082uCOuDCRoTAmQ/wANuxW
 GK/IyyFBIHd5E9Li4OslsbEGWt4pWiS40vkZpksi5880AnShIACe0dpD/onBAzjlkhvw
 nHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XgxCnRiTfja1L+B6Xn0JuIUwn0x0QrtKVBtLGuTEljg=;
 b=GE/t0sqDvuQyE0uNjXxy+QJH53KRZ8KLZ8lK1YXShO4e0ughV9dIf3RMEk6OEZ7Yw2
 wjLACms0QfrP+/wTqAC6VgoqiG1rXUR59Lf/y9ar9oqLbbupk/r4br+VkzGud1b0ZmgM
 hdcTiOY1HJ0c4r4j/mQHBK3R5Lxt7boj5iUo71xBIVK35m+MOtMqgng626AsMmmkdtwy
 iPKh73HqUtB5BoGAUsSUllHcTARb39XFAEE4aZ8ev3cbKfsSO+NXEK4jlCywxx5Qg1fI
 q3+J65Lqn6BFyECHzaUFiDLznnc8caUQ8fz8WKreCWdGVO/9m2NRikN0klyjw3vTHz21
 8fBg==
X-Gm-Message-State: APjAAAXBxJrghIBLtu4fNy0fFa8fyLgBeXnpGNmVgt63l8wRxEoI8oN6
 KLEPINUSYoWLt3iaqMJx9S12sby4NxRp2hveuNVYmw==
X-Google-Smtp-Source: APXvYqxwBVwLqxEvOxIflOhsGsMSkYb6lfxJt1tosG6/eY6xpGyjucXTvEj741coTmOODqT107Q/DNxtylHdDzMIdYA=
X-Received: by 2002:a67:7acd:: with SMTP id v196mr5961661vsc.95.1576139344363; 
 Thu, 12 Dec 2019 00:29:04 -0800 (PST)
MIME-Version: 1.0
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
In-Reply-To: <20191212061702.BFE2D6E85603@corona.crabdance.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 12 Dec 2019 13:58:52 +0530
Message-ID: <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
To: schaecsn@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_002915_209315_D81BBB53 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
>
> By default, of-based thermal drivers do not enable hwmon.
> Explicitly enable hwmon for both, the soc and gpu temperature
> sensor.

Is there any reason you need to expose this in hwmon?

> Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>
>
> ---
>  drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index 343c2f5c5a25..e47c60010259 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -19,6 +19,8 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/pinctrl/consumer.h>
>
> +#include "thermal_hwmon.h"
> +
>  /**
>   * If the temperature over a period of time High,
>   * the resulting TSHUT gave CRU module,let it reset the entire chip,
> @@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
>
>         thermal->chip->control(thermal->regs, true);
>
> -       for (i = 0; i < thermal->chip->chn_num; i++)
> +       for (i = 0; i < thermal->chip->chn_num; i++) {
>                 rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
> +               thermal->sensors[i].tzd->tzp->no_hwmon = false;
> +               error = thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
> +               if (error)
> +                       dev_warn(&pdev->dev,
> +                                "failed to register sensor %d with hwmon: %d\n",
> +                                i, error);
> +       }
>
>         platform_set_drvdata(pdev, thermal);
>
> @@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform_device *pdev)
>         for (i = 0; i < thermal->chip->chn_num; i++) {
>                 struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];
>
> +               thermal_remove_hwmon_sysfs(sensor->tzd);
>                 rockchip_thermal_toggle_sensor(sensor, false);
>         }
>
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
