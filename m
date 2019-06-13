Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F38D433DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wi8M6eWhaU2i0dIUlOWTu47w7R177P+ZzqDKhRWXvY=; b=rCi1l4WyNywijb
	KWu5X42dLZnsvmmc0fohFWE0Y/oeCzetGg6dxuG+vyZd+xjR3Ggl+zsZTc4r/Y7CPFKfEiQw8GZRl
	5Z0bqpOQ65jXgafj38TiLAWdMdgXGNF7ueH+Cy6dcMqFDJM1GYheIpKtFCF4jDNjd8uCqphUMBsWM
	LBVaFIGWO+NCFIe2TATB22TH8EDfnElt51VVweUflx/aYHWLJSA23V3EPaFpoQiiN/ylxHWXqiHzI
	9CutenT1IJAMqjGRu8ZhTgG9IEIKimDbV2ehMz1hUOEVC5QrOPtSQvpYHb3634HKcqqewZV7jl9Z9
	MImX1BXo0KdYnbu32GqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKUb-0001rR-AD; Thu, 13 Jun 2019 07:49:53 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKUK-0001qW-Vw
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:49:38 +0000
Received: by mail-qt1-x842.google.com with SMTP id i34so21463659qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 00:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xROEx50vg3PrTIRbBL87vn9xq3zmqd182DXiss4gqbM=;
 b=q3wHpbh5ZcLjlQW7kj7YYZuO2MWWre3rKFc1xRiJRLPzhfF+0X6mVWIIMfzvS7Rsiu
 qlPzgPoi0qh7StRWKqeJwocEpa4r/p/0lRP7wTbxbWhwGRycC1XHHnsa7tARYuIaHZnm
 j4fLn76lVPiHH7mJirtdmCF6+fHru+SnN8zCtaQN7+7PoewJmPVd16kR6ZrQZ/OpXdP8
 klOVVdV4cUYSIuz7trkXErJMZt7wxUdrHLY+SR+Rc+VfJ21s3amIh7TVMbdmHYZLN7gZ
 hdO61fuW89DO1MElkjaiiN2Xw4u7bb1mVsfdNf85byeAIDhSG0GKhEeZ38Xl8sFqqo2p
 a21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xROEx50vg3PrTIRbBL87vn9xq3zmqd182DXiss4gqbM=;
 b=WJzMDTR5yBFMj2lmenSebcYFj0Ucpe8hFxcy1APnyKfRWaGemPiUO/fvx87Lkd2TrW
 f5XFC0QP2FmVdv/gnCV8Lz0PKzn9Voty2dEr7m1+JxnNeAP7aH8Ey1L//x0Ia0n2hznI
 Py2r0jnS2OHSh8FQdqUGF15K/jUECbQiMSAN5GMvcYkOKqSMGUI/ZBVgn3RhIgOBp0jy
 wqxjzB6JeS64+PfO7Gqrb21be7dXW146dP0AR683KPR4A8dhASrvdCVIcreugwG1siRK
 f7jQFKqN1isJjEwDM6e8yWw2ScUdRky70edQedjPljJyKVGQgd9dPgMiy1SLbg2IHU2l
 6l2g==
X-Gm-Message-State: APjAAAWLwfuEEtSJMEzKwwEA1BQLUt92MVeMWcrLzA4BBY+OznxTIKM2
 GofFezIGwC5m3QdMWjhSxujMTA==
X-Google-Smtp-Source: APXvYqwEurFoZHKAEhOSIDN36DqZuW8gdc1FPaANBB2DIiStrJOy1JF8fsQVRp2blw4EqjOl1eZlsQ==
X-Received: by 2002:ac8:3668:: with SMTP id n37mr29172383qtb.236.1560412174396; 
 Thu, 13 Jun 2019 00:49:34 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id s44sm1537967qtc.8.2019.06.13.00.49.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 00:49:33 -0700 (PDT)
Date: Thu, 13 Jun 2019 15:49:22 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] coresight: potential uninitialized variable in probe()
Message-ID: <20190613074922.GB21113@leoy-ThinkPad-X240s>
References: <20190613065815.GF16334@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613065815.GF16334@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_004937_093592_A618572C 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

On Wed, Jun 12, 2019 at 11:58:15PM -0700, Dan Carpenter wrote:
> The "drvdata->atclk" clock is optional, but if it gets set to an error
> pointer then we're accidentally return an uninitialized variable instead
> of success.

You are right, thanks a lot for pointing out.

I'd like to initialize 'ret = 0' at the head of function, so we can
has the same fashion with other CoreSight drivers (e.g. replicator).

 static int funnel_probe(struct device *dev, struct resource *res)
 {
-	int ret;
+	int ret = 0;

If you agree, could you send a new patch for this?

Thanks,
Leo Yan

> Fixes: 78e6427b4e7b ("coresight: funnel: Support static funnel")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index 5867fcb4503b..fa97cb9ab4f9 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -244,6 +244,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
>  	}
>  
>  	pm_runtime_put(dev);
> +	ret = 0;
>  
>  out_disable_clk:
>  	if (ret && !IS_ERR_OR_NULL(drvdata->atclk))
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
