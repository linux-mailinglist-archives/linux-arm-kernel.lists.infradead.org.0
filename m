Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5409419BF80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/VaCyw71r1NGNFxgj/1KvWlSfj/SSDr2L636bt1YRw=; b=h109GV9eRSs8HU
	j+C0QgA6CiYLZp4wUudm2LPMylMEHzpDV7xGJfM8IVUM9RSx7LUpFaTuM9tZnJrbbbYDaopdpA8fc
	OA9xY9uC7Npg2ViwrnKWfzBz4ChMLbBueuorl50yILbp+zcypkrHy9IPyXMB6MWSgnvSlNEUnccbJ
	RZKieCAHjuormA775cwJRegDvgSmmBqUPzseEDa66Z/Z9EpPr/Nm5/pwzuy3Cvo0yeQVwr/kH/kgT
	zjf6XILBZarllRjOnkWNFoehEtzK0HfWSIZTiuZp+F0CdiYTnE00BrCEALshK+aoNI1YP76DNqn4G
	mmtuQyYB03i1O8x3hOjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxGp-00056l-Ku; Thu, 02 Apr 2020 10:40:23 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxGi-00055v-K6
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:40:17 +0000
Received: by mail-ua1-x942.google.com with SMTP id d23so982849uak.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 03:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EKz0BYCnAYaxNPQCfa65G2LlOu2wy+lcqbRhsvRTDzY=;
 b=gbcQgrA22EAyItGP+TKMeDdvt9CVIT/R2GLUGHK8fjYaSwYAmzZjrigV8/ZEc97Cs/
 RNx49zr/EmMLCKs3yICV3DbWcDYNC5Edq669CkOvAdg3+O1GS2jZbpZOCtZQ6l7yebBe
 DcE5X2RyzxPvE4l95PLzY7VkQp2hTqveDSVtEZd9yAZEIGIIb1ayiV74u9DWw1el7iMl
 tBMNVst2x0cB6yx6mL/+mwCZbUBehcbP9DWmWpXhe7ZdE/NU+bYYJ0T4rxkQk1zpYaZY
 //r41sobGat2KcV4rgWj0zoDrb9ujZcg71SJcQQypNO3b7Zv+97mRrl5whWtKXgFY2t5
 j6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EKz0BYCnAYaxNPQCfa65G2LlOu2wy+lcqbRhsvRTDzY=;
 b=p+umoCpJ87naKE6DCSoOMtkbqKu9gYNuVrIYcKNGG++5Kkm1xSizLQYFM6YCTAEnfd
 kLQ5C/OhHYPeTfSjtC3xRS502MxT31viCI+QbQo/yqvxMgP7pYJlunPqwzKnSq1Lc6dk
 9A+s+q7tzhSq/gZpSGrLgtHYLiLI+HJbGfz9dvpC+Ukp4lOOmEkfrXrtR03N2oILGsCK
 1uJxX+z1BAqoIGCnQbpQf3KKNPaKiYt4adpt8A+DJlPWdIM0WwlpklqDHU/MynPQH5G3
 wCfYu6ihTGrMhA7rYWRoXdwXlMAFcsDO0Z3RXYVHXQ8VV0wpmrT3vJwM5SPOHtcpLL4B
 mxsA==
X-Gm-Message-State: AGi0PuYpYmcV5XXKALUNlAnjK/KXMSuWbbhUzRujTinD98ZOkBSdu/Lf
 97323uPnQGo/tWcLCdUWjA0O+zljqCduOnjfpSMtPA==
X-Google-Smtp-Source: APiQypI83QnOQ6D0d7POmo0QouJRjj7RkZV/O1KQNeqzJrIRwpmjlcrHV9wDaSFuXhDoh9ukC8k3b+Ye0lKDq5mhdK8=
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr2082703ual.67.1585824014129; 
 Thu, 02 Apr 2020 03:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 2 Apr 2020 16:10:03 +0530
Message-ID: <CAHLCerNG3ZBbWrTwXxCbd1BOfyHxuvpAuo5tW_bNKgWcO5zESA@mail.gmail.com>
Subject: Re: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_034016_715201_4C192328 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, peng.fan@nxp.com, horia.geanta@nxp.com,
 Linux PM list <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux-imx@nxp.com, kernel@pengutronix.de, Zhang Rui <rui.zhang@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 6:05 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> i.MX8MP has a TMU inside which supports two thermal zones, add support
> for them.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>


[snip]

>
> +       thermal-zones {
> +               cpu-thermal {
> +                       polling-delay-passive = <250>;
> +                       polling-delay = <2000>;
> +                       thermal-sensors = <&tmu 0x0>;

No need for 0x0, just use 0

> +                       trips {
> +                               cpu_alert0: trip0 {
> +                                       temperature = <85000>;
> +                                       hysteresis = <2000>;
> +                                       type = "passive";
> +                               };
> +
> +                               cpu_crit0: trip1 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <2000>;
> +                                       type = "critical";
> +                               };
> +                       };
> +
> +                       cooling-maps {
> +                               map0 {
> +                                       trip = <&cpu_alert0>;
> +                                       cooling-device =
> +                                               <&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
> +               };
> +
> +               soc-thermal {
> +                       polling-delay-passive = <250>;
> +                       polling-delay = <2000>;
> +                       thermal-sensors = <&tmu 0x1>;

No need for 0x1, just use 1

> +                       trips {
> +                               soc_alert0: trip0 {
> +                                       temperature = <85000>;
> +                                       hysteresis = <2000>;
> +                                       type = "passive";
> +                               };
> +
> +                               soc_crit0: trip1 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <2000>;
> +                                       type = "critical";
> +                               };
> +                       };

You need a cooling-map here since you have a passive trip point.


> +               };
> +       };
> +
>         timer {
>                 compatible = "arm,armv8-timer";
>                 interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> @@ -215,6 +271,13 @@
>                                 gpio-ranges = <&iomuxc 0 114 30>;
>                         };
>
> +                       tmu: tmu@30260000 {
> +                               compatible = "fsl,imx8mp-tmu";
> +                               reg = <0x30260000 0x10000>;
> +                               clocks = <&clk IMX8MP_CLK_TSENSOR_ROOT>;
> +                               #thermal-sensor-cells = <1>;
> +                       };
> +
>                         wdog1: watchdog@30280000 {
>                                 compatible = "fsl,imx8mp-wdt", "fsl,imx21-wdt";
>                                 reg = <0x30280000 0x10000>;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
