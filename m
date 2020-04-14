Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06481A874C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNJ1n/OMNBPmG5IvPKlvh1VD61hLzzTTn9jj+2vy0QA=; b=cLoAJ84UIsNMRi
	TEjPrIaoe/L1Psxok0dEs74bKqQyMOd36I36Z/KsFLrURiWwIDcUKriwj1QIYkjbP7L/Kz1FlGSox
	73+L3JpNIhxmwZbGtpkN4wJhlnL2zLrYJL0YJUgZuGzt0iRGoVXDUSfcgI+XAIC5QbuDzh30Q5OHc
	kVM9LYSLjrhqz/yJeKyhmIaVR4nSUKH6bb9vBdXQy4PRfsn7SzbBOIJj5LNt3NutgmbPvp0AM13qD
	OWzRxbH/xXVubb9B/dbgoi5wRNhHTLQZ1f3effYbak6gKebchY+ecygszlJqdKk2fLD1Gv6qpjQVy
	PyK9BYtsw/kGLrBY7PkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPEQ-0004hd-3Z; Tue, 14 Apr 2020 17:20:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPEH-00045P-5a
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:20:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so184511plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nYOdjx3SpF9DkUS8byznV4S2MTaAE+QPJcIvAavqU9w=;
 b=vU9z5nd4yquIaqbQ1kKrijql3CdqH/vUzjQxEYdp7Ld378Iah8QBqN0n5HZWOjhj88
 Ya9kPC8lGxVHd/ig51gCCgTEkGIYfntAFWS1+ReMGiRZGuA4/hoUrk4RVpaZm8UooYCb
 79nJW9TJdniD4kLM9nqpLWjRlOG52HbMsBH3Sd8TpJSvNEW6SXJQkFr/XJav44xgPVc6
 ko2830DQlLvQaUXLGIK9KVq+VYtkY5YhKFEuvlyILXUJquBnTrqkew3g2ZlTuDJklXEP
 Tl7PWyPp+L7eWHxh6UKxVU0YDWUupsw/FldAsdG9qXGfXkugd+kY94tgTkY6FIMZyCWY
 tXsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nYOdjx3SpF9DkUS8byznV4S2MTaAE+QPJcIvAavqU9w=;
 b=HGHgsutWLAtx9PFNmZLD9jb4lla7uZk2WkEtMSalAmiNVxO5zE7HKlpoqrtocKNkXm
 uGoYuVsuvlWjFnO0HJRbc7nEwOijbi76pdyuph1aXcX5SyUTZPj3E6gWwlG9MzheROh4
 Mr7Wy5l6zXwmMy3tNiSXTqYDUqI+77na55Ry4U24m9BJcEN22hU3CpzkWVfEFOvBqtEn
 y2HHlAxgAcHSQGGvy9Ko2VXdiY+l6wqpeMHZJPB7mxINrw23SYktUg6/bP14HpmeM2FH
 oAEjtimO8Lr1tjqag2dIgyZLPIcle19K0cfj76Oq2qd3XEW37qnGyM/OKRj4HHMqIGhq
 43RA==
X-Gm-Message-State: AGi0PuacqE7zALFP+xULosYNDAyrjVCW6IERtbiLZyDP7L2LJs5O+LNV
 tcegfvLncsYqENsE9R8HCQyZPQ==
X-Google-Smtp-Source: APiQypLFa9Zwdjn4tdg2Thq8figw9/2KqysFQllBw2vu3dYOR6i9Wi65V7imT93s00HkpgLRMaPogA==
X-Received: by 2002:a17:90a:71c5:: with SMTP id
 m5mr1275159pjs.193.1586884807655; 
 Tue, 14 Apr 2020 10:20:07 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id l9sm11402386pff.16.2020.04.14.10.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:20:07 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:20:05 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: nikita.shubin@maquefel.me
Subject: Re: [PATCH v2 2/3] remoteproc: imx_rproc: mailbox support
Message-ID: <20200414172004.GB24061@xps15>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-3-nikita.shubin@maquefel.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406113310.3041-3-nikita.shubin@maquefel.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_102009_230278_BFC65C0D 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

