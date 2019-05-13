Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3CC1BAD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mp7UuDV5fCofdQ5ZXrYZbvWT76vV/aFeHOc0XKnRe+Y=; b=HWhxSipA6V59O2
	VNZVXAFgJIWZ1xRg9uZzv0rQFTk+T5Ksg78oV8ABo6uxQUy29OA++u2GhqtWYMhcKvqJ5KcLYEM57
	cgnG7clXdfW0tHxIH89sEoyJbez3ekeL8Vuo5+nhwE1/pZQi0cF1MWTSHgsOK247bLMhhB5Dfp8XD
	hSBiQX0noTkj6+RdLve58yKyiWW6Mx6rT1TJrIJ2RXYDS9tmk1uuNr5Cm92G6T00NozIKLjx6T/9b
	A7/I/uM58pFHkBeIxJCxS8YrsmxgM/dGUz9s0Q6O7XNpp9BUtGktgCTtKzfL9x1qm60+fChQdQpju
	Ok11J2GFM5+JA2uo1l+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDf0-0001IF-VX; Mon, 13 May 2019 16:18:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDeu-0001Hl-FR
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:18:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id f97so1621841plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 09:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6+MQaTsVJQJSSNxT2mZEbP74D/A7peyG2T/rPYLLsDo=;
 b=JdfUvZvYGDdVocnng1PLH23mptubsZoncwQugjqyn/7BY7LJI/ttP0jmsTDZv6twWn
 DwHP3Hh2ytvh6KsT/ThvEHQ/1b4NKEzTklv1Y/5YeElkwnqIankILMWHyXhCU3vGq0mN
 XBe6vvP0ztLSxaIm0V1N7qOYgICInr51AhSDDYtNwyEBc78dJYFmDUdPctVYH1CoJmXF
 n7Mt/DiytbF9mK3VKZoYKDpA/2D1ktIi30rxm3A6ZnIoIdcVX+ywAIQtbimWFPMuZVV1
 0cKujqi8SyaxV4HrCmn9c4Il4ADy6PLmNa//x7nzHnfqG1VcVoXrxx/5AsDk1skcTFZ2
 PtVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6+MQaTsVJQJSSNxT2mZEbP74D/A7peyG2T/rPYLLsDo=;
 b=FPOA67Rar0ITHL9+KggM0rPeMxY2kTOeT7bER+QfccB2snU0J0qbkty6YhC10Sphsq
 y62Ven7EeYU3tb1wP9WY0BzYOnZvIn7544f+Bpy6BALK00RJZwXOURkfa1HjbLquWKmR
 DudH3nYSSqTEyfpz3nGqmcU2mIk6YxuSfUTYnQ5t6ixfI3dEj0hKyXAHMtStBNw4UY2M
 tZkUrn72F/N/9rdcwOEFqw9kt63jJG2b4e8VFlyrJOc3NVGUYcGEukNJvQa9ZQzEtnXK
 y22yYhrobqxAi/j4M4YwAfw/WDfIEHq00i29wzsL5eyo14fzHr2Mmsg7iGPFDmxheb3F
 NYCg==
X-Gm-Message-State: APjAAAWKsmGWfWi94NtsZgJAhfitkPOHYJbt1KGHryReRef++wjNJdUH
 /r3MiBdFb6jZ6CrFhouT40yjkQ==
X-Google-Smtp-Source: APXvYqxVd4aJV+d2m1lSilccmVOCeC9ZR8invejgr27Q9HyJZ6lw1fGD46Qe7pX39DCQBBxfwNebDA==
X-Received: by 2002:a17:902:7241:: with SMTP id
 c1mr31608992pll.326.1557764315552; 
 Mon, 13 May 2019 09:18:35 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id n9sm17553093pff.59.2019.05.13.09.18.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 09:18:34 -0700 (PDT)
Date: Mon, 13 May 2019 10:18:32 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 15/30] coresight: Make sure device uses DT for
 obsolete compatible check
Message-ID: <20190513161832.GA16162@xps15>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
 <1557226378-10131-16-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557226378-10131-16-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091836_545199_94305103 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:52:42AM +0100, Suzuki K Poulose wrote:
> As we prepare to add support for ACPI bindings, let us make sure we do
> the compatible check only if we are sure we are dealing with a DT based
> system.
> 
> Cc: Leo Yan <leo.yan@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c     | 3 ++-
>  drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index 6236a84..3423042 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -196,7 +196,8 @@ static int funnel_probe(struct device *dev, struct resource *res)
>  		dev->platform_data = pdata;
>  	}
>  
> -	if (of_device_is_compatible(np, "arm,coresight-funnel"))
> +	if (is_of_node(dev_fwnode(dev)) &&
> +	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
>  		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
>  
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index ee6ad34..7e05145 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -187,7 +187,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
>  		dev->platform_data = pdata;
>  	}
>  
> -	if (of_device_is_compatible(np, "arm,coresight-replicator"))
> +	if (is_of_node(dev_fwnode(dev)) &&
> +	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
>  		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
