Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9A10A3CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSwuSoVSa3IKniaJfAXQ9fGqPU2dgu6qrW5qwjrJ78o=; b=ICZtmO25A4gUtf
	KIQAuZjD5/CcONEmzuGTCx6FynfJWV3l9PaImv1uxtBO4EzYKx87/fzSG/x4ZzA6VLpTIUjkNxIv0
	kxyzmI3Ck6BGF3rFc0EvrKXV4eBVo+1gNVwBcCnEFODDf4B23yV694FvH4mjqnFGOErJ97GLwVqBr
	i1BkWMmmzqzs+KiiSTePXE/bDg2GnWcuI41SRkpod5btvCXVvZOTokaT/tvtr2v6PiQMAuowSKzSR
	i3uAB1eSGEJTyHPbIMFFDda57DBtEz7tn148Ipqp2J1Qq1U8bIXI66XWAav4TqBNwFmbfSrWKy9TP
	29k/foKTjW5Wl0cU/GQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfBi-00008h-Vn; Tue, 26 Nov 2019 18:03:46 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfBS-0008RF-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:03:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574791407;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=K8kehUgxhAV4wBiHu5VatkUezbL92q7K18CI4wjHYfM=;
 b=ZRtYe/yxHaK5UlEPQS/jhOl5nbhhp+IVoCOHL0QLT57CM0Dq3I4enhChBZcVFwYwcS
 CNlCWO9ldWklQW+HcDtBaeJP7q75j3EpE9VDnlrsHs2GwpPc15FwwjMwxpoWHiyU5BkW
 +l5vdK+ji4PVhhxgGoNPT6JMgn5j2u50FEMfbnWtByiaeQ2pClUCQ1rpDe097vfMd8iK
 KLPOPkseuayGCHsNKpF2jgYVjujIvEtOySvwezmOmbDa0Yrpc8q6BmxoUVSMtMn/6PlH
 kEoankzUSqgz3/E2YYTSkuKFhqRkyM+u5AXw9DYtMLelCpqzvfItjEoH855nSTr7IzbA
 qG4A==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJDdfvYtr7wKg=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 45.0.2 AUTH)
 with ESMTPSA id 304194vAQI3RAOE
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 26 Nov 2019 19:03:27 +0100 (CET)
Date: Tue, 26 Nov 2019 19:03:26 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/4] ARM: dts: ux500: Break out DB8500 DTSI
Message-ID: <20191126180326.GB12811@gerhold.net>
References: <20191126124738.77690-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126124738.77690-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100331_623540_412C681A 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 01:47:35PM +0100, Linus Walleij wrote:
> The DB8500 exists in an enhanced variant named DB8520
> for some machines. To clearly distinguish between the
> different machines, create an explicit db8500.dtsi
> and move the operating points (only known difference so
> far) to that file, so we can add an explicit db8520.dtsi
> after this.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

