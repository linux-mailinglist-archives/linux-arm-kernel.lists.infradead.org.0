Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AD11A086E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD488zTOt9JO1zUe+OXMvt9Q2p8LLENuZyWNw24Wc6U=; b=VAjk5y7XoJyall
	/LdTpjxcUezKOrxlAY77TrO72X8w24v8vBSxLm4oo7w7Lrw91th1PseMGPVwzTmaOZIrpGcgQrmhz
	qIomWSis3bUI2rVFUdUbkeZCmxfr3IvwYZMV3L98krfJxuf0Hk2uqKNXKY1muXX9Rhlm5jj8xmAJF
	/ELf6OcGSdx/xOrU7F1+NO7FmnWbqzczfEtvcEtiSWYkHxCX40bD1RovmOCVfpn2+4+eAqSqqXubv
	NxYgoBcV7YdaEr3fm/TAvIfWVaPjd7apDxD8QInqveypdV/3vv9eaajElSEniqoybtDZe0hAF53Mi
	jbt/MI4Y7dlo27Lf3uOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLin0-0001Df-6N; Tue, 07 Apr 2020 07:36:54 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLimt-0001Cv-93
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:36:48 +0000
Received: by mail-ot1-x343.google.com with SMTP id r19so2105172otn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MXkFKK0nBYOjUan987EYuLjdzpEpfg2o9ahd6UADeAM=;
 b=qVlGe6IVUK5d+MeTkjvvVNqA01YUQYDIfau+P2843flDckaJGhAAGphCCUVY48NpV1
 zOBmqIUAIIOh1d+nEi4tgqLbws2/5KtESiEZoyq03SKkA/DyCt0i+BGcmCAj848JscnE
 IsUEEsvrh7efftHE4LzY3tfEq89fvTbdu00JKh/FlKrVp4Av6SVY6qsm1BKpDLxyrPk4
 JVRDIkYBdLRotogkW57VWTW0/zeg065JlstGIq8fSNInXip5woEf6Uuwt5I9hpzptriS
 xeOkHj8gFW3cJd1rpX9OoK/SV8+IwtQYM/TPoVvbd1QX/dzABm9kyRe8OrKU2s/XyrY6
 VAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MXkFKK0nBYOjUan987EYuLjdzpEpfg2o9ahd6UADeAM=;
 b=EOMqSEXT4PJ5kg3tbVpdLakbVjK51ScnHyW8KAAqNp0trQ1JkiF8i7OfVKAHo5gV3p
 cmhbLQgc1fdqwPYCSBo4WE9RMgUq/fIWqicC6GeGIU0Q9i0eUoD8xBLM7Co5tMqvwVHa
 5esoY7FCE4e0WI0SUdJ4pDaKahHwnDnQjsWoaPoHi9Bco66bwpXO12o1sZ+TOgMKvPJP
 Pn8TpZ7Iz/DSIr+5FefVRdECD7567e8pCOOZnhOOckrNs8zyhP3wNYpqy451MQHK+3B4
 SytY9hTq0zRM29PJh+YNa2LNSA4lTo0Dv9K+ExNJyUKlHwFqiKUI+NKebD+pKcdTr+zZ
 b0FA==
X-Gm-Message-State: AGi0Pua1/SzJTD+dMgOthLuzrT68Km53bFKexYw9U4/7J3hSXMr64UbW
 NCIoTigcEtJE1S2Xjbwgq2SACy354N5UDl0j7mU=
X-Google-Smtp-Source: APiQypJqyGDzl5VXE9Pp5Imd+j7wp2mMXSOcontkXnZYyqlWKTlr+lV+SmLAlDscNrlVYewbyYf/dBRu+iPg9yHiALI=
X-Received: by 2002:a4a:7555:: with SMTP id g21mr840337oof.46.1586245005099;
 Tue, 07 Apr 2020 00:36:45 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406173425.GE16885@pendragon.ideasonboard.com>
In-Reply-To: <20200406173425.GE16885@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 7 Apr 2020 08:36:19 +0100
Message-ID: <CA+V-a8tmj0SDpJWPL1B3GQ6FA=fLN-4-oCj5p4L0vAZSBg29vw@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_003647_318000_2956AC3B 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thank you for the review.

On Mon, Apr 6, 2020 at 6:34 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> Thank you for the patch.
>
> On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > 24MHz. So instead making clock-frequency as dt-property just let the
> > driver enforce the required clock frequency.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  drivers/media/i2c/ov5645.c | 14 +++++---------
> >  1 file changed, 5 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > index a6c17d15d754..52848fff8a08 100644
> > --- a/drivers/media/i2c/ov5645.c
> > +++ b/drivers/media/i2c/ov5645.c
> > @@ -61,6 +61,8 @@
> >  #define OV5645_SDE_SAT_U             0x5583
> >  #define OV5645_SDE_SAT_V             0x5584
> >
> > +#define OV5645_XVCLK_FREQ            24000000
> > +
> >  /* regulator supplies */
> >  static const char * const ov5645_supply_name[] = {
> >       "vdddo", /* Digital I/O (1.8V) supply */
> > @@ -1094,25 +1096,19 @@ static int ov5645_probe(struct i2c_client *client)
> >               return PTR_ERR(ov5645->xclk);
> >       }
> >
> > -     ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> > +     ret = clk_set_rate(ov5645->xclk, OV5645_XVCLK_FREQ);
> >       if (ret) {
> > -             dev_err(dev, "could not get xclk frequency\n");
> > +             dev_err(dev, "could not set xclk frequency\n");
> >               return ret;
> >       }
> > -
>
> I think you can keep the blank line here.
>
Oops my bad will drop that in next version.

Cheers,
--Prabhakar

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> >       /* external clock must be 24MHz, allow 1% tolerance */
> > +     xclk_freq = clk_get_rate(ov5645->xclk);
> >       if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> >               dev_err(dev, "external clock frequency %u is not supported\n",
> >                       xclk_freq);
> >               return -EINVAL;
> >       }
> >
> > -     ret = clk_set_rate(ov5645->xclk, xclk_freq);
> > -     if (ret) {
> > -             dev_err(dev, "could not set xclk frequency\n");
> > -             return ret;
> > -     }
> > -
> >       for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
> >               ov5645->supplies[i].supply = ov5645_supply_name[i];
> >
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
