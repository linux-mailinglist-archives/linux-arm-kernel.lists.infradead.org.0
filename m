Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2BB1AE14D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtD4KX6lsY731hHRNd0nWSK/q0AY44NL3B7FCOEQtOM=; b=Pi/+YL8XK/VEKs
	LAiavVs9A51ek1i8bQQ1bOl6Mhif4B08cg3eDGKrHy+xTrepjcGcGjhf/G35ni1vKRBax6rxdlMKs
	LMgqRHT3fV9Qwlm8sVl2XOq+ZCEdt5YO5PXioxzAEGXLt2f8v+d1HV17M+TeEcvaevAK6kd+cwOLx
	trd3J8mO2bL4D8SQZKIV3yMfwpTYElsIUZt0DLE1l6Z+DpIleIizbEb6ZGYjOTLv2uzWC75V8jQA0
	ENvi20chvYoifxgCBoG5IP7hQvsf8QQBp7/8UTkWyx/RwdUEE06HKcbLoy3S8IPya+PHKmPix7ayr
	5wjM3zuPaCGcQzqzhWbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPT4A-0007cE-Ty; Fri, 17 Apr 2020 15:38:06 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPT40-0007bQ-FD
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:37:58 +0000
Received: by mail-io1-xd41.google.com with SMTP id i19so2699021ioh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 08:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dZWbHNkoj0JZBFRa+7yN5L8lU5vuTUFT6sy1jTrj+/w=;
 b=J+rBrCBFPfAcAzCoUBAgycYe++RupvfFwXFvaRbQpkLMxxN0S5WCn5cfjJVIlCrQ36
 mL/IQ1yzyXK05wmytKfYtt17r1lzKS7l58phN2KOR+QZMYeOhlirBW0EDynJUSOhURcA
 0yLVVi2Pi+WeHoYF8YGqMHXGOmXScTtxuU4ZoeUTke6WePb0YpP0ExmMFCjtbobWwjlE
 5LJSPXy7TAM2r7eL8t3JNlDzZW9D7pRmqlUYFkZmYN+XTlAnawgyG+BuIkDsqFp510mC
 EVLl9N0yjmJmjUtq2LqTyZsvQhM+9Fw3ZRffjIjjCSSd2GJmYx+ku80QFsStAhKZXgtw
 5SWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dZWbHNkoj0JZBFRa+7yN5L8lU5vuTUFT6sy1jTrj+/w=;
 b=E2wm3Me8pyJj2nIOHCwLaz31SAKWM5ezu4PGtHnaK62xKNYYSnwcS0ZEdXet2utPzW
 XqcxruCSnpxYhdEKcdEJsRVQ9L0PgjPDwuFVC1YAi/fIOkdWTgiEqW5XnLXF5Xwt5Yei
 7k2O7DoZCXTf9PjngnB4yCAwgXdYp6sp48ksmt33R2QtUwM8PCedT5ec6vzHDvQRlfm3
 BQuAGuk+uAy5bEiJ5DyMhPRTqzrPOHDXLkq0QIuP3FMrhSpPpgSZCg4HoxF2oBhVYZ7k
 iBbbebf5eNU+gz98XgHkp9iBYz3uAXDQVB5pmKYenhRy88wR9GtU9mBEFI/nROKt2r5Q
 e7TA==
X-Gm-Message-State: AGi0Pub7hjl8CmYt2HuaONBhsS3ZDP3CepkU+eV0a1RqFwh3hga37wxI
 7qlJdJRjOW3Pl4m3dn0bZxaOOzs+sUSMw3dJlJZC/Q==
X-Google-Smtp-Source: APiQypI0krjI+mvmWnI3ESAaCfeAhP5hfOH/kONmQVYxbtIdkgljt8qhfrmnxB6jyEg7Dngv0pYSHIFhvNB4U/D3cbU=
X-Received: by 2002:a6b:3842:: with SMTP id f63mr3467174ioa.90.1587137873074; 
 Fri, 17 Apr 2020 08:37:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
 <20200414164519.GA24061@xps15>
 <20200417151132.00005f8c@maquefel.me>