On Mon, Apr 06, 2020 at 02:33:09PM +0300, nikita.shubin@maquefel.me wrote:
> Add support for mailboxes to imx_rproc
> 
> Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> ---
>  drivers/remoteproc/Kconfig     |   2 +
>  drivers/remoteproc/imx_rproc.c | 142 ++++++++++++++++++++++++++++++++-
>  2 files changed, 143 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> index 94afdde4bc9f..02d23a54c9cf 100644
> --- a/drivers/remoteproc/Kconfig
> +++ b/drivers/remoteproc/Kconfig
> @@ -17,6 +17,8 @@ if REMOTEPROC
>  config IMX_REMOTEPROC
>  	tristate "IMX6/7 remoteproc support"
>  	depends on ARCH_MXC
> +	select MAILBOX
> +	select IMX_MBOX
>  	help
>  	  Say y here to support iMX's remote processors (Cortex M4
>  	  on iMX7D) via the remote processor framework.
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index bebc58d0f711..d2bede4ccb70 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -14,6 +14,9 @@
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/remoteproc.h>
> +#include <linux/mailbox_client.h>
> +
> +#include "remoteproc_internal.h"
>  
>  #define IMX7D_SRC_SCR			0x0C
>  #define IMX7D_ENABLE_M4			BIT(3)
> @@ -47,6 +50,12 @@
>  
>  #define IMX_BOOT_PC			0x4
>  
> +#define IMX_MBOX_NB_VQ			2
> +#define IMX_MBOX_NB_MBX		2

Please align this.

