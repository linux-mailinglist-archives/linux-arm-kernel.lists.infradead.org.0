Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A85A968A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 20:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhYP9Pyz7nFXH+RntWvc+JTgxMH6lIpxK82HoReETOY=; b=YL4LkrqSrfBj5z
	tV3u8VGunKi/auEUcGHdaajru5bBozYRiypoQopfYsoz4sdxF/vybVRWaD9XQf0hkDv9SV+/KhCVN
	cn2m7L7PriBe3arw4ch4oDxIjpDhyNchC0VEDHwRfJSTnG7/TGrRyW+C5ClXy+WZYPG/I2Bh10hD8
	n0F3srQYKXcVoK/8EEgpAuZnt10PfVnNpUsJ7ZjsIQVTR4Gn9wWOsP/zs5sn8q9vXL+tMdoGoTeiP
	yi3lgpCQ9TSRUNQqnO+pv7NoaLhIIqJNBi2kQfeuyx7cabrue904ShnV/A18uyaScrLzotyeUa0rE
	7i4Rpx8g+huGYhQqPq3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08zo-0002Mr-OF; Tue, 20 Aug 2019 18:36:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i08zg-0002Lj-Vf
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 18:36:34 +0000
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C84CD2339D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 18:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566326190;
 bh=UTdkO2l4tPFINQmlJSerTiL5tNVb9F4/4iYSa397hmI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qOaiEb7IB0HufL7/7QaAGGU/xcEbqY5IamuzeEMhK4WNkpqk7cdPk4FYtd3wC7dRA
 77JL7E45B6juyKSDFgD1Ofr/ruYobSSUzuXeZpTgUj6B/q73QVwWukfYJbCd8StauF
 ziPTt475wmy6pYAcGdtkUvc7auSWBTar4Ey1Wl/k=
Received: by mail-lf1-f50.google.com with SMTP id v16so4880294lfg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 11:36:29 -0700 (PDT)
X-Gm-Message-State: APjAAAWEuJ3UQLMqqOtYQTcdfbTg1oe/lcdHQfhbyGXLFdNqH/FOIpzx
 YcsFBDfGn6vzs29D2X2IFUNzkoHf+GISQY611mk=
X-Google-Smtp-Source: APXvYqzvVamLIjWXUxlWADgmMIlUpyP1fbFcul5EmSzOfEWv7O1u03JIq8m2JVq3MtS953n2z6XOXFeqqqNRUXqkRAg=
X-Received: by 2002:a19:f007:: with SMTP id p7mr1105313lfc.24.1566326187939;
 Tue, 20 Aug 2019 11:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
In-Reply-To: <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 20 Aug 2019 20:36:16 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
Message-ID: <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_113633_043502_71324742 
X-CRM114-Status: GOOD (  15.48  )
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

On Tue, 20 Aug 2019 at 18:59, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Aug 20, 2019 at 10:35 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >
> > ---
> >
> > Changes since v5:
> > New patch
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 7294ac36f4c0..d07b3c06d7cf 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -161,6 +161,9 @@ properties:
> >          items:
> >            - enum:
> >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> > +              - kontron,imx6ul-n6310-s    # Kontron N6310 S Board
> > +              - kontron,imx6ul-n6310-s-43 # Kontron N6310 S 43 Board
>
> This doesn't match what is in your dts files. Run 'make dtbs_check' and see.

You mean the name does not match? I thought that '#' is a comment in YAML...

The dtbs_check fail on missing dt-mk-schema. Any reason why it is not
in the scripts?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
