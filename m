Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3BC1AE5F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 21:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0rtSceapqRQA4J2u/Y+dGtJpxIeiltmDbBL5SMf3GM=; b=AIzjfdRzIFGybN
	6/TDznrVBteIMsL3/pST1xRpPuTixneJpbbvMLHxT0xrGhE2uWaiBj8lbcK6mRTT5xYCoPHjttVFi
	iZbeuNFsDP1LqpTSmhx8P3kufYvAPYgAVSbf00u5VgK9EpdALxbpKefuhinKMeufemkgGT9YCszWH
	UDTBHL0+Nv+63J3CCEsR2CnlaY7RVpjJw9v0+H3BnZGB7IVHgfFwJ2FvyA6FL36acUNbKSn+M/XER
	YFeFwT0xtJY9runN4ikYmK+sRzaSldjB1suTLQ5wD4u+W14zYgRA8ZTlBwXU3mlfbScv/t49ML233
	n417MIzzTHHOaQfgUIog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWqY-0006aG-VW; Fri, 17 Apr 2020 19:40:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWqG-0006Ki-ME
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 19:40:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id 2so1570171pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 12:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HHki1/clwzRpcS2KonbHjBcGr0VzFjzzuxJR5A2/dPA=;
 b=r4LN2nQ95y2i7LQKYDZSCrOF1+aJbkcHn8LCmMGH5TDF42dLiCIBWRd2P4qx3Zho14
 7aTfN3Dbs/37d0JoOeKq+VExwsd6kY6dH1Qz4jilxwT/Bxh3rMmY49ZW79bjC1vl3LbT
 5G2Emdx+5v6CRsbJqLe1LdQMiaww+5mxwukoE63zp0IHWuMqAVMrW0cvOky6dgc+LJVf
 9skxFnsl79e9lKvrA6j0H8BAJ2xjDdU85/hC3M1AsS/J6J9ghWcEY0P21vE1V0hxUk9W
 xY/mmXYk0D0xNvjl70Zq17IIdmRqiJcE/c1KQoH4TyRsl5AOSMTIl4f0zau7IBIeJMcR
 hGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HHki1/clwzRpcS2KonbHjBcGr0VzFjzzuxJR5A2/dPA=;
 b=jfzR23qdZPt5DCfBXLfBNG21zLT8aEkTa73ZeuvpaAJkFWx1/Ym4qENYecHDwimYmX
 E/rGyEtSSJ/YS8MoNHtVQ0JkgS6g1//oT9C1Ax2FGM9CKk6m7u52LLJNwSVSUTu+/WOE
 1jGGi9GKQmxWctk8VbxhYlqI2kc4UCo0FK1ftTOgw5UD8od+WIMOqwMgU+hzprdpep5J
 zeIgGRWVoJJlSj7hZUR3mlKbn8lutCwp+xFwmYkYwgeiaQlS7OjwPoqluHQOsWKTZzh6
 PC8VAAQwpbaWLyT/p3QykOJvAvjUrd+PFttK8Ic/u9RDWFKvXjYEL0v3EJ+tesayQRmg
 EdwQ==
X-Gm-Message-State: AGi0Pubml8QYYJCnLHlELKHsXSWo0i+pfRvZb/ipSUWaiEvM/XpYiav2
 a+7QXdwFLiL6wwSt9ErieSyFCw==
X-Google-Smtp-Source: APiQypKxU/Fe2C9/2BVfZrjinp9TFg/I6raVR8ub6XtMJFTsnuEutdn0FPOZHNUVPLyvYKYplnX24Q==
X-Received: by 2002:a63:c007:: with SMTP id h7mr4549793pgg.428.1587152399831; 
 Fri, 17 Apr 2020 12:39:59 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i9sm2358018pfk.199.2020.04.17.12.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 12:39:59 -0700 (PDT)
Date: Fri, 17 Apr 2020 13:39:57 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH 2/2] remoteproc: use rproc_coredump_set_elf_info in drivers
Message-ID: <20200417193957.GC6797@xps15>
References: <20200410102433.2672-1-cleger@kalray.eu>
 <20200410102433.2672-3-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410102433.2672-3-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_124000_744897_CA4F9620 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 12:24:33PM +0200, Clement Leger wrote:
> Modify drivers which are using remoteproc coredump functionnality to use

s/functionnality/functionality

> rproc_coredump_set_elf_info in order to create correct elf coredump
> format.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/qcom_q6v5_adsp.c | 1 +
>  drivers/remoteproc/qcom_q6v5_mss.c  | 3 +++
>  drivers/remoteproc/qcom_q6v5_pas.c  | 1 +
>  drivers/remoteproc/qcom_wcnss.c     | 1 +
>  drivers/remoteproc/stm32_rproc.c    | 1 +
>  5 files changed, 7 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
> index 2b01f2282062..8c3bd0954a13 100644
> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> @@ -423,6 +423,7 @@ static int adsp_probe(struct platform_device *pdev)
>  		dev_err(&pdev->dev, "unable to allocate remoteproc\n");
>  		return -ENOMEM;
>  	}
> +	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>  
>  	adsp = (struct qcom_adsp *)rproc->priv;
>  	adsp->dev = &pdev->dev;
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
> index 03ffc6db4c68..5a7ff1092362 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -1355,6 +1355,8 @@ static int qcom_q6v5_register_dump_segments(struct rproc *rproc,
>  		return ret;
>  	}
>  
> +	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
> +
>  	ehdr = (struct elf32_hdr *)fw->data;
>  	phdrs = (struct elf32_phdr *)(ehdr + 1);
>  	qproc->dump_complete_mask = 0;
> @@ -1632,6 +1634,7 @@ static int q6v5_probe(struct platform_device *pdev)
>  	}
>  
>  	rproc->auto_boot = false;
> +	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>  
>  	qproc = (struct q6v5 *)rproc->priv;
>  	qproc->dev = &pdev->dev;
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index a41860d2243a..991f57e8e55b 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -390,6 +390,7 @@ static int adsp_probe(struct platform_device *pdev)
>  	}
>  
>  	rproc->auto_boot = desc->auto_boot;
> +	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>  
>  	adsp = (struct qcom_adsp *)rproc->priv;
>  	adsp->dev = &pdev->dev;
> diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
> index 0c7afd038f0d..5d65e1a9329a 100644
> --- a/drivers/remoteproc/qcom_wcnss.c
> +++ b/drivers/remoteproc/qcom_wcnss.c
> @@ -480,6 +480,7 @@ static int wcnss_probe(struct platform_device *pdev)
>  		dev_err(&pdev->dev, "unable to allocate remoteproc\n");
>  		return -ENOMEM;
>  	}
> +	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>  
>  	wcnss = (struct qcom_wcnss *)rproc->priv;
>  	wcnss->dev = &pdev->dev;
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 6a66dbf2df40..0f9d02ca4f5a 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -625,6 +625,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (!rproc)
>  		return -ENOMEM;
>  
> +	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);

With the above:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  	rproc->has_iommu = false;
>  	ddata = rproc->priv;
>  	ddata->workqueue = create_workqueue(dev_name(dev));
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
