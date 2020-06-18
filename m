Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A291FECF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9vIpiePigDzjP2rZQDtVUua4tygLNCOyoW5srckbro=; b=YNybp8EJyeEUUa
	t88kqKKIzprVT1BiE9XUIjhJlrSag9p7ZruJDo5HXIFFw3zfiIEil1QU5xVO3nSbJIM2NJxv2uiqE
	dwDeTZNNVhbnl8YcMtS9P5TEyUoKUmNJ4FRxkfP+WFwQcq2Ont0hvWTEuey49dNxKEI4IemJpADsD
	GnEVe0JKd4WycKTk+MWGcRlwFAOtZw7+UOFf9YwPqZud84cjamyJXI1ZEe0fzrz4pclbxy5JtwiQA
	vD4DUH/VLxE5QbTAq/3REuDqtPsKz1+MbzibsrhtN1NJVZVrJZVrWDnWxBF0hWBqokHmbsnYf55m/
	rqnArp0boI3oaBgmk30A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpPC-0000Lu-TS; Thu, 18 Jun 2020 07:56:14 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpP5-0000Lb-CB
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:56:08 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s88so2296603pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 00:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TBlTKCpW58eAWn9/TRti09xCpml9yfphvluFMcjz9l0=;
 b=CjmhagAD6ZYdFrkmGssNut86D2PtW6pmrvf6I7Zdp9uayrRjOdI9M2enBBqAjugbEz
 fpKzdVp91efhv86x0l/SPDcWXhba8l9iOlx+wk+XMaU/W+19evPpcb24UU4BWMON0CnB
 /buYpYQimSwKyIL4u1UpKNu3AOKyEGOOvHwPmFt18pXk0kXqChDzP3yDkcyjbt8kFkKT
 ENaW3VQhITZ6X4N8oCeZBv9rVImfoee7wROM1rhfxSlqOVtP6iu9mdvmbtx7uMl9wnVJ
 K/78KWqpvzfSCZUsLMsktMoOFek0Umyxpy3Y+mrG7n5AeAld8mq5t/TtpzeF9F9MZP6y
 BXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TBlTKCpW58eAWn9/TRti09xCpml9yfphvluFMcjz9l0=;
 b=KW59uYxL0aBFBXwW2CeaCDyaimHupeWIg5mtW6cPdjlqQFDhFySWEpASX2z/125dSz
 zE0+8kO8iAAegExJMYfvXZM5OslAH0/f3z39hCmYU1LgW9iI1GJZXgVDP91fO8E3rfm2
 +ziHwIjmmjSQ/oM8cHRZDPWFASAbCKMMPVGcuQlfkMUnPhZJ2BERfmtSztDeXUK/GzR/
 aGTqtnHfUhL2qNwZm0X4eQIY6EfyUMdAfigG+Rn6JfED0pS0OHWlVKvp6a8gHSHOTxrq
 SS9yuNPb8yhTVymE8WG3bulrweW4rfkgeNMm2hId606pHqznQTDPspDO5ylxQhetCOYR
 Pf6g==
X-Gm-Message-State: AOAM530nbwRfXlZiH/TfHB9/i5DMqaHGl18XZO6VOEFHm0H7Lw7DV8i7
 TEYXyByUnyeIl223l9vr59f4VYNL/t4=
X-Google-Smtp-Source: ABdhPJwpoFw+57jA4d3c3Iy59eHrnAnF2AJ7E+nYBiGYWhjdQ3kjyu3PwaTHyUpH5ZzfVTF75Itkdw==
X-Received: by 2002:a17:90a:3321:: with SMTP id
 m30mr3052301pjb.20.1592466966555; 
 Thu, 18 Jun 2020 00:56:06 -0700 (PDT)
Received: from localhost ([122.172.119.132])
 by smtp.gmail.com with ESMTPSA id w190sm1967769pfw.35.2020.06.18.00.56.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 00:56:05 -0700 (PDT)
Date: Thu, 18 Jun 2020 13:26:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sven Auhagen <sven.auhagen@voleatech.de>
Subject: Re: [PATCH 1/1] cpufreq: ap806: fix cpufreq driver needs ap cpu clk
Message-ID: <20200618075603.djcb5iz65avyhyze@vireshk-i7>
References: <20200618072936.n4yifupski3wnjka@SvensMacbookPro.hq.voleatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618072936.n4yifupski3wnjka@SvensMacbookPro.hq.voleatech.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_005607_447791_5C2C38AD 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, jason@lakedaemon.net, antoine.tenart@bootlin.com,
 gregory.clement@bootlin.com, rjw@rjwysocki.net, maxime.chevallier@bootlin.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-06-20, 09:29, Sven Auhagen wrote:
> The Armada 8K cpufreq driver needs the Armada AP CPU CLK
> to work. This dependency is currently not satisfied and
> the ARMADA_AP_CPU_CLK can not be selected independently.
> 
> Add the AP CPU CLK to the mvebu platform the same way the
> Armada 37XX CLK driver is enabled on the platform.
> 
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> ---
>  arch/arm64/Kconfig.platforms | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 8dd05b2a925c..efb5355c9eea 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -146,6 +146,7 @@ config ARCH_MVEBU
>         bool "Marvell EBU SoC Family"
>         select ARMADA_AP806_SYSCON
>         select ARMADA_CP110_SYSCON
> +       select ARMADA_AP_CPU_CLK
>         select ARMADA_37XX_CLK
>         select GPIOLIB
>         select GPIOLIB_IRQCHIP

Please take this through the arch tree.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
