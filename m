Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F51AE3C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5UqKYq/NVlqOeP2NiA2QJBQ7jIId+5mO6RJ1gmZ2B8=; b=AzhYX6Rubaf0dd
	K1+k4ucE/eOwg//X/iENEhj9XLgf8MzgkCJF65eAkhBQHUfGgkoQVU5SyboyxzfITumRK/nB9xkVx
	mWcSaebfXI+Hr9jUlVvp/nRKKB4Dus48sJmVkZxucOm27OnbL7qF/JZCp6lsB5JVeymI+aMpgV8eG
	k1yHpkoTXiO2ntT4yq0PzO1bCSHk4GJu0+uwris97k3LjxidNOvWkHJsTOTMa1X7P70c6cLSJ/Q8l
	fZX+N6dWTyLnvg6wPdTfdtTCVpvTOhPDT8zXTE+DiPPcgdyzmMxjAAgIo7VU5KJmaytmn3u2WZrG8
	wS1pVWQ9WYHknlOtdmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUmY-0004JN-JJ; Fri, 17 Apr 2020 17:28:02 +0000
Received: from forward103p.mail.yandex.net ([2a02:6b8:0:1472:2741:0:8b7:106])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jPUmI-0004Hz-2H
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:27:49 +0000
Received: from mxback24g.mail.yandex.net (mxback24g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:324])
 by forward103p.mail.yandex.net (Yandex) with ESMTP id AC7B318C1A51;
 Fri, 17 Apr 2020 20:27:37 +0300 (MSK)
Received: from myt5-95c1fb78270f.qloud-c.yandex.net
 (myt5-95c1fb78270f.qloud-c.yandex.net [2a02:6b8:c12:1725:0:640:95c1:fb78])
 by mxback24g.mail.yandex.net (mxback/Yandex) with ESMTP id EKcukuagzZ-Ra70qsfR;
 Fri, 17 Apr 2020 20:27:37 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1587144457; bh=bEQYQySpw3bm91XQ79ljUoQm7kSTivm9dk+9MeI0Tm0=;
 h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
 b=pE4GLC7eZoOPzErAOndCGb+cA+eIPvlmHojLUkyEn7cDItw8m/LvyD7KhE6Ryo3DU
 n6hXKla0b9kxUBt9Mc2F53kmjz2kZRFspjbIvsIlxoHMan7s9eFPj46tGzjgGQk8He
 7JBLYZRk2bgUBxIxRVN/8csSvl0UDgISBnIUU55U=
Authentication-Results: mxback24g.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by myt5-95c1fb78270f.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id g0wCxkGACe-RZ2iFG8N; Fri, 17 Apr 2020 20:27:35 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Fri, 17 Apr 2020 20:26:53 +0300
From: Nikita Shubin <nikita.shubin@maquefel.me>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
Message-ID: <20200417202653.00002500@maquefel.me>
In-Reply-To: <CANLsYkxvuwFdG3YnE7tTxQaD7uF0d_XnPjt1KS++FFe0W3fbdw@mail.gmail.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
 <20200414164519.GA24061@xps15> <45761587100993@mail.yandex.ru>
 <CANLsYkxvuwFdG3YnE7tTxQaD7uF0d_XnPjt1KS++FFe0W3fbdw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_102746_465516_B1429FE2 
X-CRM114-Status: GOOD (  30.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:1472:2741:0:8b7:106 listed in]
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

On Fri, 17 Apr 2020 11:01:22 -0600
Mathieu Poirier <mathieu.poirier@linaro.org> wrote:

