Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADB2193315
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 22:52:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrNL3gV/uFj6KX+oltKcs6Qema6qhPssLMIv4hGaX5E=; b=CeAzmC3eyo3fQQ
	/Ak/A2X0k5L2XPrNptGbFEZIw+CCaxcc2FZI/p7VSTfw60/rAV/2KcvlBuhApWFY/Dja+Qn+ioACt
	2UrHYxjNtrq1Owu0XPeAIFRtLCek+g0Q2HeFh/DmN3plvcc1lc2h31oF7XvpVKRy7vqKB6Og5uDFj
	FtI30hdQeYRCQQ/JPPYSqIlyw9kTs1qsyb7hQkJf6xIy8q51dpao3tGmHa7UiOkl1cRH5vTqkVxfd
	j19ElB7stus7ilvw0lTIiaIGmj47byzE1fTgFyBx2+pwVfnXTpBgNOKRld8JaaLqAlLeMqlRH3TDA
	0QuYVogzl0xYhXOL4frA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDx3-00051n-Rp; Wed, 25 Mar 2020 21:52:41 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDwv-000517-Df
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 21:52:37 +0000
Received: by mail-oi1-x244.google.com with SMTP id m14so3679272oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 14:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QpLQfLACDAI5Uwkm+eP7UpguGefdvlXbhKdJDjEQTmA=;
 b=nkNMTRqQhaFfQGLpH84h7Vb2cSQt2qMH5rYjL1EjXbTqkj1gYy/jeefNn5V/GRB41J
 3JseCw2FRy+v359OZdF7/WrkZSvl5FKPK6PvwxkHsFpFj5q0807yBa5LEND5Yi/V+uIJ
 UgPLECDpmaTBRbQnkU5L25l7CSmB8VRX6yxGQ73fiMN2zuw7d1kC2RhLeMDGbz6wg/v8
 0VdQB7onLpyihmfY6oRo/EvYNfQun75wU913a98Zfv2yzTFyD741aIqe9jXvr0t/V0rJ
 +0hL1y91Hepv2WHh6mqREvu78/rb6/aUWw2U685nvVDmNiLkAz7simG2NmeF/erOMWsM
 soVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QpLQfLACDAI5Uwkm+eP7UpguGefdvlXbhKdJDjEQTmA=;
 b=Ws0ZufQfssTxmuiD/Z6g9QDbvlanXMyhyNUPb3PJVY0g4kRmit2zqF2x6KaCilONvk
 Bu4RXJ8ItsVtSQ4lgnRvU7R/iHe3HJLUaMJXexQHxf6sVeWz/zXXddt9KXTZkw0fsOhB
 6aZP3kIr/K93CUc7ChFrQMr44jAt91dqWoIggHna9MgCBCpju8tEk4Kvg1dq7TeD4uki
 fSXitETgyxarienulbKp5kNRnE9vhKxq0UgGy22exWadhOqylhig0y84pVLNgIW0l2qK
 FFQXG/NeDji5LFfmG5sb0+USwDoRha6oR4/j64JDI0eP61V0PLcAOlAD1F1CzMArwUd2
 ID/w==
X-Gm-Message-State: ANhLgQ3hA8hbAymvOp1lSpD06WSXJbvRemLxYYAm8iocuaU0yZ55Or7X
 dPyMPPVVjXV2Z7fGwB4vQrDb+kuRgCGHhX60914=
X-Google-Smtp-Source: ADFU+vt678gX2VsVQQpCTNMxR/ZEy9sOGed2BFdU0XnvfqmjfHdK180DMJmfexTYtkXu+tyuQ3CLR9198ESyMdFsYk0=
X-Received: by 2002:aca:5444:: with SMTP id i65mr3865876oib.101.1585173152034; 
 Wed, 25 Mar 2020 14:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
 <20200319130348.GC4872@pendragon.ideasonboard.com>
 <CA+V-a8s-GZsYuBLyGnzURZfGD42f0c+QEan6FSwb2ew1=7Gj3g@mail.gmail.com>
 <20200324154045.whiy6uvlg2mrjv5a@gilmour.lan>
 <CA+V-a8tMVoJOdgM_S0sJ0WEGhwBirCC4mi-TtxLCn1SKVXXiBQ@mail.gmail.com>
 <20200324161221.GA27805@pendragon.ideasonboard.com>
