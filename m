Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95338DECAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuTwI8xzaJF7AWjt0Wmx9Wz5FdJPrarh/mG60KVLtMo=; b=N2ojgGMXS0gelE
	xRo/gnRocCdOPVgKipM64YhewswY5BJ6QlfO54o8dzrN6f4+ICxJSB//R3AeZrBjDFFiqyIoyjO0y
	0s0G2kY5tXo9XzMgu2LBbFzDC8iB3xTM3eKDrvVT8lLl9cwKNi541hcM2oY0LM7b7PU2QRRcSTCRM
	ZPZ+qTlP7/paCcBNH93sKwm+nN20J8IbZy5JPNsCINOCoGFe1/dDujwtJLZZIzn0S8BbaRVK/tJh8
	8N/xPk0QNI33IGPvyKxJXw7YGIrcWdqzOBcwk2JWb/KWd2T0iSObkB0U4KEB4lPc9JmeNNx2tkemw
	QypdXl6UVbs17D9v4VAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMX49-0005hd-8I; Mon, 21 Oct 2019 12:45:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMX3z-0005h4-94
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:45:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so8588670wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I8rkz9wni1PLYTJYS1CHHJxzqvPcnSWI9WK6axWmJfM=;
 b=AW+3V3g7BTEklmfuK/i+EY2s9qLVJXAYy0fpcJM/wgGxWc66ja7A848n7hu/YebqvC
 cGn8QpIu13IAMy9QCkCg8wuiEv+BWTHW27o4lqD2dg2krKmQLjbIZPTQd7H1cT4BZ35q
 09qOewOkfv/mN3lSElOw8XSsmQHi0HinSZCOm79vwSpyIyTtpZAio19SmtL5L3Alh49d
 xwgadWESW2+8eOEHvvuc3/WieljrvTrJLQgeHoSpxKvFzAUytaNHoGNXoyEwg/NSnie9
 qcebNcVhvgTcRLFsLpZnDWfQsPm5YwiSDcFHrdpUbZNcrHlO8DDm15gpH6HLN4rMeA8M
 qFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I8rkz9wni1PLYTJYS1CHHJxzqvPcnSWI9WK6axWmJfM=;
 b=dHULgeEHUf0cHqv7ndayjmBuQ116f9eh9b0kENu6cDP0zaUoM4L15LuY+jR3MAr+sC
 LWs+AujRvySDD5ntNRflDH2Z7ZwgL3BSdkClO52VPyQTb9R8MOmW37LOsdg+pbk3QOGX
 HSO/5SYx+iEKH8uKZVTO0KXFIugPnMHz9vgTmnGLfd+/JWQ6OmMzFsfFvqt+0ByPMAPZ
 NhP10+MOsWclc22SbzjPfmax00tlEN4TZlJgzwwlDpvvQVK18vH0hLgNFmEvJ7AfICA/
 OH3t4qltkYdDH76O4pJOFf14sQfZ8EkgBQAA96r9G/O3Q8WzHx7sW5iIeh8410l3/0Bh
 BWsg==
X-Gm-Message-State: APjAAAW0t9lBw7ggdB/TH0tXRlZ82LM4Hl308PaCzB5Vna5z4rfaE2Al
 c/R91tmR3V6w6KCqPB0Y+XUchQ==
X-Google-Smtp-Source: APXvYqxxYpfRu1R8MBd49BbDXNITCFzDHKp8X4m9mEedi4UuDplAZkkVe28aVRwif4Kzf+g9k1iTgw==
X-Received: by 2002:adf:e28f:: with SMTP id v15mr18991524wri.130.1571661929630; 
 Mon, 21 Oct 2019 05:45:29 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id q66sm15560273wme.39.2019.10.21.05.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:45:28 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:45:27 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 9/9] mfd: mfd-core: Move pdev->mfd_cell creation back
 into mfd_add_device()
Message-ID: <20191021124527.dr4mpys5vovfkk2e@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-10-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-10-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_054531_638312_74DB31B6 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 11:58:22AM +0100, Lee Jones wrote:
> Most of the complexity of mfd_platform_add_cell() has been removed. The
> only functionality left duplicates cell memory into the child's platform
> device. Since it's only a few lines, moving it to the main thread and
> removing the superfluous function makes sense.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
>  drivers/mfd/mfd-core.c | 21 ++++-----------------
>  1 file changed, 4 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 5d56015baeeb..849dbe3798b0 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -49,19 +49,6 @@ int mfd_cell_disable(struct platform_device *pdev)
>  }
>  EXPORT_SYMBOL(mfd_cell_disable);
>  
> -static int mfd_platform_add_cell(struct platform_device *pdev,
> -				 const struct mfd_cell *cell)
> -{
> -	if (!cell)
> -		return 0;
> -
> -	pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
> -	if (!pdev->mfd_cell)
> -		return -ENOMEM;
> -
> -	return 0;
> -}
> -
>  #if IS_ENABLED(CONFIG_ACPI)
>  static void mfd_acpi_add_device(const struct mfd_cell *cell,
>  				struct platform_device *pdev)
> @@ -141,6 +128,10 @@ static int mfd_add_device(struct device *parent, int id,
>  	if (!pdev)
>  		goto fail_alloc;
>  
> +	pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
> +	if (!pdev->mfd_cell)
> +		goto fail_device;
> +
>  	res = kcalloc(cell->num_resources, sizeof(*res), GFP_KERNEL);
>  	if (!res)
>  		goto fail_device;
> @@ -183,10 +174,6 @@ static int mfd_add_device(struct device *parent, int id,
>  			goto fail_alias;
>  	}
>  
> -	ret = mfd_platform_add_cell(pdev, cell);
> -	if (ret)
> -		goto fail_alias;
> -
>  	for (r = 0; r < cell->num_resources; r++) {
>  		res[r].name = cell->resources[r].name;
>  		res[r].flags = cell->resources[r].flags;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
