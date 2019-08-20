Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BB896A1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8BwhHf6ODFq762nr4MjDkQUafGqT+mvTgkGiSyPIVA=; b=uTU+VmYH16ww5O
	8P19lBFxw1LZ412rdpduV8NK4K7GHD9lS2e4p+sG85fxGcwWMuGid2ceW25m8cWS5yl5l11oXdRQP
	7DHC+3haQeX8bk2pnjSHFARQAuAoRnC7TACxK9UkypJCbUsF3rHYTzF3QoRuLrQBPpFhzO4iXDh52
	Ad7mv2YC1Htg4Nj5f73Uq2qBP597nhqN7iuJI7lc2PIPPaw+haInV94fVWYKEpouBkmeMTebB/mF2
	vuyuu23ZZGmLlAf2KKOjKvF+Hg+/IFBWgQntPbKBLG+Faa9Rzbzv79u9J8jdyTwZRXbXFuiBTqpZz
	rPL0wBOpY+huexqxU/eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Adg-0000ev-BJ; Tue, 20 Aug 2019 20:21:56 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AdY-0000eW-8o
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 20:21:49 +0000
Received: by mail-wr1-f67.google.com with SMTP id y8so13681652wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 13:21:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r3oQd3uU78t7jol5OH8zsEKRAT1+YNvIt09DwZoiSlQ=;
 b=rArqpYO0S5b7GeykChMj9cNWdzY0fHztuaAFyOle8Bk4jIaxNLI6NPeWIsRXz/WQ86
 met8HGEEUt1Ym/fOZ5HTCzK/9kTHcyvs9Rclz9QRfsBh8tZGaZSkv8VvJD5WEriZyTt1
 ngvfBwnX1EjTvwiX4D3Zt2Z4jnErMhwZiYuQzvgTltD30GvTRlQ1ZwJXGm07wI7UYcIe
 Q983m9gqM6UTqEtZSC/vS9gGnLSvntGuuLutVxTb4mam3zP3hcd6r+eU3gr/4i/mcanw
 hBIYIZl2x00VGN1x2b27kVnJviyFthwtxVHK1e2K6yKIby0ImBI4QHDUTTSPZZT9Mvb4
 wGsQ==
X-Gm-Message-State: APjAAAXSjCxSAyNo/mNU11QwUg+kvl1m1RqFxo8PMXKVhmN8zFznCo6U
 AMhOFfI/1Sk7R90rF5PZndU=
X-Google-Smtp-Source: APXvYqwqYsz8ttcqaewkZkkOJpX4/RTeqO4MzB+KxEbH1U4y9n7I3g2XwPfP8FXlpiiZdiIdPZbsMQ==
X-Received: by 2002:adf:e94e:: with SMTP id m14mr38108277wrn.230.1566332505727; 
 Tue, 20 Aug 2019 13:21:45 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id c187sm1943526wmd.39.2019.08.20.13.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 13:21:45 -0700 (PDT)
Date: Tue, 20 Aug 2019 22:21:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
Message-ID: <20190820202142.GA15866@kozik-lap>
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
 <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
 <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132148_314322_A267F9A1 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Tue, Aug 20, 2019 at 03:04:57PM -0500, Rob Herring wrote:
> On Tue, Aug 20, 2019 at 1:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Tue, 20 Aug 2019 at 18:59, Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Tue, Aug 20, 2019 at 10:35 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > >
> > > > ---
> > > >
> > > > Changes since v5:
> > > > New patch
> > > > ---
> > > >  Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > index 7294ac36f4c0..d07b3c06d7cf 100644
> > > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > @@ -161,6 +161,9 @@ properties:
> > > >          items:
> > > >            - enum:
> > > >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > > > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> > > > +              - kontron,imx6ul-n6310-s    # Kontron N6310 S Board
> > > > +              - kontron,imx6ul-n6310-s-43 # Kontron N6310 S 43 Board
> > >
> > > This doesn't match what is in your dts files. Run 'make dtbs_check' and see.
> >
> > You mean the name does not match? I thought that '#' is a comment in YAML...
> 
> No, the number of compatible strings is the problem.

I see. If I understand the schema correctly, this should look like:

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..eb263d1ccf13 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -161,6 +161,22 @@ properties:
         items:
           - enum:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
+              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
+          - const: fsl,imx6ul
+
+      - description: Kontron N6310 S Board
+        items:
+          - enum:
+              - kontron,imx6ul-n6310-s
+          - const: kontron,imx6ul-n6310-som
+          - const: fsl,imx6ul
+
+      - description: Kontron N6310 S 43 Board
+        items:
+          - enum:
+              - kontron,imx6ul-n6310-s-43
+          - const: kontron,imx6ul-n6310-s
+          - const: kontron,imx6ul-n6310-som
           - const: fsl,imx6ul

       - description: i.MX6ULL based Boards


It passes the dtbs_check. Is it correct?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
