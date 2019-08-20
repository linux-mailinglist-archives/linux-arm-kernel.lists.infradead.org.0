Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1A896A7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8J+GiooTApdjr18dvyDgKoS75AIhJE4vCd2QIgM37Q=; b=VrGlSfVLSEvEqb
	Yh+mkhvycTsIgDGDsjWtVhTiG9iLu67937346LzFLl0p2GlDXshM7oKodd4i3Z6ftnhGMqLg018xT
	g9HFt7ZQWrh6HpDa70ONPhRja+yXwio5SAeJIiOUCXx9NMV4sFRkF70VqPdPQinLLvoxY5Qm9tNmh
	iAvM4rlxsnBU/0ODPSCq6NPeiY4ISR2OfUMXC9UPHMrAeP4k2jtmNGrD/JY3qw1ZmxuYW6KrVnFfY
	LFTrSJh43PV7m7tyoNAsEIpTw5jFeXMwGA2sabUc5wXLZ8u31Kh9eyY/k0DwBUUaAsyT0415KFmJz
	jp418fu38XYMaCzC73kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AjY-0004k3-L6; Tue, 20 Aug 2019 20:28:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AjP-0004jd-Sg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 20:27:53 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 589C72339D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 20:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566332871;
 bh=qJwFcNlR0CORyxzVUsDm0Ci04TIVsVpNhIrFLVzEDcM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=P+XAYW3Ntbk5srVJo06mwylxmGXmWveNUNPtEHiFu52vNanqZ2IcVzzhCn4Cx653m
 n/A5u9trXaP1jitd/8BCrObxjTIVjHF41lKkbBl0ynNccFx01gc3ff8Q4NMu402KJM
 u2Toi0UAyI6qHsK/gISdKkjtxnTsYs9mpH+aB5I8=
Received: by mail-qt1-f175.google.com with SMTP id 44so203752qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 13:27:51 -0700 (PDT)
X-Gm-Message-State: APjAAAUJTrC8nZtVNvHF/wxcIWj4b7UvqO3LJOEYy1ZKu9c2IoXXrVRY
 zqaovhP60fkep4jVKxkHfGRa7CARcpbXTu8XCQ==
X-Google-Smtp-Source: APXvYqy+v7sXDaDQ1ZhwUR+S9/UtyTo0vgjYkzgBiAJPIdVDtx2luGfPrCOPLOwC6MdDz04cMAoAoOxTY8HbUCjg08s=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr27733762qto.224.1566332870459; 
 Tue, 20 Aug 2019 13:27:50 -0700 (PDT)
MIME-Version: 1.0
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
 <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
 <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
 <20190820202142.GA15866@kozik-lap>
In-Reply-To: <20190820202142.GA15866@kozik-lap>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 15:27:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKBWB2FiVjYo9O7DPw1JYJvan7uRgbR0VBG=FfHDVYdZQ@mail.gmail.com>
Message-ID: <CAL_JsqKBWB2FiVjYo9O7DPw1JYJvan7uRgbR0VBG=FfHDVYdZQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132751_969720_65C0D359 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 3:21 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Aug 20, 2019 at 03:04:57PM -0500, Rob Herring wrote:
> > On Tue, Aug 20, 2019 at 1:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Tue, 20 Aug 2019 at 18:59, Rob Herring <robh+dt@kernel.org> wrote:
> > > >
> > > > On Tue, Aug 20, 2019 at 10:35 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > > >
> > > > > Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.
> > > > >
> > > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > >
> > > > > ---
> > > > >
> > > > > Changes since v5:
> > > > > New patch
> > > > > ---
> > > > >  Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
> > > > >  1 file changed, 3 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > > index 7294ac36f4c0..d07b3c06d7cf 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > > @@ -161,6 +161,9 @@ properties:
> > > > >          items:
> > > > >            - enum:
> > > > >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > > > > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> > > > > +              - kontron,imx6ul-n6310-s    # Kontron N6310 S Board
> > > > > +              - kontron,imx6ul-n6310-s-43 # Kontron N6310 S 43 Board
> > > >
> > > > This doesn't match what is in your dts files. Run 'make dtbs_check' and see.
> > >
> > > You mean the name does not match? I thought that '#' is a comment in YAML...
> >
> > No, the number of compatible strings is the problem.
>
> I see. If I understand the schema correctly, this should look like:

Looks correct, but a couple of comments.

> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7294ac36f4c0..eb263d1ccf13 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -161,6 +161,22 @@ properties:
>          items:
>            - enum:
>                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM

Is the SOM ever used alone? If not, then no point in listing this here.

> +          - const: fsl,imx6ul
> +
> +      - description: Kontron N6310 S Board
> +        items:
> +          - enum:
> +              - kontron,imx6ul-n6310-s

This could be a 'const' instead. It depends if you think there will
ever be more than one entry.

> +          - const: kontron,imx6ul-n6310-som
> +          - const: fsl,imx6ul
> +
> +      - description: Kontron N6310 S 43 Board
> +        items:
> +          - enum:
> +              - kontron,imx6ul-n6310-s-43
> +          - const: kontron,imx6ul-n6310-s
> +          - const: kontron,imx6ul-n6310-som
>            - const: fsl,imx6ul
>
>        - description: i.MX6ULL based Boards
>
>
> It passes the dtbs_check. Is it correct?
>
> Best regards,
> Krzysztof
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
