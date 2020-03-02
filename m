Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8E1767D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z9bUkA1qvIr6fw3EmnCDrArBtp8eA8EOgIIZ29uAqk=; b=Exz4fkO7HiMd7v
	806gs3zQ0KmEAbQCu3q642QtmO5v8nXDDPP2qgTdHYhUPnv6V2svr0nhCnO4RQgv8eL57xozgY119
	D47OEzckyhSeuXWA3k24k9C94PyHAtSg3CEMq0NxVJeJKWrToEgOerCSQcfq2qYQUkeYcx3xrm8og
	h5stdZF/9uoOtToovy3qAR8bTC4Z9VUH/7IdHMSTP1Nd2HE5lhivCvnGHJZ8hUrco+gFPUQkRopC3
	T+S4Q0d59EMistBBix+R3AOerY6+XScZK37xRkMAxcqDdFjHI4LIoIpbtyFXlb3RWH2FVOeXG6hmn
	bfOnR9Mhu6/FHwZiCq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uAR-0000Fm-EG; Mon, 02 Mar 2020 23:08:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uAH-0000FH-KT
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 23:07:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id m5so569184pgg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 15:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Rf9QZb3mjgzUT+Cz+8sSLrcBamktZJl01xW2Zxlkdn8=;
 b=Fmu6em312fYYtaLMdYJAxUWlb+DWa7rSsEQp+4c0MnRJDbDpWdeKUX95VYJE93U7sR
 YhzipcRMHwVttwBHTDT1UeiT3OSKF2InoC9nKs2oeiluumwsLbc1Z2APmWo3PwTYN6RA
 J1o+7447aOHquwGhK8VoWVpgKb7goT47ICVZLnBn+u9Yarolb333kCEj3bP7NcwUv0u7
 1AllSl9Mss1gcarqqXax8p7IKwU+9rVKaTFHjXCplxtCfsvuTm0gxOByVY6CvUxSLkB9
 v3mXfXHgHpyn1R7CWLCWaurJ9Ltf8b3b7npx2lLSQifjEt6Xpc6TMf85cDsvk4aE+EOr
 FbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Rf9QZb3mjgzUT+Cz+8sSLrcBamktZJl01xW2Zxlkdn8=;
 b=nXLKNIqKPoan1aY6Y/p1/OCe55067FoO5nY/Cvmgz2xdrJoTJYCccLeeEajOXOlqOT
 swHWghIu9ro8ivwRv9GwUzacOj26dLSC7XeLtl3b9C/JVR/8ztLZ/nQNi46BbySyoZH7
 Lt1udAGendL6zbXXCyLbUKaRzWHd2Wik7eo0hkMSdVthoVsXpEDEkLTi3f21oRXoGp8x
 tSR4oqa4GfMndAf3Q0uJvY0PvM71+mEnwz2NqXvn1qEI9EkzmV6P4OHzxKISQNox3007
 f7OyklE738YHch3fMV9AhcgH6O46uQdFoyoS6YY6b6IBF72Zo0h/spZsD/XOXckrBlhz
 tPfw==
X-Gm-Message-State: ANhLgQ2EV9s7zadul3vE/C5MQVcgefIzqGOj7Q+CrKTfkb720mNmxssD
 Y0Hzgm/pW/NRqx5YL/oNNPl0dQ==
X-Google-Smtp-Source: ADFU+vutfcXaEUIULCiDyJq8DCHYBm8+8AApIk8RULq/D7ttfXLeW5DlU5hiIs2fKWalrHIPcoFKRw==
X-Received: by 2002:a63:8e44:: with SMTP id k65mr1128200pge.452.1583190476895; 
 Mon, 02 Mar 2020 15:07:56 -0800 (PST)
Received: from yoga (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id p94sm251583pjp.15.2020.03.02.15.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:07:56 -0800 (PST)
Date: Mon, 2 Mar 2020 15:07:53 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v5 2/8] remoteproc: Use size_t instead of int for
 rproc_mem_entry len
Message-ID: <20200302230753.GB262924@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-3-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302093902.27849-3-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_150757_741280_41F192C6 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

