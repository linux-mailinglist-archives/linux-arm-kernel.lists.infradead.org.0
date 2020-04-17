Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A9D1AE2FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pXdHKUmbBQVtv7mFd3ruRHOEXbCSPN3Nsq6plUu6rc=; b=UYqlxfm7ZIKVJh
	+ffjWsNcHUzWhO7fLzwx2uUilhTWW8VVvaZngmqBYEe1on96qAOhgOgieuMLXmETzJqRxONTyxqwa
	nb0EfphmfY4hw6+cqMCcuRUk7BGQXbyT+gVth9QhKyyeMF1F0xNgpsJFQHfbAfPKey8kseXEJS57o
	I/qqSNnhlf6qCj1YrxyWj1qw7oMT6JaeLfgfme6/Bxylx7tmd0fpNqHPsS+uwhDIDsf15LfQYtaKF
	OV2f59DEEndp+1HJFVEqJ1+6/8SYZPgdd5T8m9FqnZjz2bu2+/2Ww5EpT+P8MZ8fu74B6+bUDphMs
	hFw2JdxaSFHCDpdA53kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUN7-0002a9-8u; Fri, 17 Apr 2020 17:01:45 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUMx-0002ZH-Ty
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:01:38 +0000
Received: by mail-qv1-xf41.google.com with SMTP id c12so1236398qvj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 10:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MVkLg1w9YL05SBAedOSV66B4MdI8D4soLhNbW/we+pE=;
 b=Gcutb8NFv8d4Os5HpLiYoD7/E0ROXCpkyBhCeKlFc1AUthtYLFBknGFTXzNhpP+Xzy
 t6KiQmOIp7keDtr57DilBofMF5+0LC9hNlAVtOvyPcnTQFF8UlkbCEze0nvqSLA1kk50
 2S7xfpi5QETLRikHPiFarq3w23b8Kkk1W4lvqcD5gmC1IbT2v3mVWwu1c9uv/c4dMAXl
 gRqgjmmsQ0aKNkCLq6pMMZLaNAiftEYQprDr93D+ROc+kZU7GHY4PdUfgshdDXQ7fR2/
 13hRVBZIu9JAq9nDFwwjjvHS7AqDubk7kmQ7mmf4TXeVXNhpEytz3jEYpJf2tzesCpca
 XApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MVkLg1w9YL05SBAedOSV66B4MdI8D4soLhNbW/we+pE=;
 b=hgjmc0pVXUz7vQ6p5ev28w3VuC8hVA1TFD84m+sUTVnMn2VRFLVWBYvfbuB+t5G3on
 tIpVj+tUw6bmNjBpcEmTjuji2CQHngB1rHJhvo0piNI/OAXTPHxFAN7jhpTj+YY/xPz4
 ObZSSyBz6pmglO3WTJ9eCc5Gwpba1q/P8B3y915cTZaWnV6L/68s+mGANDnkU8DiHb6G
 omEqqn2O0zSIgFDfM1Nm9GACzNHazMebgGGaFHyJdzzAelZC/Sf82XJiKEjjpCrX2gvF
 Mitlu+0uEpCv3bE9yrMXNII9goBFCz3QKE6rSRHcexr7gW6KQgHQpTp0xd4FtNCQCAT/
 +6kQ==
X-Gm-Message-State: AGi0PuYUIrSX86ZpZiji4uR23oEt0nnTWpb+rViQGu3R7nbMqaqd4kyW
 m5ZjG4NC7Qk0eFgaOzdQxVAE1oU7/zsg3QVYpn/rrA==
X-Google-Smtp-Source: APiQypKQgHh2HC4uTYtqPTi+aHjdpUdvbBQgIPIm++iFO1qXIRghHQOKgKpVDhlswsBlShNG7+WcH6jbn6nCcDrL700=
X-Received: by 2002:a05:6214:885:: with SMTP id
 cz5mr3778085qvb.43.1587142894218; 
 Fri, 17 Apr 2020 10:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
 <20200414164519.GA24061@xps15> <45761587100993@mail.yandex.ru>
