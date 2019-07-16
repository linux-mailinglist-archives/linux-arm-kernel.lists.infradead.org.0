Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAAE6AC4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXJWdQiEyRlL2xStpB5BxIWwzm7N+RbcIWDz27SfGW0=; b=KjQrEUrH2I0Hzu
	hVRYIM3GAa8PQu6mN3zHvxdJoUCcN49M13Vd9fSVeWXsnNr4juqExP/oGh4FQiI6RUSxshbc6rSN3
	uDx+wH6heSACE8LbG3abGzGbwxcP3cb5lf2+Mrs/WqKjI8SUUO0CjIuuPumqgE77J4NUao9oiv7+u
	FXziS7D2qtFRKMAnRcbzwSq9B/lzabqMMVhTuoDJRMSREFF0SHXQ8+LwtQl7JjiN3D4IGzX1htisz
	s+vf21r0QZe3LZ/M0FsLBEIk9TbT1nCXhOl92gYSqvzsN0ABaHa1deoFSMhyW7NXKR7dcHVj7tHl4
	2DRoYPM05hzBY9VqaE9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPm8-0006Zy-KT; Tue, 16 Jul 2019 15:53:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPl5-0005ve-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:52:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id v15so19204964wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KgPq1Y45u0p9wed/Wg/waGFNH5L702AbMVBrL7KzcPU=;
 b=Z7pkK765Zn3xjefuZ7pgTeYENNCYSMAabAPWwLZ/dn37kHH8LdN1OWDYihTkW+ru6k
 HpENNSGabWoO6W2Isat6nBUFhRjRuDcwHzJkX0L88Mz2KgtqbP5XPvLl/k3TR7KknLF2
 Nv1dPrIagf4X4a8YNMOaemtqa13XR80tQhgb+xIZBXPnB3ZEjcsuHPC6J7UvgHNGxd40
 WYTPi60YS+EHrhAO1Vg6kt8zL22dLpAlOF9ZczoB+BuZ/ZNn5x9i7vL3OS00ipCsGwPZ
 1HMxJbxxhaxZEmb0jpUZCFEe5OwJXo67R4yN0vyw2QWUjskd/bbjRNnJpyNfPHH+4m3p
 v6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KgPq1Y45u0p9wed/Wg/waGFNH5L702AbMVBrL7KzcPU=;
 b=X6F8T++0gVULhju0lqEpmm0QnWjV5Cik6DDgVxubAsAU9Nd/e1n6eYUcseV0qfScTH
 tUsUSiUcyHpbRvmk4KPK40LrasmVZ1ZmE7IBdwa/aJ0d4iOfnvO4DWEPbKzRBkI0fYBu
 1SYomaAP3EJ86M0A/P8lPU7OwzOh7vOXTVMgV6MKaBJkk9rlF7leP/kv0pWeKezf8dS1
 MrDYBbnb/Qfv2xgzVpOgQtl8zEfej1Z3fOfwid/EwPG/VaDZCxgaoLbes+JWxSYNNZay
 zl1WbnULXvYZKKkCblXbJX19tw9s/gd4e7lyAyP96CVas60lbLCt8OMBPgm1XuKpWQ7Q
 EfVQ==
X-Gm-Message-State: APjAAAVzgWTaa5RF81+FA+krYBpO+/I4yCcjm0+ZCV3k41DmFFmYBawY
 S6AHPzNZTHLia4T98wFYQECBOF4j5lo=
X-Google-Smtp-Source: APXvYqz32CNFi7crLTkjdi8KT0WaPTxeo9ZQ5iiJbrq/kL+Cd9Ro6t0aItj9Mx+0+2J4kgCuDhGIzA==
X-Received: by 2002:a1c:5f55:: with SMTP id t82mr30891336wmb.111.1563292370333; 
 Tue, 16 Jul 2019 08:52:50 -0700 (PDT)
Received: from localhost (smbhubinfra01.hotspot.hub-one.net. [213.174.99.146])
 by smtp.gmail.com with ESMTPSA id
 y12sm18114094wrm.79.2019.07.16.08.52.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Jul 2019 08:52:49 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:34:54 +0200
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mukesh Ojha <mojha@codeaurora.org>
Subject: Re: [PATCH 5/5] Input: ts4800-ts: Use devm_platform_ioremap_resource()
Message-ID: <20190716073454.GD1182@penguin>
References: <1554362243-2888-1-git-send-email-mojha@codeaurora.org>
 <1554362243-2888-6-git-send-email-mojha@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554362243-2888-6-git-send-email-mojha@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085251_829487_E1C34D0D 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-input@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 04, 2019 at 12:47:23PM +0530, Mukesh Ojha wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> Signed-off-by: Mukesh Ojha <mojha@codeaurora.org>

Applied, thank you.

> ---
>  drivers/input/touchscreen/ts4800-ts.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/ts4800-ts.c b/drivers/input/touchscreen/ts4800-ts.c
> index fed73ee..5b4f536 100644
> --- a/drivers/input/touchscreen/ts4800-ts.c
> +++ b/drivers/input/touchscreen/ts4800-ts.c
> @@ -148,7 +148,6 @@ static int ts4800_ts_probe(struct platform_device *pdev)
>  {
>  	struct input_polled_dev *poll_dev;
>  	struct ts4800_ts *ts;
> -	struct resource *res;
>  	int error;
>  
>  	ts = devm_kzalloc(&pdev->dev, sizeof(*ts), GFP_KERNEL);
> @@ -159,8 +158,7 @@ static int ts4800_ts_probe(struct platform_device *pdev)
>  	if (error)
>  		return error;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	ts->base = devm_ioremap_resource(&pdev->dev, res);
> +	ts->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(ts->base))
>  		return PTR_ERR(ts->base);
>  
> -- 
> Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center,
> Inc. is a member of the Code Aurora Forum, a Linux Foundation Collaborative Project
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