> On Thu, 16 Apr 2020 at 23:40, <nikita.shubin@maquefel.me> wrote:
> >
> > Hi Mathieue,
> >
> > Hi Nikita,
> >
> > On Mon, Apr 06, 2020 at 02:33:08PM +0300, nikita.shubin@maquefel.me
> > wrote:
> >
> >  In case elf file interrupt vector is not supposed to be at OCRAM_S,
> >  it is needed to write elf entry point to OCRAM_S + 0x4, to boot M4
> >  firmware.
> >
> >  Otherwise firmware located anywhere besides OCRAM_S won't boot.
> >
> >  The firmware must set stack poiner as first instruction:
> >
> >  Reset_Handler:
> >      ldr sp, = __stack /* set stack pointer */
> >
> >  Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> >
> >
> > The address in the SoB has to match what is found in the "From:"
> > field of the email header. Checkpatch is complaining about that,
> > something I would have expected to be fixed before sending this set
> > out.
> >
> > Noted and will be fixed.
> >
> >  ---
> >   drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
> >   1 file changed, 15 insertions(+), 1 deletion(-)
> >
> >  diff --git a/drivers/remoteproc/imx_rproc.c
> > b/drivers/remoteproc/imx_rproc.c index 3e72b6f38d4b..bebc58d0f711
> > 100644 --- a/drivers/remoteproc/imx_rproc.c
> >  +++ b/drivers/remoteproc/imx_rproc.c
> >  @@ -45,6 +45,8 @@
> >
> >   #define IMX7D_RPROC_MEM_MAX 8
> >
> >  +#define IMX_BOOT_PC 0x4
> >  +
> >   /**
> >    * struct imx_rproc_mem - slim internal memory structure
> >    * @cpu_addr: MPU virtual address of the memory region
> >  @@ -85,6 +87,7 @@ struct imx_rproc {
> >           const struct imx_rproc_dcfg *dcfg;
> >           struct imx_rproc_mem mem[IMX7D_RPROC_MEM_MAX];
> >           struct clk *clk;
> >  + void __iomem *bootreg;
> >   };
> >
> >   static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> >  @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc
> > *rproc) struct device *dev = priv->dev;
> >           int ret;
> >
> >  + /* write entry point to program counter */
> >  + writel(rproc->bootaddr, priv->bootreg);
> >
> >
> > What happens on all the other IMX systems where this fix is not
> > needed? Will they continue to work properly?
> >
> > Yes, my bad, it is also needed for IMX6 (but even so i need to
> > study this topic more carefully), this should be applied
> > exclusively for imx7d for now, and if will be needed someone with
> > imx6 hardware to test on can extend this on imx6 also.
> >
> >
> >
> >
> >  +
> >           ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> >                                    dcfg->src_mask, dcfg->src_start);
> >           if (ret)
> >                   dev_err(dev, "Failed to enable M4!\n");
> >
> >  + dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
> >  +
> >           return ret;
> >   }
> >
> >  @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc *rproc)
> >           if (ret)
> >                   dev_err(dev, "Failed to stop M4!\n");
> >
> >  + /* clear entry points */
> >  + writel(0, priv->bootreg);
> >  +
> >           return ret;
> >   }
> >
> >  @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc
> > *rproc, u64 da, int len) static const struct rproc_ops
> > imx_rproc_ops = { .start = imx_rproc_start,
> >           .stop = imx_rproc_stop,
> >  - .da_to_va = imx_rproc_da_to_va,
> >  + .da_to_va = imx_rproc_da_to_va,
> >  + .get_boot_addr = rproc_elf_get_boot_addr,
> >
> >
> > How is this useful? Sure it will set rproc->bootaddr in
> > rproc_fw_boot() but what good does that do when it is invariably
> > set again in imx_rproc_start() ?
> >
> > The priv->bootreg is the address where we are writing Entry Point
> > and it is fixed, 0x04 address is translated to 0x00180004, so don't
> > quite understand you we are writing rproc->bootaddr into
> > priv->bootreg, not wiseversa.
> >
> 
> What is your reason to set ops->get_boot_addr ?  How does that help
> the work done in this patch?

The reason is the following :

remoteproc_core.c:
| rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
| rproc->bootaddr = rproc_get_boot_addr(rproc, fw);

remoteproc_internal.h
| static inline
| u32 rproc_get_boot_addr(struct rproc *rproc, const struct firmware
*fw) | {
| 	if (rproc->ops->get_boot_addr)
| 		return rproc->ops->get_boot_addr(rproc, fw);
|
|	return 0;
| }

> 
> >
> >   };
> >
> >   static int imx_rproc_addr_init(struct imx_rproc *priv,
> >  @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct
> > platform_device *pdev) goto err_put_rproc;
> >           }
> >
> >  + priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC,
> > sizeof(u32)); +
> >           /*
> >            * clk for M4 block including memory. Should be
> >            * enabled before .start for FW transfer.
> >  --
> >  2.25.1
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
