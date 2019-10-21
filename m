Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5EFDEC54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEtf6udlD/l7bess2P83t16+qDtsDL3oOL2NGR8k9rU=; b=ICo5o/h32RApSe
	fETwg9tsbBBTyGkaEKg7lYkd4ktcBwAhuoZprlTQ6ANkWMue5vInIvAMxeW2ATzlFRDfZwEK2tBkq
	WNtD8jq0MmsWNUGj+cXReF+x9hbsT1esP7Eri8b594fx5ebqY/jbYfm3k/NvXTe8lVwXl7PZYp3Wp
	S+jAI5fGO/oYX5OSdJRCRjuF6JIExLnfBFlU9ei7pTeR/LDRbboYO69jk9RmPRAmPdSCD1OCgQNTC
	x8M8Dd3kTLo/xTXPs+m+ctGilu1KZ1BCobMB2PEVZNQg8/TGoNvaXTtLf+ZzSTaAJB2HZHt3yTuUd
	3YOOb/h7x5vt1rWckzpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWsp-0007Ly-KW; Mon, 21 Oct 2019 12:33:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWrX-0005rD-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:32:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so12590228wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YSNbD0PByWlljM0tltuyIHBfRs/cFkXbsMwoXfP9xNQ=;
 b=S+Mwsua59XN67/GSiILSsQdKYodDH+CWLAETt/iEQ+WCYBv4iADwrNG/eACZ58pyrj
 BO6b5GYW55DhQ9GoxgH0oQHKr53qMOPogTY/8lO7gPRL+o8LeWFgPZC/FWShX4mq/rZu
 MO2cHAEvmVRiaZIixjEGDEilcJXjvaXa6Ne+MGi+PqqerpCjH9BtFho3C59jY5aqbZn6
 6cyBPXlfjA42ARw9f1uowEi9ddN0u8Ps2Y9xlcdx893lCND3OolalLFeGQ4FrEbO6EJe
 +hCwEH3Fs4tmWyNSS/8hV4joXu7lHI6DVwLY7QPXzX62J1zKAKRTM6GfC95aoXAfl1Ga
 GnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YSNbD0PByWlljM0tltuyIHBfRs/cFkXbsMwoXfP9xNQ=;
 b=mC3/nTRqXNY29ukK5bWMRST0JJQDvYrhXcuJZHwIJbPg/mlGJzABJlvyd+VhYFRY6J
 K4mdfuh/VaE4zxnpvCs4Qt4V+vLMoxoRvIP9qNkxbBt/VU7CNFc67xbMhG3tgsCWZu9I
 MawAAfZBRLuDRviPSmRNYHULJKb1UDqkyzpEUjda4M3b7HxcN3Yeg5ucpiuKgzahpSk4
 LWYZMGh/5CJ2iDBVwJegBXAex3hX4CqAk8tTwAhhmxEaKTpxkimeHgGkXBcqO0acdRCP
 EtlLlI6hPIOUyXWLO707fqJ/TYrfGVTcdS43sf+IZbDu9klC4yQg4p3isjjxRJKxgfmw
 xugg==
X-Gm-Message-State: APjAAAVf/llngdtaOk+zjJLX6aeEy1HiiZGzZkmQsGAsKcvL9Q9IvbZ6
 jnOWtmkksVCXjBP+bgi8jIYKSg==
X-Google-Smtp-Source: APXvYqzRxQ5KE5HsIm1jEL4loTOSOacNYbr+dsBUdHuVKjcRV0so0RxsxKayHoKAUfSL1zQgTIfR9A==
X-Received: by 2002:a1c:108:: with SMTP id 8mr10489788wmb.25.1571661157724;
 Mon, 21 Oct 2019 05:32:37 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id s13sm13453572wmc.28.2019.10.21.05.32.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:32:37 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:32:35 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 7/9] mfd: mfd-core: Protect against NULL call-back
 function pointer
Message-ID: <20191021123235.royyfp4mxrvsgioh@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-8-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-8-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053239_139280_5C7077DA 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Mon, Oct 21, 2019 at 11:58:20AM +0100, Lee Jones wrote:
> If a child device calls mfd_cell_{en,dis}able() without an appropriate
> call-back being set, we are likely to encounter a panic.  Avoid this
> by adding suitable checking.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/mfd-core.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 8126665bb2d8..90b43b44a15a 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -28,6 +28,11 @@ int mfd_cell_enable(struct platform_device *pdev)
>  	const struct mfd_cell *cell = mfd_get_cell(pdev);
>  	int err = 0;
>  
> +	if (!cell->enable) {
> +		dev_dbg(&pdev->dev, "No .enable() call-back registered\n");
> +		return 0;
> +	}
> +
>  	/* only call enable hook if the cell wasn't previously enabled */
>  	if (atomic_inc_return(cell->usage_count) == 1)
>  		err = cell->enable(pdev);
> @@ -45,6 +50,11 @@ int mfd_cell_disable(struct platform_device *pdev)
>  	const struct mfd_cell *cell = mfd_get_cell(pdev);
>  	int err = 0;
>  
> +	if (!cell->enable) {

Oops.

Cancel the R-B: ;-). Shouldn't this be !cell->disable() ?


Daniel.



> +		dev_dbg(&pdev->dev, "No .disable() call-back registered\n");
> +		return 0;
> +	}
> +
>  	/* only disable if no other clients are using it */
>  	if (atomic_dec_return(cell->usage_count) == 0)
>  		err = cell->disable(pdev);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
