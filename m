Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245886AC49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyZ8b2PbaVlIlsTekGtqjU2pdAhX5as0NtoPPY8EgW8=; b=s+axRxHUm0NK0I
	cg4YPfLHZGvF62noNmPTlqcWY9ug/7KQ0N1IgLExpKc4rrH5vKUbHlcDqq82b2JzFqD/tboIe2wg9
	862mTWUgz1hk4gTYFipMzE2jK6IRUuUKKjO1AL1RS3UehbAdDCoJt6MqKfu5jnPlm1cU9IR/37oSA
	cE4b0UCbaEzje3l/6pHOWNay8VIET5T/mF8lKe/t7xdI/w9FAzDVLVsst4SAk2HNK+6wDEK44U8bd
	bi5rYYXY79AbVzbZk/TTuXV1qXKUYtIEEsiKN1m/wl5znEcSkoxWRDwwlJgMIQZk4b8u2OnIFDFf3
	dc6nP8jYw4F/e5GlkGBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPlp-0006M2-N2; Tue, 16 Jul 2019 15:53:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPl4-0005uC-LZ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:52:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so21504504wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JGa70Quc4Z0AaxrkSEcWukKTNPw7McenYMvZ7Zt5G8w=;
 b=D/U++A4qxgifbNPmfVJSPVdStFvp9ZU18JdCHpUB4DdrTH7sdwdpIGKhYvyKaBeu9x
 01cfLCevMxzmf9suwDO5Q3dBokIo/LPQD54PrcJMv4FPY7/e/T8wqgyAkTs1I1KL4M2b
 qzUjNRHaKDrr75nVIBdWN0OHURODgQKpExlEvZ22h8PC8JIsFEYuStp0CahMd0IU/0l/
 bGNRUYlGbo4Zwwy6n/kA0wxJZZ1iUoHa1XtJwU6MmJ4cTiP8sZod1fq3e5WNkOufaF41
 iR0VCe7wITMMSY+f8912BEQvDwB0vMGqzBOd8mjt2brnQ1nFABgs3m9WBvhyV2ntny22
 olTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JGa70Quc4Z0AaxrkSEcWukKTNPw7McenYMvZ7Zt5G8w=;
 b=JcSES+qbkrDdG8PIbIxe5NscpXgbEPd//CrHHImk8NbbVGu5+yGcyw+7is5BGZIob6
 +butyjOXYobNIgXJQFFkysJ7T9CetAwAdft4Dkb8Myhd9+Srt+lgSSczbPzmpDY7E8iO
 AKw4oZWCMD/Vmd3UBP56bFEJJ+U/7kCoambQQ4gUQmJ8DP/AS0qcFyAkvEL0SGxuznSC
 yn7pMKFsjHb+M11hFgXaK35iWFlID7lMdH3pVQZz8glbY1CNm1LB5bmvAjd59lIe7zN1
 HS8aQ6wPpC4zD2o3UxL+MFHEsVnOZWrSJq3ozkU7hcAgQWQY56l2gu8s3rH+c73kZXG4
 /wtg==
X-Gm-Message-State: APjAAAUZYmX7VMOKk5qePQz1+Yu7idvliYz8zjv2ZB/3uw3ftpJWVhdT
 od0Xj91G/FMAzK4nvTEPG/4=
X-Google-Smtp-Source: APXvYqwIpHD1mj+uv+1VCxPyVxqXCi20ZlED3q8lvK7XmorLtU/ScTf3OZA47jdsYSpuoVcrtJ299g==
X-Received: by 2002:a5d:528d:: with SMTP id c13mr36208049wrv.247.1563292368676; 
 Tue, 16 Jul 2019 08:52:48 -0700 (PDT)
Received: from localhost (smbhubinfra01.hotspot.hub-one.net. [213.174.99.146])
 by smtp.gmail.com with ESMTPSA id
 i12sm12800327wrx.61.2019.07.16.08.52.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Jul 2019 08:52:48 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:34:25 +0200
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mukesh Ojha <mojha@codeaurora.org>
Subject: Re: [PATCH 4/5] Input: sun4i-ts: Use devm_platform_ioremap_resource()
Message-ID: <20190716073425.GC1182@penguin>
References: <1554362243-2888-1-git-send-email-mojha@codeaurora.org>
 <1554362243-2888-5-git-send-email-mojha@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554362243-2888-5-git-send-email-mojha@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085250_710822_438776BB 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

On Thu, Apr 04, 2019 at 12:47:22PM +0530, Mukesh Ojha wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> Signed-off-by: Mukesh Ojha <mojha@codeaurora.org>

Applied, thank you.

> ---
>  drivers/input/touchscreen/sun4i-ts.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/sun4i-ts.c b/drivers/input/touchscreen/sun4i-ts.c
> index d2e14d9..bbb0104 100644
> --- a/drivers/input/touchscreen/sun4i-ts.c
> +++ b/drivers/input/touchscreen/sun4i-ts.c
> @@ -309,8 +309,7 @@ static int sun4i_ts_probe(struct platform_device *pdev)
>  		input_set_drvdata(ts->input, ts);
>  	}
>  
> -	ts->base = devm_ioremap_resource(dev,
> -			      platform_get_resource(pdev, IORESOURCE_MEM, 0));
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
