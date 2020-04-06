Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC80419FDD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 21:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRsChtf4kLO1AlpZMeeDWK2HSnYOnw4uOegSJFtXYQ4=; b=FjkPsjLlSsu+6N
	wMBjLl9e+2HHNZ3yPBVA7iRF4epCmWcaKNYk4NlyPOQOAmkQVDWCDP6g1Tx0dTWZtcOiH6opoqnzJ
	IkPVEN/6uOrWNjwyqp6w6PC0hZAjwrmFMiM19EdIbD4bzl+VcfIW1ZLIycN7VpVRul9tRQ4QpMCLV
	QLlg6J40WjLLrICrLMeKJL1yB6y1LQcBft0Y11ZDBFVUYDFy5YSuEEM0raoiJXBN0HQeZ6GQXPnHe
	yDor3xlNDWaqn9hPxQVeNSRRgJo23H65kxnHMl2tADI/UszxPuIPSk1JC6qo3H8xDZ97S+r545/DA
	dOzbK05AqGQQN+U3uKFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLX2z-0003u1-6n; Mon, 06 Apr 2020 19:04:37 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLX2q-0003ti-Uc
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 19:04:30 +0000
Received: by mail-ua1-x944.google.com with SMTP id y17so338501uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 12:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dKSOuUapGnWf3Hq2VKiORYvF7/gi1e0olK/3vh44kQQ=;
 b=bOB0LqZRTfAo6bdJQM33HQTyFUvLOR2z0Foi8Jb7TOSz1Og4RBWGZeKA4kZ/KpEEAp
 lAEpgpzt0q6aG5DTLjV4xRZnSYIp0ZzUTqyGwsDsiCON6vSw4wMh362yvErfWIEjIFtE
 Wa+l+6HD1L6snPqXyu03v/xIPeJB9BnUfoLrY6RgTLjRXZdnoRb04+OZOWBvFSzLCXmG
 Lczq/lgonbLYzFjzZZBUwzc41Ae9iurYnVUxNbq3GDCxYejuuHJkSx8X/MQ2/WEHfbVC
 Y/gPn+28cj89NxAFAFKPa/J8wNu1zga0PppWe0Z6j9DtuYOUV0tBIJCUQnHtf0qtUtqy
 mRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dKSOuUapGnWf3Hq2VKiORYvF7/gi1e0olK/3vh44kQQ=;
 b=L1jmy5j7euVRKwcH8vJa/sOpEz1hoQP5JJoV9o1bnBmpxiUoUr3EdUWazCf8GBe7Ow
 OPJ+2rix63LbMJGD0wIwJuhSBdUqW2VRKBU/pKYi/6Yt+LdFiEqJulsKzylsFh9z+h9R
 abbopcgOMSa7iiT8mpSX7Z4W0DGgZFyuKUN9p2N6fUlIk/eBiRd/3mcJaKxADkpe1Y5m
 FBJWEQ1wXnh3beOIy8NtjTYaGrhzjrvNZDcgZXeb0e2/pWMXkvsoe27tz/daqQmQTQAo
 ARp7EjlOwzhV7nKh7x3tlbBVO5zDFqtpBKAeS9nJ5S6mYRBsVIBaRgFmbdeqdD66jxuG
 FODg==
X-Gm-Message-State: AGi0PuYOGqsL1mKcDkbKc13P3aocveA9MA4S5pKDMtrWDEbTrNn2iA8n
 4bRjKH/U6FwZLZn+2ouUd0VYBJ4CM1jgdQBjhq0qhQ==
X-Google-Smtp-Source: APiQypIK/YDmw7c24JNIRU7dH38DelSt/uLu7XVUJgDjKlcvdhZlf2ykNjo+z5hkGjCXR2mqiEa0SbEjT9HPUmZGtmU=
X-Received: by 2002:ab0:5f90:: with SMTP id b16mr805358uaj.77.1586199867533;
 Mon, 06 Apr 2020 12:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200331075356.19171-1-j-keerthy@ti.com>
 <20200331075356.19171-4-j-keerthy@ti.com>
In-Reply-To: <20200331075356.19171-4-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Tue, 7 Apr 2020 00:34:16 +0530
Message-ID: <CAHLCerP3usTcNeRwGekWG6xGdAQedZfoegtfsda8O-OHW9i-oQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/4] arm64: dts: ti: am654: Add thermal zones
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_120428_989871_3C29369F 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
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
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 1:24 PM Keerthy <j-keerthy@ti.com> wrote:
>
> The am654 SoC has three thermal zones namely MPU0, MPU1 and MCU
> zones
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  .../dts/ti/k3-am654-industrial-thermal.dtsi   | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
>
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

You are referencing the wkup_vtm0 node before defining it in the next patch.

Swap the order of the patches and move the include for thermal zones
to this patch.

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
