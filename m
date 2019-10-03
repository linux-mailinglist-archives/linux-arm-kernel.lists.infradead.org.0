Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2E9C98C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkAo0CJT34hTOgwStJNQlyFzkm6rl1LOyAWJWM2hyiA=; b=Pme+cHFszoUIED
	j0niKGxmZydmGdHxsULIVNHaei8lu6k+UlkHcYMtCIyrJNoN8JK47DlDb8o7hbFCm9TZCnOBm+WOS
	2puq+o8/WAt7f5WGK9Za5ZCrhSO1gzFS4WaxPcIp10YBZ6Zi0qv2PHrIh8RJPitmwIbm/q7EHj0IO
	VnhDw/msWqKSo8WcYebDrMmLroiPjDyqswfQeQ2lXgPPnwlJhdpW1kQ7iezdg+GK/g8jE0XcMok4T
	1arMAwtoAsrJwyORL1KZeU21bvHnGU7xPW5QEyWNxEhujCilr6JPPuMWPSKN7z/+s0BslSwZbOpdY
	O5xdOk5vEeAwvag4sjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFv7W-0004lt-50; Thu, 03 Oct 2019 07:01:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFv7P-0004lO-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:01:45 +0000
Received: by mail-io1-xd42.google.com with SMTP id c6so2994843ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 00:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RaTSOsWkX0NwMXV+OVQ4GdiZGiGZm7DQLiGys1P/CwM=;
 b=AYvgtbDiQ21Bs+qVq2dGhqdNnCjEZtjI+RtycTGJZwDSFgTMwWE/ZDzIDSjDPI+4ko
 XIJkx4HVNDR3hj83PjWGh38PHwo7NJn/JnLE30yVfqtLZvxtTvU81/OWwr1NfwK1qwm8
 ZsKxbOXBdfpY3Evv0RggiUM8VFxlUP6MW24aY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RaTSOsWkX0NwMXV+OVQ4GdiZGiGZm7DQLiGys1P/CwM=;
 b=QakMRBvLPClJp5lMfOmKMg3zQI4GjQ2NnQmXIqsxfcTS8iLrw/r4FvruRnLK7KcbGc
 xZ7PsNoapph53DqQbmPciRLYUfuyNrpssnD5+mbST+mbl7bthXgEXcjciUKuE/upjBTg
 1oa4up7c5/NKJoUEaFXXNlX2abkSAEad+Up9t21DZTrTA9NLwS6KvkalcTRiiAGHb/TD
 c5fLv1mga2fI56FTkb6KiXPBSDZ5AV4Oakiyw+L7uidUtTIUDtOBd+Bxo4TlA+PCPF1I
 C/LhBrgeI20e90nkfFSGp+GlUfGET0Sj74k9WonBj66DoOZDf9eUXV41u238LypxHWWS
 KYgA==
X-Gm-Message-State: APjAAAXSKVJjBcVp/zpYyCBB3wsVZUJcTeJ0EANJ8N8IhfyODNj0Eqh9
 9SkTVJxqwdp3Kblh9qw4UxsrMWY7oeKDWDKjjgOYUg==
X-Google-Smtp-Source: APXvYqxM2F/rF0fpKNncuUJT+YRkExY6NtSZFmZJqRNh7an4Mrr/PKtbKXdxgxjXj+qLiStrfZW997mYZqDUjGR51tg=
X-Received: by 2002:a6b:2b07:: with SMTP id r7mr7264826ior.173.1570086102574; 
 Thu, 03 Oct 2019 00:01:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-6-jagan@amarulasolutions.com>
 <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
In-Reply-To: <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 12:31:31 +0530
Message-ID: <CAMty3ZBmY+wZ4MZD1ipjnfhVy3gBRCqsAXGqF79mo+eaX=L2fA@mail.gmail.com>
Subject: Re: [PATCH v11 5/7] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator
 support
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_000143_791708_7D0A8B6A 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 12:26 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Thu, Oct 3, 2019 at 2:46 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Allwinner MIPI DSI controllers are supplied with SoC
> > DSI power rails via VCC-DSI pin.
> >
> > Add support for this supply pin by adding voltage
> > regulator handling code to MIPI DSI driver.
> >
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++++++++
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 ++
> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index 446dc56cc44b..fe9a3667f3a1 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -1110,6 +1110,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >                 return PTR_ERR(base);
> >         }
> >
> > +       dsi->regulator = devm_regulator_get(dev, "vcc-dsi");
> > +       if (IS_ERR(dsi->regulator)) {
> > +               dev_err(dev, "Couldn't get VCC-DSI supply\n");
> > +               return PTR_ERR(dsi->regulator);
> > +       }
> > +
> >         dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> >                                               &sun6i_dsi_regmap_config);
> >         if (IS_ERR(dsi->regs)) {
> > @@ -1183,6 +1189,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> >  static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
> >  {
> >         struct sun6i_dsi *dsi = dev_get_drvdata(dev);
> > +       int err;
> > +
> > +       err = regulator_enable(dsi->regulator);
> > +       if (err) {
> > +               dev_err(dsi->dev, "failed to enable VCC-DSI supply: %d\n", err);
> > +               return err;
> > +       }
> >
> >         reset_control_deassert(dsi->reset);
> >         clk_prepare_enable(dsi->mod_clk);
> > @@ -1215,6 +1228,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
> >
> >         clk_disable_unprepare(dsi->mod_clk);
> >         reset_control_assert(dsi->reset);
> > +       regulator_disable(dsi->regulator);
> >
> >         return 0;
> >  }
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > index 5c3ad5be0690..a01d44e9e461 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > @@ -12,6 +12,7 @@
> >  #include <drm/drm_connector.h>
> >  #include <drm/drm_encoder.h>
> >  #include <drm/drm_mipi_dsi.h>
> > +#include <linux/regulator/consumer.h>
>
> You don't need to include the header file since you are only
> including a pointer to the struct, and nothing else.

Yes, make sense. I will drop it.

>
> Otherwise,
>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
