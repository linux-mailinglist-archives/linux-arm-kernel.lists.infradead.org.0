Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BAE1AE173
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvM8yxCPpxsVmWAe+MIwTxAe2IPT9vAio9NJP8JA2b4=; b=ZOS5uAE65tUrok
	mneoJaxb8Y6JphH/DNs3AIWmsB0ZutXDxTWnesVJing9JtRwVV915ZJiRVAieQohFGMrkcMESAT3e
	cTV81Yr19aBoXeU/z7j5BmSIj0+gm8wB9I1RmjghNqDQMk0/jv2jGzZMvhOE6h0taAL3W7YOL+Zru
	j0NVqyoq7syS4crDEq2sILO3UYSy7WjMnJCPxWxmj9nKPJdyWiBO3Hfd5WKbxZSR2oY2xpWbPX5Co
	GOOOZQLN0ekzjhbN5I5OsYn7RLMOMOq2sUh+NCHy5uQvDRMEreUT5fv1tArTjopoDVua7A1TFqWhP
	jpNgNa1oX+MdeageW59A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTDf-0005jS-9u; Fri, 17 Apr 2020 15:47:55 +0000
Received: from forward103j.mail.yandex.net ([2a02:6b8:0:801:2::106])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTDS-0005hh-6V
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:47:45 +0000
Received: from mxback5j.mail.yandex.net (mxback5j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10e])
 by forward103j.mail.yandex.net (Yandex) with ESMTP id A8E5D674067E;
 Fri, 17 Apr 2020 18:47:35 +0300 (MSK)
Received: from myt5-95c1fb78270f.qloud-c.yandex.net
 (myt5-95c1fb78270f.qloud-c.yandex.net [2a02:6b8:c12:1725:0:640:95c1:fb78])
 by mxback5j.mail.yandex.net (mxback/Yandex) with ESMTP id zQhxuX0lGc-lZ0GrXhw; 
 Fri, 17 Apr 2020 18:47:35 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1587138455; bh=eVjqG5u9j8b2zXtHBxXLWbpWQ20qTDLLjfd+HHxSLhI=;
 h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
 b=t4zbscD8+tdjl730jMIAeghgThkWvEYn/2UMo23d57Ovd0Yj8m0I1pz16BJy6pRvf
 Qdlbj2qAmwQMI3A7bwB6uOux3DMHu4pN7lzLn0Qbt0+Hni/kViXATniVHwG67eaqZM
 u5iWDzN5d0e/3ATV39gkhVnIahMv/robo+TMC66I=
Authentication-Results: mxback5j.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by myt5-95c1fb78270f.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id 3teiP5AzpD-lX2KZxKw; Fri, 17 Apr 2020 18:47:33 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Fri, 17 Apr 2020 18:46:52 +0300
From: Nikita Shubin <nikita.shubin@maquefel.me>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
Message-ID: <20200417184652.00002590@maquefel.me>
In-Reply-To: <CANLsYkxeL+a43eDzwJjXyFBFSwRVXjiYd4TcTbEcuuj+wgEZdw@mail.gmail.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
 <20200414164519.GA24061@xps15>
 <20200417151132.00005f8c@maquefel.me>
 <CANLsYkxeL+a43eDzwJjXyFBFSwRVXjiYd4TcTbEcuuj+wgEZdw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_084742_594897_E6CC0A6F 
X-CRM114-Status: GOOD (  33.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:801:2:0:0:106 listed in] [list.dnswl.org]
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
 Nikita Shubin <NShubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 09:37:42 -0600
Mathieu Poirier <mathieu.poirier@linaro.org> wrote:

