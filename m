Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A03F11A96E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CavK8Gpx6M792gk23Wa4JFA0UKwnYCcdte+y6pdupPQ=; b=dfHpG8MqvoIA82
	sVtNoW8ehmxIonM9jQvIVXQyBQCMyu0zV0xGSXZJVc3VtN9RU7JifbngYOXhS9MGuMnF7jLQtO2N0
	nE5aS2We9WIb916yhS+7pAw0o06v5lN5zVM9mM3pGhcCvDFZsaploHHApg9ivxSPCSH614wEWao4R
	xvB5UZtG8BpbR+1tCniFEBXt6O13THlbyaiZJdrKIaxSkSoJEtMqTn3bK25RP2Klgpm6d0HDtnH6O
	Txkq4NuG0/x5R+v9pPIWrHy2ss0oD1JcEUu5gRB4PIVoFK/WYRHHRkg1FzaE6n3NXw8HwsmPyLr0u
	/LIVIul9kVO+aFLUMdbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieziM-00049E-9j; Wed, 11 Dec 2019 10:59:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezi9-00048W-Ba
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:59:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id q6so2038196wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 02:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZJ6q3Z6ceKXrm+SRlu2SJJixCZ2doGfehevk1AA5ByM=;
 b=K1ojBJTpeL2Wboiq1cJE1Qq1n1g2bh/8V9dHPWgDVEGYy3w7g72D4KX55XVKKdXmbK
 twQeRiS4RHTOb+jek8lMpidtbUZHZ56k/3uCiXXG5/+Hkw/rxpi9nXFgX2fFiuSZt9gx
 33t0fTYw2WNQcXFMUfbK17IUcJIqUG/f7ENFXDkP/+HZFFhEV/HUUyHXlqyaRHTlZqP+
 W1hQAb3DcSM8/OMvm51Xzaphnh3Jfeo+cHO0F9nvSfAt5q5JciBAe7LhcaGyG570Cgc+
 6ckP1RX5m9u+nWZ060GCRdifB5D99LuUhnhQKM7RWCVZCXEGwohrxalOaTxi1DYQbRQS
 L75Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZJ6q3Z6ceKXrm+SRlu2SJJixCZ2doGfehevk1AA5ByM=;
 b=Hklw1qij3TLZsnkE0aMX5jvWRpOPZWYZ6pJgjqHuCH2DJwFAiPNf9xWxKwafyvPi2R
 avGaixOmRpT3FI4xjYMJOeo18/IAuV2nvVk8mKknicFscK5DEufFjueqgBX1cqZs+w4E
 iRETBzvYVFJM7A91xyiaNwb2cdokqGg+42iseGFqTXFI1rknMZoSq10KreuVYx5IkG3J
 hhW8kG/bDdgHdeQy2Z0DeYE+XBd1mdfy3PC1oyrlJ60lHUVLMEfDEB//Su3uLVgYUJ67
 AJS3JLTAJo1UlT7IY2kdEqp9alFxbvA/tZUS9OshTHTdj160UWoxiygqKsXVSiv1v3Yb
 NxnQ==
X-Gm-Message-State: APjAAAVzgGDF7y4upt1SXGT0juf5PSjCdXZi1rwpKShuR8qENTluqHrt
 KKbY/Sv+5/JD0dSpWI5xVsA=
X-Google-Smtp-Source: APXvYqzYgisCayrNKaxODP8N7xFYdT2hZz1hxEtmhPqbWlMtOUVzxlgJNwPz8lQm54UI/lwzuPutcw==
X-Received: by 2002:adf:dc86:: with SMTP id r6mr3304746wrj.68.1576061953285;
 Wed, 11 Dec 2019 02:59:13 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o19sm1215640wmc.18.2019.12.11.02.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 02:59:12 -0800 (PST)
Date: Wed, 11 Dec 2019 10:59:08 +0000
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Message-ID: <20191211105908.dw4lnuble3ejlnil@arch-thunder.localdomain>
References: <20191209085828.16183-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209085828.16183-1-hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_025917_423334_B6E361B1 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chuhong,
Thanks for the patch.

On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
> All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
> the notifier except this driver.
> This should be a miss and we need to add the call to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

------
Cheers,
     Rui
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 99166afca071..2bfa85bb84e7 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
>  	mipi_csis_debugfs_exit(state);
>  	v4l2_async_unregister_subdev(&state->mipi_sd);
>  	v4l2_async_notifier_unregister(&state->subdev_notifier);
> +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
>  
>  	pm_runtime_disable(&pdev->dev);
>  	mipi_csis_pm_suspend(&pdev->dev, true);
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