In-Reply-To: <45761587100993@mail.yandex.ru>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 17 Apr 2020 11:01:22 -0600
Message-ID: <CANLsYkxvuwFdG3YnE7tTxQaD7uF0d_XnPjt1KS++FFe0W3fbdw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
To: nikita.shubin@maquefel.me
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_100136_136592_E2A5FCB8 
X-CRM114-Status: GOOD (  26.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <nshubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 23:40, <nikita.shubin@maquefel.me> wrote:
>
> Hi Mathieue,
>
> Hi Nikita,
>
> On Mon, Apr 06, 2020 at 02:33:08PM +0300, nikita.shubin@maquefel.me wrote:
>
>  In case elf file interrupt vector is not supposed to be at OCRAM_S,
>  it is needed to write elf entry point to OCRAM_S + 0x4, to boot M4
>  firmware.
>
>  Otherwise firmware located anywhere besides OCRAM_S won't boot.
>
>  The firmware must set stack poiner as first instruction:
>
>  Reset_Handler:
>      ldr sp, = __stack /* set stack pointer */
>
>  Signed-off-by: Nikita Shubin <NShubin@topcon.com>
>
>
> The address in the SoB has to match what is found in the "From:" field of the
> email header. Checkpatch is complaining about that, something I would have
> expected to be fixed before sending this set out.
>
> Noted and will be fixed.
>
>  ---
>   drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
>   1 file changed, 15 insertions(+), 1 deletion(-)
>
>  diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
>  index 3e72b6f38d4b..bebc58d0f711 100644
>  --- a/drivers/remoteproc/imx_rproc.c
>  +++ b/drivers/remoteproc/imx_rproc.c
>  @@ -45,6 +45,8 @@
>
>   #define IMX7D_RPROC_MEM_MAX 8
>
>  +#define IMX_BOOT_PC 0x4
>  +
>   /**
>    * struct imx_rproc_mem - slim internal memory structure
>    * @cpu_addr: MPU virtual address of the memory region
>  @@ -85,6 +87,7 @@ struct imx_rproc {
>           const struct imx_rproc_dcfg *dcfg;
>           struct imx_rproc_mem mem[IMX7D_RPROC_MEM_MAX];
>           struct clk *clk;
>  + void __iomem *bootreg;
>   };
>
>   static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
>  @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc *rproc)
>           struct device *dev = priv->dev;
>           int ret;
>
>  + /* write entry point to program counter */
>  + writel(rproc->bootaddr, priv->bootreg);
>
>
> What happens on all the other IMX systems where this fix is not needed? Will
> they continue to work properly?
>
> Yes, my bad, it is also needed for IMX6 (but even so i need to study this topic more carefully),
> this should be applied exclusively for imx7d for now, and if will be needed someone
> with imx6 hardware to test on can extend this on imx6 also.
>
>
>
>
>  +
>           ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
>                                    dcfg->src_mask, dcfg->src_start);
>           if (ret)
>                   dev_err(dev, "Failed to enable M4!\n");
>
>  + dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
>  +
>           return ret;
>   }
>
>  @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc *rproc)
>           if (ret)
>                   dev_err(dev, "Failed to stop M4!\n");
>
>  + /* clear entry points */
>  + writel(0, priv->bootreg);
>  +
>           return ret;
>   }
>
>  @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>   static const struct rproc_ops imx_rproc_ops = {
>           .start = imx_rproc_start,
>           .stop = imx_rproc_stop,
>  - .da_to_va = imx_rproc_da_to_va,
>  + .da_to_va = imx_rproc_da_to_va,
>  + .get_boot_addr = rproc_elf_get_boot_addr,
>
>
> How is this useful? Sure it will set rproc->bootaddr in rproc_fw_boot() but
> what good does that do when it is invariably set again in imx_rproc_start() ?
>
> The priv->bootreg is the address where we are writing Entry Point and it is fixed,
> 0x04 address is translated to 0x00180004, so don't quite understand you we
> are writing rproc->bootaddr into priv->bootreg, not wiseversa.
>

What is your reason to set ops->get_boot_addr ?  How does that help
the work done in this patch?

>
>   };
>
>   static int imx_rproc_addr_init(struct imx_rproc *priv,
>  @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct platform_device *pdev)
>                   goto err_put_rproc;
>           }
>
>  + priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC, sizeof(u32));
>  +
>           /*
>            * clk for M4 block including memory. Should be
>            * enabled before .start for FW transfer.
>  --
>  2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