> On Fri, 17 Apr 2020 at 06:12, Nikita Shubin
> <nikita.shubin@maquefel.me> wrote:
> >
> > On Tue, 14 Apr 2020 10:45:19 -0600
> > Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
> >
> > > Hi Nikita,
> > >
> > > On Mon, Apr 06, 2020 at 02:33:08PM +0300,
> > > nikita.shubin@maquefel.me wrote:
> > > > In case elf file interrupt vector is not supposed to be at
> > > > OCRAM_S, it is needed to write elf entry point to OCRAM_S +
> > > > 0x4, to boot M4 firmware.
> > > >
> > > > Otherwise firmware located anywhere besides OCRAM_S won't boot.
> > > >
> > > > The firmware must set stack poiner as first instruction:
> > > >
> > > > Reset_Handler:
> > > >     ldr   sp, = __stack      /* set stack pointer */
> > > >
> > > > Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> > >
> > > The address in the SoB has to match what is found in the "From:"
> > > field of the email header.  Checkpatch is complaining about that,
> > > something I would have expected to be fixed before sending this
> > > set out.
> > >
> > > > ---
> > > >  drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
> > > >  1 file changed, 15 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/remoteproc/imx_rproc.c
> > > > b/drivers/remoteproc/imx_rproc.c index
> > > > 3e72b6f38d4b..bebc58d0f711 100644 ---
> > > > a/drivers/remoteproc/imx_rproc.c +++
> > > > b/drivers/remoteproc/imx_rproc.c @@ -45,6 +45,8 @@
> > > >
> > > >  #define IMX7D_RPROC_MEM_MAX                8
> > > >
> > > > +#define IMX_BOOT_PC                        0x4
> > > > +
> > > >  /**
> > > >   * struct imx_rproc_mem - slim internal memory structure
> > > >   * @cpu_addr: MPU virtual address of the memory region
> > > > @@ -85,6 +87,7 @@ struct imx_rproc {
> > > >     const struct imx_rproc_dcfg     *dcfg;
> > > >     struct imx_rproc_mem
> > > > mem[IMX7D_RPROC_MEM_MAX]; struct clk
> > > > *clk;
> > > > +   void __iomem                    *bootreg;
> > > >  };
> > > >
> > > >  static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> > > > @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc
> > > > *rproc) struct device *dev = priv->dev;
> > > >     int ret;
> > > >
> > > > +   /* write entry point to program counter */
> > > > +   writel(rproc->bootaddr, priv->bootreg);
> > >
> > > What happens on all the other IMX systems where this fix is not
> > > needed?  Will they continue to work properly?
> >
> > Mathieu you are totally correct imx6/imx7 use different addresses
> > they boot.
> >
> > For imx7:
> > | On i.MX 7Dual/7Solo, the boot vector for the Cortex-M4 core is
> > located | at the start of the OCRAM_S (On Chip RAM - Secure) whose
> > address is | 0x0018_0000 from Cortex-A7.
> >
> > For imx6:
> > | The Boot vector for the Cortex-M4 core is located at the start of
> > the | TCM_L whose address is 0x007F_8000 from the Cortex-A9. This
> > is a | different location than on the i.MX 7Dual/7Solo
> >
> > But on imx7 0x0 is translated to 0x0018_0000 by imx_rproc_da_to_va,
> > and on imx7 0x0 is translated to 0x007F_8000, using
> > imx_rproc_att_imx7d and imx_rproc_att_imx6sx respectively.
> 
> My point here is that before your patch, this driver was running on
> IMX platforms.  How does your work impact existing platforms that are
> booting properly?

Well it wasn't i am pretty sure it wasn't used at all or questions
about boot process should have to be raised earlier.

If we look into the first patch introduced by Oleksij Rempel
https://lore.kernel.org/patchwork/cover/799614/
we can that the program he used is located at 0x0018_0000 so he didn't
have any problems with Entry Point and stack pointer being at
0x0018_0000 and 0x0018_0004 respectively.

But as i am trying to emphasize, IF elf is not supposed to be located
starting at 0x0018_0000 it won't boot at all.

Citing Oleksij:

| no, currently my priority is to provide basic functionality with easy 
| understandable target code and dependencies.

Moreover it seems not tested on IMX6 by anyone. 

I can limit functionality only to IMX7, until i lay hands on IMX6
with m4 co-proc - is this is what desired ?

> 
> >
> > I have no information about IMX8 (i have found none available
> > publicity), but should be the same as Cortex-M boots from 0x0.
> >
> > >
> > > > +
> > > >     ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> > > >                              dcfg->src_mask, dcfg->src_start);
> > > >     if (ret)
> > > >             dev_err(dev, "Failed to enable M4!\n");
> > > >
> > > > +   dev_info(&rproc->dev, "Started from 0x%x\n",
> > > > rproc->bootaddr); +
> > > >     return ret;
> > > >  }
> > > >
> > > > @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc
> > > > *rproc) if (ret)
> > > >             dev_err(dev, "Failed to stop M4!\n");
> > > >
> > > > +   /* clear entry points */
> > > > +   writel(0, priv->bootreg);
> > > > +
> > > >     return ret;
> > > >  }
> > > >
> > > > @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc
> > > > *rproc, u64 da, int len) static const struct rproc_ops
> > > > imx_rproc_ops = { .start            = imx_rproc_start,
> > > >     .stop           = imx_rproc_stop,
> > > > -   .da_to_va       = imx_rproc_da_to_va,
> > > > +   .da_to_va       = imx_rproc_da_to_va,
> > > > +   .get_boot_addr  = rproc_elf_get_boot_addr,
> > >
> > > How is this useful?  Sure it will set rproc->bootaddr in
> > > rproc_fw_boot() but what good does that do when it is invariably
> > > set again in imx_rproc_start() ?
> > >
> > > >  };
> > > >
> > > >  static int imx_rproc_addr_init(struct imx_rproc *priv,
> > > > @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct
> > > > platform_device *pdev) goto err_put_rproc;
> > > >     }
> > > >
> > > > +   priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC,
> > > > sizeof(u32)); +
> > > >     /*
> > > >      * clk for M4 block including memory. Should be
> > > >      * enabled before .start for FW transfer.
> > > > --
> > > > 2.25.1
> > > >
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
