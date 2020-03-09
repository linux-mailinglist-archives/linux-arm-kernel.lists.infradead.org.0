Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EF417E94D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uz4w+VNsrUD6ZSm/T6c1d7DoenZl8tScbSLs933HCUc=; b=jLhWceV+D7S4xx
	BAE0XoEdYSYomqZr41d8EcISjvMs1LqPQrOfxzNHeiQkJXziAQGRLWyB9gQ2hQJgwqlSyJ8Y03swE
	ZwtX5P1kQCafpDv4geFWpnf3QLQEnDZ7aLvAmlgwJuUNmu+zVeETRCiInNvWHWNP+wz7omOpv2lKk
	OwZEVnSuu4Nz1tHOuby8nDmI8yzL8B0PheSTSAMH+82U+EsUwxpr5P5OZFYb/u3WylpLQDaCWtKmm
	14QAX/xKoYmmAI/cSSCjXTfWc8kBvotTz4I7x597kRtFwIDM67i83jN9e/9W4mTrYtqV78J9Hyn0W
	W76Z6x6gR2KOpM9mbiPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOSR-0000Jr-On; Mon, 09 Mar 2020 19:52:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOSJ-0000JK-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:52:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id c144so5302488pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 12:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z6CzFVUTmbba/AoB85RS3nr6uH+MlqeQEe/r4/Zh99Y=;
 b=wDLkXcCbKfKQ/LaQ5JGk5OZxyZO0H8nu//+GoeXir5ZiBfMnciqCXYux/Vo34z4LmU
 Fy8MlfSucuT3hu0Omzu6/gRcWm5AvUkPq6LbBftR/hYYC+jXHJEF2WxlSZ7RWplDkcXi
 GddHkakFvne0aQuHyp2kJ1WIYU9xNMMG7IMNTUmSVOoM9wnf2sTxT+0gRYfKWHEuLI+s
 y+7jWnzY6CwjezEo6zFvqwWO60jVqzgyT+caE60jXlyfuYxeRe0HCLlWPeceIIAXaAXq
 M5XHHt3Km4pVGbRBbYKUsc80Vo69UevSO0VutCg8Dy4Kn+O4y26Xjg/GeGlYFvGm/5Ar
 3Lsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z6CzFVUTmbba/AoB85RS3nr6uH+MlqeQEe/r4/Zh99Y=;
 b=Wu84QNQtsv0Uwyga+Q1f7rrG4s5jvnGjTbZXBV6COUcldS96zbrzkq0APTEhL19+W2
 N/vM1CiXRr7npwrT6dhgJ0xE8pfMSnqY91O0hX41B6K0XSZJvNUJBy7WTH6JluGr+ATg
 XyhxSTM2DQeMoQvD8c2/r+JMQtv6OqFbni1uMW4L04XviX0bNtluwlKj3LxAZ8B2Ns/X
 euId6sHxjZMNuqOZriyvW4W5axnsAPrD4NdwZ10LrpvILpXvRglNEEs7rOC34PnUVDdQ
 90FIAJzGoV2nEfPJ1UPiORGbkUsda5LPUmMEO9jS++evLrHGqBlKoxTqrq9r1DlCGC+Y
 RRNg==
X-Gm-Message-State: ANhLgQ2XpoBwIgl/U72Md8D1TRof2ctAxpADmHxlZVerKgLU2/4SARsi
 DRM1nvfHjm7YDarvkclhNNI+uA==
X-Google-Smtp-Source: ADFU+vtu9bX5XLEjumqvL1lZkx/1YphlPxprCuGo9T4TyenxyJr/YDNRk6Asdhf/m59YPzBjgDvlcQ==
X-Received: by 2002:aa7:953b:: with SMTP id c27mr5965025pfp.201.1583783570743; 
 Mon, 09 Mar 2020 12:52:50 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c17sm24619108pfo.71.2020.03.09.12.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 12:52:50 -0700 (PDT)
Date: Mon, 9 Mar 2020 13:52:47 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v5 3/8] remoteproc: Use u64 type for boot_addr
Message-ID: <20200309195247.GC1399@xps15>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-4-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302093902.27849-4-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_125251_767988_5DEEBCA1 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Mar 02, 2020 at 10:38:57AM +0100, Clement Leger wrote:
> elf64 entry is defined as a u64. Since boot_addr is used to store the
> elf entry point, change boot_addr type to u64 to support both elf32
> and elf64. In the same time, fix users that were using this variable.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
>  drivers/remoteproc/remoteproc_internal.h   | 2 +-
>  drivers/remoteproc/st_remoteproc.c         | 2 +-
>  include/linux/remoteproc.h                 | 4 ++--
>  4 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 606aae166eba..c2a9783cfb9a 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -102,7 +102,7 @@ EXPORT_SYMBOL(rproc_elf_sanity_check);
>   * Note that the boot address is not a configurable property of all remote
>   * processors. Some will always boot at a specific hard-coded address.
>   */
> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
>  {
>  	struct elf32_hdr *ehdr  = (struct elf32_hdr *)fw->data;
>  
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index 58580210575c..0deae5f237b8 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -55,7 +55,7 @@ phys_addr_t rproc_va_to_pa(void *cpu_addr);
>  int rproc_trigger_recovery(struct rproc *rproc);
>  
>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
>  struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,

The return type of function rproc_get_boot_addr() should also be changed from
u32 to u64.  Or perhaps this is intentional to make sure rproc->bootaddr never
occupies more than 32bit?

> diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
> index ee13d23b43a9..a3268d95a50e 100644
> --- a/drivers/remoteproc/st_remoteproc.c
> +++ b/drivers/remoteproc/st_remoteproc.c
> @@ -190,7 +190,7 @@ static int st_rproc_start(struct rproc *rproc)
>  		}
>  	}
>  
> -	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
> +	dev_info(&rproc->dev, "Started from 0x%llx\n", rproc->bootaddr);
>  
>  	return 0;
>  
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index bee559330204..1683d6c386a6 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -382,7 +382,7 @@ struct rproc_ops {
>  				struct rproc *rproc, const struct firmware *fw);
>  	int (*load)(struct rproc *rproc, const struct firmware *fw);
>  	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
> -	u32 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
> +	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
>  };
>  
>  /**
> @@ -498,7 +498,7 @@ struct rproc {
>  	int num_traces;
>  	struct list_head carveouts;
>  	struct list_head mappings;
> -	u32 bootaddr;
> +	u64 bootaddr;
>  	struct list_head rvdevs;
>  	struct list_head subdevs;
>  	struct idr notifyids;
> -- 
> 2.15.0.276.g89ea799
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
