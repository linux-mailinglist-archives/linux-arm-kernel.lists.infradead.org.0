Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833661B3910
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnzn4QL+oCAtvK0Sq65oRymoUvhCXy9t+mgSGBnsW/s=; b=sqrLFHfxBTkZCi
	uHtMMo0voicESXujrm/OJXls5toomymiBS0l0nmzmNY/GW2yYpJ9n1o99cLZwm76gWTiVwCgAoQa+
	JGX/rqCF3VTnbGbWKc/Of/jn5oiVKZyuPcleprmC3mwCkGivYni/f2QekvoLlZ8Cmpfp0oPYtYODf
	a9ms649o9ZEG8rmKwHnewiifRJiGvWomh3BUBPbu3+uDepJedJoc6kFWDmHj52tiONr4qzXt5Bcbv
	7C73ICsFPZn1l4qt1ez45mty6kJtraSRd+mwYzLocMJXJhr2sH9ebL0nbgoAxp2nw9WaFH6Ydu01U
	Uk/Q3dMlqciQq16N4QFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9vj-0007rR-Jp; Wed, 22 Apr 2020 07:36:23 +0000
Received: from forward103o.mail.yandex.net ([2a02:6b8:0:1a2d::606])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9vO-0007oL-5n
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:36:12 +0000
Received: from forward100q.mail.yandex.net (forward100q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb97])
 by forward103o.mail.yandex.net (Yandex) with ESMTP id 759365F82106;
 Wed, 22 Apr 2020 10:35:53 +0300 (MSK)
Received: from mxback7q.mail.yandex.net (mxback7q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:41:0:640:cbbf:d618])
 by forward100q.mail.yandex.net (Yandex) with ESMTP id 720DD7080006;
 Wed, 22 Apr 2020 10:35:53 +0300 (MSK)
Received: from vla4-a16f3368381d.qloud-c.yandex.net
 (vla4-a16f3368381d.qloud-c.yandex.net [2a02:6b8:c17:d85:0:640:a16f:3368])
 by mxback7q.mail.yandex.net (mxback/Yandex) with ESMTP id afxpmOc8PX-ZqHawV0n; 
 Wed, 22 Apr 2020 10:35:53 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1587540953; bh=ID2SuIBCfDbyux3wZ+N7oUgWeEk9nHmFay9kJWpJDl8=;
 h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
 b=PmhVWDBxxdSVzdS2n2ZJQanADXkJWoTaTgvZvYbzCrcrGlgyzT/qzk0AYRN+5Nxiu
 Wrwlun9jtTNLcKxPVdFDqmzdOsTEnbM2I5RUz7J2jYU3KzoWsoOxEVoDLRyVKltu7e
 ED9bOylz5YDS9krDCXpzJLd6iz8ISHcg1BNHekRA=
Authentication-Results: mxback7q.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by vla4-a16f3368381d.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id FD3Dk2IMkv-ZpWiB2IY; Wed, 22 Apr 2020 10:35:51 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Wed, 22 Apr 2020 10:35:49 +0300
From: Nikita Shubin <nikita.shubin@maquefel.me>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
Message-ID: <20200422103549.0000512d@maquefel.me>
In-Reply-To: <CANLsYkyUoG9fW7NoXMS1D7WjPGew7FT0jyOP1E0ipmwW-qEG7A@mail.gmail.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
 <20200414164519.GA24061@xps15> <45761587100993@mail.yandex.ru>
 <CANLsYkxvuwFdG3YnE7tTxQaD7uF0d_XnPjt1KS++FFe0W3fbdw@mail.gmail.com>
 <20200417202653.00002500@maquefel.me>
 <CANLsYkyUoG9fW7NoXMS1D7WjPGew7FT0jyOP1E0ipmwW-qEG7A@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_003602_639522_1F1DB34F 
X-CRM114-Status: GOOD (  32.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:1a2d:0:0:0:606 listed in] [list.dnswl.org]
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

On Fri, 17 Apr 2020 16:24:21 -0600
Mathieu Poirier <mathieu.poirier@linaro.org> wrote:

