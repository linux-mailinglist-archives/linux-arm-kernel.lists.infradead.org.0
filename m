Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEE919BF92
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWrfRBzesT7L8hT/dYRoJJQCBcYCVBLckMvaf+2Awn4=; b=DjjCavtJ4FGloa
	WWaqy3zzWML3o65x1QQ3xn6m/UHwm9fY/+X9wtb1AmO/8KupHCHo3FZsNW5cHkHXTADJELfu6gXvW
	LRJIvZOzmM2zgouy5j2jF9L7cIHVXG2Y2fWvQqtha5Af5HzSyVXWmdd7UKyfbOiIIS0MjPY9aYjWp
	eEQpOUa1MRxLwXUlAJ547pCs62mFoHLhDYq19TNW/RuJQavggOHeca6TQGvFbM4e94TgbuOyuwpwE
	z5AfHe3fZSMPxH5YNQ3NTILTqE+4BO2zcN/wakZZWzKXnLIUXKkCP29CTp430SmQkLJAhuaa0hqVs
	E6KSuLHMT27kCqeNB6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxKi-00065X-ND; Thu, 02 Apr 2020 10:44:24 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxKc-000653-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:44:19 +0000
Received: by mail-vs1-xe43.google.com with SMTP id o3so1969586vsd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 03:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gL8fHfqHi6qcFCDBXj+QaMk/V5SGiyp+PEgt7ceo9WU=;
 b=Z8sTzIds8P65a8Efr/HpR7f/sFnL78fv7JdRdCYFOMTUD3xEgpbcAeWrl/PsfvaOhf
 KWJQgfBnJchQZT0JuK+Pt4w31Wwk94i9Yy3p9BV6eyd4ALSNMq7kH0crycw1vaWHJVKE
 JA/UbrOVw9lLXjW1BQSufi1WHrRsy5CeLaHUZ364nmIaUcD2NYY9BhIWxSwrHbaVg5JY
 6lokynAKlh1fFhkF2EquMQ+uKxt0bB9JuALqSN+InrOtgffiqSSm+/VgLt7nboHRbVLn
 JzXPRrpqfV0t4jTvQY6T/Gc07hbvcKmteIgtW1ZykMjpBg1rJmRijAxhxZjy6dv52jjw
 Bp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gL8fHfqHi6qcFCDBXj+QaMk/V5SGiyp+PEgt7ceo9WU=;
 b=EECUnIqVE9Aj9zYTiQn0YeZ+jZEBgIC5/DE8lT2q/K4Ar4VrG3jEtTZsk3/RcNG61d
 A6EO5TUH/QC79l4GIPMbiQK9GYpDpqo+RMw+t4ydcbH0En6hZtNgAhWCHu+4B4k7IhhZ
 RDq9tBnKOrkwipUbjjQEW6xkPe7dpAvxo1a1mW8e4agxK0f2d6i/FeKhF14yBY7qaw0E
 aTuKitNcZToBkdDVgYrveqyxiBRMi1peSjH/ifflv1BG8MZuQQcps6XWHIYcaxn669bN
 /IWDfRQ0odJ8RdJ8DI2VHbKAz8tSNkFXODjmOG4WQvCoGWaIzFXsUziwFh8y6v0yzDj9
 7Tkw==
X-Gm-Message-State: AGi0PuYYGrBO+HSmBGwkEaKnAiSBOS/bRuSX+FlHrPTxtJ5ls8pXPbcW
 YIGxBHi5IlLxrdtg4EoO7r8MxZLbk5SJyr+T7lvSsg==
X-Google-Smtp-Source: APiQypKz4BReUDIMGlqUgHLZ6zPYqg56f8V7z9tHS+iJNEZZVkZB/6k3hDtCI0DWnf55+ITwD1Gdb2k5UQXU0UMW3qw=
X-Received: by 2002:a05:6102:104b:: with SMTP id
 h11mr1714887vsq.182.1585824256368; 
 Thu, 02 Apr 2020 03:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <1585192411-25593-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585192411-25593-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 2 Apr 2020 16:14:05 +0530
Message-ID: <CAHLCerOZvYT71gcZd7_NpWKon6LSH9kcA1UK1objTc9aK4nOvA@mail.gmail.com>
Subject: Re: [PATCH] thermal: imx_sc_thermal: Add hwmon support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_034418_299920_E6AD6FC7 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux PM list <linux-pm@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Linux-imx@nxp.com, kernel@pengutronix.de,
 Zhang Rui <rui.zhang@intel.com>, Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 8:50 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Expose i.MX SC thermal sensors as HWMON devices.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/imx_sc_thermal.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/thermal/imx_sc_thermal.c b/drivers/thermal/imx_sc_thermal.c
> index a8723b1..b2b68c9 100644
> --- a/drivers/thermal/imx_sc_thermal.c
> +++ b/drivers/thermal/imx_sc_thermal.c
> @@ -14,6 +14,7 @@
>  #include <linux/thermal.h>
>
>  #include "thermal_core.h"
> +#include "thermal_hwmon.h"
>
>  #define IMX_SC_MISC_FUNC_GET_TEMP      13
>
> @@ -115,6 +116,9 @@ static int imx_sc_thermal_probe(struct platform_device *pdev)
>                         ret = PTR_ERR(sensor->tzd);
>                         break;
>                 }
> +
> +               if (devm_thermal_add_hwmon_sysfs(sensor->tzd))
> +                       dev_warn(&pdev->dev, "failed to add hwmon sysfs attributes\n");
>         }
>
>         of_node_put(sensor_np);
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
