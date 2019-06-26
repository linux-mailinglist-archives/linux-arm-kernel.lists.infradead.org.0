Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C255720E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 21:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+3PA6zBSJUlqI89v7t8KEUFEzDIvgP7SmV/Q++B1wI=; b=NmJwUA7xVGU/2g
	d0jerPNm5pHQvSeiNinCgUuJBWIrE+uDybtGuQTJxon2S+vlFMitRUZlxMikeaz/++GdLSTAwdrE5
	ctkVXBsepzvmpS/TW+0vEhjGgbWfuQjXApIZPREv22R5YR3TzNtPl4agJ3ykGCcHyHPihtzaxCKW0
	l6rbOzHC33/mBj9cswIT+2a/Nlx0BHtMJo/fjWCswDFCPKPVLUhN9lxbTQbN6X9o9vqOafKT1+QkS
	/d8FulpjFY8PzLuXIuGxbXfRMIg405Vd5twOgAOqO4k9XxXS/pVr1N1hjw+XVQg4ymuiWJfocFhss
	6a6jER6oxuJcidCx92uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgE0g-0003Hb-GG; Wed, 26 Jun 2019 19:55:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgE0N-0003H0-Up
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 19:54:57 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E37A21783
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561578894;
 bh=KcD7c6hKQWEu008qT9k7dg3vhdqwpsDp6Y4IxD3yQtY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Bmq634H6AuhkvTnl8ByQlWQL/et5bCg6GiQTU5Wxxehw+bAuRb3PkWlvdgnru+wCQ
 2PQRhYhjDO3qBaziCHuszbI+M2cOK/wL4p1Xc9eMDvtykqpH0hKsutQSyEzWLPlWnY
 zufBuEQ9BqcgM/yNiD7c1mDEb0uCBK/Gy4rSXdO8=
Received: by mail-qt1-f177.google.com with SMTP id x47so3747854qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 12:54:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWfw/rZxaOo18QqiMzYqpeO33Zqgj1IjyEJzN4L3gKD8NnuYv3V
 2Gd2jriSQX/MHy6QN+BW31Tut2nMVRSnOUcWlQ==
X-Google-Smtp-Source: APXvYqxvjkkMKsEsiee5jdC+mhyswCFA/6copmi5BDxMTfkflXbixreHTXK1d+tXLtOdZg6I42aAKOCcCo2xPI+9SV4=
X-Received: by 2002:a0c:baa1:: with SMTP id x33mr4102705qvf.200.1561578893478; 
 Wed, 26 Jun 2019 12:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-3-daniel.baluta@nxp.com>
 <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
 <CAEnQRZBNA4ndSL1vMStHemYkzt9TxqjgdWWjqFwnBFQ+ha+egA@mail.gmail.com>
