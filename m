Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E82F1539F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 22:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KnkIcMyjQV3tfiiRrP3W4LkbtuAw+y7zKp3JekHOPA=; b=B14gLULlBZ3LRL
	qROqJmO8658rmcB53R6t6mT2ltNNOD6fS2GpvUSiwr5qXCO8zNTZUpdIGGo7bfYmc0EVKy1TTKOF6
	MJ0qzceOYIg95xZXpP5KictUXsfSq1sFLGl42t45pC3fK3WF8ZeoWUnRTN2ruhEsIYK8Via4rYEpa
	ubCxpYQAPWeYg0Vn+qd5oqZtfoIJN8NGye8vVEJ7to3770nXEuemePwyxpWBllh4M+WrY677oSECX
	6DSsro28jZLcamlCm0eLwVg3u45PScQ9b1ze62zpLme8qe/8KrIfjqDGj72zxGymh+f30OvQU1Pk8
	O+dLf7XJYtsFd07UMiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izRt9-00073k-EE; Wed, 05 Feb 2020 21:07:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izRt0-00072s-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 21:07:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id e8so1374913plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 13:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=51aeHheY/rt4DM+DW672ePDwXYA8QyYv8DwatD1TXuQ=;
 b=LYYUZew3BwAE1xoByIz6JPLp2v+5cIbt1vVEbEqSwZU+daxgKZMqXXZNwDO/EaTk89
 mefzudnZvyMQwVKqJBHBxwO1RvNhAupM3vfp2JZ3DQ9IdQeNS5iXI/3PVzYsCui3DGPj
 7P3Q/vJL71vxTJcoskqAqh1emNeO13XS5W1DGsoywcadkfDagL33w7P5O8vZJh7wky6q
 WmtHRCfKjsTkS9Sykv4FGUNUyJGu8Z8qxovwgVpr21LdlZRplwPHK7f0FFKzx2hqDm+V
 tcRkyuNlVmcsvTiGRvHRtK34hPDDBz/R9Y+v2L0jqeFQky+scE8b0KIuMnI+V4AGNj/u
 ZS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=51aeHheY/rt4DM+DW672ePDwXYA8QyYv8DwatD1TXuQ=;
 b=WNIkSBMRZHiNkLdHEbg4ZFuQuLCMDO6tQhCrIeEHLDqpL2Z3mfFzU3463HiUvrbnHd
 /UeiLZR0zBkuTHJFrj1a57XqltxWJzi9wccUXyaOcVlWG28ZWVE0v11BMQj/XyItQG83
 sKgiYYPFatRTzBKBVCoc9jIN+BJ2227TOaFdd8cNBl95ufbCn6rqj4cjg0zgcknBZA28
 eTVJgUVtiBx48iWpdhKLmwSz37sazoy12DxYr4OOtZLI5HOc4njtnzrcAh56sxNS/1Ub
 3ssE3t3uufXbTD5xm/FPVgMs5Bu3TYQ157tnY0Uf7NyABXQ24551m/7CTplQOHEbssxS
 SeSQ==
X-Gm-Message-State: APjAAAXA6m0BbfiGD9NXjoAYXR3pjwAGBbXNKzKB3Tz7pzFJtA4f+Bxr
 JGtdLgLw4lVpOsDTm6n3D51iug==
X-Google-Smtp-Source: APXvYqz/259/Z0l+PdxYDVyZ4ffYq1mmxbp7AAs1jQ1DpAGMP1eIJKwJWmu0jT4pXZZ76v93octxJw==
X-Received: by 2002:a17:90a:8685:: with SMTP id p5mr103015pjn.92.1580936819090; 
 Wed, 05 Feb 2020 13:06:59 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 199sm420457pfv.81.2020.02.05.13.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 13:06:58 -0800 (PST)
Date: Wed, 5 Feb 2020 14:06:55 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v3 1/2] remoteproc: Use u64 len for da_to_va
Message-ID: <20200205210655.GA25901@xps15>
References: <20200129163013.GA16538@xps15>
 <20200204174412.16814-1-cleger@kalray.eu>
 <20200204174412.16814-2-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204174412.16814-2-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_130702_877458_9038BEC5 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Clement,

