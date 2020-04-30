Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F641C01E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNMM+3HTPJw0mSlUM+Ur2j+Izbe6Z6K+AhsSM7PunxE=; b=OoZ2jdBBCUTX+q
	c2VoYeWtC51sh4jsn8BLHfSkYGnpKn2P52uytCjSRG7b2z3CQYwfwq2zeSUBlabcESSAU+HLeBweU
	YhPgGnxfX5jERvDb7CfwkB9lAsYBdA7m5wzyp6gRQRBA1nKnCaV7wVnq8DcU4XfdPfRM5filhu0fE
	hKW6OIYEorTxYw+fnCAAuYntp1/3yFpyCY9OPR+a8tBP8s17vsbZSoCDPS8mE2V9OL16hapyK/vKr
	0QU2yrNXXlHYuUsTO6fT8rANI0g2mWaVIZvgdL4ArV0Y1h8EB71TUTTWTJVbHRsz7q638+8BikClh
	UfA1z2n8FiTFoebi87aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBpX-0007C5-F4; Thu, 30 Apr 2020 16:14:31 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBpM-0007BH-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:14:21 +0000
Received: by mail-io1-xd42.google.com with SMTP id f3so2081636ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9tMKgUNiVkUhpbJNhAr0hm95irgxD28lhjeV8PkyOXw=;
 b=lJBIxD+U8h9JNWqczpIHYOA2edcOylANhJNLxX7tesOutIKTPAgFimaA71Q4BN3lFt
 CGdE71ndDyan0ElbnjdpXRfFAeM3FaoZUuZy4QwOiG6H2+Ms9wxfrmq86ne2Ncxduo2s
 o3oH8+ZOcyM+mE6+HP4hWSsipRphFTDlHJjDks7AcSYXE7geDz7xu6toAZaAdZAWGs7u
 doCtqwvkh1wxfWlI/hclqWa5WNI/PUHzg9W1oPax2zCgrBJN8THiWO9T/BRkfG7p5sQ6
 6byMtoOITdG3H87AkEiMJfkj6f+yvBrPZTtUnw30mdJTdGYwy75RtSWnREdZmACd4nAs
 pzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9tMKgUNiVkUhpbJNhAr0hm95irgxD28lhjeV8PkyOXw=;
 b=a2tPJbgWqPzTVNkq3acgds6dpDxU2Kfd/KEIHmrul7tVS8kuYbB4PRFVHBVrzqKV4D
 KuC8LtIIlGLu2jKUwWNny5D7LsTlTk8zI4h/YZKsNG/y0Y70+j+qGYIuAab+fA/3nieL
 Ux+8m/iBGN4BG8RqO2nrfytkUVnarQI3GGOGXuQGzsziF9p6CETyigGteHbdv2ht58X1
 9bpr5EkkAKc64pZnAsG/QdrU9MZTvO0XkOwC8R99hyQ4Chp21SyeQOF9QaVYsW5QAVXo
 Oc8Ki3V9ZXuM2Dfoj9WwtxMiXWjIR5vOjsuqGyJHATeJO4trc4STjcUGIVdnVJtniagD
 hPlA==
X-Gm-Message-State: AGi0Pua/Z9e7MWry4n3+73nU63CaKacKBhsGPnGe3i99W/6sCuAcScCZ
 hdVZziLodkvAbRIsKkIOCakoreVi4s4Vgr/Z7io=
X-Google-Smtp-Source: APiQypJNNe1JlSiWqNAvYCGbEyLo6QHM5ubwp0R2i0yMPOBM1qvYMgIWqO2AKVPK+ePUbVGYtX9sAhF9NavoFEScekM=
X-Received: by 2002:a6b:5904:: with SMTP id n4mr2693593iob.142.1588263256671; 
 Thu, 30 Apr 2020 09:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-2-frieder.schrempf@kontron.de>
 <5e1f804c4c27927d10b2283747c1cae6606abe7c.camel@pengutronix.de>
 <6a5fbb8a-bf28-9c8e-53c7-7a3e5f338a2c@kontron.de>