> Now that rproc_da_to_va uses a size_t for length, use a size_t for len field
> of rproc_mem_entry. Function used to create such structures now takes
> a size_t instead of int to allow full size range to be handled.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/remoteproc_core.c    | 14 ++++++++------
>  drivers/remoteproc/remoteproc_debugfs.c |  2 +-
>  include/linux/remoteproc.h              |  6 +++---
>  3 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 5ab094fc1b55..4bfaf4a3c4a3 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -318,8 +318,9 @@ int rproc_alloc_vring(struct rproc_vdev *rvdev, int i)
>  	struct device *dev = &rproc->dev;
>  	struct rproc_vring *rvring = &rvdev->vring[i];
>  	struct fw_rsc_vdev *rsc;
> -	int ret, size, notifyid;
> +	int ret, notifyid;
>  	struct rproc_mem_entry *mem;
> +	size_t size;
>  
>  	/* actual size of vring (in bytes) */
>  	size = PAGE_ALIGN(vring_size(rvring->len, rvring->align));
> @@ -746,11 +747,12 @@ static int rproc_alloc_carveout(struct rproc *rproc,
>  	va = dma_alloc_coherent(dev->parent, mem->len, &dma, GFP_KERNEL);
>  	if (!va) {
>  		dev_err(dev->parent,
> -			"failed to allocate dma memory: len 0x%x\n", mem->len);
> +			"failed to allocate dma memory: len 0x%zx\n",
> +			mem->len);
>  		return -ENOMEM;
>  	}
>  
> -	dev_dbg(dev, "carveout va %pK, dma %pad, len 0x%x\n",
> +	dev_dbg(dev, "carveout va %pK, dma %pad, len 0x%zx\n",
>  		va, &dma, mem->len);
>  
>  	if (mem->da != FW_RSC_ADDR_ANY && !rproc->domain) {
> @@ -957,7 +959,7 @@ EXPORT_SYMBOL(rproc_add_carveout);
>   */
>  struct rproc_mem_entry *
>  rproc_mem_entry_init(struct device *dev,
> -		     void *va, dma_addr_t dma, int len, u32 da,
> +		     void *va, dma_addr_t dma, size_t len, u32 da,
>  		     int (*alloc)(struct rproc *, struct rproc_mem_entry *),
>  		     int (*release)(struct rproc *, struct rproc_mem_entry *),
>  		     const char *name, ...)
> @@ -999,7 +1001,7 @@ EXPORT_SYMBOL(rproc_mem_entry_init);
>   * provided by client.
>   */
>  struct rproc_mem_entry *
> -rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, int len,
> +rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
>  			     u32 da, const char *name, ...)
>  {
>  	struct rproc_mem_entry *mem;
> @@ -1270,7 +1272,7 @@ static void rproc_resource_cleanup(struct rproc *rproc)
>  		unmapped = iommu_unmap(rproc->domain, entry->da, entry->len);
>  		if (unmapped != entry->len) {
>  			/* nothing much to do besides complaining */
> -			dev_err(dev, "failed to unmap %u/%zu\n", entry->len,
> +			dev_err(dev, "failed to unmap %zx/%zu\n", entry->len,
>  				unmapped);
>  		}
>  
> diff --git a/drivers/remoteproc/remoteproc_debugfs.c b/drivers/remoteproc/remoteproc_debugfs.c
> index dd93cf04e17f..82dc34b819df 100644
> --- a/drivers/remoteproc/remoteproc_debugfs.c
> +++ b/drivers/remoteproc/remoteproc_debugfs.c
> @@ -293,7 +293,7 @@ static int rproc_carveouts_show(struct seq_file *seq, void *p)
>  		seq_printf(seq, "\tVirtual address: %pK\n", carveout->va);
>  		seq_printf(seq, "\tDMA address: %pad\n", &carveout->dma);
>  		seq_printf(seq, "\tDevice address: 0x%x\n", carveout->da);
> -		seq_printf(seq, "\tLength: 0x%x Bytes\n\n", carveout->len);
> +		seq_printf(seq, "\tLength: 0x%zx Bytes\n\n", carveout->len);
>  	}
>  
>  	return 0;
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 89215798eaea..bee559330204 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -329,7 +329,7 @@ struct rproc;
>  struct rproc_mem_entry {
>  	void *va;
>  	dma_addr_t dma;
> -	int len;
> +	size_t len;
>  	u32 da;
>  	void *priv;
>  	char name[32];
> @@ -599,13 +599,13 @@ void rproc_add_carveout(struct rproc *rproc, struct rproc_mem_entry *mem);
>  
>  struct rproc_mem_entry *
>  rproc_mem_entry_init(struct device *dev,
> -		     void *va, dma_addr_t dma, int len, u32 da,
> +		     void *va, dma_addr_t dma, size_t len, u32 da,
>  		     int (*alloc)(struct rproc *, struct rproc_mem_entry *),
>  		     int (*release)(struct rproc *, struct rproc_mem_entry *),
>  		     const char *name, ...);
>  
>  struct rproc_mem_entry *
> -rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, int len,
> +rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
>  			     u32 da, const char *name, ...);
>  
>  int rproc_boot(struct rproc *rproc);
> -- 
> 2.15.0.276.g89ea799
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
