Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929F61A6BC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPBsDYPsoEifgSnneyOIG6XYoGUMav9rCy1TCpW1KVU=; b=oKolHadbF94ekP
	MvevbDM7fhvlGjvVh/F/IyGKcsMqo0yVZJXW3IUhPCJWeYJPyP0MgaX/hAPs3lE6GLHYGnYwxVoX6
	IHLevYCpyuhqBMPYYv76sZQfYBdQ1r9op+/ttBmOzYjZ5orsHMXHuwoiVsa9B6YFqWDZSkF9IxGjq
	jbJ1Bt4b+PXiJVxEE/lU8ejfN1djiIHC5JCNWGnkmN2fcgsvoEffHlQhpDr46F5lV0ofJmUp28kyG
	boMdCWpqZutZ2+vCvEe9PLK6nMbWm/ipgb0mu29Tb7dMpebOkIusAXK1k23pVE9T+x7H8Og+ALl1F
	t91NRn3ZTJBf/yMjPeSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3M9-0002oD-FW; Mon, 13 Apr 2020 17:58:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3M0-0002nd-V1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:58:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id y25so2555793pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 10:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0keu4PMkXs5TE6dOL0jOplSK+Gz3D/D04Bdh0nv5W9k=;
 b=tayvGblV1EfBLNq0bf+Hjdu/L2wKd2UceRTwQ1v19v8RV3smljbw0OA/W+X5dFWJVr
 a2+IlQV/BBPuG11edlV+cV365l4aNIk9ep5IDta3jXd09Pu/3xh7uszaCGrFncBaU+Ui
 EUtGI95pwilWwoK6P+j5LWHGJSFzkwWVgW9/IIOy+WgqrwcjgyseljiidiZJEKCTYBQf
 KBxn8OO7/b02pl9El+PV0wyK2PT0DEJMObQq8E5N9NJT+JJKwC3F7pTNYIW+oUYUbq5G
 6reA87/CXmwnAs2eWMkVK9bfoYolzEwoiHvWtDH1NwjoAuIpL2pmeYVDU5rCm6QWVU5W
 Tahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0keu4PMkXs5TE6dOL0jOplSK+Gz3D/D04Bdh0nv5W9k=;
 b=Mh0ggi7/52xLugqFbecu3DLboIDw4hb1+bfgGZAKzQZQ/CUYiDfPEGx6KT+Ihg2eIe
 kTNqDy3gankJJx0yAHipeh5LaKnN06ERBuxRun0jTSrSp1VoE+av3bL+FeR8+qagsa6W
 dhVBT6spX2U8f9oEpQ4sy0+6c63emiWKxZOxwhSx+nN01VqWqtF7Z0hDFA0rxpnkye5+
 aX2pQxbw4zSReBL5xLHS1rK8mVLhgs12gG3DXrTY1sE4c7EuxsZ8kqvF/67hGRN2rWnx
 YLWsPKjJ/A10YaIeyczp4AdY3B3KQlyF3LE6fdRgHecicWNRMiNZ12i8SkAcFm44UScx
 5i3w==
X-Gm-Message-State: AGi0PuZigya3x4CHXZKYELhPERpy2jD7CLGnHIOB5hEL9hdJS6TXa5qB
 NOvFcv0F7/tbJ//lccot3cDPWQ==
X-Google-Smtp-Source: APiQypJ4hG26wy+uvhPhK5njQ4Mt6FjcLeTkBC1tThGtSZgPZMfB0noJ/QWQnqj6exVsBvFvBuy8Tw==
X-Received: by 2002:a62:7786:: with SMTP id
 s128mr19494733pfc.144.1586800720395; 
 Mon, 13 Apr 2020 10:58:40 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k14sm9306208pfg.15.2020.04.13.10.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 10:58:39 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:58:37 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] coresight: cti: make some symbols static
Message-ID: <20200413175837.GE28804@xps15>
References: <20200413082224.23090-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413082224.23090-1-yanaijie@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_105841_009971_7BE360A5 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Mon, Apr 13, 2020 at 04:22:24PM +0800, Jason Yan wrote:
> Fix the following sparse warning:
> 
> drivers/hwtracing/coresight/coresight-cti.c:22:1: warning: symbol
> 'ect_net' was not declared. Should it be static?
> drivers/hwtracing/coresight/coresight-cti.c:625:32: warning: symbol
> 'cti_ops_ect' was not declared. Should it be static?
> drivers/hwtracing/coresight/coresight-cti.c:630:28: warning: symbol
> 'cti_ops' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  drivers/hwtracing/coresight/coresight-cti.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 9e262f5a85e3..7fc1fc8d7738 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -19,7 +19,7 @@
>   */
>  
>  /* net of CTI devices connected via CTM */
> -LIST_HEAD(ect_net);
> +static LIST_HEAD(ect_net);
>  
>  /* protect the list */
>  static DEFINE_MUTEX(ect_mutex);
> @@ -622,12 +622,12 @@ int cti_disable(struct coresight_device *csdev)
>  	return cti_disable_hw(drvdata);
>  }
>  
> -const struct coresight_ops_ect cti_ops_ect = {
> +static const struct coresight_ops_ect cti_ops_ect = {
>  	.enable = cti_enable,
>  	.disable = cti_disable,
>  };
>  
> -const struct coresight_ops cti_ops = {
> +static const struct coresight_ops cti_ops = {
>  	.ect_ops = &cti_ops_ect,
>  };

Applied - thanks,
Mathieu

>  
> -- 
> 2.21.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
