Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D467A5F9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 05:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qm2gKtkvb0bHivQ0YOIoSqOHvDdSNuOOOEmmqQ/X2JI=; b=g46wgey4Fb+osV
	c50ucuYUMEJF8oPuEIJyFDLVVd++u4znRa+mVc8JaPR+sKtu78De8BxkPTDfUXl+UXLWDUhKU6nI3
	JFVA1qfCW4IWOrJhrdGxLWcCsUAdm1Jg32PMyoJNRf2F7xqMOGRYShSg7z5f28RLi9v/aM6pES6FN
	AddWRuwcdiFeEb28Ed4iz/b41Nat7ucocotyJMCPdh6z4cBbWdXxycCNQ21eUEz9QhkyhQe+4N7Jb
	l9t9jrEX/yXIkkEITD0J4GrwA68ohQj/QbKI1NC9D4nIRmJ9tAMcpLMAIeHtVpEGUXFiDBELu+Vbs
	Y4kaj5EReZlAPcYTYY6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zOP-0007Fq-2d; Tue, 03 Sep 2019 03:22:05 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zO9-0007FB-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 03:21:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id d10so3753738pgo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 20:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2YCNZUFFCq8Dg+vMJfD+J8C6FHbcggQzGWyRcaMVlho=;
 b=U6PG039pK9bsS1zvciaOqcNObGI7jJccmjXdUEK3bXW97rnyaYZIU4jE2Le2Bll2gU
 f6wEHFLch/afAO+ke4X2XUzvqFw+uEOXR4rg7nyqUeEYPph1iH9KOzGyvAOZp73VJJGF
 MFpW0y9CcZd0DAfU1m/Z3+unbIbVBjZynhqhLq/uKJQzvGq6gSpfn3cpQMaHu3f7DQ5x
 Ks6TnsBJyijVpdkAwPOTCH4PP1v2cZmxWLgth2QRegHt8FSWZv2pqmwOMeHnmpQCdKsj
 hP5ZbfprjgFmy5Fo7zs2SVOXGvmNnkHMCKcbbjw/qT10aprc2Df1p5UqKMUurV6bGmu4
 TZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2YCNZUFFCq8Dg+vMJfD+J8C6FHbcggQzGWyRcaMVlho=;
 b=N4SXmgBb1S+X66Fobc9D4fxZdKAx++YNB2ynq0Lta+7yjlwVZY4gsTuBMyYC/c2E76
 3QWpXY9VKoJ6TqBSRo3jHC8X7Hcw2vA95q69rQUYsxg5VGDiKWAXiSJcovwtq7UvpwPB
 p+hJi+7qendNmRoU0XavnxAmsxK4COpWv6I9iZz/kKbQ+eSiXn2n7A66MGOxGwefNtXn
 dSkNkM6a2Sg183odlHqkkSZAhQ9+HCEloBUaNeYgnoB4v0pOI7xUhuFFIuGKbkAOzKAb
 dd+lY0hOZG4OwTWMrfta2yHvFWy0vh/H/owHAt8Ku9h7ivhjTnBTf7khHKhDhTiNbgbu
 DCYg==
X-Gm-Message-State: APjAAAUccgsR+RQE808p23N4Btbs7IAGcfpUb7aBV9W18Xl0u5FsLnVP
 eL5qkdJrZLEL+LoPyPOHMmhntg==
X-Google-Smtp-Source: APXvYqwRrr7EZTieX+RMyO61+sJm9FbeCeWoneGeKcok9cTk8OK8st2NyVow7YmYF3F8MXfmQAKbkw==
X-Received: by 2002:a63:3148:: with SMTP id x69mr26074750pgx.300.1567480907715; 
 Mon, 02 Sep 2019 20:21:47 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p2sm23361696pfb.122.2019.09.02.20.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 20:21:47 -0700 (PDT)
Date: Mon, 2 Sep 2019 20:21:44 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/3] arm64: defconfig: Enable Qualcomm GENI based I2C
 controller
Message-ID: <20190903032144.GS6167@minitux>
References: <20190902130724.12030-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902130724.12030-1-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_202149_373061_F9381E92 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: arnd@arndb.de, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 olof@lixom.net, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 02 Sep 06:07 PDT 2019, Lee Jones wrote:

> Tested on the Lenovo Yoga C630 where this patch enables the
> keyboard, touchpad and touchscreen.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index facf19cc275d..0fe943ac53b5 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -366,6 +366,7 @@ CONFIG_I2C_IMX_LPI2C=y
>  CONFIG_I2C_MESON=y
>  CONFIG_I2C_MV64XXX=y
>  CONFIG_I2C_PXA=y
> +CONFIG_I2C_QCOM_GENI=m
>  CONFIG_I2C_QUP=y
>  CONFIG_I2C_RK3X=y
>  CONFIG_I2C_SH_MOBILE=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
