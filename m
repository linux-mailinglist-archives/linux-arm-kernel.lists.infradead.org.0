Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65C61D2680
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6OeWZtGA2CHElDkX5I0yAR8BblGlupjby5U4syorXk=; b=eDEWUVnxF1khPt
	hPzqdqrjKrtRkz5mjZfOT4fYuTlfIrAQLKOp1f+vq+N8dXB4v9BQcm3qI36XxV33v4L+8DBZ3135C
	NfZU2Tv5GzKGZIqf+aNELaipVkkShiLDnoQAN8CBzmVbnuRMWOghlkzL/BY8iiJvfCxD4XSMRTZNe
	ZdbokviOx2zz7yGe+oRlOpdXmK7AneNnOOQKSkeRylJv0M58TI2X+LLsxMRqgRix7s33ZuTHyegyL
	Th9zjV+Rxe99jFWMlM84BD7LLeEL+hnfQAYyWt7nwJKHzbdyY0llkCr/nhnp8y7NUtTuqMArbAKl1
	594RPOAJuOEMtkoO7obg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ67V-0000pk-E2; Thu, 14 May 2020 05:09:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ630-0002nh-MG
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:04:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id n18so801631pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 22:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aNdxFa4QrJqUAslQvvR1Ej1cwVVNap3hxsxBpwJX/qw=;
 b=lqCVdH0DG85s8XFJt9av2MXGj4T0fHmhnth6+GRm+5czdRqg8SzBo2fQ21tg1rxbfq
 ybLI+gAxenyU/ClGQd8AtxvFhpjbe1tbt6kJAnKL/bd0dS68CmkA7mq5eH9L9TSGDrMR
 VkkhDRMMe9q7JnDfleItdIjOZct4RM8rkFMF1Vau754MBefsmOgaaL2EC45dM9rMH+DX
 FQ5s8c6EdI5CuKqkwCjloSg/VfMW1NclEAcN9p/0fE0vK46R7hpg69BrKVKABEoEZbTm
 wFyI5aqlBVjQ7dxOJu3SullzfZWFlNhN7VvBOR5MZCUZmYap5y2gjqrU88xQDANavc5S
 ZF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aNdxFa4QrJqUAslQvvR1Ej1cwVVNap3hxsxBpwJX/qw=;
 b=i0zxkD2gF6sB5FvapbAQ5t2lIGH3ae/KXjIwNHhFtdL4UCuYF8tW+W9ZW3RYh8Y6y6
 aj0aJjdFAK0hGMJh3KoFFlq+p4TN/S5kvk+YxoDmUDbMAbXwhTJlLxKo+2BF6/ZgZyR2
 zYSGNaqslQTmLgXklUC04ZulvWrRFPFoxBfulaniY+UVspPq61so6w6Tqi5vxmQXsyj2
 Q3uCOXKd3yZSwPfWCn3nAQyByiFYuNP714EGPcu3/u/MwMm9vmsA+2RMebRhzopa+0JA
 J/fP8cXl7x6Y9xdI0RJTPsZP2bVPzeCdytFQSAuZFjABa3DFAdnNDA9AVyaj8pss1zVl
 FheQ==
X-Gm-Message-State: AOAM531CzombFRaywptpCAc0eg5AUyNnzBhIlnvlkTsuSfRSlTZBE1kB
 91eoXVWfHG14ny71qBF05XrIlg==
X-Google-Smtp-Source: ABdhPJwRiy8/1HoO7DTnCtfH18KWXNfvYdwz4V9uPRi2+kFUWIXvo1uANQsWfdxgpLZtpPG2rO77WA==
X-Received: by 2002:aa7:8658:: with SMTP id a24mr2765320pfo.135.1589432678189; 
 Wed, 13 May 2020 22:04:38 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v3sm1073113pfv.186.2020.05.13.22.04.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 22:04:37 -0700 (PDT)
Date: Wed, 13 May 2020 22:03:07 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 04/12] remoteproc: stm32: Remove memory translation
 from DT parsing
Message-ID: <20200514050307.GJ16107@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-5-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-5-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220442_747184_6EAD9C24 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ohad@wizery.com, alexandre.torgue@st.com, loic.pallardy@st.com,
 arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 24 Apr 13:24 PDT 2020, Mathieu Poirier wrote:

> Other than one has to be done after the other, there is no correlation
> between memory translation and DT parsing.  As move function
> stm32_rproc_of_memory_translations() to stm32_rproc_probe() so that
> stm32_rproc_parse_dt() can be extended to look for synchronisation
> related binding in a clean way.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/stm32_rproc.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 57a426ea620b..658439d4b00a 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -606,7 +606,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
>  
>  	*auto_boot = of_property_read_bool(np, "st,auto-boot");
>  
> -	return stm32_rproc_of_memory_translations(pdev, ddata);
> +	return 0;
>  }
>  
>  static int stm32_rproc_probe(struct platform_device *pdev)
> @@ -634,6 +634,10 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto free_rproc;
>  
> +	ret = stm32_rproc_of_memory_translations(pdev, ddata);
> +	if (ret)
> +		goto free_rproc;
> +
>  	rproc->auto_boot = auto_boot;
>  	rproc->has_iommu = false;
>  	ddata->workqueue = create_workqueue(dev_name(dev));
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
