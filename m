Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E134511257E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ra7HTdtdjZEmz91WgyXqQ5jiD8pYF/clntyIiwi6RDo=; b=a6IfWJcLtM5Q/f
	KgtdPckKlUycD4tVnwpgP8qaO8zNs+XeXmYksKxCmRk8MtQYtro5kPwLwObjoD9M9M95ju1fNwYoy
	7kv0TglaPv9V7NFYa8Tl/AWj/fqTXRtcYIPZP18R7YcUJNnzFQP8augZbF+VLJ29j6aaBc3RIAe+p
	6TvAVpyNyRb+7r4iP/yQhX5b0RoilP+ukjshvgbL84hyvEHcvpNzxXDvMkbkIXV0/UFSvf4IpNesl
	AmyDYjJ0XfC9xQKX+VZ3VmlvoRTb6bk2PwIHR+vunkzVrRwV89Czn4GuWZEP22xHAc3cjA+iIPXFw
	6xDB2dY9CJ02uKQWYNFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQE1-0004TA-VY; Wed, 04 Dec 2019 08:41:34 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQDu-0004SZ-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 08:41:27 +0000
Received: by mail-vs1-xe44.google.com with SMTP id g15so4347029vsf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 00:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FQKWqo5Ul5HVHtOUORHbCDERxt4j9fxv7YCvpaF1TZM=;
 b=put0ttU5VLO+EBQ6LYQzbIk0N4pidLcjzTd6Pj7xQJASCeQmIM/VssqLUy0bq0b93v
 HtZQvs7oYlSH32sUBG5S5Lr82TM9OJ6/POfRKTbx1ViReB2+WcTmqE1ykDbro4CmDDD3
 6MccHJGUw0+msMG4qTETOofaRI2hLJ0ZUkynpA7wHyQPFOQgoAnjiBdeO6lSGW6nQfkn
 Pet+mmzBCMQUQ71EQiVvTQkVRTvEsHueTT3nGCLMa3SfNRYc08vQNs1R5P3LmmqZ7DPb
 xg7CsXpWQ2Ke28nlBlnBFWaQ7P9rT/R9f8eq9MIOORW6d7bXomitJN7oh+pD65pAUBRa
 LdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FQKWqo5Ul5HVHtOUORHbCDERxt4j9fxv7YCvpaF1TZM=;
 b=CQ90Ts1E6ookkE+u3fdfdqoumwcLoL/rGeNM+E0XINr9fNUwgxj9LN02RZtXX3nstW
 c3rvEwLhLmcfs0u3qrXT8XNN0U8E8ndlUUThNRbtLiKgL4azYM7sZ//9h90SAo+TSqgM
 hCFuKj/JKREbP1SaD5BlzYninVmtgUQwnV3ID7Tvpz4K1b5W8bmbGipeTrh3qbK4tJav
 QIti3hIMoPa6d7bc0BMCqGCTOZfac40idMzuTCrc2c4kaJb6xbm6cE6jfDpGV9MCaJgh
 eQFymuSLga1+fBDkaN1EyJ4RmHZMAQKp7qWpUlz6WrrcQ86IdrtihyDxruylyaxHUSnr
 6rAQ==
X-Gm-Message-State: APjAAAUNN+Lezd/kXbeipt6cZlgH7OhejakDtc7O0XEFgj/QI8QZRObG
 StDPRtj6G8L1GLpZumuuwfa194A7ps3ci6q6vfAJHA==
X-Google-Smtp-Source: APXvYqx3ReMhc5/tnLLDNWde+euvUxoDV0VfeZHcxwaUg5zM7WwrWNoEI3QnjNkobs25W8XAc4phHgFcVksuksneb78=
X-Received: by 2002:a67:f8cf:: with SMTP id c15mr954910vsp.27.1575448884828;
 Wed, 04 Dec 2019 00:41:24 -0800 (PST)
