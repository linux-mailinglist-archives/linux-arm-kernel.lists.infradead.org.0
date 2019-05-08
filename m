Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60116FB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 05:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EzU8HW+NJ/Cn1pEF3F8fuHcVf1bSpyZk1lm+eV2Ffo=; b=f8Xk5yFWjtYkZd
	K4xBkNcWTsXeSzoYobmQS7eUTehNCV3IXKUtmt4YADMoAwqnvFJPKG7Z7q4paJujxe8ON3TgSrhu5
	3sFywPg6/6OVvJUczV6YF0gh4BDosP32IUh6nbHMF7jy8zEQnEeL1w/gs2Nx1IVRW420BnC/tOvG4
	aDxCFWkEYH3fKheOgETjBZjojdFY9wu8Tsytb0Hqo37qC+ziKuJqZ5AREtPqUBU0287s9p++BcYiB
	rQ3CQfpjQFYcamdCM6+BIdBIT9thVRNLOWAuTI43KMykzgD2Fk3ky0C6CWZC3aBvhmnm7UlZ7nx+P
	tSqQAxwb3HmMEkxQHgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODeo-00049o-Sz; Wed, 08 May 2019 03:54:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODeh-00049J-Le
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 03:54:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id e24so9745597pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 20:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cVIqQuQhPNK8bauPkhz1EwiDMHC+lDayWMP+2CUUfv0=;
 b=DhU6DoiKidW/7p6JsZv10IZ/XDAWdrhdxkMqTcB+c0Qdhxwatdtvd57A02FxSV/pyX
 mCHLQyV0CgIToWefPLues8oVW5cmhEMZEjFHmJ9BJHdneraVo3PGQRhMfpB+eEKRKH3u
 HzA/4I5+nmpMdFakyMCTX//lwuxC7Xcp+Z+TJ11hYWfMQQLswPAzrusv2hQlhdxPVudn
 faH4mp2I3YnSMUD2S3Pj0lXxdMLkRPBNnC+SE7Qes1Cvs4hjO01b+h25Qge4pzDTs72W
 1nYxvEYOrjOQJcUb/TL8lJodz1/EZVenBG+XNl7pV132kvdLBsfBsYmXeOr2xaL9erUW
 T5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cVIqQuQhPNK8bauPkhz1EwiDMHC+lDayWMP+2CUUfv0=;
 b=XsLWA51bTdHv36DgXU9zjKx0O9jrPj0rM+IMrg/YIN2HpW65OYU6Ud5XiJdOdg71oy
 Wi9CLLAAPip7pOPYuZXzNmmyJO9wFyFrpzdkpfQ5ZgK+DaMhiFzO4ycTn9po5ivn3fgc
 TXmtCXe1Q72RmxK+IkrY3SZKZtTlZSxlnZuAFdKbTA/VODleVO8V2EkRAeUUBTMacqpr
 MPd2yuXLn+6IJ3OMmH3R51Q3voKiVqP51Q+X2YcHoU89Rzulz6GIiYozT3wTn370Zykz
 H2Q18KgyDGjqQYOo/ysTXYVtK8pvQ7DAUepNR2mz0aUB86qtZEDv9sGQ/pzjzzFi51C7
 f7/g==
X-Gm-Message-State: APjAAAUA+oN1Nj9rUyc9rXb7dOFvf8erL910c2iO75GBbdjTkW28paK0
 h8NV0i/YBGX+B1vprWPkYoG6zg==
X-Google-Smtp-Source: APXvYqxfvhpxtDtzrYT9I5+J5woyqtPOqke43/sMpYFxgaxbSBZA6lUQ9FQDpN6Smn0aLtYKbbTrZg==
X-Received: by 2002:a63:360e:: with SMTP id d14mr44517659pga.188.1557287646303; 
 Tue, 07 May 2019 20:54:06 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id 13sm18559568pfi.172.2019.05.07.20.54.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 20:54:04 -0700 (PDT)
Date: Wed, 8 May 2019 09:24:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 1/4] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190508035402.7pbikzpkzxxesmlw@vireshk-i7>
References: <cover.1557236799.git.leonard.crestez@nxp.com>
 <607242a278a4532d0b4285e0fb56abfd5767fdd1.1557236799.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <607242a278a4532d0b4285e0fb56abfd5767fdd1.1557236799.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_205407_715247_82F4BD43 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-05-19, 13:52, Leonard Crestez wrote:
> Right now in upstream imx8m cpufreq support just lists a common subset
> of OPPs because the higher ones should only be attempted after checking
> speed grading in fuses.
> 
> Add a small driver which checks speed grading from nvmem cells before
> registering cpufreq-dt.
> 
> This driver allows unlocking all frequencies for imx8mm and imx8mq and
> could be applied to other chips like imx7d
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> ---
>  drivers/cpufreq/Kconfig.arm          | 10 +++
>  drivers/cpufreq/Makefile             |  1 +
>  drivers/cpufreq/cpufreq-dt-platdev.c |  3 +
>  drivers/cpufreq/imx-cpufreq-dt.c     | 96 ++++++++++++++++++++++++++++
>  drivers/soc/imx/soc-imx8.c           |  3 +
>  5 files changed, 113 insertions(+)
>  create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c
> 
> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> index 179a1d302f48..78ed9ef49e68 100644
> --- a/drivers/cpufreq/Kconfig.arm
> +++ b/drivers/cpufreq/Kconfig.arm
> @@ -90,10 +90,20 @@ config ARM_IMX6Q_CPUFREQ
>  	help
>  	  This adds cpufreq driver support for Freescale i.MX6 series SoCs.
>  
>  	  If in doubt, say N.
>  
> +config ARM_IMX_CPUFREQ_DT
> +	tristate "Freescale i.MX8M cpufreq support"
> +	depends on ARCH_MXC && CPUFREQ_DT
> +	default m if ARCH_MXC && CPUFREQ_DT

As I said in the previous version, the if block above is redundant and
not required.

> +	help
> +	  This adds cpufreq driver support for Freescale i.MX8M series SoCs,
> +	  based on cpufreq-dt.
> +
> +	  If in doubt, say N.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
