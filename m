Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9CF200A7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CdvKfvsmMpnL8uuyH8zgU1arNpRe0mWOSp73R8NQ9+o=; b=L/fJ75tOjlARZVJ3xr/kL1U+t
	HCLoHBAyJc7Z/grti5LFzhQ4HDpc7eXaV1oGhGu5/PaGmDLmA/bvAYUAcixMIobIoHx8D5AhcHJ/a
	tofxCxNfm4FrS7FFORwWcTVW7JFXStGJwytMXGPFdrGQsipfuEd2pTopJ/YJFKv8K5qos42USdUI0
	CfNjfI6TCXkPXVao4hr3aYc/j1ogYRUu2P4biyxgpAfBbsTvXWGD2Kld3Dijx0y0WVgvDQEYfiUVY
	4DNe/v8c5bYPyPFtU3qnIKq5RhQol25DFe3l3ZK4oZnbV/DYOYyOtc9SRbHAeQfNszNHQ4U6FG4sZ
	6MQGFEeXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHI1-00083g-Re; Fri, 19 Jun 2020 13:42:41 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHGv-0007EG-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:41:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id z9so11504275ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 06:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0kfiprTxlQMET0aohY6CHO3ZmdD0jejABT0PH5mAi/Q=;
 b=EAza6L48w9+SNbvVEP0eEozOKI5N1A+Co/IBc8tRmMIgoSCTFMGDSP7/oIB+O2MHYW
 assCCPO4hfdYV0Ze5OlMUdb273rPm8Fq+kxz5IgRdGLu1up4Mfr6YhpoBN5ap5vZPWkx
 8aDMNIAF+S1xF7WXfr7/jMkdLf5+A6nMLsvX0SNi4zOkHPZFMFAm/yUR4msTWopzjJCB
 qUh7UktR2gAKsGfEJcUie55XnKd2sIRMMlQ+qvEI7v3IxyatnepPSIkCLkInyHk4m/4Z
 31RLh9OA1m9dmgBz9/O6yWwOfD40qovV3gjIm9KbQ97KM6HXJBN3e/QyhbygGxeKE27K
 U4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0kfiprTxlQMET0aohY6CHO3ZmdD0jejABT0PH5mAi/Q=;
 b=LT2MlRjmgZ1Zp/Kag8BYsQPyjjH/a/8V4kx+OjXR5uYcso42G3+gcu/K9zF6mmVe5p
 SWnX7Kt6XO3mmfRMwjKFLYKYFKs+3pPw/zulM59a64R3msfGF4aGJjFBY+o2lCcfoul4
 0l1Bfzj3UPVA/gFJunF2d6RayP6jsDUKj85EuXHLbZOfDFDFSpODuQL1oS3oUS8o2ia/
 kOXaw64jD8gf4huNEJTbeAVDKGzmaLY/WQaV0BlIJvOwIZA481jB1ddBLqgIQy540w1D
 fc+csGlS0PrsNVqRC5eXsQb7denyDfhdCtGeJ4QWbQW9aZkUk4cMgLPWqi6lKWL8hbk3
 VCcg==
X-Gm-Message-State: AOAM533YO1FJWKftRiyQfCFOTi55vMfFfBKZIUBGQ/BgNSmzVN5G2Q+3
 nx5UYNH/Hn6ST4p6e4U+GYNYDg==
X-Google-Smtp-Source: ABdhPJxnmszfRP4BClRPvSzMiOpj7oIM647dZLiP0cGAkcAAwikq/uA+QtkCQal5+K2WmjHVy9EE8w==
X-Received: by 2002:a2e:9246:: with SMTP id v6mr1952220ljg.47.1592574091342;
 Fri, 19 Jun 2020 06:41:31 -0700 (PDT)
Received: from [192.168.1.100] ([213.87.147.213])
 by smtp.gmail.com with ESMTPSA id u6sm1179747ljk.109.2020.06.19.06.41.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Jun 2020 06:41:30 -0700 (PDT)
Subject: Re: [PATCH/RFC v2 2/2] mmc: core: Call mmc_power_off_nofity() if
 pm_suspend_via_firmware()
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 mark.rutland@arm.com, lorenzo.pieralisi@arm.com, ulf.hansson@linaro.org
References: <1592566143-4546-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
 <1592566143-4546-3-git-send-email-yoshihiro.shimoda.uh@renesas.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <3d91f688-d79a-7d50-a9ac-e08ea2d0cd31@cogentembedded.com>
Date: Fri, 19 Jun 2020 16:41:15 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1592566143-4546-3-git-send-email-yoshihiro.shimoda.uh@renesas.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_064133_507234_1E208216 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-renesas-soc@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 19.06.2020 14:29, Yoshihiro Shimoda wrote:

> If pm_suspend_via_firmware() returns true, the system will be able
> to cut both vcc and vccq in the suspend. So, call
> mmc_power_off_nofity() if pm_suspend_via_firmware() returns true.

    mmc_poweroff_notify()? :-)

> Note that we should not update the MMC_CAP2_FULL_PWR_CYCLE caps
> because the mmc_select_voltage() checks the caps when attaches
> a mmc/sd.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>   drivers/mmc/core/mmc.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/core/mmc.c b/drivers/mmc/core/mmc.c
> index 4203303..81941fd 100644
> --- a/drivers/mmc/core/mmc.c
> +++ b/drivers/mmc/core/mmc.c
[...]
> @@ -2038,7 +2039,8 @@ static int _mmc_suspend(struct mmc_host *host, bool is_suspend)
>   		goto out;
>   
>   	if (mmc_can_poweroff_notify(host->card) &&
> -		((host->caps2 & MMC_CAP2_FULL_PWR_CYCLE) || !is_suspend))
> +	    ((host->caps2 & MMC_CAP2_FULL_PWR_CYCLE) || !is_suspend ||
> +	     pm_suspend_via_firmware()))
>   		err = mmc_poweroff_notify(host->card, notify_type);
>   	else if (mmc_can_sleep(host->card))
>   		err = mmc_sleep(host);
> 

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
