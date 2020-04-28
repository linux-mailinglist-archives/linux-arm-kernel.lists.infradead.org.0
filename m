Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFC21BCD63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbPisMOwfCCxKA09Z3F50BAFjZj3K4EOW6XcadCPuTI=; b=sx+3fRUyrVNvso
	iUoeUpHQQCoqgQL+copefAWGglwJOqNq89ZLI+PvOrS9HPkOtQBIknBJzJ8uAlvjkO2h4f8MkH4m4
	ZbVrPhkjhvkco0Nzza8qCfgBa9D4OVdAxFQ+t1AxLeUALxFgn+AqCG9DYld4WYwnSJCWeQJ/fPmj/
	xncCq7qZ7AqGpzWAKKMH8DOJPV5GANGzrm24D+26Y1KeLd8f//ZPlze3VHes//7p/5jOQkY+z+IEt
	Jagrmk8lq2zyFq/QOFsi1yBJ+aoecp4VwJu2PPGdLInZfraTathZv9ZiJ5YYbjGvbKKQyd1KZJRLg
	9BbYlyep8OV1lbgKwedg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWrR-0005Fa-JK; Tue, 28 Apr 2020 20:29:45 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWrI-0005Dy-A2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:29:37 +0000
Received: by mail-ua1-x943.google.com with SMTP id i5so22899859uaq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pkj7kKKcclLvASvEGyrCI/6i5twP0NxxYNk+RIVUFp8=;
 b=Z4mcO0+46Tgu18zZ1ILlmbNz2QscI6HGOLUt2jq9eozqAy5T/bsUTxE9llCisBgdq+
 5Q8HDvyffxiry0/gYfAQjrpVLASdlCL8cJWR9DtHuywPHkbpv5UlZ7yrx0huAeHh3ftC
 4ppmcha4ZlkJHkdZntWl60jDD3kul+Qv5BesDKBCWQHLpYdPWOGZbK9Ck4YLgF+4xU2c
 d0smJ1hXHK4q7+TZ834uhiMqXPmGT0UvC8BiFmH9I+C3VwMeqV7fKbPcteAB4h4nFgNG
 6bGKK1FofR25GczJ3bsbw+Ftw4WKY9bo2sNOtpPjsp6BLPQ1DoW/twAvS9ae2K1NG1TM
 zXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pkj7kKKcclLvASvEGyrCI/6i5twP0NxxYNk+RIVUFp8=;
 b=P54s5BnUb2a122ZU3+5NbOlo4jeXAGzqOzhGJ9FhYEyXvGm+8x2l+5YOmMQYTWC4nV
 7zgFLHPnqbmxnPJKa+/3vKxck5Xgew9GDXF+7wk632yBVGLbbW65xAKfQxaFZ0SeVK06
 cWyHaYzmre2nc/j/UOX1fI+AdkL4dM4FjXXQrhYa2Vk1J3+cO2cgZaUVuw8du4ZGq7bo
 D6Q98u96VB1YrG2nONGl0WpEcFkfVH68FzGo5Pu4wTf2vv0uJV7VhnHdeukl0Zw40AqD
 RgjW8wiocXsQ8Kprf2Lgb1Ui44Ue44v+HlPC7UbdX3k3XMv6QK/xImY8GSJfrOJ1IlJl
 yoDg==
X-Gm-Message-State: AGi0PuYpns7cbavKrvfZ5yR40lSC2MVkj8ecu9pNSmIxjgG3zAYfPxDR
 6tF4y9gHovyYHQxOscbC26z3ukcc8LfRGGla6lru4Q==
X-Google-Smtp-Source: APiQypJRtqhFbG7Rpns7Xg65/400D7gj9RtZJmOOrneoEGGX2VN0LUGpUc52NK91FBqKp4r/OAxibEQH/VFYLqZScB4=
X-Received: by 2002:a67:e9d9:: with SMTP id q25mr22043390vso.27.1588105771956; 
 Tue, 28 Apr 2020 13:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <1585232945-23368-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585232945-23368-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 29 Apr 2020 01:58:56 +0530
Message-ID: <CAHLCerP7O19cRsK6OfmGm89K7KefRQnCUdNCNQM8mEAbycUjbg@mail.gmail.com>
Subject: Re: [PATCH V2] thermal: imx: Add missing of_node_put()
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_132936_375089_D1FF0EED 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Cc: Linux PM list <linux-pm@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, dl-linux-imx <Linux-imx@nxp.com>,
 kernel@pengutronix.de, Zhang Rui <rui.zhang@intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 8:06 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> After finishing using cpu node got from of_get_cpu_node(), of_node_put()
> needs to be called.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
>         - improve the logic, no need to use got.
> ---
>  drivers/thermal/imx_thermal.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
> index e761c9b..1b84ea6 100644
> --- a/drivers/thermal/imx_thermal.c
> +++ b/drivers/thermal/imx_thermal.c
> @@ -649,7 +649,7 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
>  static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
>  {
>         struct device_node *np;
> -       int ret;
> +       int ret = 0;
>
>         data->policy = cpufreq_cpu_get(0);
>         if (!data->policy) {
> @@ -664,11 +664,12 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
>                 if (IS_ERR(data->cdev)) {
>                         ret = PTR_ERR(data->cdev);
>                         cpufreq_cpu_put(data->policy);

You could move this policy release outside the if block too, no?

> -                       return ret;
>                 }
>         }
>
> -       return 0;
> +       of_node_put(np);
> +
> +       return ret;
>  }
>
>  static void imx_thermal_unregister_legacy_cooling(struct imx_thermal_data *data)
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
