Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D518C1767DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IGfQUrPPS/wOPghvdQSc2n49BRkYleSPUDIqH3i8Zo=; b=EXKfb2QLqxNUmu
	2I56kAFaWVDobMqV5HkVSrG6XlgLHs+oJ4A3oCrRQQZdpW1VV4IqGsAxQlhd9T+au7D1ltpb7N/6x
	37ArSUJhrjG9uIesuq8YcPaCBE4nwB8rtaperOp+CIv5R35bxdeyAfsXj+MzPQA+QMyCrOSa9beVx
	lQHMw7gNbPW+QEHhWO2mw8yLvoMcjZax/o2D/mbTHe+vhC3ytUG3qXzLzuh6ET2h0IQat92AhfjCs
	uW4ch60N5oU7nflRzNAgnugGU1wbolb7fPI4FXvNSHjwpLpeHkILwbKpr9HxHd+hV0axm//yhz7aC
	7BPs34YQFtpmSd6/4UIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uAm-0000VC-H4; Mon, 02 Mar 2020 23:08:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uAc-0000UD-3K
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 23:08:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so394273pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 15:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bHCVavkwu6zfqNW43fiKG14XiAueMcaZslslsOZ/218=;
 b=ydM6de292BVaEG4QIuyq3YDVMoEUXf/csuA62Efwp3SSERMdRa78DTYxPii0GhrquH
 ISL5cY5PnKvvgsRwpvwPaI7vfbfzJRRffct/nD7NxWwzR5+nM5zXinq7KnqGZ6IXRQ0a
 oc6KW7Dm8G/R+weAy54bB+Jxgl2/2PE2CimSIockQWJAFk6q7ZWhhb2y9G0cGsaZQBON
 jzosmItoJcleMLSIQDULAkmSSKVBi4F1legP3yobRaXw6QIUtUx8/QLvUzOBvdLuhxec
 JlIVk7m0qsebia9QlP3xo1u+DZYQyvO4TS9/u4XLRK2D0zuABuQfYiyrBrjveBgHGgoz
 CgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bHCVavkwu6zfqNW43fiKG14XiAueMcaZslslsOZ/218=;
 b=SSMRqPa7Gn3qpAYu50fJFQJBzYTsm7nom2zvXdt7iNHw+OEI08Q0zz+8MaNR11RpX3
 IsN0szGpi8Nfidq9h03hyeoF+QerOFM+bMegb4n2cU+fKkKGDmhGPoXmUUHprRSm201x
 4lhInZ6ZsY/H/mnlvDkHlggnlmKsQEhYilW5lzcFvliuaHUYOritbyMlJrCfuY0N2eBA
 foIMeJBM10micS/7PHbe9v/uOHV1NMURUskn3PrlcdS8bkU1Sk3y/gmA+7vSUcfgpA6h
 xUT7TXPAunpzhhzwHTD1G1fxy4vRWW0MozOYG4IkqD6qaM3JElUaj3lFLIbWY0xupfre
 Md2g==
X-Gm-Message-State: ANhLgQ0MTBmHtM/V9AXUcu9F8Y8YxetY0Zkb05sLDoYtQhw7Eqqjzk09
 D2Raf4h3KQzVRWlnVMH7ZTSeEUBv+nA=
X-Google-Smtp-Source: ADFU+vu5Fn9LjuEv0zkVceFz7t9zzw21FhNfEeY+oO2Z6PSUfUEvK0xhiSdQzKkCOH96zHvBaDxllg==
X-Received: by 2002:a17:902:b7ca:: with SMTP id
 v10mr1336548plz.308.1583190497213; 
 Mon, 02 Mar 2020 15:08:17 -0800 (PST)
Received: from yoga (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id t11sm256202pjo.21.2020.03.02.15.08.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:08:16 -0800 (PST)
Date: Mon, 2 Mar 2020 15:08:14 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v5 3/8] remoteproc: Use u64 type for boot_addr
Message-ID: <20200302230814.GC262924@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-4-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302093902.27849-4-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_150818_139899_BCD1EBDE 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 02 Mar 01:38 PST 2020, Clement Leger wrote:

> elf64 entry is defined as a u64. Since boot_addr is used to store the
> elf entry point, change boot_addr type to u64 to support both elf32
> and elf64. In the same time, fix users that were using this variable.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

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
