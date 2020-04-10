Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8FB1A3E20
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 04:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3hrU1mgfNuBW9HkKT6nkN2miVqo93Dd40u+Wa9IYqg=; b=olIUBuh+T8/FF2
	DE7IV2UOSouSKGacoxJO9bFZD++xR/S4M2KXYev6B+c9tPCDoJ4Db7wMb/x4VuTdA+MKf6hocFKn4
	eV6dMs4h0L2ve81KpigdozkY9dlo5rV13xI4KbBLa20WqgoVRzKLKKs1RdugkLosGAQybRq1aGZuz
	9DUU39SvPGpEF3XQOWpYtXMZ+z3ZyAL+m9UFNTz0js/o8p8D1kaUxDgDrxrWchnEr9mEs6P1vtrGX
	ujny1YrPx+LL+xkQZHbnyQOpJI9XoeLKGgW9m4AmDQp2gKwfR980CiLxAqfEqQJICpQzmO28gicBD
	lXQVJL9IMX060bWhkGhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjE3-0006vw-Dp; Fri, 10 Apr 2020 02:16:59 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjDs-0006uZ-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 02:16:49 +0000
Received: by mail-pj1-x1043.google.com with SMTP id n4so269217pjp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 19:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=epcePNPH75ZrOgRmkPaWETOFUufSwk1exuBAOcMmYKU=;
 b=pjfn/IP8jAV7H7R+w1ysZc+k8OBRHDB+7tnnwKs9KOlerSrQpXe+PcIJfqm/jgAfrK
 Zv8qRfcT4RqhPlTiGwjYle9eLBeczRlE6OCGR8Ap3OJXpPVyDfxxTrbErDCQUyltqm1f
 AX2lzP5P+Z9q7nOWpd+ib1y8DAR391Ers/N0LqsMn/uBK2EsoZQCiiIlAwmHdjyLU4mk
 LoR0nHuuDquB04+10oLTkQCAPwjKTa6UcFE/KxLXt5sgtYgo00JfW5lIUzxmsq0gNlwP
 oqHFrMQn1H3/YWhoksSyKOI1P9dvFP0a8q/kBjAoPxLQZ4ux7c9M+Jh90W1N+7YPeFs0
 uFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=epcePNPH75ZrOgRmkPaWETOFUufSwk1exuBAOcMmYKU=;
 b=M1kuXvwiX7klDEtiOYzCJ824xsbN+NI/SqmkcDrylMk36fGyiE93bVQznFL92o9Jj3
 4dHerRmIvU1BOJ9RQtn1UNJq3t6RpGizuxQMYdZR+Ff/iP5QS9/w1EvI+L7sydOKOjV1
 lIGvT1nj4DJll2sY88FKCaQQuu7Q/0cHDmBqMhofiUHyHKySVGpf0vaRc7nBZYWImn6o
 r+EM+lfekvuBTMiQlpNkpIdkbuNYqz5iCVvGS7+HuYmpmir+6cOIX6sJA7SpkwiGusE/
 uuzQhpSuKTg+okKCb+4BmJtKHbI/Vp80FW8FgNDKAYgbBeG3C/5wcQd2RfnooEHu/Z1i
 +t6Q==
X-Gm-Message-State: AGi0PuaVdKiKHHZgyeakZ3xdg77F0YbPJo5ClWTQkqUhUzb9u7+2Lfwc
 x084BeXqo5NnJGrVyz8DUaw3OA==
X-Google-Smtp-Source: APiQypJqyKR3rsDc5ml7bDajSOWFoKnB5Kl1YpiY804f+Y5ThLwopJ6r9asJ14nxdI4SJULEUHHkNg==
X-Received: by 2002:a17:902:ab83:: with SMTP id
 f3mr2612236plr.197.1586485007444; 
 Thu, 09 Apr 2020 19:16:47 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q15sm381086pgj.4.2020.04.09.19.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:16:46 -0700 (PDT)
Date: Thu, 9 Apr 2020 19:16:55 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [PATCH] remoteproc: pull in slab.h
Message-ID: <20200410021655.GA20625@builder.lan>
References: <20200409211054.12091-1-mst@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409211054.12091-1-mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191648_448108_7B8519AF 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 09 Apr 14:10 PDT 2020, Michael S. Tsirkin wrote:

> In preparation to virtio header changes, include slab.h directly as
> this module is using it.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/stm32_rproc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index a18f88044111..7ef931e9605c 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -19,6 +19,7 @@
>  #include <linux/regmap.h>
>  #include <linux/remoteproc.h>
>  #include <linux/reset.h>
> +#include <linux/slab.h>
>  #include <linux/workqueue.h>
>  
>  #include "remoteproc_internal.h"
> -- 
> MST
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