In-Reply-To: <20200324161221.GA27805@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 25 Mar 2020 21:52:05 +0000
Message-ID: <CA+V-a8uL+VQysPTj6m=W=Y7_eK-p4HOY0a16-F=v3q3KyvCX_g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_145235_842042_A11187D4 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Maxime Ripard <maxime@cerno.tech>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Tue, Mar 24, 2020 at 4:12 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> On Tue, Mar 24, 2020 at 04:04:43PM +0000, Lad, Prabhakar wrote:
> > On Tue, Mar 24, 2020 at 3:40 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > On Thu, Mar 19, 2020 at 01:17:51PM +0000, Lad, Prabhakar wrote:
> > > > On Thu, Mar 19, 2020 at 1:04 PM Laurent Pinchart wrote:
> > > > > On Thu, Mar 19, 2020 at 01:44:52PM +0100, Maxime Ripard wrote:
> > > > > > On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > > > > > > Use assigned-clock-rates to specify the clock rate. Also mark
> > > > > > > clock-frequency property as deprecated.
> > > > > > >
> > > > > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > > > ---
> > > > > > >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > > > > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > > > >
> > > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > > > index 72ad992..e62fe82 100644
> > > > > > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > > > > @@ -8,7 +8,7 @@ Required Properties:
> > > > > > >  - compatible: Value should be "ovti,ov5645".
> > > > > > >  - clocks: Reference to the xclk clock.
> > > > > > >  - clock-names: Should be "xclk".
> > > > > > > -- clock-frequency: Frequency of the xclk clock.
> > > > > > > +- clock-frequency (deprecated): Frequency of the xclk clock.
> > > > > > >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > > > > >    to the hardware pin PWDNB which is physically active low.
> > > > > > >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > > > > > @@ -37,7 +37,8 @@ Example:
> > > > > > >
> > > > > > >                     clocks = <&clks 200>;
> > > > > > >                     clock-names = "xclk";
> > > > > > > -                   clock-frequency = <24000000>;
> > > > > > > +                   assigned-clocks = <&clks 200>;
> > > > > > > +                   assigned-clock-rates = <24000000>;
> > > > > > >
> > > > > > >                     vdddo-supply = <&camera_dovdd_1v8>;
> > > > > > >                     vdda-supply = <&camera_avdd_2v8>;
> > > > > >
> > > > > > clock-frequency is quite different from assigned-clock-rates though,
> > > > > > semantically speaking. clock-frequency is only about what the clock
> > > > > > frequency is, while assigned-clock-rates will change the rate as well,
> > > > > > and you have no idea how long it will last.
> > > > >
> > > > > The driver currently reads the clock-frequency property and then calls
> > > > > clk_set_rate(). I agree tht assigned-clock-rates isn't a panacea, but I
> > > > > think it's less of a hack than what we currently have.
> > > > >
> > > > > As discussed on IRC, maybe the best option in this specific case is to
> > > > > drop clock-frequency and assigned-clok-rates, and call clk_set_rate()
> > > > > with a hardcoded frequency of 24MHz in the driver, as that's the only
> > > > > frequency the driver supports.
> > > > >
> > > > Does this mean any driver which has a fixed clock requirement shouldn't be a
> > > > DT property and should be just handled by the drivers internally ?
> > >
> > > It's hard to give a generic policy, but here, the hardware is pretty
> > > flexible since it can deal with anything between 6MHz to 50-something
> > > MHz, it's the driver that chooses to enforce a 24MHz and be pedantic
> > > about it, so it's up to the driver to enforce that policy, not to the
> > > DT since it's essentially a software limitation, not a hardware one.
> >
> > Thank you for the clarification, Ill drop patches 1-4 from this series.
>
> That's the whole series... :-) I think you should keep patch 1/4 but
> just remove the clock-frequency from the bindings, then remove it from
> the DT files, and patch the driver to set the clock rate to 24MHz
> unconditionally in patch 4/4.
>
My bad I was referring to v4 series patch 5/5 which converts dt
bindings to json schema.
I'll shall post a v5 as suggested above.

Cheers,
--Prabhakar

> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