> ---
>  arch/arm/boot/dts/ste-db8500.dtsi           | 15 +++++++++++++++
>  arch/arm/boot/dts/ste-dbx5x0.dtsi           |  5 -----
>  arch/arm/boot/dts/ste-href.dtsi             |  1 -
>  arch/arm/boot/dts/ste-hrefprev60-stuib.dts  |  3 +--
>  arch/arm/boot/dts/ste-hrefprev60-tvk.dts    |  1 +
>  arch/arm/boot/dts/ste-hrefprev60.dtsi       |  1 -
>  arch/arm/boot/dts/ste-hrefv60plus-stuib.dts |  3 +--
>  arch/arm/boot/dts/ste-hrefv60plus-tvk.dts   |  1 +
>  arch/arm/boot/dts/ste-hrefv60plus.dtsi      |  1 -
>  arch/arm/boot/dts/ste-snowball.dts          |  2 +-
>  10 files changed, 20 insertions(+), 13 deletions(-)
>  create mode 100644 arch/arm/boot/dts/ste-db8500.dtsi
> 
> diff --git a/arch/arm/boot/dts/ste-db8500.dtsi b/arch/arm/boot/dts/ste-db8500.dtsi
> new file mode 100644
> index 000000000000..d309fad32229
> --- /dev/null
> +++ b/arch/arm/boot/dts/ste-db8500.dtsi
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include "ste-dbx5x0.dtsi"
> +
> +/ {
> +	cpus {
> +		cpu@300 {
> +			/* cpufreq controls */
> +			operating-points = <998400 0
> +					    800000 0
> +					    400000 0
> +					    200000 0>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
> index d4a55369452d..4e02b1b6c0bf 100644
> --- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
> +++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
> @@ -51,11 +51,6 @@
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a9";
>  			reg = <0x300>;
> -			/* cpufreq controls */
> -			operating-points = <998400 0
> -					    800000 0
> -					    400000 0
> -					    200000 0>;
>  			clocks = <&prcmu_clk PRCMU_ARMSS>;
>  			clock-names = "cpu";
>  			clock-latency = <20000>;
> diff --git a/arch/arm/boot/dts/ste-href.dtsi b/arch/arm/boot/dts/ste-href.dtsi
> index 5eafd5d8a8cd..33e3b0b3c53d 100644
> --- a/arch/arm/boot/dts/ste-href.dtsi
> +++ b/arch/arm/boot/dts/ste-href.dtsi
> @@ -4,7 +4,6 @@
>   */
>  
>  #include <dt-bindings/interrupt-controller/irq.h>
> -#include "ste-dbx5x0.dtsi"
>  #include "ste-href-family-pinctrl.dtsi"
>  
>  / {
> diff --git a/arch/arm/boot/dts/ste-hrefprev60-stuib.dts b/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
> index d2405133860a..8ce6b723abf2 100644
> --- a/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
> +++ b/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
> @@ -4,8 +4,7 @@
>   */
>  
>  /dts-v1/;
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
> +#include "ste-db8500.dtsi"
>  #include "ste-hrefprev60.dtsi"
>  #include "ste-href-stuib.dtsi"
>  
> diff --git a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
> index 54b0f8282b2c..8b88c91dca6c 100644
> --- a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
> +++ b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
> @@ -4,6 +4,7 @@
>   */
>  
>  /dts-v1/;
> +#include "ste-db8500.dtsi"
>  #include "ste-hrefprev60.dtsi"
>  #include "ste-href-tvk1281618.dtsi"
>  
> diff --git a/arch/arm/boot/dts/ste-hrefprev60.dtsi b/arch/arm/boot/dts/ste-hrefprev60.dtsi
> index 937f942f0961..115495de8612 100644
> --- a/arch/arm/boot/dts/ste-hrefprev60.dtsi
> +++ b/arch/arm/boot/dts/ste-hrefprev60.dtsi
> @@ -5,7 +5,6 @@
>   * Device Tree for the HREF+ prior to the v60 variant.
>   */
>  
> -#include "ste-dbx5x0.dtsi"
>  #include "ste-href-ab8500.dtsi"
>  #include "ste-href.dtsi"
>  
> diff --git a/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts b/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
> index 36163c0b5267..1316886e6bcb 100644
> --- a/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
> +++ b/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
> @@ -6,8 +6,7 @@
>   */
>  
>  /dts-v1/;
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
> +#include "ste-db8500.dtsi"
>  #include "ste-hrefv60plus.dtsi"
>  #include "ste-href-stuib.dtsi"
>  
> diff --git a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
> index cf59e9bb9a74..b31e43d5ff89 100644
> --- a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
> +++ b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
> @@ -6,6 +6,7 @@
>   */
>  
>  /dts-v1/;
> +#include "ste-db8500.dtsi"
>  #include "ste-hrefv60plus.dtsi"
>  #include "ste-href-tvk1281618.dtsi"
>  
> diff --git a/arch/arm/boot/dts/ste-hrefv60plus.dtsi b/arch/arm/boot/dts/ste-hrefv60plus.dtsi
> index aece8eb2924f..05b4fbbba57f 100644
> --- a/arch/arm/boot/dts/ste-hrefv60plus.dtsi
> +++ b/arch/arm/boot/dts/ste-hrefv60plus.dtsi
> @@ -3,7 +3,6 @@
>   * Copyright 2012 ST-Ericsson AB
>   */
>  
> -#include "ste-dbx5x0.dtsi"
>  #include "ste-href-ab8500.dtsi"
>  #include "ste-href.dtsi"
>  
> diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
> index f8dec3976c91..be90e73c923e 100644
> --- a/arch/arm/boot/dts/ste-snowball.dts
> +++ b/arch/arm/boot/dts/ste-snowball.dts
> @@ -4,7 +4,7 @@
>   */
>  
>  /dts-v1/;
> -#include "ste-dbx5x0.dtsi"
> +#include "ste-db8500.dtsi"
>  #include "ste-href-ab8500.dtsi"
>  #include "ste-href-family-pinctrl.dtsi"
>  
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
