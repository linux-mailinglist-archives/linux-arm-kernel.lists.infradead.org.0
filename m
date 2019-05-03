Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EC6129D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 10:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:References:In-Reply-To:
	Mime-Version:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RYpweoVIL8RjBXN9hB7akDzBmuE3xzZZKD8ryC/kRE=; b=LgpMyIg7Gy8+pa
	3+7Y5oRRGF7jOg2/YTj1CJ0kljfxYuMvk1Pazy4uK41vrxHef9VbVohkWpao2X6O2aoxXTjcpHOVb
	zNs+MD0G8e95xVjzQ3JcfiR3Vpg6RDDaALL11/RSUiFMrTkEQdrlPLEIcENkux38Qt9Mi8cls5zNl
	msJgf0UbpAyhEyhmbjdJbi24xMsVMX786m38lPwua7RtI+DDTVSKfg5hk4FY3J2y6Xd81e07VsYUx
	ssayvvPQaNisa7Qx9Lt0SeWgeqsNPdg3YKsxWL3q26rG3T0NkXuiqi1Gb68hbLMRR3wd4/aKDXUHh
	wEYsWgoNHPbO3JQqga3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTUt-0003jf-88; Fri, 03 May 2019 08:24:47 +0000
Received: from securetransport.cubewerk.de ([188.68.39.254])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTUm-0003jI-Q3
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 08:24:42 +0000
Received: from DHPLMX01.DH-ELECTRONICS.ORG (unknown [188.193.158.174])
 (using TLSv1.2 with cipher DHE-RSA-CAMELLIA128-SHA256 (128/128 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id E4BEF5E987;
 Fri,  3 May 2019 10:23:47 +0200 (CEST)
Received: from DHPLMX01 (localhost [127.0.0.1])
 by DHPLMX01.DH-ELECTRONICS.ORG (Postfix) with ESMTP id 9A2A32140024;
 Fri,  3 May 2019 10:23:47 +0200 (CEST)
Received: by DHPLMX01 (kopano-spooler) with MAPI; Fri, 3 May 2019 10:23:47
 +0200
Subject: RE: [PATCH] ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase
 to i.MX6SX [Klartext]
From: =?utf-8?Q?Christoph_Niedermaier?= <cniedermaier@dh-electronics.com>
To: =?utf-8?Q?Fabio_Estevam?= <festevam@gmail.com>, =?utf-8?Q?shawnguo=40k?=
 =?utf-8?Q?ernel=2Eorg?= <shawnguo@kernel.org>
Date: Fri, 3 May 2019 08:23:47 +0000
Mime-Version: 1.0
In-Reply-To: <20190502113020.8642-1-festevam@gmail.com>
References: <20190502113020.8642-1-festevam@gmail.com>
X-Priority: 3 (Normal)
X-Mailer: Kopano 8.6.8
Message-Id: <kcis.9E822BA1761B40BAB23F42EDD9B5F6A8@DHPLMX01>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_012440_993732_87E86B8E 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: =?utf-8?Q?linux-arm-kernel=40lists=2Einfradead=2Eorg?=
 <linux-arm-kernel@lists.infradead.org>,
 =?utf-8?Q?stable=40vger=2Ekernel=2E?= =?utf-8?Q?org?= <stable@vger.kernel.org>,
 =?utf-8?Q?linux-imx=40nxp=2Ecom?= <linux-imx@nxp.com>,
 =?utf-8?Q?kernel=40pengutronix=2Ede?= <kernel@pengutronix.de>,
 =?utf-8?Q?anson=2Ehuang=40nxp=2E?= =?utf-8?Q?com?= <anson.huang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com>
Sent: Thursday 2nd May 2019 13:30
> Since commit 1e434b703248 ("ARM: imx: update the cpu power up timing
> setting on i.mx6sx") some characters loss is noticed on i.MX6ULL UART
> as reported by Christoph Niedermaier.
> 
> The intention of such commit was to increase the SW2ISO field for i.MX6SX
> only, but since cpuidle-imx6sx is also used on i.MX6UL/i.MX6ULL this caused
> unintended side effects on other SoCs.
> 
> Fix this problem by keeping the original SW2ISO value for i.MX6UL/i.MX6ULL
> and only increase SW2ISO in the i.MX6SX case.
> 
> Cc: stable@vger.kernel.org
> Fixes: 1e434b703248 ("ARM: imx: update the cpu power up timing setting on
> i.mx6sx")
> Reported-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/mach-imx/cpuidle-imx6sx.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/cpuidle-imx6sx.c b/arch/arm/mach-imx/cpuidle-imx6sx.c
> index fd0053e47a15..57cb9c763222 100644
> --- a/arch/arm/mach-imx/cpuidle-imx6sx.c
> +++ b/arch/arm/mach-imx/cpuidle-imx6sx.c
> @@ -15,6 +15,7 @@
>  
>  #include "common.h"
>  #include "cpuidle.h"
> +#include "hardware.h"
>  
>  static int imx6sx_idle_finish(unsigned long val)
>  {
> @@ -99,8 +100,12 @@ static struct cpuidle_driver imx6sx_cpuidle_driver = {
>  .safe_state_index = 0,
>  };
>  
> +#define SW2ISO_ORIGINAL 0x2
> +#define SW2ISO_IMX6SX 0xf
>  int __init imx6sx_cpuidle_init(void)
>  {
> + u32 sw2iso = SW2ISO_ORIGINAL;
> +
>  imx6_set_int_mem_clk_lpm(true);
>  imx6_enable_rbc(false);
>  imx_gpc_set_l2_mem_power_in_lpm(false);
> @@ -110,7 +115,9 @@ int __init imx6sx_cpuidle_init(void)
>  * except for power up sw2iso which need to be
>  * larger than LDO ramp up time.
>  */
> - imx_gpc_set_arm_power_up_timing(0xf, 1);
> + if (cpu_is_imx6sx())
> + sw2iso = SW2ISO_IMX6SX;
> + imx_gpc_set_arm_power_up_timing(sw2iso, 1);
>  imx_gpc_set_arm_power_down_timing(1, 1);
>  
>  return cpuidle_register(&imx6sx_cpuidle_driver, NULL);
>

Tested-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>

Best regards,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
