Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DCC181056
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:03:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnC8wAo6mETaTCHFlGDx27tQ78q5vVj3gM1G4ImlkJM=; b=KYUoTE39//eGqy
	oQpvIA2vDDT1J1n2XuE6wEhV1w5lDw0GGpvs8NsX8DZzFotBv9riY02Lu7y0RZtE7Kl+dqD1O2RnS
	j0M7wtrsetH5b6sPu57AWeqz7IQXGOs8t07KhoBMXXFWZQvn/AGT8OpRXXnyhF31uGlQtUOJa/edv
	Cp9cYy/0BiUaETcwGPENkE64QLWO5XGY44czPri8Gyi5oRhx9evtn8awTDekuD0ffuV0JdfnoZwBw
	HOlg3Gf+1KAicCO8gJPODAYYAIr0LgSuWDru8AEtUhe8BCkJWEnYz8qYJoAf382zCr/LS0dsa8gjz
	RA9oZirliEFUXdumiUQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuT0-0001zh-8c; Wed, 11 Mar 2020 06:03:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBuSs-0001z8-L9
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:03:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so564505plk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 23:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zKMeRF7HddfnHVb8kWv4OBPengz0IeuN3e5fJnxthh4=;
 b=XY/Wn/PtObZyN+lUZ0ITV6i54XXummuNQunhHm89lzSahh96SL/vERmPc5DQ13Oxdr
 rX9EFR2Vu0qciNxUbD4Gy2F+6xaVPnp0Q1CHBeOhco8qhPdXAX35rWc9w+w05/J9dcmq
 MyYz1ZNma8kkOdAF7d8HY2nGgg9Hp+n6QQQzfErjgYsmTBvqTXjuVOtwwAhFuS2GK0nt
 MM/Q8ZyhQ0lbShT8+DX/YmjscF0JEO7KHOlN4L8MbcFgdD5rhHDm+m+oUEg0ktaDVehi
 dia4FG7fmZ0bp8XqcThxy5zkJgqwAekU+OU90QhNkJ0YBMsy7atRMBx91QEEnLsJbaF0
 IQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zKMeRF7HddfnHVb8kWv4OBPengz0IeuN3e5fJnxthh4=;
 b=rPWV3r7h8y5y7j6TTt2BOoJwUXf907R1ZHQr8HhOyxtIiS+h0F+JDlmF2MnOYwJdBI
 6PLHWkKRazASuwX9L+oM/SMLXgVGSXs4JbvdRHbpiPwJy7Au8NuyvoTkJNQ2RElG8uRV
 giQTexmUXr6cjCJsYgjxXxRcqfBLr5xaJqlV6b1jZzqm4fJnDD5aUXfkdK6D4Lz445CP
 BLY9mXwNZqm9TeNBIuxZ9zW9TIw14itxH/KRtTBadubSOPdlSZo7yp7krQ5YCm7rrjc8
 FSeIPhl+uzxgZ8l6kmC5ba3A9pyDrVAZZ7TjuQrHz1YFUr1PuW+Gqk0j0HuDQzcpT+iW
 +15w==
X-Gm-Message-State: ANhLgQ3SBOXvMC/EefypxBjN/sVnEHw2n+HGGb3VahG7fRQz3fJJfwoa
 AEmKWQryxRPII1d1+rwR3Rz7Kw==
X-Google-Smtp-Source: ADFU+vv2VGjfxeyu1ttxNqb7u11XkmIE28Oo4Hsp+hyTV5zUueINr9oVpMPKaqCQ7o66UFKyy/Iirg==
X-Received: by 2002:a17:90a:32c1:: with SMTP id
 l59mr1766500pjb.36.1583906613321; 
 Tue, 10 Mar 2020 23:03:33 -0700 (PDT)
Received: from localhost ([122.171.122.128])
 by smtp.gmail.com with ESMTPSA id x72sm11377214pfc.156.2020.03.10.23.03.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Mar 2020 23:03:32 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:33:30 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] cpufreq: imx-cpufreq-dt: Correct i.MX8MP's market
 segment fuse location
Message-ID: <20200311060330.ecvdlvflahdbptsi@vireshk-i7>
References: <1583819296-7763-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583819296-7763-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_230334_726544_0764DE37 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: abel.vesa@nxp.com, linux-pm@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-03-20, 13:48, Anson Huang wrote:
> i.MX8MP's market segment fuse field is bit[6:5], correct it.
> 
> Fixes: 83fe39ad0a48 ("cpufreq: imx-cpufreq-dt: Add i.MX8MP support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index 0e29d88..de206d2 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -19,6 +19,8 @@
>  #define IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK	(0xf << 8)
>  #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
>  #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
> +#define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_SHIFT    5
> +#define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 5)
>  
>  /* cpufreq-dt device registered by imx-cpufreq-dt */
>  static struct platform_device *cpufreq_dt_pdev;
> @@ -45,7 +47,13 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  	else
>  		speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK)
>  			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
> -	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
> +
> +	if (of_machine_is_compatible("fsl,imx8mp"))
> +		mkt_segment = (cell_value & IMX8MP_OCOTP_CFG3_MKT_SEGMENT_MASK)
> +			       >> IMX8MP_OCOTP_CFG3_MKT_SEGMENT_SHIFT;
> +	else
> +		mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK)
> +			       >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
>  
>  	/*
>  	 * Early samples without fuses written report "0 0" which may NOT
> -- 

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
