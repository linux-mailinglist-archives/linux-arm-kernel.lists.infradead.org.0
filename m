Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8371C7765
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNN5ZH7b7E0OQbiCy/LLrpS+vrVzcQRttNaxqCSyuLA=; b=F5ZjnIEQ2BcLac
	lupES38v9SKRjQcC0EuJiTEfnO/QbxqnmfkS88kLm24NfX0ZyS8tBQaj20Yj8RYWXyEFdJQ1I4FcP
	DbFakSLqA5CeBAQKLRvzxHzGHSkzYaJJNTXTPgwv9791YS3ajWxt3PAUrX1eNohuS1XE/iZY/du1S
	R9Yo41/o45csTj84XgmmMp0V6IuKdkcX9hpMMGU4fjI+pgiTYNh2KI9V7iQD0pANINbtV6q5iYl4B
	la/YphMquw6dslyz7SpRZqC5Ffm+85ujqqOr2f+CyUoI7cUvmtmbUrLK/Im5IU6hXP5PHpYIB01uI
	JLJFxMQ+T4BnqQVWWSBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNUO-000438-CL; Wed, 06 May 2020 17:05:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNUE-00042L-EQ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 17:05:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so762623plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 10:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DMnyBszh3UeqCW7qnMo/FE+1JsfaybooXYVovwSgOU0=;
 b=wjhas/C5XrWq/GRzJ4L46JpN7TUl0HXRUyZEsSzcWYeqGm9ZWRwPt0cEIEw0dCoSdb
 Iw0vL4CDm9Epsb/REyfTG9hBsoSsTZKoEQyF69k4zEFXVBGhIid6m/jF5dgZYRAAWSI/
 C5R39aUHUdZIbMP33F9OlS6WodCxw1qsn2vPWDvmDY8FIwxBqRUuIZpYMrUzS3W9oON4
 qM8qoDs5UKsVV4xib4qu8XVUgue+qyZFoBKZV0WTvxnACEMi+AxAaZfN36t2ZXjiN7R7
 iGqwNP0ZfXeq/S52cO2caUXfiPCWnuisC0/nydPMT6OHOufwNh4qUVvnyeC8+3wyt1Vl
 HR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DMnyBszh3UeqCW7qnMo/FE+1JsfaybooXYVovwSgOU0=;
 b=YAiYZywVgPfQmpKxn2pXkc6Hb7B4K4k9AYlT8WjGo6mBf6MW+3SOZmZYrflXp9IPm8
 jeJqzGqjgBNrR9BMK+zpjw6DMuVlqEuk7DyrXeu98SaqoY8hrVAmap1mLFS0AlBMmCx5
 uLBogwnQRurwAvLH+U946N5AXMhYj/EQapj4xHRbv21SGWRvKT1YSTDjjkiyF8GEHpPZ
 ENOy9CF5pIz15e1g/hjqLaQM4eKzh3+lrd6KJj7Kw7lYAYQkLhp44lrbeq3O9xsSr73V
 i2xH85PbVHTANGAxvUa6eIo7eYCHoj+nkI14hzMHlnDAp36j9CXsRmRs23pV93kWNsKr
 EBiw==
X-Gm-Message-State: AGi0PuZbCKSdHyWuKuZ8kWo2SoiYg2X7kMvbGFiQL0K4TIE0xL6OA/Dm
 GTuW9grL/2Yytw6CH2aEz2OlTA==
X-Google-Smtp-Source: APiQypLaGLS3vKtId9+ilSozvR3yu0yraasLg/PIEDtyzoGmdghVp91NdTtLccqpn1wRpqWJCOhiPg==
X-Received: by 2002:a17:902:23:: with SMTP id 32mr9150743pla.40.1588784733779; 
 Wed, 06 May 2020 10:05:33 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id b16sm2312057pfp.89.2020.05.06.10.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 10:05:33 -0700 (PDT)
Date: Wed, 6 May 2020 11:05:31 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [PATCH] coresight: cti: remove incorrect NULL return check
Message-ID: <20200506170531.GA29826@xps15>
References: <20200505134020.11148-1-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505134020.11148-1-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_100534_647525_FEC754E7 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux.cj@gmail.com,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 07:10:20PM +0530, Calvin Johnson wrote:
> fwnode_find_reference() doesn't return NULL and hence that check
> should be avoided.
> 
> Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> ---
> 
>  drivers/hwtracing/coresight/coresight-cti-platform.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
> index b44d83142b62..2fdaeec80ee5 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
> @@ -120,7 +120,7 @@ static int cti_plat_create_v8_etm_connection(struct device *dev,
>  
>  	/* Can optionally have an etm node - return if not  */
>  	cs_fwnode = fwnode_find_reference(root_fwnode, CTI_DT_CSDEV_ASSOC, 0);
> -	if (IS_ERR_OR_NULL(cs_fwnode))
> +	if (IS_ERR(cs_fwnode))
>  		return 0;
>  
>  	/* allocate memory */
> @@ -393,7 +393,7 @@ static int cti_plat_create_connection(struct device *dev,
>  		/* associated device ? */
>  		cs_fwnode = fwnode_find_reference(fwnode,
>  						  CTI_DT_CSDEV_ASSOC, 0);
> -		if (!IS_ERR_OR_NULL(cs_fwnode)) {
> +		if (!IS_ERR(cs_fwnode)) {
>  			assoc_name = cti_plat_get_csdev_or_node_name(cs_fwnode,
>  								     &csdev);

You are correct.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Greg, can you pick this up as a fix for 5.7?

Thanks,
Mathieu

>  			fwnode_handle_put(cs_fwnode);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
