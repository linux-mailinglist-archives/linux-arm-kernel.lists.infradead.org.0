Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CE512BFF0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 02:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QQJ8STEnxDo2ldP1v1O2OhQNiJ+p6J6Mb5erdvvIgE=; b=C/k0jdeB5hf6PG
	QM8mslx7K4ogjCpYXsDQTQtkOvYzAuw2m5MsQ4Q/14IKE+kk5UlXAmeR9L5EzJcBrtsexITEnvIdI
	uasN2ihb+0iPDzDRrDs9vF/Kj8zu4mFRmMEiQEkMmngM971ZsrqQWNnwviCiphHe1F3Rq7uFtciT5
	82HoEfRnmouSLqyWwGTJJBjUUfG/1VoeoyGIpoVFwBfNi9XOCtKRZU1k4s4mrjNcUXbFD1byr43FT
	BYDwBaZULSSQKC3DrvCxHfOyeA58Wv+2reADW3jn82X77FIIfUhj7IRKgQf1qRkDeByqiNOSaEEZN
	OvKeojkE5/A1Sa7ZTriA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilNrX-00016s-7Q; Sun, 29 Dec 2019 01:59:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilNrL-00014I-J8
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 01:59:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id x17so13313988pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 17:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B0YqCZdtASo8W3+DNsZKxEkKUnEoAfpsuE3h6bg+BKA=;
 b=SUBvHzkDy3ObczV/2Tibqb/J+Bch+J+BkQLTRD7VEq1pgSLY5siprwnL8ItHD8F9X0
 CLYNPAl6cuX+YtWyUz4Jv6O3q5S6xdwYdxId7gchqdvDjxrpI174YpeyGAVnq5OCLnYu
 mjnk8FJDiqHP2OyS9LeyMpUTtRHfWnHiSWEIuaxjubiE/JKwwlviZBeCb1t/7K0h+fYh
 0vjWt+KfOtPAEGUy76eHmG3OAfy6XCIgbDlBxBVQINB4iZl4afyF3PioZAzKOKODRE1X
 oQLqq8b0HCjpBZ3AJYpqPIprChvuIUnjenWvUp0O9V64bXJNy2P1yqNwOkoX6pEoUsOG
 rZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B0YqCZdtASo8W3+DNsZKxEkKUnEoAfpsuE3h6bg+BKA=;
 b=PTJcMRQGzQAGA92/X2ZQFhuYeewlMcb+0AxQq1Ay0S5p38hDhM4D0JkvV8zAqlaq6t
 Joy261Uh3H+Bm3xqdhEVMDbIcSrB3Qg4q+o13DwZWAIrLBtmlHHNKC9vlP/pJpRiL3N1
 S4Tc5wnlAcqbiqJQ7FUnESnNgbvL+szQwE+aPb3CIIrg93AjPH/B5WNswuRJ4Jr6bnVl
 o//EoG5L5CwP+veEDbKlzE6EEMsEqtjk7p2oUVkZzkEbzM8jyWthoQS4fNLPpWtOpOMo
 BKk4/T9L7q22huVX1LY8J99Ot7ze2m+YxrdvOYnZDBmazEL6bHNictu7tLFQumiyqOT4
 zOzA==
X-Gm-Message-State: APjAAAUPuP1K8GC7Ns8X869/UjKXYrIK/Jv9oREV3KmZwJpS56aet+hU
 Qjdi26+UsoqkdSOof80/2K/PtQ==
X-Google-Smtp-Source: APXvYqwFD0Z6M2ULKf78TvessQAN+owraVNT/WM/LcoBIbydcpRlk+A9rbJjuwmOeeAvLemOFIwgmw==
X-Received: by 2002:a17:90b:d94:: with SMTP id
 bg20mr34993201pjb.99.1577584748559; 
 Sat, 28 Dec 2019 17:59:08 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p185sm46804599pfg.61.2019.12.28.17.59.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 17:59:07 -0800 (PST)
Date: Sat, 28 Dec 2019 17:59:04 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 03/13] mailbox: qcom-apcs: convert to
 devm_platform_ioremap_resource
Message-ID: <20191229015904.GG3755841@builder>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
 <20191228183538.26189-3-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228183538.26189-3-tiny.windzz@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_175911_754319_87265C8A 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: thierry.reding@gmail.com, f.fainelli@gmail.com, alexandre.torgue@st.com,
 sbranden@broadcom.com, rjui@broadcom.com, linux-arm-msm@vger.kernel.org,
 jassisinghbrar@gmail.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, nios2-dev@lists.rocketboards.org,
 matthias.bgg@gmail.com, lftan@altera.com,
 linux-stm32@st-md-mailman.stormreply.com, nsaenzjulienne@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 28 Dec 10:35 PST 2019, Yangtao Li wrote:

> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> index eeebafd546e5..0faf69137780 100644
> --- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> +++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> @@ -49,7 +49,6 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
>  {
>  	struct qcom_apcs_ipc *apcs;
>  	struct regmap *regmap;
> -	struct resource *res;
>  	unsigned long offset;
>  	void __iomem *base;
>  	unsigned long i;
> @@ -64,8 +63,7 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
>  	if (!apcs)
>  		return -ENOMEM;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(&pdev->dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
