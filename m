Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15739132AE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 17:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFfcrHxnLHhafDT/l42TUQMG8ULMAAqbo0uA7JRkWjE=; b=qqq9856WOAUXl1
	6glTLJPE4rmpHIIiRrJprtPEDdjSCLa0+8okvSjR1/OSVgRgiVGbJ601A1DL2QnH/jiOlUUbT+Ius
	qmNXXHwm1fjX+UzznBxdADrHMn9VVDVnd+lnXb+5PCdtLMhRlgFQf9OdOCdGMqfJ+XIpIiMmZuocI
	bk8CF1XfvMRzu4DdpJQFvY10sXWkZqXV9BBVyCIAVAysDFDJem8HLafLI/m5C/lAwao3aNqo2ZD67
	Kxvn3p2dfBoRY5hiHCm2oH7EHS/DYUer9ScEuQRxY4Nk8HRl6Sy0rFLmazD7R4qY0spHX2YYJKp3o
	pmzPgjm+cezUAY01WKoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iorXf-0005RU-75; Tue, 07 Jan 2020 16:17:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iorXY-0005R1-N7
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 16:17:10 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB60721744
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 16:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578413828;
 bh=TcK/7aE4Lb5IQGTN4l832m41faNVf2PC5yZ/92fqI2A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MtXDAItdlR0w7BtO9nkPqbz8JjRbHTxkmI6J3QHqdH99i8TS81f1ggDuImhedCVwQ
 cocox4EgDVcMOxxMWJ+aP83KffqYb2WhqpOFDst2PKEBTpojXcr/YtO8kSHpIx8VxK
 DIq8qyPOa8nqN9mHhbrwf7AeFOStpWTYU80Tkrms=
Received: by mail-qt1-f174.google.com with SMTP id e6so214956qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 08:17:07 -0800 (PST)
X-Gm-Message-State: APjAAAU8kGtGNoL3S/My79ydq5o/M2KnpropRvd0qwq5s2DTvH8MPUvG
 9FeoAUqWT9JKJnyvVcFsW8tkdSH7E0MMfzLGwQ==
X-Google-Smtp-Source: APXvYqxu6QS6UEy/ATbaU7VuwfNWuBF7IRyea4pEzngRlZmCRsIAC/DS1RwMyWEY7uG3GrUoCz0vxhPI3sFuOGops/M=
X-Received: by 2002:ac8:1415:: with SMTP id k21mr65903534qtj.300.1578413827079; 
 Tue, 07 Jan 2020 08:17:07 -0800 (PST)
MIME-Version: 1.0
References: <20191230231953.29646-1-rjones@gateworks.com>
 <20191230231953.29646-2-rjones@gateworks.com>
 <20200103223225.GB654@bogus>
 <CALAE=UATZtN47J421Y4i+GqvijiiECAuc25kLSmYNAe6jGhxiA@mail.gmail.com>
In-Reply-To: <CALAE=UATZtN47J421Y4i+GqvijiiECAuc25kLSmYNAe6jGhxiA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 Jan 2020 10:16:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKmCeKw4ErVGMeLCvZvvHp2Z4qkUswV=aDN1hjb6-x0Aw@mail.gmail.com>
Message-ID: <CAL_JsqKmCeKw4ErVGMeLCvZvvHp2Z4qkUswV=aDN1hjb6-x0Aw@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
To: Bobby Jones <rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_081708_799990_9E26E219 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Jan 6, 2020 at 3:25 PM Bobby Jones <rjones@gateworks.com> wrote:
>
> On Fri, Jan 3, 2020 at 2:32 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Dec 30, 2019 at 03:19:49PM -0800, Robert Jones wrote:
> > > Add the compatible enum entries for Gateworks Ventana boards.
> > >
> > > Signed-off-by: Robert Jones <rjones@gateworks.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 31 ++++++++++++++++++++++++++
> > >  1 file changed, 31 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index f79683a..8ed4c85 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -126,6 +126,22 @@ properties:
> > >                - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
> > >                - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
> > >                - variscite,dt6customboard
> > > +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> > > +              - gw,imx6q-gw51xx
> >
> > This doesn't match what you have in dts files. Please check with:
> >
> > make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/fsl.yaml
> >
> > You'll need a separate entry with 3 compatibles and 'gw,ventana' or drop
> > it.
>
> Hi Rob,
>
> Sorry, I'm still getting used to the whole schema format and a bit
> confused. Can you be more specific in how it doesn't match? I looked
> at the imx6q-gw51xx.dts file where I got the entry from and it has the
> following line:
>
> compatible = "gw,imx6q-gw51xx", "gw,ventana", "fsl,imx6q";

As written, the schema would not allow this, but would allow one of these:

"gw,imx6q-gw51xx", "fsl,imx6q"
"gw,ventana", "fsl,imx6q"

The 'items' schema allows for 2 entries. So if you want/need to
support 3 entries for compatible, you need a new 'items' schema with 3
entries:

items:
  - enum:
      - gw,imx6q-gw51xx
      - ... all the other boards listed below
  - const: gw,ventana
  - enum:
      - fsl,imx6dl
      - fsl,imx6q

> Obviously I'm only submitting the gw59xx board device trees but a
> previous version of this submission was asked to add all of the
> compatible strings for the Gateworks boards. Are you asking me to only
> post the gw59xx lines?

That's an orthogonal issue which I'll leave to the i.MX maintainers.

> >
> > > +              - gw,imx6q-gw52xx
> > > +              - gw,imx6q-gw53xx
> > > +              - gw,imx6q-gw5400-a
> > > +              - gw,imx6q-gw54xx
> > > +              - gw,imx6q-gw551x
> > > +              - gw,imx6q-gw552x
> > > +              - gw,imx6q-gw553x
> > > +              - gw,imx6q-gw560x
> > > +              - gw,imx6q-gw5903
> > > +              - gw,imx6q-gw5904
> > > +              - gw,imx6q-gw5907
> > > +              - gw,imx6q-gw5910
> > > +              - gw,imx6q-gw5912
> > > +              - gw,imx6q-gw5913
> > >            - const: fsl,imx6q
> > >
> > >        - description: i.MX6QP based Boards
> > > @@ -152,6 +168,21 @@ properties:
> > >                - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
> > >                - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
> > >                - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
> > > +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> > > +              - gw,imx6dl-gw51xx
> > > +              - gw,imx6dl-gw52xx
> > > +              - gw,imx6dl-gw53xx
> > > +              - gw,imx6dl-gw54xx
> > > +              - gw,imx6dl-gw551x
> > > +              - gw,imx6dl-gw552x
> > > +              - gw,imx6dl-gw553x
> > > +              - gw,imx6dl-gw560x
> > > +              - gw,imx6dl-gw5903
> > > +              - gw,imx6dl-gw5904
> > > +              - gw,imx6dl-gw5907
> > > +              - gw,imx6dl-gw5910
> > > +              - gw,imx6dl-gw5912
> > > +              - gw,imx6dl-gw5913
> > >            - const: fsl,imx6dl
> > >
> > >        - description: i.MX6SL based Boards
> > > --
> > > 2.9.2
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
