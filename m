Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598E53280F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 07:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T52hW/VySnF/bzwRJosGvgDClb6a81Msew3zQ37Bi44=; b=K92TsYzHL0gpxR
	9zR7GHAMvqmNY1bDyKdWOJlWrt+a1pgrOMnAaFVMRk42D20ztW5/IOYguSN8JpBfxm2r7l81dKk4P
	DRWBe4z3Jm6sHPVkp35Pgr0+6VcioTsdK3liLV7PaH7SbbTNEy4y6jz6/O/VMgF3pkLgAxUxisk7i
	Tvq3k2gNN26UklQ9L5C4m+KuIAcqeCLWmOZpjX//Nb5hrcgcVZj6cCfjDFvg74kV8WbeHml4TiAhg
	Y9VMBXs58dCVaEaRN4X73m7ES3DkFJAa97tVq0zCAtmpugpAs87WDd/huKDqLVjuE27tnEIiAWTdM
	hM8LFQPcDG0dM/fVDcIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXfga-0007Hm-G2; Mon, 03 Jun 2019 05:39:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXfgU-0007HK-El
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 05:39:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id h2so4362029pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 22:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6l/t3TPXvfJk0FS5YLye4jJo2DVIjuavG0t1rw643+k=;
 b=ktlv2Mm+By5P70XspYlFjdpSJ4FlQUI0eZS4JlIBkO/7/R5LyitYYA50M/cEXEQ2sA
 nqUh/zQ26C7HTbHeGzl8tZcGwKECYp61JdNHaqddmXtgebc8aWJJ37uZr/ARaS907BpA
 mPqLEydS8bIEj2b2bfV+te5IErDpqLzBS53VmN9aPDNau0llfo7GMgeNt2UZ/UcODWhS
 DwSbpELYfj5kPrLS2W4tM3uLQwjuGFtCSTH0yXivvXXY26bjZnkAxR2rRCQKCsCRjjXd
 bOn/eFPHnIKuX75JrjoTEu0NHK9AQ/y4Iaw4vSh4u/vCMV8qObPUWooWjoB5k+0A5H94
 rVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6l/t3TPXvfJk0FS5YLye4jJo2DVIjuavG0t1rw643+k=;
 b=biw1WmRG/+uTJB2wcL2vu02nGtqiDDuhVh20UeeCSlo/b92WTZ3yJXLj9z7tEEbgdI
 zUO4UucZy+i1zjRn2QAN5q1wRihK6zJ08o2+DDLcqrZ9x6deqEgrQMtznXjfOza+wzn/
 DPl4zRcGUdBw7KXV7BCW6Pa0rkBi3rcHqueYyfNstt3uV+mzARTHOm5qWaRGwpqzFRV5
 XL2vW9TVtfSSZ9yRwpZXrImcz8Y4/50wFzOgzByDSuZyevutNVQ7WLU6J1Pv9Ads8fv2
 ZyDXuyLGRdQrrcHR9zBLNQgisAq1sUaXc30Y96+R7nmJ0U16PXFIAx03PzOOnpl57Trf
 NZ6g==
X-Gm-Message-State: APjAAAXr/XMb3lo+vnP1guxGdz+bsf+bU3OxTExfY/6LLtbZ9nvSL+ll
 H/8P+wQ6EfAZkYGvaA74BMl5kw==
X-Google-Smtp-Source: APXvYqxPwjgggsw3vyhv07YeyRgvqkFWuIU3POtBpFlAjIwDxc07WYB9GVgYDELUGf58CTZeMA36Dw==
X-Received: by 2002:a17:90a:de14:: with SMTP id
 m20mr27355763pjv.36.1559540337621; 
 Sun, 02 Jun 2019 22:38:57 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id w187sm15573923pfb.4.2019.06.02.22.38.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 22:38:53 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:08:50 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 3/3] cpufreq: Switch imx7d to imx-cpufreq-dt for speed
 grading
Message-ID: <20190603053850.tkskdzcloir4k3kw@vireshk-i7>
References: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
 <8787934ff35e7e55837f2caabc0d5bf65828d971.1559131365.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8787934ff35e7e55837f2caabc0d5bf65828d971.1559131365.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_223902_494981_E318D92D 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-05-19, 12:03, Leonard Crestez wrote:
> This driver can handle speed grading bits on imx7d just like on imx8mq
> and imx8mm.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm/mach-imx/mach-imx7d.c       | 7 +++++++
>  drivers/cpufreq/cpufreq-dt-platdev.c | 2 +-
>  drivers/cpufreq/imx-cpufreq-dt.c     | 1 +
>  3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
> index 26ca744d3e2b..0b77412795c9 100644
> --- a/arch/arm/mach-imx/mach-imx7d.c
> +++ b/arch/arm/mach-imx/mach-imx7d.c
> @@ -95,10 +95,16 @@ static void __init imx7d_init_machine(void)
>  
>  	imx_anatop_init();
>  	imx7d_enet_init();
>  }
>  
> +static void __init imx7d_init_late(void)
> +{
> +	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
> +		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
> +}
> +
>  static void __init imx7d_init_irq(void)
>  {
>  	imx_init_revision_from_anatop();
>  	imx_src_init();
>  	irqchip_init();
> @@ -111,7 +117,8 @@ static const char *const imx7d_dt_compat[] __initconst = {
>  };
>  
>  DT_MACHINE_START(IMX7D, "Freescale i.MX7 Dual (Device Tree)")
>  	.init_irq	= imx7d_init_irq,
>  	.init_machine	= imx7d_init_machine,
> +	.init_late      = imx7d_init_late,
>  	.dt_compat	= imx7d_dt_compat,
>  MACHINE_END
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 19c1aad57e26..eb282dff9f2c 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -38,11 +38,10 @@ static const struct of_device_id whitelist[] __initconst = {
>  	{ .compatible = "hisilicon,hi3660", },
>  
>  	{ .compatible = "fsl,imx27", },
>  	{ .compatible = "fsl,imx51", },
>  	{ .compatible = "fsl,imx53", },
> -	{ .compatible = "fsl,imx7d", },
>  
>  	{ .compatible = "marvell,berlin", },
>  	{ .compatible = "marvell,pxa250", },
>  	{ .compatible = "marvell,pxa270", },
>  
> @@ -106,10 +105,11 @@ static const struct of_device_id whitelist[] __initconst = {
>   */
>  static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "calxeda,highbank", },
>  	{ .compatible = "calxeda,ecx-2000", },
>  
> +	{ .compatible = "fsl,imx7d", },
>  	{ .compatible = "fsl,imx8mq", },
>  	{ .compatible = "fsl,imx8mm", },
>  
>  	{ .compatible = "marvell,armadaxp", },
>  
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index 5061503cb0a1..ce26ffc18ce6 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -18,10 +18,11 @@
>  #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
>  #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
>  #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
>  
>  static const struct of_device_id imx_cpufreq_dt_match_list[] = {
> +	{ .compatible = "fsl,imx7d" },
>  	{ .compatible = "fsl,imx8mm" },
>  	{ .compatible = "fsl,imx8mq" },
>  	{}
>  };

What is the purpose of this array and can we get rid of it instead ? I am asking
as this driver gets probed only if the platform code has created the
imx-cpufreq-dt device and it shouldn't get created for other machines than what
is supported.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