MIME-Version: 1.0
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-2-f.fainelli@gmail.com>
In-Reply-To: <20191030182132.25763-2-f.fainelli@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 4 Dec 2019 14:11:13 +0530
Message-ID: <CAHLCerP6ricempeG=x-a2_aA6__YqADPKAEG5y7qPYNcD2=47Q@mail.gmail.com>
Subject: Re: [PATCH 1/6] thermal: brcmstb_thermal: Do not use DT coefficients
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004126_600430_D6FEE47F 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:51 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> At the time the brcmstb_thermal driver and its binding were merged, the
> DT binding did not make the coefficients properties a mandatory one,
> therefore all users of the brcmstb_thermal driver out there have a non
> functional implementation with zero coefficients. Even if these
> properties were provided, the formula used for computation is incorrect.
>
> The coefficients are entirely process specific (right now, only 28nm is
> supported) and not board or SoC specific, it is therefore appropriate to
> hard code them in the driver given the compatibility string we are
> probed with which has to be updated whenever a new process is
> introduced.
>
> We remove the existing coefficients definition since subsequent patches
> are going to add support for a new process and will introduce new
> coefficients as well.
>
> Fixes: 9e03cf1b2dd5 ("thermal: add brcmstb AVS TMON driver")

I think you should fix the computation formula as the first patch and
then merge the rest of this patch into your second patch.

I don't think the intermediate state of converting named constants to
magic numbers is needed just to convert it over to another set of
parameters.

Regards,
Amit

> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/thermal/broadcom/brcmstb_thermal.c | 37 ++++------------------
>  1 file changed, 6 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> index 5825ac581f56..42482af0422e 100644
> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> @@ -48,15 +48,6 @@
>  #define AVS_TMON_TEMP_INT_CODE         0x1c
>  #define AVS_TMON_TP_TEST_ENABLE                0x20
>
> -/* Default coefficients */
> -#define AVS_TMON_TEMP_SLOPE            -487
> -#define AVS_TMON_TEMP_OFFSET           410040
> -
> -/* HW related temperature constants */
> -#define AVS_TMON_TEMP_MAX              0x3ff
> -#define AVS_TMON_TEMP_MIN              -88161
> -#define AVS_TMON_TEMP_MASK             AVS_TMON_TEMP_MAX
> -
>  enum avs_tmon_trip_type {
>         TMON_TRIP_TYPE_LOW = 0,
>         TMON_TRIP_TYPE_HIGH,
> @@ -108,23 +99,11 @@ struct brcmstb_thermal_priv {
>         struct thermal_zone_device *thermal;
>  };
>
> -static void avs_tmon_get_coeffs(struct thermal_zone_device *tz, int *slope,
> -                               int *offset)
> -{
> -       *slope = thermal_zone_get_slope(tz);
> -       *offset = thermal_zone_get_offset(tz);
> -}
> -
>  /* Convert a HW code to a temperature reading (millidegree celsius) */
>  static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>                                         u32 code)
>  {
> -       const int val = code & AVS_TMON_TEMP_MASK;
> -       int slope, offset;
> -
> -       avs_tmon_get_coeffs(tz, &slope, &offset);
> -
> -       return slope * val + offset;
> +       return (410040 - (int)((code & 0x3FF) * 487));
>  }
>
>  /*
> @@ -136,20 +115,16 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>  static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
>                                         int temp, bool low)
>  {
> -       int slope, offset;
> -
> -       if (temp < AVS_TMON_TEMP_MIN)
> -               return AVS_TMON_TEMP_MAX; /* Maximum code value */
> -
> -       avs_tmon_get_coeffs(tz, &slope, &offset);
> +       if (temp < -88161)
> +               return 0x3FF;   /* Maximum code value */
>
> -       if (temp >= offset)
> +       if (temp >= 410040)
>                 return 0;       /* Minimum code value */
>
>         if (low)
> -               return (u32)(DIV_ROUND_UP(offset - temp, abs(slope)));
> +               return (u32)(DIV_ROUND_UP(410040 - temp, 487));
>         else
> -               return (u32)((offset - temp) / abs(slope));
> +               return (u32)((410040 - temp) / 487);
>  }
>
>  static int brcmstb_get_temp(void *data, int *temp)
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
