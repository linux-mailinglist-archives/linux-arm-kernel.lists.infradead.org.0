Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AD01AE82E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 00:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kicZ97oaU6TsShIDwmAG8A7JeiYVekefYnNUoZ3Lak=; b=IJddAVK5DK/DYf
	IHukTvC/8Oc8JcwKqGvgUEvFB7VS/0PLObVsLcoWGGQMqrLtfLoJgvtsl9WLYgYmOcf6HonwH9/VC
	9Qob/o7iZBCXSH8A28Fqm5IJyclvRqyKLYomiYFdXdsJ64ureOvqn3+uiBoCHLRjDk8/jS/4OlRyb
	VDGc3LYKqyroY4SI/7ps3B/xthw6AXbtRXV+R+WsqRwB87A6Ub4006r9VOOMod0I+1i3U1WmcoLfW
	eRbHX6F5VyqHIwqFRg9lgJmYa5BosHJ2EgYu1Sk9YPin6rtM2RC44MYuICalNe7cMb5D4UDqExyV0
	aVgsTXthSEH/uXghMNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZPh-0002rw-U6; Fri, 17 Apr 2020 22:24:45 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZPW-0002pb-8t
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 22:24:37 +0000
Received: by mail-io1-xd43.google.com with SMTP id o127so4137935iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 15:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9l7ReVXML5iC1lUXKjwrOgZKOV8ZzgKkL7y7FQ7TRC8=;
 b=Spf98Qg5qFQCzvnqgZgRv9fmE2Syrwc7Gqbh4i98GT3U8W9nhHwgX5Fcoc//T54NMd
 0uY892q8flmpGYSSbSgi5bH6fe3fDZ7klazcneNNR3pbC0X5zgLLwFCm4VfMXd5hZgos
 +8SamfzzVfSj/m1igwp6sMozIYa9LWyURM0yc30+WMlTJP2dN2pZHnBWatc+oBu6HXyN
 Eqfu5VFV6290Xm9etLyap+97UVMongeQ90ZfalwAGBQqKt0xKzYuiKRBxP5cBP4YiCx2
 0LK61hzM0pcDfDj2SKcLvZxWrT+LWLhyCIUQUrftJOz0ZCi2pf8748pbsVL+kCKxU51d
 9oXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9l7ReVXML5iC1lUXKjwrOgZKOV8ZzgKkL7y7FQ7TRC8=;
 b=llPXudN+M/wrd0Qieaa6FwNUuO3M/G06l+o4RkA7/DHnP9q+32fNUT/2RCdBOGlxMn
 jo5HjeZIsWUQfWBnNynSYa6wz/bE+820fTKriY2EYPVOxJRiArPMLcrfxMho/aIrBRJ8
 jq2SFon/ZLnZ9JbRXO5tVBrVzyURHiD3fK70lv2iDIO8dSgA+xjYOciIcB/fxvV5LeVb
 mPqSzG/tspx6vPHF9ZOrDqiZXjVeKTLqYZnqoiH6n9vtYeaC+ii+/yDfZy4eJ8IbXK1v
 wn99R13b2FzITwlbGng7o7pHsa/ruay4/9a0cHPbEQv6ZrxvR9SYsgPdtyX/w++q22LO
 +ong==
X-Gm-Message-State: AGi0PuYPOxopHuXmV85+exYyg4VU+TmP9NbIGDv3jXeCQgdILkeCqS1Z
 LgD96jXQtrl427Lxvm4XRm//3XqZo0uDNXC9A4F32A==
X-Google-Smtp-Source: APiQypL6PL6+MLLIpNc0SmvY24c0Q4ez5CT8xBF/CqHav+Y7obUoOyXH/xedbXEuqARaRaw8L9lptDwOz6Nj/dxncHY=
X-Received: by 2002:a6b:8bd2:: with SMTP id n201mr5392033iod.131.1587162272197; 
 Fri, 17 Apr 2020 15:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
 <20200406113310.3041-2-nikita.shubin@maquefel.me>
 <20200414164519.GA24061@xps15> <45761587100993@mail.yandex.ru>
 <CANLsYkxvuwFdG3YnE7tTxQaD7uF0d_XnPjt1KS++FFe0W3fbdw@mail.gmail.com>
 <20200417202653.00002500@maquefel.me>
In-Reply-To: <20200417202653.00002500@maquefel.me>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 17 Apr 2020 16:24:21 -0600
Message-ID: <CANLsYkyUoG9fW7NoXMS1D7WjPGew7FT0jyOP1E0ipmwW-qEG7A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
To: Nikita Shubin <nikita.shubin@maquefel.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_152434_356858_63C3BDC5 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

