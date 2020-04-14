Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461C71A8584
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVg6v7CL/5MHsmZ0HeRGdJFLDHiOBf9qXi9N61ywsQk=; b=WhnQu4EkVcY8OG
	EerK9r1RgmATi7RovsjU8ZdbQiznlu9PEVUNpw/Y/1fpXFgTlklQ0330/3EJ/z9smZlCLFHH8K2LK
	zf0WLWgSimsWiZGW5Gd371yF6hJVVrIvcSClEsfncgNw0Naim3o1mh6eFqZCYul9b9LO2n1ieH3AF
	J3TZlRnMfUI/sgydLXW61HAMKlQNfj8CQV40kcYMXH5l4ga4dWBxRppvNI8cOctwJheVKULfqbelo
	gUrq2eg7KDfKoL0XchFa6b/4y2/lQJvPr/5Vs1i6zEEKMYfr18Fe3RLUXyt2e6fGbg/lk9XMw7DOg
	CFh/zBJzBaL71Pfqb8Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOgl-0005zD-PE; Tue, 14 Apr 2020 16:45:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOgd-0005yF-8l
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:45:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id d17so147499pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bIM8N8/LvpQrVw3Cq5IEnDXkTuqYiaSsOQsN3b3zp9w=;
 b=n3jABuwhvCUTwDvbdokhvvHmOWfvXvOaW9slpDLAgPOpeiUpANlh3tsDrH4SveCa5v
 R3o4dFVfsuL8WHXEOx3TKvspjlUoGvA7EQDJyDzYtJ7Qck47cH8LzKFD/TOe/AJtVfOD
 DO2E2uGB7nI0aLvtZIcNGvNZzo/ftOGWNdOf1e3OCzpNwsGdZiny73le4Rt0QMw+3ynR
 fVv2M66YbSGd7g7Y7HMR1NnVUQqyWVe8Fy/bp+/PG/J1mm00h4Gpo0wrL9OjaNoIsjFL
 jBVEtItzwuFI0aMi8QT2PtKR/ILNzB+ywKr100eMEJTEZqOzGuhHOVPMqgzily5ZAyVh
 6dIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bIM8N8/LvpQrVw3Cq5IEnDXkTuqYiaSsOQsN3b3zp9w=;
 b=S/GFCbtvIwh/9uYeqO8ykOfKgBlx/DqY+oruPLkUbOh7/c1rWeQqvs2NBFw84RtzEp
 30hx90Hh6q3Sm08k0jFifNeDYy9g/S1FwaT0wJkciHprWeJjRoB9v2XkMK8Tew9ppiEI
 NoNi7JHFgGExc+cbGt/5aMjZIBgIr4cBzDLuSLE3X54B6sQENx+AB4fFYntMw7a0hT85
 Uc4t6eVTSFAZAZOv+7bzyqvvb1gMXisSBJfkebIsGGz9rSCPacKAjG/o4agycp2VZoxd
 +xsoLcc+fNm/6FrcuI3mT/gNRcgKelgnMXX7JB7v9Vr/wCiyJcgMix53TsKaf8d+ogUv
 5vIw==
X-Gm-Message-State: AGi0PuZ5wkFKy2q0pB9ICEfL3Q3c5fErrudiqf2lTBtmj8P1eBYws6Gm
 Ciflk16VJB5BmWAC0Mq8YPumHQ==
X-Google-Smtp-Source: APiQypJZ0HRJyudDZaLozPdnfUzCndzqy2Kxk5W5125ubT+th+3bvdCBfZ/HUivSNbNJ94/50agwUQ==
X-Received: by 2002:aa7:96b2:: with SMTP id g18mr24534864pfk.221.1586882722228; 
 Tue, 14 Apr 2020 09:45:22 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j16sm9442623pgi.40.2020.04.14.09.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:45:21 -0700 (PDT)
Date: Tue, 14 Apr 2020 10:45:19 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: nikita.shubin@maquefel.me
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
Message-ID: <20200414164519.GA24061@xps15>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406113310.3041-2-nikita.shubin@maquefel.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094523_833141_FE2F698A 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Hi Nikita,

On Mon, Apr 06, 2020 at 02:33:08PM +0300, nikita.shubin@maquefel.me wrote:
> In case elf file interrupt vector is not supposed to be at OCRAM_S,
> it is needed to write elf entry point to OCRAM_S + 0x4, to boot M4
> firmware.
> 
> Otherwise firmware located anywhere besides OCRAM_S won't boot.
> 
> The firmware must set stack poiner as first instruction:
> 
> Reset_Handler:
>     ldr   sp, = __stack      /* set stack pointer */
> 
> Signed-off-by: Nikita Shubin <NShubin@topcon.com>

The address in the SoB has to match what is found in the "From:" field of the
email header.  Checkpatch is complaining about that, something I would have
expected to be fixed before sending this set out.

> ---
>  drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index 3e72b6f38d4b..bebc58d0f711 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -45,6 +45,8 @@
>  
>  #define IMX7D_RPROC_MEM_MAX		8
>  
> +#define IMX_BOOT_PC			0x4
> +
>  /**
>   * struct imx_rproc_mem - slim internal memory structure
>   * @cpu_addr: MPU virtual address of the memory region
> @@ -85,6 +87,7 @@ struct imx_rproc {
>  	const struct imx_rproc_dcfg	*dcfg;
>  	struct imx_rproc_mem		mem[IMX7D_RPROC_MEM_MAX];
>  	struct clk			*clk;
> +	void __iomem			*bootreg;
>  };
>  
>  static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc *rproc)
>  	struct device *dev = priv->dev;
>  	int ret;
>  
> +	/* write entry point to program counter */
> +	writel(rproc->bootaddr, priv->bootreg);

What happens on all the other IMX systems where this fix is not needed?  Will
they continue to work properly?   

> +
>  	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
>  				 dcfg->src_mask, dcfg->src_start);
>  	if (ret)
>  		dev_err(dev, "Failed to enable M4!\n");
>  
> +	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
> +
>  	return ret;
>  }
>  
> @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc *rproc)
>  	if (ret)
>  		dev_err(dev, "Failed to stop M4!\n");
>  
> +	/* clear entry points */
> +	writel(0, priv->bootreg);
> +
>  	return ret;
>  }
>  
> @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>  static const struct rproc_ops imx_rproc_ops = {
>  	.start		= imx_rproc_start,
>  	.stop		= imx_rproc_stop,
> -	.da_to_va       = imx_rproc_da_to_va,
> +	.da_to_va	= imx_rproc_da_to_va,
> +	.get_boot_addr	= rproc_elf_get_boot_addr,

How is this useful?  Sure it will set rproc->bootaddr in rproc_fw_boot() but
what good does that do when it is invariably set again in imx_rproc_start() ? 

>  };
>  
>  static int imx_rproc_addr_init(struct imx_rproc *priv,
> @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct platform_device *pdev)
>  		goto err_put_rproc;
>  	}
>  
> +	priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC, sizeof(u32));
> +
>  	/*
>  	 * clk for M4 block including memory. Should be
>  	 * enabled before .start for FW transfer.
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