In-Reply-To: <6a5fbb8a-bf28-9c8e-53c7-7a3e5f338a2c@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 30 Apr 2020 11:14:02 -0500
Message-ID: <CAHCN7x+sA9cGF6oqvZLKBdhRdZcxgW=U98uB81_R3iq_-Ok9=w@mail.gmail.com>
Subject: Re: [RFC PATCH 1/4] drm/etnaviv: Prevent IRQ triggering at probe time
 on i.MX8MM
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091420_365433_835A82FF 
X-CRM114-Status: GOOD (  28.25  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Li Jun <jun.li@nxp.com>, Christian Gmeiner <christian.gmeiner@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:31 AM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> Hi Lucas,
>
> On 30.04.20 16:32, Lucas Stach wrote:
> > Hi Frieder,
> >
> > Am Donnerstag, den 30.04.2020, 12:46 +0000 schrieb Schrempf Frieder:
> >> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> >>
> >> On i.MX8MM there is an interrupt getting triggered immediately after
> >> requesting the IRQ, which leads to a stall as the handler accesses
> >> the GPU registers whithout the clock being enabled.
> >>
> >> Enabling the clocks briefly seems to clear the IRQ state, so we do
> >> this before requesting the IRQ.
> >
> > This is most likely caused by improper power-up sequencing. Normally
> > the GPC will trigger a hardware reset of the modules inside a power
> > domain when the domain is powered on. This requires the clocks to be
> > running at this point, as those resets are synchronous, so need clock
> > pulses to propagate through the hardware.
>
> Ok, I was suspecting something like that and your explanation makes
> total sense to me.
>
> >
> >  From what I see the i.MX8MM is still missing the power domain
> > controller integration, but I'm pretty confident that this problem
> > should be solved in the power domain code, instead of the GPU driver.
>
> Ok. I was hoping that GPU support could be added without power domain
> control, but I now see that this is probably not reasonable at all.
> So I will keep on hoping that NXP comes up with an upstreamable solution
> for the power domain handling.


There was a patch for upstream power-domain control from NXP a few days ago:

https://patchwork.kernel.org/cover/10904511/

Can these be somehow tested to see if it helps the issue with the GPU?

adam
>
> Thanks,
> Frieder
>
> >
> > Regards,
> > Lucas
> >
> >> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> >> ---
> >>   drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 29 ++++++++++++++++++++-----
> >> --
> >>   1 file changed, 22 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> >> b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> >> index a31eeff2b297..23877c1f150a 100644
> >> --- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> >> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> >> @@ -1775,13 +1775,6 @@ static int etnaviv_gpu_platform_probe(struct
> >> platform_device *pdev)
> >>              return gpu->irq;
> >>      }
> >>
> >> -    err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
> >> -                           dev_name(gpu->dev), gpu);
> >> -    if (err) {
> >> -            dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq,
> >> err);
> >> -            return err;
> >> -    }
> >> -
> >>      /* Get Clocks: */
> >>      gpu->clk_reg = devm_clk_get(&pdev->dev, "reg");
> >>      DBG("clk_reg: %p", gpu->clk_reg);
> >> @@ -1805,6 +1798,28 @@ static int etnaviv_gpu_platform_probe(struct
> >> platform_device *pdev)
> >>              gpu->clk_shader = NULL;
> >>      gpu->base_rate_shader = clk_get_rate(gpu->clk_shader);
> >>
> >> +    /*
> >> +     * On i.MX8MM there is an interrupt getting triggered
> >> immediately
> >> +     * after requesting the IRQ, which leads to a stall as the
> >> handler
> >> +     * accesses the GPU registers whithout the clock being enabled.
> >> +     * Enabling the clocks briefly seems to clear the IRQ state, so
> >> we do
> >> +     * this here before requesting the IRQ.
> >> +     */
> >> +    err = etnaviv_gpu_clk_enable(gpu);
> >> +    if (err)
> >> +            return err;
> >> +
> >> +    err = etnaviv_gpu_clk_disable(gpu);
> >> +    if (err)
> >> +            return err;
> >> +
> >> +    err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
> >> +                           dev_name(gpu->dev), gpu);
> >> +    if (err) {
> >> +            dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq,
> >> err);
> >> +            return err;
> >> +    }
> >> +
> >>      /* TODO: figure out max mapped size */
> >>      dev_set_drvdata(dev, gpu);
> >>
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
