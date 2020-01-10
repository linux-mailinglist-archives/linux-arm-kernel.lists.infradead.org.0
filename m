Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A5137608
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:30:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6vW/zkh7rAa1+EYSeFP1DCTGDpxHWhrdQNOKieUczg=; b=K0PEiiBDEzaL3u
	S/VRHTyRXugSSJzoVsYxKokILJufvD9aWGmQC/E4W1K91/RYL2Z+dsC1HEP/YJV4lP6Jg2bSSqSaw
	ZhAA7MhMdx1bKj+5paHR6BnVpY3AFW8/hNq6Wn0yXIUVE3zdhQNvemaPTEJrnJGNrw4CBCRNrL9Xs
	WzLH9u6KrcOA24TMQYmsD158XyTtH8nR5TQIUyBD7ucApqOqCRC16G5CPhFK8LqiX0fSn/sup4ma1
	MerY4Hl4cVTtC2uIIFEfSS7FhcjwVIyig1iemiYzkUaABCaJuqy6MbWwBi50GfTT5iudFH9MTYJFK
	7ss3HPl/RWcaPm1YZL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipz3Z-0001S5-QD; Fri, 10 Jan 2020 18:30:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipz3T-0001RH-4X
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:30:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id az3so1146248plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 10:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2MLWB+VELLlq0wMcKq+XkHGiD3q/IxvQaVGfRiGmonk=;
 b=IO9T0yg4ydrb35q0ooBVnp0n7unfx9Y9Fy9zTrdT5tabhRFK8WlrTVSEPyDorq3FFa
 c6ovMoBrHzlbnGWGiGzI/TiYat0sNQAWrEbDyqXiNLyICk8mIklTlsj3Z9c2cUy6ZGNc
 3L+3vN/lDlX3iX0XhnFeZ04LFjVsZgEQpgdWWBdU5iDkJ+/MOIrtsGwB9PpQROFUU85V
 vdgfDijTDnYULmvgco5+nEfO06tZMvJkH5vDHJ/aOJfUFL/8c5ePno9s0PeJtlKEmzvh
 tcWJhuhP+LqCsVaAaI0EsFZX5cwFr6vKFCGJoUm7t8WTC2HzIxxO2cCZ+kkKbJ7m33Wt
 lEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2MLWB+VELLlq0wMcKq+XkHGiD3q/IxvQaVGfRiGmonk=;
 b=EaFo+6veLWGDlu4jqf4LSJNfkyNaJ6+b9puIx7H5zQJIYcPTfrs+EsIfOdS62JxiLq
 Xs2zpnr0gWkFtVkX0AuczVkJMm0eC0NgzNvtcLB+aIGFDWjAP7nxC2upir0dsdRc+d+i
 H8h/53KMMBsYtShIPzTqRqx1pCwoDNaLJ6z9IQaRiZfiK/MEDQ7l0aH/JXcFMp1mTimV
 hq9N0w69/ZVrBYRqV4LFDF1Cs68/yftEofMRVbZ/Kz5oVSpMeJa2DTcs6XXcRDpl4AR7
 i/hA4UD6gclJjNJHk+DsxCntkp9ParxdmVYg2/QBwo4BgvWMBOO8NRq3m6kLWiLTc8cy
 MISQ==
X-Gm-Message-State: APjAAAX4I1vVXNbMXwGFkbOE4RJ3HQX8nWkVMYb7CuN67VX22cwzJBBB
 cWDnnuDgSAmT6tmqGK3akiw=
X-Google-Smtp-Source: APXvYqzqeW7byawmap6bSb/B/RJacb9Z8R9ZQUQyQ5r0w7sQ9QIStqmWbjRGnG1bFtk1ZGkGfknskQ==
X-Received: by 2002:a17:902:820b:: with SMTP id
 x11mr5880582pln.196.1578681042024; 
 Fri, 10 Jan 2020 10:30:42 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id b12sm3693774pfi.157.2020.01.10.10.30.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 10:30:41 -0800 (PST)
Date: Fri, 10 Jan 2020 10:30:39 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] Input: sun4i-ts - add a check for
 devm_thermal_zone_of_sensor_register
Message-ID: <20200110183039.GU8314@dtor-ws>
References: <20191210091401.23388-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210091401.23388-1-hslester96@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_103043_179384_856DE045 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Hans de Goede <hdegoede@redhat.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 05:14:01PM +0800, Chuhong Yuan wrote:
> The driver misses a check for devm_thermal_zone_of_sensor_register().
> Add a check to fix it.
> 
> Fixes: e28d0c9cd381 ("input: convert sun4i-ts to use devm_thermal_zone_of_sensor_register")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Applied, thank you.

> ---
>  drivers/input/touchscreen/sun4i-ts.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/input/touchscreen/sun4i-ts.c b/drivers/input/touchscreen/sun4i-ts.c
> index 0af0fe8c40d7..742a7e96c1b5 100644
> --- a/drivers/input/touchscreen/sun4i-ts.c
> +++ b/drivers/input/touchscreen/sun4i-ts.c
> @@ -237,6 +237,7 @@ static int sun4i_ts_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
>  	struct device *hwmon;
> +	struct thermal_zone_device *thermal;
>  	int error;
>  	u32 reg;
>  	bool ts_attached;
> @@ -355,7 +356,10 @@ static int sun4i_ts_probe(struct platform_device *pdev)
>  	if (IS_ERR(hwmon))
>  		return PTR_ERR(hwmon);
>  
> -	devm_thermal_zone_of_sensor_register(ts->dev, 0, ts, &sun4i_ts_tz_ops);
> +	thermal = devm_thermal_zone_of_sensor_register(ts->dev, 0, ts,
> +						       &sun4i_ts_tz_ops);
> +	if (IS_ERR(thermal))
> +		return PTR_ERR(thermal);
>  
>  	writel(TEMP_IRQ_EN(1), ts->base + TP_INT_FIFOC);
>  
> -- 
> 2.24.0
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
