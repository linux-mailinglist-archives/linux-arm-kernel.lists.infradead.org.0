Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F11A87E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPjnD/JuT6wQR8sesVANQiVQ1Oka0KvZ8tdIG6k+dpw=; b=KXiycz8y5VMsMq
	pLMeS9cwa1vtA3IJXvBef946V0F9tXwqdBl6nrMKEcSMD5cEE6WxT7dPT4M93RYFfffoz2cEERCvx
	zCke4E6QDO1LzBNXRzUdaIkOdBrXsTPNk5TiHFOUFG4zkjSNwz4XwIAO/bOPbaJqeIlbkQcSPmQ6T
	j1jk69V11aK11DR/vN8JY3hLPYHrwNbGzdBei0Di1NhzhiU2Now7iUhhuNOOMBFxgdMg180nII2n6
	0YfT42c73y6NddOG2N+mW8dDVMG9Les5F1/ykp/VaOgXjg9Em/3Gh4Awmtz1VCjBIGIoLEdK2ndaF
	IZvVlNCcrRWQiEV3U/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPeD-000054-Db; Tue, 14 Apr 2020 17:46:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPe4-0008WC-Pm
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:46:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id z9so5529552pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uUqCLEUu2H6lIfzOkbWN7RXqGhP5oga/oBPmYfH4Jc4=;
 b=YtNO9P2nJRzVJ8hBQ5mtlbfJJloopvXLHBin+Ugrh/GQ81x0Cihhmo+01EpwxacrTZ
 LdLoIM5B3npC8XH+Ww9P9u3bg3PnWa+x7Ch7IUyiBFQKSc7c8CSRS15byzf3cJQP1MG/
 1Rpk21q0DdVF+HhHZ0OVvb624Lkv5N2A2x48bAiljEl6wohdfLdCtN4w2aWNXfucQVFJ
 ldxKUlND6Qk4k07NbHnsBLiI/p8oMQNHsiY4vaa71yBMfGY1qbyARBTAbm+IfkIKy+5p
 5VVhupJNQjGE927s4hGvN5fXAYSUvrLdYDeU3NjBPgp3VwxvFCCP14lprV6FPuY/NMt8
 4o5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uUqCLEUu2H6lIfzOkbWN7RXqGhP5oga/oBPmYfH4Jc4=;
 b=aUOslBJrqh5b2AW5A9qgDnpQbdGhTiuomi4x+jl6YTFdtr0fOREhuQ31Fl1JowGetv
 A3fB7vGKzHUotkeLtfO36wqhElY429sRQS7O9acpGl+YUHzYND3ggc6RWTsl/StVbjj+
 5/WRZu3lXMWFDH//p/KB02YamxLpLm2WyqX+yhxxwCBBTsRqvRHUgZ8LqyzuHqnLT6TI
 ZU7ya/NXEBJo4h6A894YVwd4CPn5+nJWo+KjO2LkjMWRTYg7ZyHtizweq5c95AouiB5+
 NTsGhMtq5x2lfGe9k3fGf7NIxP7GiD5n4o8b1kEY0THCHFX6CgrilNvLh7L8vOfK77jw
 EANw==
X-Gm-Message-State: AGi0PuZpI3RLWLAKKj9KxM3nQ6sbuOmWiNi2HXZoe49vFkytBS4FmAcZ
 tcLEp0O40gHtww0cDNdGtw7LYg==
X-Google-Smtp-Source: APiQypLLGfXEXNefPbevmRPO8sLymk0b/mFL5I49TZUSnnbR2+/ON5Bg4/ow29/RTFxpi8SAsxbUqg==
X-Received: by 2002:a17:902:8641:: with SMTP id
 y1mr1073499plt.27.1586886407636; 
 Tue, 14 Apr 2020 10:46:47 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m14sm10565619pgk.56.2020.04.14.10.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:46:46 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:46:44 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: nikita.shubin@maquefel.me
