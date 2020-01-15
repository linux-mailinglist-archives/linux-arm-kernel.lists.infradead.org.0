Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B72313B94A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgQeYxWcSQLOrQgZY3W0+5ceEE1njcAVyriHXROJQBw=; b=MXKha1ywTxTRaO
	/facvO0wNRuSsO5DgyVUHzW3FRTTqMsCuQHNVyKlymUQ17d9JCDSZap202ewzg+h61egoB57xeT8m
	i8ryza21rnjgWM6Hb0+BwcvYy/KmcrPl4OIomFYsDFC/Ptxvc7TMeEw1JzmWUyfB4xgJpDCP38rXL
	sEu27zfAGKAb5vPnhjP6dha7mVY7NQ49jCeFGT5Z+bXbvTFoHtefQExjjfziALbr4zzOVFbMqGBtB
	BGi2Ve1RcXgWaF6wNO/UMRstSOuzoUD20wBnkOlyOxBTSh9DqShnRGMcyKdToyYIw3a5rh+j5vkm/
	xvunRe1e6aItf6jve10Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbh7-0003kH-Ba; Wed, 15 Jan 2020 05:58:21 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbh0-0003jm-Ro
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:58:16 +0000
Received: by mail-ua1-x942.google.com with SMTP id c7so5797304uaf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e5xJRkqeZeVuqWjzuTjcTAvJI4fzZrcr+Isw3uqYLKg=;
 b=o+vsV3oMBFRJ1mv7DjQiU8XPXWxqrhMJgML2HsKufa6V56I+MLrFTdPDjwZPSsgTGb
 RPljyQh7++xAIXl+sjGHAcqYF7B8DzcB6Oo1DobaDz5W3DISZkeQpCFAmjS/FVTzaYfX
 Lv4sSGxgPS+oxOZUR98FZokoBK0xXYuvPjAG/rV/Q+TOE5lOD9un0NuMfpcsCn3ySND0
 AihW5IkU4QPEm66XCcNbaNWP82U5XaVpK/uGPVa4LI14xAFQVafishSL6JyPxtozxAgL
 5lw5wlrwYUp0QXBNutVanw8TNPbMb5mYYPFGp1yOm9cZ2Inl7eOyR6eD7frdc9XswOGW
 sY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e5xJRkqeZeVuqWjzuTjcTAvJI4fzZrcr+Isw3uqYLKg=;
 b=gQLEy+y4fjRc2/HWQALgM1Srbu4XcSv+dhFl6jJCpr7RkRVXE4MReNEIyJ0XXJM42y
 5FGhrsecxN7Hji2XJkGaHncpJBNvuZJfWa3dnPBNE3D37KQ41oceSYSZLRIRyrYS4wHF
 atzBUnaxnoRga2mLMJiADOPOL9EgIUueA2q274YFS+8vNoI9EtvZMDy9qHxKfRTbXXhB
 /4RexKxMCuCtQXitFuY7CVdSMg9wiqSYKgAiiwzglX/0Ii5QDdVfsuJ3UDNpK0WyTHxR
 nOr+2Ckaen9eIpcjxZ8wYJ87wypm5ThFxuUmb2O2f1nkZ6N+B1IB6RSj8Do+fEURHz2H
 c64Q==
X-Gm-Message-State: APjAAAVHZdZxSiHlLgBfVJQJ+/+dPFk1xbsEKN4MfPrXB/CF+uH3Pg+H
 lIb1fXv1rhetY0HwlX+1UfGbIKyslAmvNNeLf2Ingw==
X-Google-Smtp-Source: APXvYqyHRDquLaL0bEm7oQ9JtTMteQmR4X4JG9yvX/H3A2qtA1O/wnBD9raOEACyIMcJLv3MZehD7pa6uUYuo68Tdw4=
X-Received: by 2002:ab0:2252:: with SMTP id z18mr12952463uan.60.1579067893051; 
 Tue, 14 Jan 2020 21:58:13 -0800 (PST)
MIME-Version: 1.0
References: <20200114190607.29339-1-f.fainelli@gmail.com>
 <20200114190607.29339-2-f.fainelli@gmail.com>
In-Reply-To: <20200114190607.29339-2-f.fainelli@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 15 Jan 2020 11:28:02 +0530
Message-ID: <CAHLCerO1OARY9OMDpGudSfBdmtRfeP_pYaE9=-Sn-10ZVjgXKA@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] thermal: brcmstb_thermal: Do not use DT
 coefficients
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_215815_040292_0D31D995 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 12:36 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
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
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/broadcom/brcmstb_thermal.c | 31 +++++++---------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> index 5825ac581f56..680f1a070606 100644
> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> @@ -49,7 +49,7 @@
>  #define AVS_TMON_TP_TEST_ENABLE                0x20
>
>  /* Default coefficients */
> -#define AVS_TMON_TEMP_SLOPE            -487
> +#define AVS_TMON_TEMP_SLOPE            487
>  #define AVS_TMON_TEMP_OFFSET           410040
>
>  /* HW related temperature constants */
> @@ -108,23 +108,12 @@ struct brcmstb_thermal_priv {
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
> +       return (AVS_TMON_TEMP_OFFSET -
> +               (int)((code & AVS_TMON_TEMP_MAX) * AVS_TMON_TEMP_SLOPE));
>  }
>
>  /*
> @@ -136,20 +125,18 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>  static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
>                                         int temp, bool low)
>  {
> -       int slope, offset;
> -
>         if (temp < AVS_TMON_TEMP_MIN)
> -               return AVS_TMON_TEMP_MAX; /* Maximum code value */
> -
> -       avs_tmon_get_coeffs(tz, &slope, &offset);
> +               return AVS_TMON_TEMP_MAX;       /* Maximum code value */
>
> -       if (temp >= offset)
> +       if (temp >= AVS_TMON_TEMP_OFFSET)
>                 return 0;       /* Minimum code value */
>
>         if (low)
> -               return (u32)(DIV_ROUND_UP(offset - temp, abs(slope)));
> +               return (u32)(DIV_ROUND_UP(AVS_TMON_TEMP_OFFSET - temp,
> +                                         AVS_TMON_TEMP_SLOPE));
>         else
> -               return (u32)((offset - temp) / abs(slope));
> +               return (u32)((AVS_TMON_TEMP_OFFSET - temp) /
> +                             AVS_TMON_TEMP_SLOPE);
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
