Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DE011DE79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDCGeAB8JqgTffDrhEspyMfZ1073NZfv1hQAEQzj/b0=; b=LO/4PYyMB2fOe9
	Tdcu+yai6Gdro+GeOkCZXFDuaneu7OXIw2Iov0ba7nICEUdMFUeu9GfUyaRzTLuMnpXMy7yf1RiIC
	75VZOW6nEPNrcqLnjHN9m1vP0cZJGtfbr05p/OnJMARnqfe4rMUG1mz+D7VNyfQ8ycFk/W1ZFyFDh
	Hpziav4OUIQH/7+sZqbnCRVKhqVfY8U5Cs/Y4AwQjkOd8Jtg343s3VwUB4HmLJmYUWv9HxHzINTAl
	DYbP8kvcJkCgT2dJCKOPrthsMm6wxZwMYlNh8HQ4GnNwM0+f4ytS3F4xJib4Z1YctKJDq/j+S77x1
	E/iWAAuUgS7x5oVQwePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffAv-0001qY-PG; Fri, 13 Dec 2019 07:15:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffAo-0001ps-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:15:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id bd4so859262plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 23:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mHQ0q3g+tRg8eVn0qW80HuKuE2LjVhRlKO13OPMy4+Y=;
 b=aQx+FVJ730/G66jiW0rfYPuqoQg7TX1LUPRcRHlfbgyXEgO7uKvAIHOnQCbmkWGnOP
 nGHoPie3hCjTBUatu8ebhpHQO9BqdUNAV0xvFsjKJ8RrEl1d7wXt/jNunRKwfLDG0+5r
 oq/gnJ+LH79x3kRyCsnpJsDsNAeLHkmCfHNvEPRD4GELzribJintbTTevtB8T9MrEHS7
 ooCe/agLWX2umyWLGGfecYB5OfGV9q7gN9AZT+6f2TJOtTp++c0de0VmbMT6tUqm36cv
 eP1+qq0p1ukgiHi96LKj67mNns0Y2wuEhdGSlSIvXcUDf1alpavYr44mReDvg92YFtcM
 RFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mHQ0q3g+tRg8eVn0qW80HuKuE2LjVhRlKO13OPMy4+Y=;
 b=sGPddroz1PUC9EUzEG9AIFXGxNE6LjweGeIqxqmfJUDg3FwWhITE+GwEx6ygFgr76K
 LYTeNwZdyG/jkcjJkxDiOnHHnq4teTBz7A+q5sncffEdQMVu2lw2R8MYGV8+a/7i3OCL
 Ir9omw8Ed/pcNapW7Hi32rsV5KLSqJgmSmVfVo/hTjbw0QOE70trekl51yWvw5QtZ16+
 M2YG7DNsyxhmqUoK518Ifd1BbMyFnoWrqtoeDawbwKGLV0tBRM4nVeBgaLDf0TRbzuLF
 wVKBY3YmLBgDVB1thYTn9vUdu98AcHFKitZQlBOp+2Ll0LMye34PPQpvb1NKujsFFKKc
 UEGw==
X-Gm-Message-State: APjAAAVuGHhsIi/DXuLFzRlgn9xJHcFJ1ShOsiHqMyX6FxLb14GzJhoG
 dhLzldJnZKGWQDS+YIuQhJGvVw==
X-Google-Smtp-Source: APXvYqzq74VMCuqzGB3Kj7gGVNIA4Ijzqq7PocCemaMG3g6FBuTGD0W9nmO37l+ydi3SA9McM2UACQ==
X-Received: by 2002:a17:90a:8c02:: with SMTP id
 a2mr14893150pjo.79.1576221337047; 
 Thu, 12 Dec 2019 23:15:37 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o12sm10404288pfg.152.2019.12.12.23.15.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 23:15:36 -0800 (PST)
Date: Thu, 12 Dec 2019 23:15:33 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] watchdog: qcom: Use platform_get_irq_optional() for bark
 irq
Message-ID: <20191213071533.GG415177@yoga>
References: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_231538_775860_73CCDEA6 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 12 Dec 22:49 PST 2019, Sai Prakash Ranjan wrote:

> platform_get_irq() prints an error message when the interrupt
> is not available. So on platforms where bark interrupt is
> not specified, following error message is observed on SDM845.
> 
> [    2.975888] qcom_wdt 17980000.watchdog: IRQ index 0 not found
> 
> This is also seen on SC7180, SM8150 SoCs as well.
> Fix this by using platform_get_irq_optional() instead.
> 
> Fixes: 36375491a4395654 ("watchdog: qcom: support pre-timeout when the bark irq is available")
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/watchdog/qcom-wdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
> index a494543d3ae1..eb47fe5ed280 100644
> --- a/drivers/watchdog/qcom-wdt.c
> +++ b/drivers/watchdog/qcom-wdt.c
> @@ -246,7 +246,7 @@ static int qcom_wdt_probe(struct platform_device *pdev)
>  	}
>  
>  	/* check if there is pretimeout support */
> -	irq = platform_get_irq(pdev, 0);
> +	irq = platform_get_irq_optional(pdev, 0);
>  	if (irq > 0) {
>  		ret = devm_request_irq(dev, irq, qcom_wdt_isr,
>  				       IRQF_TRIGGER_RISING,
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