On Fri, 17 Apr 2020 at 11:27, Nikita Shubin <nikita.shubin@maquefel.me> wrote:
>
> On Fri, 17 Apr 2020 11:01:22 -0600
> Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
>
> > On Thu, 16 Apr 2020 at 23:40, <nikita.shubin@maquefel.me> wrote:
> > >
> > > Hi Mathieue,
> > >
> > > Hi Nikita,
> > >
> > > On Mon, Apr 06, 2020 at 02:33:08PM +0300, nikita.shubin@maquefel.me
> > > wrote:
> > >
> > >  In case elf file interrupt vector is not supposed to be at OCRAM_S,
> > >  it is needed to write elf entry point to OCRAM_S + 0x4, to boot M4
> > >  firmware.
> > >
> > >  Otherwise firmware located anywhere besides OCRAM_S won't boot.
> > >
> > >  The firmware must set stack poiner as first instruction:
> > >
> > >  Reset_Handler:
> > >      ldr sp, = __stack /* set stack pointer */
> > >
> > >  Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> > >
> > >
> > > The address in the SoB has to match what is found in the "From:"
> > > field of the email header. Checkpatch is complaining about that,
> > > something I would have expected to be fixed before sending this set
> > > out.
> > >
> > > Noted and will be fixed.
> > >
> > >  ---
> > >   drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
> > >   1 file changed, 15 insertions(+), 1 deletion(-)
> > >
> > >  diff --git a/drivers/remoteproc/imx_rproc.c
> > > b/drivers/remoteproc/imx_rproc.c index 3e72b6f38d4b..bebc58d0f711
> > > 100644 --- a/drivers/remoteproc/imx_rproc.c
> > >  +++ b/drivers/remoteproc/imx_rproc.c
> > >  @@ -45,6 +45,8 @@
> > >
> > >   #define IMX7D_RPROC_MEM_MAX 8
> > >
> > >  +#define IMX_BOOT_PC 0x4
> > >  +
> > >   /**
> > >    * struct imx_rproc_mem - slim internal memory structure
> > >    * @cpu_addr: MPU virtual address of the memory region
> > >  @@ -85,6 +87,7 @@ struct imx_rproc {
> > >           const struct imx_rproc_dcfg *dcfg;
> > >           struct imx_rproc_mem mem[IMX7D_RPROC_MEM_MAX];
> > >           struct clk *clk;
> > >  + void __iomem *bootreg;
> > >   };
> > >
> > >   static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> > >  @@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc
> > > *rproc) struct device *dev = priv->dev;
> > >           int ret;
> > >
> > >  + /* write entry point to program counter */
> > >  + writel(rproc->bootaddr, priv->bootreg);
> > >
> > >
> > > What happens on all the other IMX systems where this fix is not
> > > needed? Will they continue to work properly?
> > >
> > > Yes, my bad, it is also needed for IMX6 (but even so i need to
> > > study this topic more carefully), this should be applied
> > > exclusively for imx7d for now, and if will be needed someone with
> > > imx6 hardware to test on can extend this on imx6 also.
> > >
> > >
> > >
> > >
> > >  +
> > >           ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> > >                                    dcfg->src_mask, dcfg->src_start);
> > >           if (ret)
> > >                   dev_err(dev, "Failed to enable M4!\n");
> > >
> > >  + dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
> > >  +
> > >           return ret;
> > >   }
> > >
> > >  @@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc *rproc)
> > >           if (ret)
> > >                   dev_err(dev, "Failed to stop M4!\n");
> > >
> > >  + /* clear entry points */
> > >  + writel(0, priv->bootreg);
> > >  +
> > >           return ret;
> > >   }
> > >
> > >  @@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc
> > > *rproc, u64 da, int len) static const struct rproc_ops
> > > imx_rproc_ops = { .start = imx_rproc_start,
> > >           .stop = imx_rproc_stop,
> > >  - .da_to_va = imx_rproc_da_to_va,
> > >  + .da_to_va = imx_rproc_da_to_va,
> > >  + .get_boot_addr = rproc_elf_get_boot_addr,
> > >
> > >
> > > How is this useful? Sure it will set rproc->bootaddr in
> > > rproc_fw_boot() but what good does that do when it is invariably
> > > set again in imx_rproc_start() ?
> > >
> > > The priv->bootreg is the address where we are writing Entry Point
> > > and it is fixed, 0x04 address is translated to 0x00180004, so don't
> > > quite understand you we are writing rproc->bootaddr into
> > > priv->bootreg, not wiseversa.
> > >
> >
> > What is your reason to set ops->get_boot_addr ?  How does that help
> > the work done in this patch?
>
> The reason is the following :
>
> remoteproc_core.c:
> | rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
> | rproc->bootaddr = rproc_get_boot_addr(rproc, fw);
>
> remoteproc_internal.h
> | static inline
> | u32 rproc_get_boot_addr(struct rproc *rproc, const struct firmware
> *fw) | {
> |       if (rproc->ops->get_boot_addr)
> |               return rproc->ops->get_boot_addr(rproc, fw);
> |
> |       return 0;
> | }

And as I said above the value of rproc->bootaddr is set to
priv->bootreg in imx_rproc_stop().  What am I missing?  More over
imx_rproc_ops doesn't have a ->load() function and as such rproc_alloc
will set it to rproc_elf_get_boot_addr()

>
> >
> > >
> > >   };
> > >
> > >   static int imx_rproc_addr_init(struct imx_rproc *priv,
> > >  @@ -360,6 +372,8 @@ static int imx_rproc_probe(struct
> > > platform_device *pdev) goto err_put_rproc;
> > >           }
> > >
> > >  + priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC,
> > > sizeof(u32)); +
> > >           /*
> > >            * clk for M4 block including memory. Should be
> > >            * enabled before .start for FW transfer.
> > >  --
> > >  2.25.1
> > >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
