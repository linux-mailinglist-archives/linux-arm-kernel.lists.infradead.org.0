Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3261819159D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFCmUvFWvPKyTUs1hWxsjNbrW7u4F2GT3N39IpnMJUk=; b=Oa6UVd5bomepPB
	FFdp7SrNU6XXkkAO8Jw2Wpg3i8NGtO0GY0ZSteY5r/r5I9EU0Pvzn1m3OOUxrB3Otny/vdNMuznxd
	ZN9BxHHmfshDNzVKg+BmO7TLwGMEvJISzlUzb482b/psEpQW9L08oo1+WBlr4KniEitu4OQB/TfkY
	OHRiATySOfl3ctJMzUO7S57EQ69VW5fR1VpJ34MKTEn8bMB+kRJgcy5VYyXkjFh3DCpVc/86vuH/c
	fvZ++XlttpPSFHQPuFz3Ovx5+kGgRk16VE2Z28uDQDVL+HfwYGxUfQdZZiT1XAWTJp02E/UbNFuJf
	gWMQMw41nHT1RPA+UuJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGm3Q-0006V6-91; Tue, 24 Mar 2020 16:05:24 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGm3D-0005rr-JJ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 16:05:13 +0000
Received: by mail-oi1-x242.google.com with SMTP id k18so18997075oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 09:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2BPzC8bByA/HvMLHNDuJ/sryGIc/DaJrplgVtUGBycE=;
 b=HHkvzsimNnAlbEd2ZUuSi3tppCCvuexXM92gmWz1PrPvT8/YodDM04j4ICKWyAnScu
 lQVc8GqPm4s6NagQmUmrlPB8LC59XBwe3fmOfxFvTQGDlBc/DJ2kCEYJuPyjN/jdZMCM
 WiGVrfbWQgF3pVXk+hsDa3w91B18+Biggx1VXjLNfI5FxYLHGf0VdRKmKAdrd2uze/Df
 j3/Cdi7oHcf5/pk9AXFpihMvrZN+eeoVsYw7CYhCxrifXYc4ZvSBdl2dCQZ6SZAoS63j
 7YOSDq8EkuTiktCrVOqggeQQ7SfhdhgjX+Rk4fNnZ0gV+jVf1rd/C3UA87E3s4iGSJBU
 XjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2BPzC8bByA/HvMLHNDuJ/sryGIc/DaJrplgVtUGBycE=;
 b=lN96P4F2RgVyiFL6so7AtAkbmrCIzQ0esQV7yltxIyEH3OYa2jesXYcyX/u30OTsec
 6M+cagUeURad6hOMxHOkvCZ5NiCh8INFejO5YswxbS9rKOYeJuxW8c2bzShl/90nRVux
 gfUitnJx6esWNKra/Awa5hIpNwLGSIUlfeI+KKrvUTgOfndXZ0IDVEHy2OOlsq4MvUw9
 VhDiZT5RunzlYHvH34OX+6Lu6/8HZxe6lJTWah+E1tH+M6BfyWAp3Ps3DqKVz6wqFynC
 mmoq0sp878D1clZZge1tVKBSt7wJjPJUe1MjmyY9mArraERlq6qgvybUnVxv62T6AR4o
 8QZw==
X-Gm-Message-State: ANhLgQ1zjup3gCHb480gvJcdNXVdy/v1xH1xJKJSqp6MSdsL+GtXEA4K
 1OtJFffmi/PwrHzVqLQZ1DnbwneMbM39vNSoAOw=
X-Google-Smtp-Source: ADFU+vtuwcJhmNvSXVMH0kkPrvHbOp86UIi0sjchaCanrt6uGW6T2n+s1rq6XKFSlBRFrUjjFNxXPvfnLddzYsV6iIY=
X-Received: by 2002:aca:cf0d:: with SMTP id f13mr3817816oig.162.1585065910345; 
 Tue, 24 Mar 2020 09:05:10 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
 <20200319130348.GC4872@pendragon.ideasonboard.com>
 <CA+V-a8s-GZsYuBLyGnzURZfGD42f0c+QEan6FSwb2ew1=7Gj3g@mail.gmail.com>
 <20200324154045.whiy6uvlg2mrjv5a@gilmour.lan>
In-Reply-To: <20200324154045.whiy6uvlg2mrjv5a@gilmour.lan>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 24 Mar 2020 16:04:43 +0000
Message-ID: <CA+V-a8tMVoJOdgM_S0sJ0WEGhwBirCC4mi-TtxLCn1SKVXXiBQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_090511_659670_F8EB8F6C 
X-CRM114-Status: GOOD (  29.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, Mar 24, 2020 at 3:40 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Thu, Mar 19, 2020 at 01:17:51PM +0000, Lad, Prabhakar wrote:
> > Hi Laurent,
> >
> > On Thu, Mar 19, 2020 at 1:04 PM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> > >
> > > Hi Maxime,
> > >
> > > On Thu, Mar 19, 2020 at 01:44:52PM +0100, Maxime Ripard wrote:
> > > > On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > > > > Use assigned-clock-rates to specify the clock rate. Also mark
> > > > > clock-frequency property as deprecated.
> > > > >
> > > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > index 72ad992..e62fe82 100644
> > > > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > @@ -8,7 +8,7 @@ Required Properties:
> > > > >  - compatible: Value should be "ovti,ov5645".
> > > > >  - clocks: Reference to the xclk clock.
> > > > >  - clock-names: Should be "xclk".
> > > > > -- clock-frequency: Frequency of the xclk clock.
> > > > > +- clock-frequency (deprecated): Frequency of the xclk clock.
> > > > >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > > >    to the hardware pin PWDNB which is physically active low.
> > > > >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > > > @@ -37,7 +37,8 @@ Example:
> > > > >
> > > > >                     clocks = <&clks 200>;
> > > > >                     clock-names = "xclk";
> > > > > -                   clock-frequency = <24000000>;
> > > > > +                   assigned-clocks = <&clks 200>;
> > > > > +                   assigned-clock-rates = <24000000>;
> > > > >
> > > > >                     vdddo-supply = <&camera_dovdd_1v8>;
> > > > >                     vdda-supply = <&camera_avdd_2v8>;
> > > >
> > > > clock-frequency is quite different from assigned-clock-rates though,
> > > > semantically speaking. clock-frequency is only about what the clock
> > > > frequency is, while assigned-clock-rates will change the rate as well,
> > > > and you have no idea how long it will last.
> > >
> > > The driver currently reads the clock-frequency property and then calls
> > > clk_set_rate(). I agree tht assigned-clock-rates isn't a panacea, but I
> > > think it's less of a hack than what we currently have.
> > >
> > > As discussed on IRC, maybe the best option in this specific case is to
> > > drop clock-frequency and assigned-clok-rates, and call clk_set_rate()
> > > with a hardcoded frequency of 24MHz in the driver, as that's the only
> > > frequency the driver supports.
> > >
> > Does this mean any driver which has a fixed clock requirement shouldn't be a
> > DT property and should be just handled by the drivers internally ?
>
> It's hard to give a generic policy, but here, the hardware is pretty
> flexible since it can deal with anything between 6MHz to 50-something
> MHz, it's the driver that chooses to enforce a 24MHz and be pedantic
> about it, so it's up to the driver to enforce that policy, not to the
> DT since it's essentially a software limitation, not a hardware one.
>
Thank you for the clarification, Ill drop patches 1-4 from this series.

Cheers,
--Prabhakar

> Maxime
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