> +
> +#define IMX_MBX_VQ0		"vq0"
> +#define IMX_MBX_VQ1		"vq1"
> +
>  /**
>   * struct imx_rproc_mem - slim internal memory structure
>   * @cpu_addr: MPU virtual address of the memory region
> @@ -80,6 +89,14 @@ struct imx_rproc_dcfg {
>  	size_t				att_size;
>  };
>  
> +struct imx_mbox {
> +	const unsigned char name[10];
> +	struct mbox_chan *chan;
> +	struct mbox_client client;
> +	struct work_struct vq_work;
> +	int vq_id;
> +};
> +
>  struct imx_rproc {
>  	struct device			*dev;
>  	struct regmap			*regmap;
> @@ -88,6 +105,8 @@ struct imx_rproc {
>  	struct imx_rproc_mem		mem[IMX7D_RPROC_MEM_MAX];
>  	struct clk			*clk;
>  	void __iomem			*bootreg;
> +	struct imx_mbox mb[IMX_MBOX_NB_MBX];
> +	struct workqueue_struct *workqueue;
>  };
>  
>  static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> @@ -251,10 +270,118 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>  	return va;
>  }
>  
> +static void imx_rproc_mb_vq_work(struct work_struct *work)
> +{
> +	struct imx_mbox *mb = container_of(work, struct imx_mbox, vq_work);
> +	struct rproc *rproc = dev_get_drvdata(mb->client.dev);
> +
> +	if (rproc_vq_interrupt(rproc, mb->vq_id) == IRQ_NONE)
> +		dev_dbg(&rproc->dev, "no message found in vq%d\n", mb->vq_id);
> +}
> +
> +static void imx_rproc_mb_callback(struct mbox_client *cl, void *data)
> +{
> +	struct rproc *rproc = dev_get_drvdata(cl->dev);
> +	struct imx_mbox *mb = container_of(cl, struct imx_mbox, client);
> +	struct imx_rproc *ddata = rproc->priv;
> +
> +	queue_work(ddata->workqueue, &mb->vq_work);
> +}
> +
> +static const struct imx_mbox imx_rproc_mbox[IMX_MBOX_NB_MBX] = {
> +	{
> +		.name = IMX_MBX_VQ0,
> +		.vq_id = 0,
> +		.client = {
> +			.rx_callback = imx_rproc_mb_callback,
> +			.tx_block = false,
> +		},
> +	},
> +	{
> +		.name = IMX_MBX_VQ1,
> +		.vq_id = 1,
> +		.client = {
> +			.rx_callback = imx_rproc_mb_callback,
> +			.tx_block = false,
> +		},
> +	},
> +};
> +
> +static void imx_rproc_request_mbox(struct rproc *rproc)
> +{
> +	struct imx_rproc *ddata = rproc->priv;
> +	struct device *dev = &rproc->dev;
> +	unsigned int i;
> +	const unsigned char *name;
> +	struct mbox_client *cl;
> +
> +	/* Initialise mailbox structure table */
> +	memcpy(ddata->mb, imx_rproc_mbox, sizeof(imx_rproc_mbox));
> +
> +	for (i = 0; i < IMX_MBOX_NB_MBX; i++) {
> +		name = ddata->mb[i].name;
> +
> +		cl = &ddata->mb[i].client;
> +		cl->dev = dev->parent;
> +
> +		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
> +
> +		dev_dbg(dev, "%s: name=%s, idx=%u\n",
> +			__func__, name, ddata->mb[i].vq_id);
> +
> +		if (IS_ERR(ddata->mb[i].chan)) {
> +			dev_warn(dev, "cannot get %s mbox\n", name);
> +			ddata->mb[i].chan = NULL;

If the mailbox isn't ready this driver will fail without a chance of recovery.
Since most of the code in this patch is a carbon copy of the implementation
found in stm32_proc.c, I suggest you do the same as they did in
stm32_rproc_request_mbox() and privision for cases where requesting a channel
returns -EPROBE_DEFER.

> +		}
> +
> +		if (ddata->mb[i].vq_id >= 0)
> +			INIT_WORK(&ddata->mb[i].vq_work, imx_rproc_mb_vq_work);
> +	}
> +}
> +
> +static void imx_rproc_free_mbox(struct rproc *rproc)
> +{
> +	struct imx_rproc *ddata = rproc->priv;
> +	unsigned int i;
> +
> +	dev_dbg(&rproc->dev, "%s: %d boxes\n",
> +		__func__, ARRAY_SIZE(ddata->mb));
> +
> +	for (i = 0; i < ARRAY_SIZE(ddata->mb); i++) {
> +		if (ddata->mb[i].chan)
> +			mbox_free_channel(ddata->mb[i].chan);
> +		ddata->mb[i].chan = NULL;
> +	}
> +}
> +
> +static void imx_rproc_kick(struct rproc *rproc, int vqid)
> +{
> +	struct imx_rproc *ddata = rproc->priv;
> +	unsigned int i;
> +	int err;
> +
> +	if (WARN_ON(vqid >= IMX_MBOX_NB_VQ))
> +		return;
> +
> +	for (i = 0; i < IMX_MBOX_NB_MBX; i++) {
> +		if (vqid != ddata->mb[i].vq_id)
> +			continue;
> +		if (!ddata->mb[i].chan)
> +			return;
> +		dev_dbg(&rproc->dev, "sending message : vqid = %d\n", vqid);
> +		err = mbox_send_message(ddata->mb[i].chan, &vqid);
> +		if (err < 0)
> +			dev_err(&rproc->dev, "%s: failed (%s, err:%d)\n",
> +					__func__, ddata->mb[i].name, err);
> +			return;
> +	}
> +}
> +
>  static const struct rproc_ops imx_rproc_ops = {
>  	.start		= imx_rproc_start,
>  	.stop		= imx_rproc_stop,
>  	.da_to_va	= imx_rproc_da_to_va,
> +	.kick		= imx_rproc_kick,
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> @@ -384,14 +511,26 @@ static int imx_rproc_probe(struct platform_device *pdev)
>  		goto err_put_rproc;
>  	}
>  
> +	priv->workqueue = create_workqueue(dev_name(dev));
> +	if (!priv->workqueue) {
> +		dev_err(dev, "cannot create workqueue\n");
> +		ret = -ENOMEM;
> +		goto err_put_clk;
> +	}
> +
> +	imx_rproc_request_mbox(rproc);
> +
>  	ret = rproc_add(rproc);
>  	if (ret) {
>  		dev_err(dev, "rproc_add failed\n");
> -		goto err_put_clk;
> +		goto err_free_mb;
>  	}
>  
>  	return 0;
>  
> +err_free_mb:
> +	imx_rproc_free_mbox(rproc);
> +	destroy_workqueue(priv->workqueue);
>  err_put_clk:
>  	clk_disable_unprepare(priv->clk);
>  err_put_rproc:
> @@ -407,6 +546,7 @@ static int imx_rproc_remove(struct platform_device *pdev)
>  
>  	clk_disable_unprepare(priv->clk);
>  	rproc_del(rproc);
> +	imx_rproc_free_mbox(rproc);

I have no issues with people reusing code already found in the kernel - in fact
I encourage it because it makes reviewing patches much easier.  On the flip side
you have to give credit where it is due.  Here adding a line in the changelog
that mentions where you took your inspiration from will be much appreciated.

Thanks,
Mathieu

>  	rproc_free(rproc);
>  
>  	return 0;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
