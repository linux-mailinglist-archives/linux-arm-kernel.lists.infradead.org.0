Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CF91A6BC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZVmnt/mMdYq1NxqMYXv8qTjWKJXI4cEZl4LS83h15o=; b=K2jdfY2mf0YWCw
	Fr0PxT081AyytAoHHxcI0aiuSE8O2INguCADztQDIW8ih80iUYjQRnooV8SG2Qcqp+Qy09kt/N6XY
	fB09NGjBat8MgxQjWGMyi6cIwKsfg+RL8/q3NZWKuB4am4bVvlFlHKUYW8yhUFHr5SjJo3W5GNsuX
	+dbdu89rq2X65fKrFHayuaM3zm9Ez5FcpAJz6yxZN+TWSrcVKUXEyjQIxV8NB1T/6gol5bN3r4VHE
	m9U264WkLCC9ect23toX8PLCIc1MWNAnrUYfBXWQ8RcFE5HBgDOS93UUYM9TRvSi9fiwJ/nWIsyKx
	v5qUPp/MwesfiKZUHAiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3Mk-0003FL-Kf; Mon, 13 Apr 2020 17:59:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3Mc-0003Ey-OP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:59:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id a13so4846514pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 10:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RzcS9dRjplQeBWpxQLCXEXIw7gitZm1gAW9ZRZ00JbM=;
 b=Fhx/J80DpVsmu+cLUqjdPvmyDwYoktkYfDZhsVCejMCrmvXSQYuN7q8RGV+/7FJTSe
 gxwHjIBkE523cnzRzXNRG+vlC7YTx94UEN92lZ5uGaiq79mzJZZ4OWqoIRA5528eEicC
 Oy4mfHD1Lyl/ve65vY9KultzKvFwUwGqw7Ugka5chw485gmoZY0NpkwljOGbiMuYq6C+
 wEUGe0U0SMjku1d1aPq7Mx9xoguMM96PnmkiERyOC4UVkG58aFCw9wW93fhJaxS0Ko7y
 Ssl2SHPS90PVKzLedehqy0QS53VnlbU1dQKNJCkZt9i3l/znPWvXcjWQPqy7Lx36yrGl
 K4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RzcS9dRjplQeBWpxQLCXEXIw7gitZm1gAW9ZRZ00JbM=;
 b=GqVAc6cwDB0ex3G/OLVlC/f/XbOOBRNtoprs0s6Qe+woDRoss7nLlmwE+cm90EK4xj
 h9N3xK23NMNRJvmmkLTdM7Na1y4IByZd3aIcoFZ529n/ciJ4cB23H+rpFQa+cvjKl+Wq
 KpMVh55dVtt1/FzHS53Z9laJYWLb8KU0JdXiQbRvn+nnYi16ZZ17NBTkBRFVgwGCbz1Z
 z9zeiirE03cuLOmjap5XU9vEbfar6zZKzluqf0Id/RO14ThhE2zItf4xpzPB+tU60HTe
 uRuhlzzT48vRs7aECwzMg+1UkNGFP7n1U0ZJ6FVTgENZQ9pTjHXcoJKWQAHMtSQEILd3
 6qow==
X-Gm-Message-State: AGi0PuY/Y5doWyI4JHv/t3toGW/ujJlkMv6yy3NcE3nAiMS5n6MGC9dw
 5DmvyFyaLGbZYyg9B03olK6Ipw==
X-Google-Smtp-Source: APiQypJqwg/RDqB4fxKPMLKyDOESIeZ68eCl9+qIGJMwBOEmADpmfodFX3xhci9FLB6X0hLQj/YpGw==
X-Received: by 2002:a62:1552:: with SMTP id 79mr18771642pfv.215.1586800757596; 
 Mon, 13 Apr 2020 10:59:17 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s22sm9544676pfh.18.2020.04.13.10.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 10:59:17 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:59:15 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] coresight: etb10: make coresight_etb_groups static
Message-ID: <20200413175915.GF28804@xps15>
References: <20200413082237.23177-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413082237.23177-1-yanaijie@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_105918_791007_39F8662C 
X-CRM114-Status: GOOD (  14.27  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 linux-kernel@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 04:22:37PM +0800, Jason Yan wrote:
> Fix the following sparse warning:
> 
> drivers/hwtracing/coresight/coresight-etb10.c:720:30: warning: symbol
> 'coresight_etb_groups' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  drivers/hwtracing/coresight/coresight-etb10.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 3810290e6d07..03e3f2590191 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -717,7 +717,7 @@ static const struct attribute_group coresight_etb_mgmt_group = {
>  	.name = "mgmt",
>  };
>  
> -const struct attribute_group *coresight_etb_groups[] = {
> +static const struct attribute_group *coresight_etb_groups[] = {
>  	&coresight_etb_group,
>  	&coresight_etb_mgmt_group,
>  	NULL,

Applied - thanks,
Mathieu

> -- 
> 2.21.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