On Tue, Feb 04, 2020 at 06:44:11PM +0100, Clement Leger wrote:
> With upcoming changes in elf loader for elf64 support, section size will
> be a u64. When used with da_to_va, this will potentially lead to
> overflow if using the current "int" type for len argument. Change
> da_to_va prototype to use a u64 for len and fix all users of this
> function.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/imx_rproc.c           | 9 +++++----
>  drivers/remoteproc/keystone_remoteproc.c | 2 +-
>  drivers/remoteproc/qcom_q6v5_adsp.c      | 2 +-
>  drivers/remoteproc/qcom_q6v5_mss.c       | 2 +-
>  drivers/remoteproc/qcom_q6v5_pas.c       | 2 +-
>  drivers/remoteproc/qcom_q6v5_wcss.c      | 2 +-
>  drivers/remoteproc/qcom_wcnss.c          | 2 +-
>  drivers/remoteproc/remoteproc_core.c     | 2 +-
>  drivers/remoteproc/remoteproc_internal.h | 2 +-
>  drivers/remoteproc/st_slim_rproc.c       | 4 ++--
>  drivers/remoteproc/wkup_m3_rproc.c       | 2 +-
>  include/linux/remoteproc.h               | 2 +-
>  12 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index 3e72b6f38d4b..1e895d5cf918 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -186,7 +186,7 @@ static int imx_rproc_stop(struct rproc *rproc)
>  }
>  
>  static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
> -			       int len, u64 *sys)
> +			       u64 len, u64 *sys)
>  {
>  	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
>  	int i;
> @@ -203,12 +203,12 @@ static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
>  		}
>  	}
>  
> -	dev_warn(priv->dev, "Translation failed: da = 0x%llx len = 0x%x\n",
> +	dev_warn(priv->dev, "Translation failed: da = 0x%llx len = 0x%llx\n",
>  		 da, len);
>  	return -ENOENT;
>  }
>  
> -static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct imx_rproc *priv = rproc->priv;
>  	void *va = NULL;

The condition "if (len <= 0)" at the beginning of the function needs to be
fixed.  


