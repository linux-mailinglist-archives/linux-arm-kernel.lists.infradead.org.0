Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DD11D2624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 06:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtdnnKr1Gx87KxbOohi4XAzmFtZDhgWQPNASiZux8dY=; b=a7AdXG/2owDR/k
	NEWxxHeESobAvuDEJT4+Lg9wz409vFmZ69IRXeWSEI7/u6MkajUEqdW3onDXq94SCymELe7uhWJv/
	pKclC6jbL/ppx9QANw3TJJtWe+c74aQQAzV04GKDYeCmU2Kin/TauJT0NnWmBWVC8b2E1KpEB+prc
	xgOv0Nfe/21KuiSlD8JSusmHn/xrbHc6fbRlqcsJhsVYiRN3TDXAXZ+UJRpOp0kfvrMTBVAgCNdkn
	TtkQTCEbJAsFbXeVqWH2D276w/29u6ZW9AZuO4I0SbEODW7PYIyHGl5epOSYsK9QFyIuBq2ijRUWL
	i7Q63Bx+q/rtWw651j0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ5xC-0005rM-S7; Thu, 14 May 2020 04:58:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ5x6-0005qs-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 04:58:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so798512pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 21:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Fy4YBkk4dKPrXz1Sz6in3rq8QZwklEzzdmUHwWz7Vts=;
 b=q0CuyR167W+2BNBNi9zP/2Uo5HLrTYi02yqX2gsXiURJvGny1sZnBQuNVC6dB+Jenn
 dZo0jdexaxmCbJxntzQ/rQy2sTYrHnzssTzyjed7H5gwHO623LSN8LsLakEmtj47rYRT
 i1CDdwGC9jd5kU/aYeV0kVUSns/5vIOUKeo3yf/Bq6od7L5fq+tfAq6AT4tm5+Jc03xG
 Hlo7QzEcyYCrZbt90ZrcrjBvV9d9kjnD+KPmpTwQpYOioy8QqwnkPf8ZPcuVwlEzw5I6
 HACuCYW1LIqjhZh2oS5Rw+ibKfvsRuoFElx50bxhm7tFpljDv5VHFZdvXIttrYReFJRN
 P8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Fy4YBkk4dKPrXz1Sz6in3rq8QZwklEzzdmUHwWz7Vts=;
 b=GgQsUmXiHUvTqnVw+0XFgTyg1wiQP8HAksiLsSPFkZfAkWZFQPxPvS7arP4/5WKUfB
 FeQ7h/X2vhPqOkbAqJOmq+surfpG5l0XaekkhmJDUWAAv8EOF9eSgR5a4mxTvnQQsDql
 MCmb/ss9RZ6IVT49DL+o+So7p+4akquzTCLU/3PBoYOovR7b5y96+q/bDhn4QiyamUWe
 /50J2NCG/L0eBvJ+FVbvmiWBAgMH4GkHRBVbG+BYaPuqFm1jdZzCi9585O/ne3QB9bJK
 6UR2EPbnRHbRwRDVcQ28k4IwVL7TDVRH9OM8+Ez6NGCG6Ut/Gfmy5Du7Dt/Bf2xlrvVm
 brwQ==
X-Gm-Message-State: AOAM533CeKAGZRsV8IX9vNyT5R8LO0pLORmPAvsa7Cg2sK6LPzdPAt87
 atVZveXpm5clSz71uu1JVetGZg==
X-Google-Smtp-Source: ABdhPJxyjBQaF0IbDv+oDp7VWgasXey2FK6oPgo+5su8LZ7HawcQevb3Y0t9Ukgg2sHbL3dWhdsSNg==
X-Received: by 2002:a63:7d3:: with SMTP id 202mr2403501pgh.279.1589432314389; 
 Wed, 13 May 2020 21:58:34 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x12sm1056388pfq.209.2020.05.13.21.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 21:58:33 -0700 (PDT)
Date: Wed, 13 May 2020 21:57:03 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 01/12] remoteproc: stm32: Decouple rproc from memory
 translation
Message-ID: <20200514045703.GG16107@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-2-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-2-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_215836_370114_E830BA79 
X-CRM114-Status: GOOD (  15.25  )
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

> Remove the remote processor from the process of parsing the memory
> ranges since there is no correlation between them.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/stm32_rproc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 0f9d02ca4f5a..91fd59af0ffe 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -127,10 +127,10 @@ static int stm32_rproc_mem_release(struct rproc *rproc,
>  	return 0;
>  }
>  
> -static int stm32_rproc_of_memory_translations(struct rproc *rproc)
> +static int stm32_rproc_of_memory_translations(struct platform_device *pdev,
> +					      struct stm32_rproc *ddata)
>  {
> -	struct device *parent, *dev = rproc->dev.parent;
> -	struct stm32_rproc *ddata = rproc->priv;
> +	struct device *parent, *dev = &pdev->dev;
>  	struct device_node *np;
>  	struct stm32_rproc_mem *p_mems;
>  	struct stm32_rproc_mem_ranges *mem_range;
> @@ -606,7 +606,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
>  
>  	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
>  
> -	return stm32_rproc_of_memory_translations(rproc);
> +	return stm32_rproc_of_memory_translations(pdev, ddata);
>  }
>  
>  static int stm32_rproc_probe(struct platform_device *pdev)
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
