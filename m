Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE674ADDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 00:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POZmDEY86widFrFZox+1bvGQ2wz07pB2uOGVHc91s08=; b=Iiqocl4BM9T+tP
	VTUkIaAWnBtnX6CT1QCscor49LxsbhrGpHvM6w0oliUS1MAkXUeT6KV5PVI1S5kTUxdMeuQuqrNb0
	AvItSMth3JB9+HdB9fRjSKcvt31t+gv6BHYqO5i1sH0bhNW9c6uB5Mn4M4U0bniVfgb0QTb0TGLHU
	w+G0YNMcDvExFIsrASTD6J9mXlivsyTfEzDBBx85Gv+ap5JfrguxKHr3cQvxQnDgvuu+5UGQ5ehlJ
	cdqRMAlmW98La4wA219OHhoswWw9kgYXziuAvOAsi2cxUBVUuiYLB3c/kZRvyJNrZOIHPXbJ3cWoL
	2mR9++uQgHGC3ITmIaXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdMgC-0006kt-Ls; Tue, 18 Jun 2019 22:34:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdMg1-0006kX-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 22:34:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so8436593pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 15:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TZMycibYcZan5Gk9jVy7/NB9YYRna/hqRcoxbatoCPE=;
 b=iMWhOIsPyiPDMMl77cekPEeKeV4nY4jb0sf3RCOZayqCUjkzwK5J+5zNt8/chp6euj
 IESMbNBtzMMOeXkxzuqBdg9zU6UvyT1SpwLNTEdDeEy0drX2u+roLLa8SntC6fw7lrxT
 VHKAvpXBIfofm12umDgkd+z8YYjau0z0QDFRBw3Yd0oDtFoN+V317p2Sdik+cWkVO0ls
 KaOHBjrH8JEroiT2GIWFhaQk8+ooCxdo+FQ5dJHf1PGp4jna6SZYScPSty/p1VTEarpc
 oqWgadCilQiDLy6mfgfMgDJ+skVW5nFpb2PpVU8iBOwcZZiC/+DtDAKn5kOjXVbHF4qW
 wG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TZMycibYcZan5Gk9jVy7/NB9YYRna/hqRcoxbatoCPE=;
 b=seUr1aIi7iqL87bbz8a6fIyHx4VHu4AwfwgNcG8leBgj3Ib2EtlBEb4FgUY9sAhfAG
 4T58AQARsnSyh2zetnpLyid3jbPIqHieGCjz97T5U+PUL9qWhLb3yxRNk1MAKK3yC/hZ
 1PVQPaIREkWvWCnS5DJuua4xgTZziz0gMR1zDHO1fr3J6xSGuz2NwbecE0yiwIlA9rIM
 EnzeH7ccwcX86sVRV8TRkvZWlD7H/RGjjc+vptVrsL+gmeicw/rxXh8lRyRUBZyVkOcT
 hA+zJK6cHOawz6IUicSSm1tZqROj7ujGQXaPRCePeDgPaMbRvSKXFLETtklzdem6jd9T
 bmTw==
X-Gm-Message-State: APjAAAUN0JPJ6g83SmS2o4oQ5fulMAGAlD9O9Ji87mE8214DodlM1vfd
 DSWU2/TX+n320lK8JgslZGuA00XAh2J8XA==
X-Google-Smtp-Source: APXvYqwIxb8QgYKlSvd8CckG8CEwK2KfTbxxVzumrIAft2HV+0KYtTxd+5neRyycyVWi98LpZOuVFw==
X-Received: by 2002:a63:b1b:: with SMTP id 27mr4672884pgl.244.1560897244673;
 Tue, 18 Jun 2019 15:34:04 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id d19sm2995373pjs.22.2019.06.18.15.34.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 15:34:04 -0700 (PDT)
Date: Tue, 18 Jun 2019 16:34:02 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190618223402.GA24894@xps15>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-3-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618125433.9739-3-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_153405_668034_1DF112F2 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 01:54:30PM +0100, Andrew Murray wrote:
> Synchronization is recommended before disabling the trace registers
> to prevent any start or stop points being speculative at the point
> of disabling the unit (section 7.3.77 of ARM IHI 0064D).
> 
> Synchronization is also recommended after programming the trace
> registers to ensure all updates are committed prior to normal code
> resuming (section 4.3.7 of ARM IHI 0064D).
> 
> Let's ensure these syncronization points are present in the code
> and clearly commented.
> 
> Note that we could rely on the barriers in CS_LOCK and
> coresight_disclaim_device_unlocked or the context switch to user
> space - however coresight may be of use in the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index da7cf74d612b..ae623415c431 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -187,6 +187,10 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>  		dev_err(drvdata->dev,
>  			"timeout while waiting for Idle Trace Status\n");
>  
> +	/* As recommended by 4.3.7 of ARM IHI 0064D */
> +	dsb(sy);
> +	isb();
> +
>  done:
>  	CS_LOCK(drvdata->base);
>  
> @@ -453,7 +457,8 @@ static void etm4_disable_hw(void *info)
>  	control &= ~0x1;
>  
>  	/* make sure everything completes before disabling */
> -	mb();
> +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> +	dsb(sy);

As far as I can tell mb() is equal to dsb(sy).

>  	isb();
>  	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
>  
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
