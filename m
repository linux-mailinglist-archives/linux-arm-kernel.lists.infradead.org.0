Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AED01999EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwoVbtSnSd/utzvIy4LrZp5ST6TVyLk9G+oNxz9prC8=; b=AW+uFg6KdUcvc+
	ITywlXQ8kZwzhGlx/v2+aomyTL2nC9AsiVLSMJLhBcCs8ou24P58gYnJbJiy6v6p6IpZq5U3VvFQ9
	zDYb2OlSO1PDDMLg6hW7bs4RUygDWS/lAcPMBTfC0qvKVzdSNSQy9ebQrJTyb3LmIWL99XELB2j7z
	Tr7wpe8gxMC1D/lbVOXiV2b6lJ6DZtRK26hojlBr7NU7hdxyrcAyRnyX6qdAOiKNXkrRmUbEgVbhR
	rYuI+rliC/AotkG1NhnEOcqKYT3++NBiN0ijwbdHAmW+EIna2rj7iP/QCnejYPbFvSJJwjKbjtQ+o
	+Sx9oFnPCMUOjqTbdGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIyW-0003wh-FD; Tue, 31 Mar 2020 15:38:48 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIy0-0003hW-LI
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:38:18 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id t10so3840111ybk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BPQgN4wp/xTiSdMQdV45T5G+Dpby0aslGWWXLQEqKs8=;
 b=f6egg8JB2oXmb5ZDcYSi37IoKdai/7O4iwDdS9tB5EdjG1fdejo+ualHWyXatNehYR
 MzuHVPjLmDt6I3mEnAV5vFbzaEDV3VPFLNpNOh9u1Y40GU1HMTPq3hWa6Ce+M6GQiG4b
 mneV32UAu3ydLOrO+Z4VV8rcPZmrygUm8uZsnmj/Te1Ef8SFeyqA5s845DdfJ+euHwLY
 NeaZljdmTifBJtQuuV/ekejxCON62UGXsMwWI8Sc7UbD5+iHUWdzyxY3T4ka19793baM
 Nl/S/m+Mys1Ba6C0/1gDd20aGwIa+3Sko7XR8PvXx54mJfhNJ4jofvoAtgq17f+5ntL1
 uQ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BPQgN4wp/xTiSdMQdV45T5G+Dpby0aslGWWXLQEqKs8=;
 b=MazcEd2w7XocTRhUU6mN7oolVhnUN+55ogvQdezbbGMFO73EsIM6uhbckoIqUlMZXK
 yvqU/7gk5JI9HyGAVtAhBh5h74Z+YK5IpRdB4sCF3ZL1P/dRomZ3idBD/ixBUshXaPXP
 yVmGe76GX2ATFM6oNR2p+IIvukbeBgBrJ+BKNk6XLBO7rcf/xWEqYQRkUwE79XkHQpRj
 UaleCB0SWpgJAN2B4AqVvTZ6jNJfDQ1Gw800q0vi4nX6uU/iINNbKgQNZZCS4aaPJy/M
 h+uRENdUGSfQ54K8lwCwv+4J7x5/P4RH8nyjUaanraZsF2tyasKOu0Cp82PSEQPmlx/g
 qT3Q==
X-Gm-Message-State: ANhLgQ0kZY/ADcmKwSr6XTomuRzukxnmqMeCZxO97C0hZE8jceyUYZQJ
 GHmVryPwZQT01ZD2NSYi44X7bvW75+Wwj/21A32ZBl+gVw53WQ==
X-Google-Smtp-Source: ADFU+vt5IKuc9tkmr+ASuJda0bZuWGWC0a0b+1r6JL9yr89+s9e71Nso2ucKWJ4k0ClJnzYWXoG2EP313c1QbdzqZj8=
X-Received: by 2002:a9d:6c88:: with SMTP id c8mr12319517otr.272.1585661854175; 
 Tue, 31 Mar 2020 06:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <CAOMZO5D9bmXt9_qGTXw+qUG6JDHfuNtx++fJPJtn+mj1Dzsbag@mail.gmail.com>
In-Reply-To: <CAOMZO5D9bmXt9_qGTXw+qUG6JDHfuNtx++fJPJtn+mj1Dzsbag@mail.gmail.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 31 Mar 2020 15:37:22 +0200
Message-ID: <CAG3jFystdBKnosNQ0LeWQfHEtMgU4iGSr_XuS2XU3-902c31nQ@mail.gmail.com>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083816_798208_2CA91D37 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 at 13:18, Robert Foss <robert.foss@linaro.org> wrote:
>
> Hey Fabio,
>
> On Fri, 13 Mar 2020 at 14:15, Fabio Estevam <festevam@gmail.com> wrote:
> >
> > Hi Robert,
> >
> > On Fri, Mar 13, 2020 at 8:04 AM Robert Foss <robert.foss@linaro.org> wrote:
> >
> > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > +{
> > > +       struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > +       int ret;
> > > +
> > > +       ret = clk_prepare_enable(ov8856->xvclk);
> > > +       if (ret < 0) {
> > > +               dev_err(&client->dev, "failed to enable xvclk\n");
> > > +               return ret;
> > > +       }
> > > +
> > > +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> >
> > The parameter of gpiod_set_value_cansleep() is typically 0 (inactive
> > state) or 1 (active state), so:
> >
> >  gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
>
> Ack

After testing this change, it breaks the driver during probing.
I had a quick look into GPIOD_OUT_HIGH & LOW definitions, and they
seem to never be 0 or 1.

https://elixir.bootlin.com/linux/latest/source/include/linux/gpio/consumer.h#L38

GPIOD_ASIS = 0,
GPIOD_IN = 1,
GPIOD_OUT_LOW = 3
GPIOD_OUT_HIGH = 7

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
