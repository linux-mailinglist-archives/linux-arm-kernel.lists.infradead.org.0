Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA64131A62
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJ9bi9BL4DvuhUM9RCR0PvMTWueqBqTcsltVOTE7sOE=; b=jFWeSUjEbsY624
	Kobga00RVERoJLctGUMt0lsvQMMPUGLJChVSXY2Io3J+pcwK5+WW2N1gjjIP+PhlTyhQ+ZaW8dneN
	v9ahdyO1wPBoEkvAVZO+m78g7vZy7Ot+Jr9JCfCvEHhM9jbrT1mYYHzKw2B1lwpM60ir5Sh5wq60G
	cR7CmRKNz0qYhrlINfUe/yGhdIMWgkbMqBh070EJ5ssY6ynmlfwBnInp78zxW4lc4QhCgBOu4QPM4
	uYYmUtyozrKt/3zWmSd3NUgpobeolU8V+02jgjnSS1jhM/0ruFEJDybU0aAMKvFrR3FewnF8ZcSSO
	iuP3rXaTxb+qj1O+ik8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZst-0004Eb-D7; Mon, 06 Jan 2020 21:25:59 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZsn-0004Dl-1j
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:25:54 +0000
Received: by mail-il1-x141.google.com with SMTP id t2so28438109ilq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QeWAJBY8qWlUfgcT5Ob4uwidE5Op2m/zDQqkj1Pwwfo=;
 b=u+d0lrvfRfyBUlad0PtUGp4TDtHVVoXvMSkev/UzeCLj+gmYa+XOiSOxd/NWzOD0Er
 Uk7rK9aQEwNzCSHqQiHoGTpysSey1Li6/KHxEvGSQgy5J1Xv2URX1BCgaeGYG/y6+YDP
 H4af5ag2IOE+d7NaUO4cQcIgDyPkBwCaz+r0CHxxwpLEEkNl3a5y7l5vXjI1IzNyHNZt
 7BTSnnkzHNc98GP1afarxCK/Sai0FbwP2NZu/tn8gv5xWZzskzqAti3cqnU4I82a9dnV
 /yHEzgOENJdom2xvFRDz+vvBdTMi9VUdmXs/vmrZ8EQiJ9E94Zh5oGcdiMOEIItyefuG
 n19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QeWAJBY8qWlUfgcT5Ob4uwidE5Op2m/zDQqkj1Pwwfo=;
 b=f2s5DzMREidmN20qqJRklf6S1RuCj+ZgMkva9uZy84p8h7u2o009bRfHTySP6Z4H3Q
 TVNcdIBTHzQgOyUtrxevU2YTOLr7pHDTecen3hxT79Myey8i9c9lFzhlT49KLeXDVeGU
 X48tsSDfpBtrkpuKbwnJwmeX2l/e6h0LYxNQdhsWIZy8qnKKRyL1JLxOKF06N/USTUDr
 cKCJLTA9mJfDVXKYpWso1PA3Rs1n84MvFOSCIYACO6SkKTFCBsYaI/0eBoA5kkRB1D8/
 llYAGm2tnzJ02KdiHWKVQkwah1mRqGX1jRqoClC4cY9EzFLKGeb3dE0AWr6QiOkTzw8I
 8lgw==
X-Gm-Message-State: APjAAAXu/qHFMVGAT42lbVfnSZgfIsWyQOkGkjvelHmzXmriRT0K8y6z
 gnKOkW+VIZufr+qxexlKorfL8mBZnu2j8fx5fsn3Iw==
X-Google-Smtp-Source: APXvYqzue49yqTCM4LifES+9o9JWzgjn29YjX1cFXkGBq1hAH8OyArUIE0efM57Dp/bjZ4g7EYIqgKT4ep+s8IfQ7yM=
X-Received: by 2002:a92:60f:: with SMTP id x15mr84738951ilg.181.1578345950447; 
 Mon, 06 Jan 2020 13:25:50 -0800 (PST)
MIME-Version: 1.0
References: <20191230231953.29646-1-rjones@gateworks.com>
 <20191230231953.29646-2-rjones@gateworks.com>
 <20200103223225.GB654@bogus>
In-Reply-To: <20200103223225.GB654@bogus>
From: Bobby Jones <rjones@gateworks.com>
Date: Mon, 6 Jan 2020 13:25:39 -0800
Message-ID: <CALAE=UATZtN47J421Y4i+GqvijiiECAuc25kLSmYNAe6jGhxiA@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_132553_156253_B7C18C4C 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 2:32 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 30, 2019 at 03:19:49PM -0800, Robert Jones wrote:
> > Add the compatible enum entries for Gateworks Ventana boards.
> >
> > Signed-off-by: Robert Jones <rjones@gateworks.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 31 ++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index f79683a..8ed4c85 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -126,6 +126,22 @@ properties:
> >                - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
> >                - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
> >                - variscite,dt6customboard
> > +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> > +              - gw,imx6q-gw51xx
>
> This doesn't match what you have in dts files. Please check with:
>
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/fsl.yaml
>
> You'll need a separate entry with 3 compatibles and 'gw,ventana' or drop
> it.

Hi Rob,

Sorry, I'm still getting used to the whole schema format and a bit
confused. Can you be more specific in how it doesn't match? I looked
at the imx6q-gw51xx.dts file where I got the entry from and it has the
following line:

compatible = "gw,imx6q-gw51xx", "gw,ventana", "fsl,imx6q";

Obviously I'm only submitting the gw59xx board device trees but a
previous version of this submission was asked to add all of the
compatible strings for the Gateworks boards. Are you asking me to only
post the gw59xx lines?

>
> > +              - gw,imx6q-gw52xx
> > +              - gw,imx6q-gw53xx
> > +              - gw,imx6q-gw5400-a
> > +              - gw,imx6q-gw54xx
> > +              - gw,imx6q-gw551x
> > +              - gw,imx6q-gw552x
> > +              - gw,imx6q-gw553x
> > +              - gw,imx6q-gw560x
> > +              - gw,imx6q-gw5903
> > +              - gw,imx6q-gw5904
> > +              - gw,imx6q-gw5907
> > +              - gw,imx6q-gw5910
> > +              - gw,imx6q-gw5912
> > +              - gw,imx6q-gw5913
> >            - const: fsl,imx6q
> >
> >        - description: i.MX6QP based Boards
> > @@ -152,6 +168,21 @@ properties:
> >                - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
> >                - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
> >                - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
> > +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> > +              - gw,imx6dl-gw51xx
> > +              - gw,imx6dl-gw52xx
> > +              - gw,imx6dl-gw53xx
> > +              - gw,imx6dl-gw54xx
> > +              - gw,imx6dl-gw551x
> > +              - gw,imx6dl-gw552x
> > +              - gw,imx6dl-gw553x
> > +              - gw,imx6dl-gw560x
> > +              - gw,imx6dl-gw5903
> > +              - gw,imx6dl-gw5904
> > +              - gw,imx6dl-gw5907
> > +              - gw,imx6dl-gw5910
> > +              - gw,imx6dl-gw5912
> > +              - gw,imx6dl-gw5913
> >            - const: fsl,imx6dl
> >
> >        - description: i.MX6SL based Boards
> > --
> > 2.9.2
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
