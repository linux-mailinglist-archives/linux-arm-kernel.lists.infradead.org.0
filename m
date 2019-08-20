Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC99969F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQFbfzz/+ppI2cklBCLNq9nGgA/iYl+4CV9EEDFmHrw=; b=qjby0rK7Fi50Nf
	aMXOsmXu1a/F1EvJj5q0fRlJEo3KUg0M/pjZMA5XdSR9BUNzZPo2NO5RGcJDjEfFRdok2x0/pzE8S
	m70g7Q98Hgw8fj3PLD0jlOEXrOkZ0Ky4ZejYSSAdzWMlPV0hYtv3DkK9uPKQF0X7LFAqbgGA4teZT
	8FvnIru89jXw9WCA/i7IRW03eaXf1aq1A1HnMoc3GlreedrI82+/rFCYDmYm3ajU/JiBHUaayZ61/
	fzg8hzeZYcL86+dMx9BUr3CakXP6GZUQadSFPqGSJ//WcyYdfpUB5ogdYDc7cljHs6Z2L1WmoeB9+
	hFBZL9R+u9dWU55gQQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ANb-0003Yp-5x; Tue, 20 Aug 2019 20:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ANT-0003YQ-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 20:05:12 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E40F216F4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 20:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566331510;
 bh=wPpvb7w4ZKK6Za329CALdlZ/QeVsFqPOrpteemAh5kU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pDduHfGNGtlYNON8kaipkj6CjpJTHzUl4j/Z8xrp47pWhQUJEAiq4JiwKgWXRLadR
 /DG87Exz4v3At1yOpMtqkAnAASL7WI+QyVfW0/qZkkPO8jK06bjkJavInnGpQYCTY2
 bxijbHo3Vt5y68ol8NpyW7FobeIhWKBpEOhxcHlo=
Received: by mail-qk1-f178.google.com with SMTP id m10so5623347qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 13:05:10 -0700 (PDT)
X-Gm-Message-State: APjAAAXwAOqDr1y/4Glg2wDLax7DyR/0c3iBJzBJhsk9q31fagc0nB2J
 NSPFIDw/uiuLrH26kVnCDJCZGQd4X+vie7hsiQ==
X-Google-Smtp-Source: APXvYqwpre99OTn6TP/Lj9LeoHcq3KGHlCF+SFWyD+78wdOZa/nObGtCvRvNm/ywPu1TCCL4dplsSFSV0hb534aL8dE=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr27280264qke.393.1566331509857; 
 Tue, 20 Aug 2019 13:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
 <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
In-Reply-To: <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 15:04:57 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
Message-ID: <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_130511_693401_B71F6575 
X-CRM114-Status: GOOD (  17.04  )
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

On Tue, Aug 20, 2019 at 1:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, 20 Aug 2019 at 18:59, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, Aug 20, 2019 at 10:35 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > >
> > > ---
> > >
> > > Changes since v5:
> > > New patch
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index 7294ac36f4c0..d07b3c06d7cf 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -161,6 +161,9 @@ properties:
> > >          items:
> > >            - enum:
> > >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> > > +              - kontron,imx6ul-n6310-s    # Kontron N6310 S Board
> > > +              - kontron,imx6ul-n6310-s-43 # Kontron N6310 S 43 Board
> >
> > This doesn't match what is in your dts files. Run 'make dtbs_check' and see.
>
> You mean the name does not match? I thought that '#' is a comment in YAML...

No, the number of compatible strings is the problem.

> The dtbs_check fail on missing dt-mk-schema. Any reason why it is not
> in the scripts?

Because it is not just that script, but the whole project of scripts,
schemas and meta-schemas. Read the instructions in
Documentation/devicetree/writing-schema.md(.rst in next).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
