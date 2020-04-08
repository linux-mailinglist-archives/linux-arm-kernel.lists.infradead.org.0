Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E651A1CAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 09:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4B9YXoBBkID+wI9QWbvR4Pz83w8MVyCAL/6PvYyvGz8=; b=hc315vhscbWRX8
	z6Yo54so8joteejf33cDb7c9nYzjaRPqII35lexJ9TZ+NRXsJFaBmOnnJQmIan1Auru6hkkZwOUIt
	VNJmfwRjov4yLQaUkEYXKWiz3ZxF+gtTL9daJv+zPp3uo7fevylOZxe8h9edpAgU1rpCmvh1OANqD
	4xbmyL9+FZzdi32yREDrfrLhh0ta0fooP0SSBy/g5vLBPdSeDRWtVQ26dwYVZ69afSEyCqY4317Gx
	8x6gIFesNkShkAoaYVRBivpPqrsNAYVh31byf6oz3PGhAfnZfW2KxOQ/85H/dacKQgxdBuT4ex5EK
	H1O7uuB5jF5qIWyEHUEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5Ad-0007NS-Ah; Wed, 08 Apr 2020 07:30:47 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5AV-0007MO-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 07:30:40 +0000
Received: by mail-vs1-xe41.google.com with SMTP id u11so4133373vsg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 00:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o2awHw9ue68/ioPQ/hcJMwV/cE3GRHWFi4nGkCXTPbg=;
 b=Hvo2oCqtE17cvDi5h706vd7Fxzwir+m/OZWa7BGhDLz6xJwaTOpq6XrMP+kPjV4Qzj
 bqanKuAY0pGptv9P9cfnMNx6Mj4Ihq55xfj5KmpRQyKxPVmwk9IWlfR+Utz2g9uaLLHM
 hQGcb3X4jAYuwQmAstYccEv7thXGDN54MFu1f5KJV+d5Nu19FbL9VM9BD2bEvzORYbob
 hSraiQY7Flb5jqULSSJkAqTqLglHZpY3u5/FKt/v2yIhzfjrYcCDRB4gJ5nVsYE9WLld
 6BDn5LxOMDz/uT8VGyOtmrRh4A6/ymYyeeTL3w05OtRcF5VsDKUKcgOlAybtCc0vD4BD
 j1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o2awHw9ue68/ioPQ/hcJMwV/cE3GRHWFi4nGkCXTPbg=;
 b=oPBgRyMtbvigvkJ6Vv68L9ImUjODb1S/6AiJlO9SPly8vZv0VVuwkiwfdTt13/45UT
 TAuvvXnSV6Iw8Uu+eAc2xghP7Eq5+mfn3OZaMPVZxSgdHXKtOhy7Pmflc3pTBL0MgRds
 lyPbqWUsSi/qxUbFDO7jQDkCrxVAWgV23Wi0zFJUiiEv1ZI8vkHNpUOXdKST02ehpbZN
 1rJP8EOBkhHg43vqyxGgo0R52ACkcyK7sfkXM4/Re3E//NxzYc/7XcKQZjGvmX6YVIaf
 Vn3Y5FtoNss0gf2N/4mx/YWTWjcw8jFgOhYwp7RZ/NzpBOAHPHHXYHZBjedjHDHyFkfN
 UZIA==
X-Gm-Message-State: AGi0Pubz5eetaLzM4Lz2GHQe8QMu+r2Ii1xllzzpUntlIsv42dK2yXjR
 D9h3Accy6F/DqnsWrJp/OyixFeYbXccew0e5Bjk/Aw==
X-Google-Smtp-Source: APiQypLTmXBd+2LWVSrhlxxqM9wlcwqHYDI3H4zuMX9eSDO877vQ5tMjIv6xmU/xvJo0Yfccvn/Nmu/8tLxAtcnnsGU=
X-Received: by 2002:a67:c594:: with SMTP id h20mr2746932vsk.95.1586331038462; 
 Wed, 08 Apr 2020 00:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <20200407055116.16082-5-j-keerthy@ti.com>
In-Reply-To: <20200407055116.16082-5-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 8 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerNZqQj=DLkTdHbL5SSs3ufej5BdW+OBVqjuioL26Fn_iQ@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] arm64: dts: ti: am654: Add thermal zones
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_003039_714104_981EAC5A 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 11:21 AM Keerthy <j-keerthy@ti.com> wrote:
>
> The am654 SoC has three thermal zones namely MPU0, MPU1 and MCU
> zones.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  4 ++
>  .../dts/ti/k3-am654-industrial-thermal.dtsi   | 45 +++++++++++++++++++
>  2 files changed, 49 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> index 98b89cf0ccdf..54a133fa1bf2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> @@ -96,4 +96,8 @@
>                 power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
>                 #thermal-sensor-cells = <1>;
>         };
> +
> +       thermal_zones: thermal-zones {
> +               #include "k3-am654-industrial-thermal.dtsi"
> +       };
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi b/arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
> new file mode 100644
> index 000000000000..cdc3d40c3f60
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <dt-bindings/thermal/thermal.h>
> +
> +mpu0_thermal: mpu0_thermal {
> +       polling-delay-passive = <250>; /* milliseconds */
> +       polling-delay = <500>; /* milliseconds */
> +       thermal-sensors = <&wkup_vtm0 0>;
> +
> +       trips {
> +               mpu0_crit: mpu0_crit {
> +                       temperature = <125000>; /* milliCelsius */
> +                       hysteresis = <2000>; /* milliCelsius */
> +                       type = "critical";
> +               };
> +       };
> +};
> +
> +mpu1_thermal: mpu1_thermal {
> +       polling-delay-passive = <250>; /* milliseconds */
> +       polling-delay = <500>; /* milliseconds */
> +       thermal-sensors = <&wkup_vtm0 1>;
> +
> +       trips {
> +               mpu1_crit: mpu1_crit {
> +                       temperature = <125000>; /* milliCelsius */
> +                       hysteresis = <2000>; /* milliCelsius */
> +                       type = "critical";
> +               };
> +       };
> +};
> +
> +mcu_thermal: mcu_thermal {
> +       polling-delay-passive = <250>; /* milliseconds */
> +       polling-delay = <500>; /* milliseconds */
> +       thermal-sensors = <&wkup_vtm0 2>;
> +
> +       trips {
> +               mcu_crit: mcu_crit {
> +                       temperature = <125000>; /* milliCelsius */
> +                       hysteresis = <2000>; /* milliCelsius */
> +                       type = "critical";
> +               };
> +       };
> +};
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