> @@ -235,7 +235,8 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>  		}
>  	}
>  
> -	dev_dbg(&rproc->dev, "da = 0x%llx len = 0x%x va = 0x%p\n", da, len, va);
> +	dev_dbg(&rproc->dev, "da = 0x%llx len = 0x%llx va = 0x%p\n",
> +		da, len, va);
>  
>  	return va;
>  }
> diff --git a/drivers/remoteproc/keystone_remoteproc.c b/drivers/remoteproc/keystone_remoteproc.c
> index 5c4658f00b3d..25c01df47eba 100644
> --- a/drivers/remoteproc/keystone_remoteproc.c
> +++ b/drivers/remoteproc/keystone_remoteproc.c
> @@ -246,7 +246,7 @@ static void keystone_rproc_kick(struct rproc *rproc, int vqid)
>   * can be used either by the remoteproc core for loading (when using kernel
>   * remoteproc loader), or by any rpmsg bus drivers.
>   */
> -static void *keystone_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *keystone_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {

Same comment as above.

>  	struct keystone_rproc *ksproc = rproc->priv;
>  	void __iomem *va = NULL;
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
> index e953886b2eb7..7518e67a49e5 100644
> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> @@ -270,7 +270,7 @@ static int adsp_stop(struct rproc *rproc)
>  	return ret;
>  }
>  
> -static void *adsp_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *adsp_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
>  	int offset;
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
> index 471128a2e723..248febde6fc1 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -1148,7 +1148,7 @@ static int q6v5_stop(struct rproc *rproc)
>  	return 0;
>  }
>  
> -static void *q6v5_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *q6v5_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct q6v5 *qproc = rproc->priv;
>  	int offset;
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index db4b3c4bacd7..cf2cd609c90d 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -159,7 +159,7 @@ static int adsp_stop(struct rproc *rproc)
>  	return ret;
>  }
>  
> -static void *adsp_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *adsp_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
>  	int offset;
> diff --git a/drivers/remoteproc/qcom_q6v5_wcss.c b/drivers/remoteproc/qcom_q6v5_wcss.c
> index f93e1e4a1cc0..3a6b82a16961 100644
> --- a/drivers/remoteproc/qcom_q6v5_wcss.c
> +++ b/drivers/remoteproc/qcom_q6v5_wcss.c
> @@ -406,7 +406,7 @@ static int q6v5_wcss_stop(struct rproc *rproc)
>  	return 0;
>  }
>  
> -static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct q6v5_wcss *wcss = rproc->priv;
>  	int offset;
> diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
> index dc135754bb9c..f893219e45a8 100644
> --- a/drivers/remoteproc/qcom_wcnss.c
> +++ b/drivers/remoteproc/qcom_wcnss.c
> @@ -287,7 +287,7 @@ static int wcnss_stop(struct rproc *rproc)
>  	return ret;
>  }
>  
> -static void *wcnss_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *wcnss_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
>  	int offset;
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 307df98347ba..9e6d3c6a60ee 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -185,7 +185,7 @@ EXPORT_SYMBOL(rproc_va_to_pa);
>   * here the output of the DMA API for the carveouts, which should be more
>   * correct.
>   */
> -void *rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> +void *rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct rproc_mem_entry *carveout;
>  	void *ptr = NULL;
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index 493ef9262411..004867061721 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -50,7 +50,7 @@ void rproc_exit_sysfs(void);
>  void rproc_free_vring(struct rproc_vring *rvring);
>  int rproc_alloc_vring(struct rproc_vdev *rvdev, int i);
>  
> -void *rproc_da_to_va(struct rproc *rproc, u64 da, int len);
> +void *rproc_da_to_va(struct rproc *rproc, u64 da, u64 len);
>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
>  int rproc_trigger_recovery(struct rproc *rproc);
>  
> diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
> index 04492fead3c8..fc01cd879b60 100644
> --- a/drivers/remoteproc/st_slim_rproc.c
> +++ b/drivers/remoteproc/st_slim_rproc.c
> @@ -174,7 +174,7 @@ static int slim_rproc_stop(struct rproc *rproc)
>  	return 0;
>  }
>  
> -static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {
>  	struct st_slim_rproc *slim_rproc = rproc->priv;
>  	void *va = NULL;
> @@ -191,7 +191,7 @@ static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>  		}
>  	}
>  
> -	dev_dbg(&rproc->dev, "da = 0x%llx len = 0x%x va = 0x%pK\n",
> +	dev_dbg(&rproc->dev, "da = 0x%llx len = 0x%llx va = 0x%pK\n",
>  		da, len, va);
>  
>  	return va;
> diff --git a/drivers/remoteproc/wkup_m3_rproc.c b/drivers/remoteproc/wkup_m3_rproc.c
> index 3984e585c847..0e8082948489 100644
> --- a/drivers/remoteproc/wkup_m3_rproc.c
> +++ b/drivers/remoteproc/wkup_m3_rproc.c
> @@ -80,7 +80,7 @@ static int wkup_m3_rproc_stop(struct rproc *rproc)
>  	return 0;
>  }
>  
> -static void *wkup_m3_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *wkup_m3_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
>  {

Same comment as above.

>  	struct wkup_m3_rproc *wkupm3 = rproc->priv;
>  	void *va = NULL;
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 16ad66683ad0..f84bd5fe0211 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -374,7 +374,7 @@ struct rproc_ops {
>  	int (*start)(struct rproc *rproc);
>  	int (*stop)(struct rproc *rproc);
>  	void (*kick)(struct rproc *rproc, int vqid);
> -	void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
> +	void * (*da_to_va)(struct rproc *rproc, u64 da, u64 len);
>  	int (*parse_fw)(struct rproc *rproc, const struct firmware *fw);
>  	int (*handle_rsc)(struct rproc *rproc, u32 rsc_type, void *rsc,
>  			  int offset, int avail);
> -- 
> 2.15.0.276.g89ea799
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
