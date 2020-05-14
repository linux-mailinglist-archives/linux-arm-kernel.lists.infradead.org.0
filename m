Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC4C1D2698
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTxOr6MMM4ENjrGTWMTQRohaow5oprj4hbWz1JhjiJg=; b=dycpiDUO0FwRxC
	xIsvfB4fPoxq9puU5mIRf+rRfUM8MQ/fO/Advi1bH/0Ap9Ut5Ob0JvVi07V7dsRRPNrUKpUUPYF+B
	T6alNfwbxZCLF8ZupDoUhAF3T1Tw4mFVnIL0a9Qya6u9oKfrcxc11t8/yCdVnE35F1qGW16h/teFI
	wQ2AXmKv8GX4YsbulI0/DyggaM5UP0LeQdR5U2rrka+OtOmiqM/ofLauSZnHBYTDYf8dNksqaad08
	z/qPiqPaYXgyowmetmvc5ZFWhE5TA43YP2apaEuQr79RH+7Ilsp903a06BQ3fmUk6VO7KM4gDMApc
	IoaTIPI9Bks22/WwaJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ6DJ-0007dQ-2B; Thu, 14 May 2020 05:15:21 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ6D6-0006yH-Pq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:15:11 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t9so12078124pjw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 22:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2yXsWHQlHZFO6uOvXrEaZ/pS+PzZxIKV+dtwFcRxe6w=;
 b=WaEy+o54dBSzmlKivA2IuiMCd2bVGyN/8T4tkjvVvubQFLn97LTv0O/ySe1z/fH/u3
 MdiddCBwUdTikQYAt7mfPDkzu9K9YRsM1a26eZ7vgwdrfxQv9Ly8One/CWbQuwXe2QWZ
 d0wpkTf3Mt09I3QJARIvSlOGK8APyyQJweufAlgEfoyZZIzX+H4XMEuIHKwZR17+8Z8/
 bi2lE6JgFaPYNKf+KBzn/yQpi6Zom8tNmikCY+c6swEltzuP43VRUoGOCOcl8nf6vKEK
 6DJYLSPYRQRB76ESJr8A6lis27zwZihNf3FK1kdonfvLWja9w4FSmZlr+nveVp58bUwL
 7EIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2yXsWHQlHZFO6uOvXrEaZ/pS+PzZxIKV+dtwFcRxe6w=;
 b=FQdsuP206pwtGwqfL9dRumc8mKClXcjuoay9VizJrRzOKLcvA2zrLxAhjf+5fghHoH
 IjWad09wyRvHekqYhGBYb7icGaxkR7zhGCKswu8fbzmwn45fblxiGrYno1ZjkCuBJCsV
 FPq1a85MmJ6PLfnglt5jHhmjPbBBYQ6D+kKm9+Mhn+Xn52J+r0E/TL92A5FhUaYHOLOx
 5VoK8PzWDrXeccOmrTL/x26+zMhqzy+h28XFXKGzU0aJDfs4xqeLTDhWF4gPNOR4gugI
 lL5eQQ+WXYP7l+akHAtrX1NvGcZb16dwuXVFW4gwnLy+DI3bNxWQh291Qku1B10HfD9s
 1Q3w==
X-Gm-Message-State: AOAM532pnQPY1i1htwDfy5G8fblbQjp91FL7g0C3ZHcJZnkZ1MlDEKYR
 06UgPgeOzEFPzngS4bamh8My0g==
X-Google-Smtp-Source: ABdhPJxxhy9EY2uDVHzZ5e3gf3ckUoHFy83l2BU7ClFXDzIPQkfzRRzKac281D9+vAEJfZiCrzq7bQ==
X-Received: by 2002:a17:90b:f86:: with SMTP id
 ft6mr7177214pjb.49.1589433307144; 
 Wed, 13 May 2020 22:15:07 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w14sm1084582pgo.75.2020.05.13.22.15.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 22:15:06 -0700 (PDT)
Date: Wed, 13 May 2020 22:13:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 10/12] remoteproc: stm32: Introduce new parse fw ops
 for synchronisation
Message-ID: <20200514051336.GA396285@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-11-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-11-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_221508_868141_9F57E5A0 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

On Fri 24 Apr 13:25 PDT 2020, Mathieu Poirier wrote:

> Introduce new parse firmware rproc_ops functions to be used when
> synchonising with an MCU.
> 
> Mainly based on the work published by Arnaud Pouliquen [1].
> 
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
> ---
>  drivers/remoteproc/stm32_rproc.c | 51 +++++++++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 86d23c35d805..b8ae8aed5585 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -215,7 +215,34 @@ static int stm32_rproc_elf_load_rsc_table(struct rproc *rproc,
>  	return 0;
>  }
>  
> -static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
> +static int stm32_rproc_sync_elf_load_rsc_table(struct rproc *rproc,
> +					       const struct firmware *fw)
> +{
> +	struct resource_table *table = NULL;
> +	struct stm32_rproc *ddata = rproc->priv;
> +
> +	if (ddata->rsc_va) {

Does it really make sense to try to sync with a remote that doesn't have
a resource table?

> +		table = (struct resource_table *)ddata->rsc_va;
> +		/* Assuming that the resource table fits in 1kB is fair */
> +		rproc->cached_table = kmemdup(table, RSC_TBL_SIZE, GFP_KERNEL);

It's unfortunate that we need to create a clone of the resource table
that we found in ram, and then return the original memory when the core
ask for the loaded table...

I wonder if we somehow can avoid this in the core (i.e. skip overwriting
table_ptr with the cached_table during stop)

> +		if (!rproc->cached_table)
> +			return -ENOMEM;
> +
> +		rproc->table_ptr = rproc->cached_table;
> +		rproc->table_sz = RSC_TBL_SIZE;
> +		return 0;
> +	}
> +
> +	rproc->cached_table = NULL;
> +	rproc->table_ptr = NULL;
> +	rproc->table_sz = 0;
> +
> +	dev_warn(&rproc->dev, "no resource table found for this firmware\n");
> +	return 0;
> +}
> +
> +static int stm32_rproc_parse_memory_regions(struct rproc *rproc,
> +					    const struct firmware *fw)
>  {
>  	struct device *dev = rproc->dev.parent;
>  	struct device_node *np = dev->of_node;
> @@ -268,9 +295,30 @@ static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
>  		index++;
>  	}
>  
> +	return 0;
> +}
> +
> +static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
> +{
> +	int ret = stm32_rproc_parse_memory_regions(rproc, fw);
> +
> +	if (ret)
> +		return ret;
> +
>  	return stm32_rproc_elf_load_rsc_table(rproc, fw);
>  }
>  
> +static int stm32_rproc_sync_parse_fw(struct rproc *rproc,
> +				     const struct firmware *fw)

Rather than having a function parse_fw that is passed no fw and return
some state that was setup in probe, how about just do this during probe?

Regards,
Bjorn

> +{
> +	int ret = stm32_rproc_parse_memory_regions(rproc, fw);
> +
> +	if (ret)
> +		return ret;
> +
> +	return stm32_rproc_sync_elf_load_rsc_table(rproc, fw);
> +}
> +
>  static irqreturn_t stm32_rproc_wdg(int irq, void *data)
>  {
>  	struct platform_device *pdev = data;
> @@ -544,6 +592,7 @@ static struct rproc_ops st_rproc_ops = {
>  static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
>  	.start		= stm32_rproc_sync_start,
>  	.stop		= stm32_rproc_stop,
> +	.parse_fw       = stm32_rproc_sync_parse_fw,
>  };
>  
>  static const struct of_device_id stm32_rproc_match[] = {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
