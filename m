Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0333FDFF51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gEhK7EdpyTwdPC5pPsvrm5lwGoN8IqEiC4yIukmH5s=; b=NTJqBBksHdm9CG
	zPqu3a5NVoZo5isAnf5hqJlussYdOihqF94jjId9bViO7pfsq6jtnWOdmIlEK3pq+FP6wBapadZIN
	XLiOVcY6Ct0c6hJtK4gkQyXPQ9SzoBA97hwnhL62Q1xuAL6TLvkWh/4Yyh2J9VSIR8vi3LfuhJpWH
	mrBflSdbefMew9g5ckTwIFGIkPSG8c7lG9sG6cxpRh/MerGAqJauWO+22HZOlSVvcv8XspKN7SUUf
	AXrfcUNiwuW2Qu1Ooa8xfd/fZeJ9gthAn14YslKS/9e1i1Wbq+rZN+DOUIRkivTRQmSULR2+PtMyR
	FLn1F4mWuiCuq3rOpneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpSk-0003Zp-6t; Tue, 22 Oct 2019 08:24:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpSX-0003YL-QI
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:24:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so10160984pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 01:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CFxsIRuWp0vZOhj5hNfLUpeIE+LAy3dw4lXkf3DFfzY=;
 b=dPLfFB5HlI1vxlm6xwyWMAkwYK1XgdGYUOsJABhScpDE68bXbwNVmd3f5NAfyNHfjp
 dLRcCje0HninXq48K2NRwHW9wI6byotZRh0rjqKzTUDIrXHu042N9LIon4kRGTOgAheq
 QF5DkB+WnNPD0hrMZnBHsMVVSBMrse5N2veykCoaT0JtGFaylXi5ftca8464RZ+XOdYS
 j20qPsv5rDTHJ/IFNAhrjz33IK0KxyOJoQV3SQ6jvYx4psr5kr9Qj5tCHlBSwsDj1/Gq
 uS01RuVEx3owJRqM5VwgO2u7NQDj+HJq8cyx4emNGip8Ub04zLl1iJbMEh7Td42LnATW
 VqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CFxsIRuWp0vZOhj5hNfLUpeIE+LAy3dw4lXkf3DFfzY=;
 b=mIRhoadD8AkuYqVqxW1r+Lw4nezGoaDjcVpvJGSDb9FbhsQRYQ/gId+rLAXtwAh3C2
 y2+ducHMgtXguc4goKmCkdQ09BPX6AcPnLSaZ4fvxwrYNt0BB6K2NsAbWv3+AR7oMR4L
 vQWKfzfHUGED6UJ+GzknI6LlPJakAMFdtlQtG907P3KCbzTeXa3M22dZXzKGl9ddWPBf
 pPvCIVOPday7lQOyc/X8ykSovIYzEhiGbUKO7dVJWHgr79hlwga16HD6+Rm3fh+oOVyv
 2KAE7VvE7iX5qxGQTAXS/ulBqhKalBmQK+86mmjRMnJ1J5lh4DyEVzUhZt+1oYjouB9O
 i3Uw==
X-Gm-Message-State: APjAAAWA7zFZWH5aUm9O/DDacwIehUm78lCmxJ5ELYDZRPV7aXa1ibUG
 Qc2vpQv4zyzelYWKRva88tVcSQ==
X-Google-Smtp-Source: APXvYqwh0aapj+IGEAdyDy5qrmKxfmWmhi4mI6YhmF2/pKB2NYd5J2n5ygBLARHWTjZ56Zt5fUPgJg==
X-Received: by 2002:a62:61c7:: with SMTP id v190mr1966243pfb.47.1571732644743; 
 Tue, 22 Oct 2019 01:24:04 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id y138sm18875546pfb.174.2019.10.22.01.24.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 01:24:03 -0700 (PDT)
Date: Tue, 22 Oct 2019 13:54:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] cpufreq: imx-cpufreq-dt: Correct i.MX8MN's default speed
 grade value
Message-ID: <20191022082400.7dsoo57mt7wfpqs7@vireshk-i7>
References: <1571719179-23316-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571719179-23316-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_012405_857927_E1CF8ECA 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 rafael.j.wysocki@intel.com, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-10-19, 12:39, Anson Huang wrote:
> i.MX8MN has different speed grade definition compared to
> i.MX8MQ/i.MX8MM, when fuses are NOT written, the default
> speed_grade should be set to minimum available OPP defined
> in DT which is 1.2GHz, the corresponding speed_grade value
> should be 0xb.
> 
> Fixes: 5b8010ba70d5 ("cpufreq: imx-cpufreq-dt: Add i.MX8MN support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index 35db14c..26531f0 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -44,19 +44,19 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
>  
>  	/*
> -	 * Early samples without fuses written report "0 0" which means
> -	 * consumer segment and minimum speed grading.
> -	 *
> -	 * According to datasheet minimum speed grading is not supported for
> -	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
> +	 * Early samples without fuses written report "0 0" which may NOT
> +	 * match any OPP defined in DT. So clamp to minimum OPP defined in
> +	 * DT to avoid warning for "no OPPs".
>  	 *
>  	 * Applies to i.MX8M series SoCs.
>  	 */
> -	if (mkt_segment == 0 && speed_grade == 0 && (
> -			of_machine_is_compatible("fsl,imx8mm") ||
> -			of_machine_is_compatible("fsl,imx8mn") ||
> -			of_machine_is_compatible("fsl,imx8mq")))
> -		speed_grade = 1;
> +	if (mkt_segment == 0 && speed_grade == 0) {
> +		if (of_machine_is_compatible("fsl,imx8mm") ||
> +			of_machine_is_compatible("fsl,imx8mq"))

of_machine_is_compatible should come right below the above
of_machine_is_compatible here, instead of a leading tab.

> +			speed_grade = 1;
> +		if (of_machine_is_compatible("fsl,imx8mn"))
> +			speed_grade = 0xb;
> +	}
>  
>  	supported_hw[0] = BIT(speed_grade);
>  	supported_hw[1] = BIT(mkt_segment);
> -- 
> 2.7.4

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
