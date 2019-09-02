Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A25EA593B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOR8hAHpWGHiUAaI77nG6elxTGEJpcn12mFiokscYVY=; b=fpsJMhCfmvAKtw
	cM1I7XqMXXNJO9nPdPJVVsujzzwnqgxMInk5cOl3oLu/sXqATNkgdyn2wXfRAVrXgJ16XWmwUKVZX
	SyLh17OkWOl88WJv3D0Xlqngw7sEyNt7Fxorhr09Cqv2EDjKoK8o/E8mYduutQnEv6NrZ5YogOk5g
	Wi+2IRrdTAcYNw47AeN6s9uZihDzS3PTW/rcE//oB0ICvswNIE4zgMz+HAkAGYx/IYU1UeLRdv9zk
	Vm461HbBvzmVHTyM+5dks8gc5ZLbkM+kEy1sc87DEGIcBVY28LKxTd+QuuQYwhIYiSCbyKrek4DBW
	i9VFr1/f8akWqlhgq8TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nG1-0008JE-AZ; Mon, 02 Sep 2019 14:24:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nFr-0008BA-5C
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 14:24:28 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFC7121744
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Sep 2019 14:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567434266;
 bh=B74PQ5o385KMtSFx606GqW7Hji/64H+L+7SO8wzLMGg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eG5ApBOQMdx43szlZ3hRfFK3JhjJnHU1h9N6fzJZ5gSFAGo+DUwYCQAzqPRtkeL/Z
 egjx2sk3s2NgyQuuh7m09MlzWLOaXz87O/ehHQQMF+Ukgb9LnuLBl275xwetBiplq0
 SJsZX23mHLern4Z4WajFyMqxkRO1LaFCSNuEgAlY=
Received: by mail-qk1-f171.google.com with SMTP id m2so12594644qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 07:24:26 -0700 (PDT)
X-Gm-Message-State: APjAAAUFMB9Ggv6NOIRKWyy6C4Mg9jzcKc40KQt1HS63Izon65XR6nry
 s7inJejHQtFBF+ldkz7LMb2SOStrHwkGAOJCEw==
X-Google-Smtp-Source: APXvYqxVgrKxDU9AKZPVkiZjyBgcLWuDoOAhBqYHYxpm22jPeoe3HQJTqnHt0BhMxQu7W0O02Nt2wgbZXPnLf8rZcYc=
X-Received: by 2002:a37:682:: with SMTP id 124mr28156982qkg.393.1567434265875; 
 Mon, 02 Sep 2019 07:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <20190830210607.22644-2-miquel.raynal@bootlin.com>
 <20190902044231.GA17348@bogus> <20190902155113.40b00fa0@xps13>
In-Reply-To: <20190902155113.40b00fa0@xps13>
From: Rob Herring <robh@kernel.org>
Date: Mon, 2 Sep 2019 15:24:13 +0100
X-Gmail-Original-Message-ID: <CAL_JsqJJ31wfXnLGSp5Hzkb2L7VeDoOki+eBqUkm2LWEtsA58A@mail.gmail.com>
Message-ID: <CAL_JsqJJ31wfXnLGSp5Hzkb2L7VeDoOki+eBqUkm2LWEtsA58A@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP
 bindings
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_072427_245238_43C069C4 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linux-ALSA <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 alexandre@bootlin.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jaroslav Kysela <perex@perex.cz>, Michal Simek <michal.simek@xilinx.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 2:51 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Rob,
>
> Thanks for the review, one question below.
>
> Rob Herring <robh@kernel.org> wrote on Mon, 02 Sep 2019 14:39:09 +0100:
>
> > On Fri, Aug 30, 2019 at 11:06:06PM +0200, Miquel Raynal wrote:
> > > Document the logicPD I2S FPGA block bindings in yaml.
> > >
> > > Syntax verified with dt-doc-validate.
> > >
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
> > >  1 file changed, 57 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > > new file mode 100644
> > > index 000000000000..cbff641af199
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > > @@ -0,0 +1,57 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
> > > +
> > > +maintainers:
> > > +  - Miquel Raynal <miquel.raynal@bootlin.com>
> > > +
> > > +description: |
> > > +  The IP supports I2S playback/capture audio. It acts as a slave and
> > > +  clocks should come from the codec. It only supports two channels and
> > > +  S16_LE format.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: xlnx,logicpd-i2s
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +    description:
> > > +      Base address and size of the IP core instance.
> > > +
> > > +  interrupts:
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +    items:
> > > +      - description: tx interrupt
> > > +      - description: rx interrupt
> > > +    description:
> > > +      Either the Tx interruption or the Rx interruption or both.
> >
> > The schema says either tx or both. Doesn't really matter here as it's
> > just numbers.
>
> I see , I'll drop the 'items' entry.
>
> >
> > > +
> > > +  interrupt-names:
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +    items:
> > > +      - const: tx
> > > +      - const: rx
> >
> > But here it does matter.
> >
> > The easiest way to express this is:
> >
> > oneOf:
> >   - items:
> >       - enum: [ tx, rx ]
> >   - items:
> >       - const: tx
> >       - const: rx
> >
>
> Does this enforce an order? (I don't know if it matters, though, but in
> the bellow example I put the Rx interrupt first).

Yes. It does matter and should be defined what the order it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