> On Fri, 17 Apr 2020 at 11:27, Nikita Shubin
> <nikita.shubin@maquefel.me> wrote:
> >
> > On Fri, 17 Apr 2020 11:01:22 -0600
> > Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
> >
> > > On Thu, 16 Apr 2020 at 23:40, <nikita.shubin@maquefel.me> wrote:
> > > >
> > > > Hi Mathieue,
> > > >
> > > > Hi Nikita,
> > > >
> > > > On Mon, Apr 06, 2020 at 02:33:08PM +0300,
> > > > nikita.shubin@maquefel.me wrote:
> > > >
> > > >  In case elf file interrupt vector is not supposed to be at
> > > > OCRAM_S, it is needed to write elf entry point to OCRAM_S +
> > > > 0x4, to boot M4 firmware.
> > > >
> > > >  Otherwise firmware located anywhere besides OCRAM_S won't boot.
> > > >
> > > >  The firmware must set stack poiner as first instruction:
> > > >
> > > >  Reset_Handler:
> > > >      ldr sp, = __stack /* set stack pointer */
> > > >
> > > >  Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> > > >
> > > >
> > > > The address in the SoB has to match what is found in the "From:"
> > > > field of the email header. Checkpatch is complaining about that,
> > > > something I would have expected to be fixed before sending this
> > > > set out.
> > > >
> > > > Noted and will be fixed.
> > > >
> > > >  ---
> > > >   drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
> > > >   1 file changed, 15 insertions(+), 1 deletion(-)
> > > >
> > > >  diff --git a/drivers/remoteproc/imx_rproc.c
> > > > b/drivers/remoteproc/imx_rproc.c index
> > > > 3e72b6f38d4b..bebc58d0f711 100644 ---
> > > > a/drivers/remoteproc/imx_rproc.c +++
> > > > b/drivers/remoteproc/imx_rproc.c @@ -45,6 +45,8 @@
> > > >
> > > >   #define IMX7D_RPROC_MEM_MAX 8
> > > >
> > > >  +#define IMX_BOOT_PC 0x4
> > > >  +
> > > >   /**
> > > >    * struct imx_rproc_mem - slim internal memory structure
> > > >    * @cpu_addr: MPU virtual address of the memory region
> > > >  @@ -85,6 +87,7 @@ struct imx_rproc {
> > > >           const struct imx_rproc_dcfg *dcfg;
> > > >           struct imx_rproc_mem mem[IMX7D_RPROC_MEM_MAX];
> > > >           struct clk *clk;
> > > >  + void __iomem *bootreg;
> > > >   };
> > > >
> > > >   static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> > > >  @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc
> > > > *rproc) struct device *dev = priv->dev;
> > > >           int ret;
> > > >
> > > >  + /* write entry point to program counter */
> > > >  + writel(rproc->bootaddr, priv->bootreg);
> > > >
> > > >
> > > > What happens on all the other IMX systems where this fix is not
> > > > needed? Will they continue to work properly?
> > > >
> > > > Yes, my bad, it is also needed for IMX6 (but even so i need to
> > > > study this topic more carefully), this should be applied
> > > > exclusively for imx7d for now, and if will be needed someone
> > > > with imx6 hardware to test on can extend this on imx6 also.
> > > >
> > > >
> > > >
> > > >
> > > >  +
> > > >           ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> > > >                                    dcfg->src_mask,
> > > > dcfg->src_start); if (ret)
> > > >                   dev_err(dev, "Failed to enable M4!\n");
> > > >
> > > >  + dev_info(&rproc->dev, "Started from 0x%x\n",
> > > > rproc->bootaddr); +
> > > >           return ret;
> > > >   }
> > > >
> > > >  @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc
> > > > *rproc) if (ret)
> > > >                   dev_err(dev, "Failed to stop M4!\n");
> > > >
> > > >  + /* clear entry points */
> > > >  + writel(0, priv->bootreg);
> > > >  +
> > > >           return ret;
> > > >   }
> > > >
> > > >  @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct
> > > > rproc *rproc, u64 da, int len) static const struct rproc_ops
> > > > imx_rproc_ops = { .start = imx_rproc_start,
> > > >           .stop = imx_rproc_stop,
> > > >  - .da_to_va = imx_rproc_da_to_va,
> > > >  + .da_to_va = imx_rproc_da_to_va,
> > > >  + .get_boot_addr = rproc_elf_get_boot_addr,
> > > >
> > > >
> > > > How is this useful? Sure it will set rproc->bootaddr in
> > > > rproc_fw_boot() but what good does that do when it is invariably
> > > > set again in imx_rproc_start() ?
> > > >
> > > > The priv->bootreg is the address where we are writing Entry
> > > > Point and it is fixed, 0x04 address is translated to
> > > > 0x00180004, so don't quite understand you we are writing
> > > > rproc->bootaddr into priv->bootreg, not wiseversa.
> > > >
> > >
> > > What is your reason to set ops->get_boot_addr ?  How does that
> > > help the work done in this patch?
> >
> > The reason is the following :
> >
> > remoteproc_core.c:
> > | rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
> > | rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
> >
> > remoteproc_internal.h
> > | static inline
> > | u32 rproc_get_boot_addr(struct rproc *rproc, const struct firmware
> > *fw) | {
> > |       if (rproc->ops->get_boot_addr)
> > |               return rproc->ops->get_boot_addr(rproc, fw);
> > |
> > |       return 0;
> > | }
> 
> And as I said above the value of rproc->bootaddr is set to
> priv->bootreg in imx_rproc_stop().  What am I missing?  More over
> imx_rproc_ops doesn't have a ->load() function and as such rproc_alloc
> will set it to rproc_elf_get_boot_addr()

Yes, you are totally correct, it is not required in this patch thank you
for pointing this out.

> 
> >
> > >
> > > >
> > > >   };
> > > >
> > > >   static int imx_rproc_addr_init(struct imx_rproc *priv,
> > > >  @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct
> > > > platform_device *pdev) goto err_put_rproc;
> > > >           }
> > > >
> > > >  + priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC,
> > > > sizeof(u32)); +
> > > >           /*
> > > >            * clk for M4 block including memory. Should be
> > > >            * enabled before .start for FW transfer.
> > > >  --
> > > >  2.25.1
> > > >
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