In-Reply-To: <CAEnQRZBNA4ndSL1vMStHemYkzt9TxqjgdWWjqFwnBFQ+ha+egA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 26 Jun 2019 13:54:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJQRbuWKgON+ukZ3GRwyq8SvTZ=PRGwMhQjAxKPSP-Fkw@mail.gmail.com>
Message-ID: <CAL_JsqJQRbuWKgON+ukZ3GRwyq8SvTZ=PRGwMhQjAxKPSP-Fkw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
To: Daniel Baluta <daniel.baluta@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_125456_033058_60D2CAE4 
X-CRM114-Status: GOOD (  32.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 8:49 AM Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> Hi Rob,
>
> This is my first time documenting the bindings using the
> new yaml format so thanks for your patience and explanations!
>
> On Fri, Jun 14, 2019 at 5:53 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 2:15 AM <daniel.baluta@nxp.com> wrote:
> > >
> > > From: Daniel Baluta <daniel.baluta@nxp.com>
> > >
> > > DSP IPC is the layer that allows the Host CPU to communicate
> > > with DSP firmware.
> > > DSP is part of some i.MX8 boards (e.g i.MX8QM, i.MX8QXP)
> > >
> > > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > > ---
> > >  .../bindings/arm/freescale/fsl,dsp.yaml       | 43 +++++++++++++++++++
> >
> > bindings/dsp/...
>
> Fair enough. Will fix in v2.
>
> >
> > >  1 file changed, 43 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> > > new file mode 100644
> > > index 000000000000..16d9df1d397b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> > > @@ -0,0 +1,43 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> >
> > The preference is to dual license new bindings: GPL-2.0 OR BSD-2-Clause
> >
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: NXP i.MX IPC DSP driver
> >
> > This isn't a driver.
>
> I see. This node is actually the representation of DSP IPC so not a driver.
> >
> > > +
> > > +maintainers:
> > > +  - Daniel Baluta <daniel.baluta@nxp.com>
> > > +
> > > +description: |
> > > +  IPC communication layer between Host CPU and DSP on NXP i.MX8 platforms
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - fsl,imx-dsp
> >
> > You can have a fallback, but it needs SoC specific compatible(s).
> Agree. Will fix in v2.
>
> >
> > > +
> > > +  mboxes:
> > > +    description:
> > > +      List of phandle of 2 MU channels for TXDB, 2 MU channels for RXDB
> > > +      (see mailbox/fsl,mu.txt)
> > > +    maxItems: 1
> >
> > Should be 4?
>
> Actually is just a list with 1 item. I think is the terminology:
>
> You can have an example here of the mboxes defined for SCU.
> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/freescale/imx8qxp.dtsi#L123

mboxes = <&lsio_mu1 0 0
&lsio_mu1 0 1
&lsio_mu1 0 2
&lsio_mu1 0 3
&lsio_mu1 1 0
&lsio_mu1 1 1
&lsio_mu1 1 2
&lsio_mu1 1 3
&lsio_mu1 3 3>;

Logically, this is 9 entries and each entry is 3 cells ( or phandle
plus 2 cells). More below...

> > > +
> > > +  mbox-names

Also, missing a ':' here. This won't build. Make sure you build this
(make dt_binding_check). See
Documentation/devicetree/writing-schemas.md.

> > > +    description:
> > > +      Mailboxes names
> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/string"
> >
> > No need for this, '*-names' already has a defined type.
> So, should I remove the above two lines ?

Actually, all 4. There's no need to describe what 'mbox-names' is.

> > > +      - enum: [ "txdb0", "txdb1", "rxdb0", "rxdb1" ]
> >
> > Should be an 'items' list with 4 entries?
>
> Let me better read the yaml spec. But "items" list indeed sounds better.

What you should end up with is:

items:
  - const: txdb0
  - const: txdb1
  - const: rxdb0
  - const: rxdb1

This is saying you have 4 strings in the listed order. The enum you
had would be a single string of one of the 4 values.

> > > +required:
> > > +  - compatible
> > > +  - mboxes
> > > +  - mbox-names
> >
> > This seems incomplete. How does one boot the DSP? Load firmware? No
> > resources that Linux has to manage. Shared memory?
>
> This is only the IPC mailboxes used by DSP to communicate with Linux. The
> loading of the firmware, the resources needed to be managed by Linux, etc
> are part of the DSP node.

You should just add the mailboxes to the DSP node then. I suppose you
didn't because you want 2 drivers? If so, that's the OS's problem and
not part of DT. A Linux driver can instantiate devices for other
drivers.

> To avoid confusion I have renamed this node from dsp to dsp_ipc.
>
> >
> > > +
> > > +examples:
> > > +  - |
> > > +    dsp {
> > > +      compatbile = "fsl,imx-dsp";
> > > +      mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
> > > +      mboxes = <&lsio_mu13 2 0 &lsio_mu13 2 1 &lsio_mu13 3 0 &lsio_mu13 3 1>;
> >
> > mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;
>
> Actually no! It looks like the imx mailbox expects one element with a
> list of phandles directions and index.

There's not actually any difference in what the OS sees. Both source
syntaxes result in the same data encoding in the dtb. It's simply 12
words of data. What's a phandle is only known because the OS knows
what 'mboxes' contains and by reading #mbox-cells in lsio_mu13.

However, we are using this source grouping to maintain type
information to do schema validation. The grouping is kept thru to the
yaml encoding (of the DT, not to be confused with the schemas). So
we're going to have to start being stricter in dts files.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