Subject: Re: [PATCH v2 3/3] remoteproc: imx_rproc: memory regions
Message-ID: <20200414174644.GD24061@xps15>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-4-nikita.shubin@maquefel.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406113310.3041-4-nikita.shubin@maquefel.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_104649_358061_E205F27C 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <NShubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 02:33:10PM +0300, nikita.shubin@maquefel.me wrote:
> Add support for carveout memory regions required for vdev vring's and
> buffer.
> 
> Search in device tree and allocate memory regions like for ocram:
> 
> vdev0vring0: vdev0vring0@00920000 {
> 	compatible = "shared-dma-pool";
>         reg = <0x00920000 0x2000>;
>         no-map;
> };
> 
> vdev0vring1: vdev0vring1@00922000 {
> 	compatible = "shared-dma-pool";
> 	reg = <0x00922000 0x2000>;
> 	no-map;
> };
> 
> vdev0buffer: vdev0buffer@00924000 {
> 	compatible = "shared-dma-pool";
> 	reg = <0x00924000 0x4000>;
> 	no-map;
> };
> 
> imx7d-cm4 {
> 	compatible = "fsl,imx7d-cm4";
> 	memory-region = <&ocram>, <&vdev0vring0>, <&vdev0vring1>, \
> 		<&vdev0buffer>;
> }
> 
> vdev0vring0, vdev0vring1, vdev0buffer are required for virtio
> functioning.
> 
> Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> ---
>  drivers/remoteproc/imx_rproc.c | 119 ++++++++++++++++++++++++++++++++-
>  1 file changed, 118 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index d2bede4ccb70..cdcff2bd2867 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -11,6 +11,7 @@
>  #include <linux/module.h>
>  #include <linux/of_address.h>
>  #include <linux/of_device.h>
> +#include <linux/of_reserved_mem.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/remoteproc.h>
> @@ -238,6 +239,29 @@ static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
>  	return -ENOENT;
>  }
>  
> +static int imx_rproc_sys_to_da(struct imx_rproc *priv, u64 sys,
> +				int len, u64 *da)
> +{
> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> +	int i;
> +
> +	/* parse address translation table */
> +	for (i = 0; i < dcfg->att_size; i++) {
> +		const struct imx_rproc_att *att = &dcfg->att[i];
> +
> +		if (sys >= att->sa && sys + len <= att->sa + att->size) {
> +			unsigned int offset = sys - att->sa;
> +
> +			*da = att->da + offset;
> +			return 0;
> +		}
> +	}
> +
> +	dev_warn(priv->dev, "Translation failed: sys = 0x%llx len = 0x%x\n",
> +			 sys, len);
> +	return -ENOENT;
> +}
> +
>  static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>  {
>  	struct imx_rproc *priv = rproc->priv;
> @@ -372,16 +396,109 @@ static void imx_rproc_kick(struct rproc *rproc, int vqid)
>  		err = mbox_send_message(ddata->mb[i].chan, &vqid);
>  		if (err < 0)
>  			dev_err(&rproc->dev, "%s: failed (%s, err:%d)\n",
> -					__func__, ddata->mb[i].name, err);
> +				__func__, ddata->mb[i].name, err);
>  			return;
>  	}
>  }
>  
> +static int imx_rproc_mem_alloc(struct rproc *rproc,
> +				struct rproc_mem_entry *mem)
> +{
> +	struct device *dev = rproc->dev.parent;
> +	void *va;
> +
> +	dev_dbg(dev, "map memory: %pa+%x\n", &mem->dma, mem->len);
> +	va = ioremap_wc(mem->dma, mem->len);
> +	if (IS_ERR_OR_NULL(va)) {
> +		dev_err(dev, "Unable to map memory region: %pa+%x\n",
> +				&mem->dma, mem->len);
> +		return -ENOMEM;
> +	}
> +
> +	/* Update memory entry va */
> +	mem->va = va;
> +
> +	return 0;
> +}
> +
> +static int imx_rproc_mem_release(struct rproc *rproc,
> +				struct rproc_mem_entry *mem)
> +{
> +	dev_dbg(rproc->dev.parent, "unmap memory: %pa\n", &mem->dma);
> +	iounmap(mem->va);
> +
> +	return 0;
> +}
> +
> +static int imx_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
> +{
> +	struct imx_rproc *priv = rproc->priv;
> +	struct device *dev = rproc->dev.parent;
> +	struct device_node *np = dev->of_node;
> +	struct of_phandle_iterator it;
> +	struct rproc_mem_entry *mem = 0;
> +	struct reserved_mem *rmem;
> +	u64 da;
> +	int index = 0;
> +
> +	/* Register associated reserved memory regions */
> +	of_phandle_iterator_init(&it, np, "memory-region", NULL, 0);

This will likely clash with the parsing done in imx_rproc_addr_init(), and the
parsing in there will also clash with what is done below...  I advise you to
register carvouts in imx_rproc_addr_init() as you parse the rest of the memory
regions.

Thanks,
Mathieu

> +	while (of_phandle_iterator_next(&it) == 0) {
> +		rmem = of_reserved_mem_lookup(it.node);
> +		if (!rmem) {
> +			dev_err(dev, "unable to acquire memory-region\n");
> +			return -EINVAL;
> +		}
> +
> +		/*
> +		 * Let's assume all data in device tree is from
> +		 * CPU A7 point of view then we should translate
> +		 * rmem->base into M4 da
> +		 */
> +		if (imx_rproc_sys_to_da(priv, rmem->base, rmem->size, &da)) {
> +			dev_err(dev, "memory region not valid %pa\n",
> +				&rmem->base);
> +			return -EINVAL;
> +		}
> +
> +		if (strcmp(it.node->name, "vdev0buffer")) {
> +			/* Register memory region */
> +			mem = rproc_mem_entry_init(dev, NULL,
> +						(dma_addr_t)rmem->base,
> +						rmem->size, da,
> +						imx_rproc_mem_alloc,
> +						imx_rproc_mem_release,
> +						it.node->name);
> +
> +			if (mem)
> +				rproc_coredump_add_segment(rproc, da,
> +							rmem->size);
> +		} else {
> +			mem = rproc_of_resm_mem_entry_init(dev, index,
> +							rmem->size,
> +							rmem->base,
> +							it.node->name);
> +		}
> +
> +		if (!mem)
> +			return -ENOMEM;
> +
> +		rproc_add_carveout(rproc, mem);
> +		index++;
> +	}
> +
> +	return rproc_elf_load_rsc_table(rproc, fw);
> +}
> +
>  static const struct rproc_ops imx_rproc_ops = {
>  	.start		= imx_rproc_start,
>  	.stop		= imx_rproc_stop,
>  	.da_to_va	= imx_rproc_da_to_va,
>  	.kick		= imx_rproc_kick,
> +	.load		= rproc_elf_load_segments,
> +	.parse_fw	= imx_rproc_parse_fw,
> +	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
> +	.sanity_check	= rproc_elf_sanity_check,
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