In-Reply-To: <20200417151132.00005f8c@maquefel.me>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 17 Apr 2020 09:37:42 -0600
Message-ID: <CANLsYkxeL+a43eDzwJjXyFBFSwRVXjiYd4TcTbEcuuj+wgEZdw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
To: Nikita Shubin <nikita.shubin@maquefel.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_083756_679874_7CB060AB 
X-CRM114-Status: GOOD (  30.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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

On Fri, 17 Apr 2020 at 06:12, Nikita Shubin <nikita.shubin@maquefel.me> wrote:
>
> On Tue, 14 Apr 2020 10:45:19 -0600
> Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
>
> > Hi Nikita,
> >
> > On Mon, Apr 06, 2020 at 02:33:08PM +0300, nikita.shubin@maquefel.me
> > wrote:
> > > In case elf file interrupt vector is not supposed to be at OCRAM_S,
> > > it is needed to write elf entry point to OCRAM_S + 0x4, to boot M4
> > > firmware.
> > >
> > > Otherwise firmware located anywhere besides OCRAM_S won't boot.
> > >
> > > The firmware must set stack poiner as first instruction:
> > >
> > > Reset_Handler:
> > >     ldr   sp, = __stack      /* set stack pointer */
> > >
> > > Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> >
> > The address in the SoB has to match what is found in the "From:"
> > field of the email header.  Checkpatch is complaining about that,
> > something I would have expected to be fixed before sending this set
> > out.
> >
> > > ---
> > >  drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
> > >  1 file changed, 15 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/remoteproc/imx_rproc.c
> > > b/drivers/remoteproc/imx_rproc.c index 3e72b6f38d4b..bebc58d0f711
> > > 100644 --- a/drivers/remoteproc/imx_rproc.c
> > > +++ b/drivers/remoteproc/imx_rproc.c
> > > @@ -45,6 +45,8 @@
> > >
> > >  #define IMX7D_RPROC_MEM_MAX                8
> > >
> > > +#define IMX_BOOT_PC                        0x4
> > > +
> > >  /**
> > >   * struct imx_rproc_mem - slim internal memory structure
> > >   * @cpu_addr: MPU virtual address of the memory region
> > > @@ -85,6 +87,7 @@ struct imx_rproc {
> > >     const struct imx_rproc_dcfg     *dcfg;
> > >     struct imx_rproc_mem
> > > mem[IMX7D_RPROC_MEM_MAX]; struct clk                        *clk;
> > > +   void __iomem                    *bootreg;
> > >  };
> > >
> > >  static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> > > @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc
> > > *rproc) struct device *dev = priv->dev;
> > >     int ret;
> > >
> > > +   /* write entry point to program counter */
> > > +   writel(rproc->bootaddr, priv->bootreg);
> >
> > What happens on all the other IMX systems where this fix is not
> > needed?  Will they continue to work properly?
>
> Mathieu you are totally correct imx6/imx7 use different addresses they
> boot.
>
> For imx7:
> | On i.MX 7Dual/7Solo, the boot vector for the Cortex-M4 core is located
> | at the start of the OCRAM_S (On Chip RAM - Secure) whose address is
> | 0x0018_0000 from Cortex-A7.
>
> For imx6:
> | The Boot vector for the Cortex-M4 core is located at the start of the
> | TCM_L whose address is 0x007F_8000 from the Cortex-A9. This is a
> | different location than on the i.MX 7Dual/7Solo
>
> But on imx7 0x0 is translated to 0x0018_0000 by imx_rproc_da_to_va, and
> on imx7 0x0 is translated to 0x007F_8000, using imx_rproc_att_imx7d and
> imx_rproc_att_imx6sx respectively.

My point here is that before your patch, this driver was running on
IMX platforms.  How does your work impact existing platforms that are
booting properly?

>
> I have no information about IMX8 (i have found none available
> publicity), but should be the same as Cortex-M boots from 0x0.
>
> >
> > > +
> > >     ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> > >                              dcfg->src_mask, dcfg->src_start);
> > >     if (ret)
> > >             dev_err(dev, "Failed to enable M4!\n");
> > >
> > > +   dev_info(&rproc->dev, "Started from 0x%x\n",
> > > rproc->bootaddr); +
> > >     return ret;
> > >  }
> > >
> > > @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc *rproc)
> > >     if (ret)
> > >             dev_err(dev, "Failed to stop M4!\n");
> > >
> > > +   /* clear entry points */
> > > +   writel(0, priv->bootreg);
> > > +
> > >     return ret;
> > >  }
> > >
> > > @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc
> > > *rproc, u64 da, int len) static const struct rproc_ops
> > > imx_rproc_ops = { .start            = imx_rproc_start,
> > >     .stop           = imx_rproc_stop,
> > > -   .da_to_va       = imx_rproc_da_to_va,
> > > +   .da_to_va       = imx_rproc_da_to_va,
> > > +   .get_boot_addr  = rproc_elf_get_boot_addr,
> >
> > How is this useful?  Sure it will set rproc->bootaddr in
> > rproc_fw_boot() but what good does that do when it is invariably set
> > again in imx_rproc_start() ?
> >
> > >  };
> > >
> > >  static int imx_rproc_addr_init(struct imx_rproc *priv,
> > > @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct
> > > platform_device *pdev) goto err_put_rproc;
> > >     }
> > >
> > > +   priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC,
> > > sizeof(u32)); +
> > >     /*
> > >      * clk for M4 block including memory. Should be
> > >      * enabled before .start for FW transfer.
> > > --
> > > 2.25.1
> > >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
