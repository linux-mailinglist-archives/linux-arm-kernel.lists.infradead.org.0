Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B42C2F95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTi4/Ns6Itxkhs9fQUL3/HBysOv0fxYBPKGh/saxQ24=; b=Aolg96Uf6XMDXR
	LBCiaYIDhDloFvW73rvwVLx3gzBNlbEjtN1JCa6oZURjaB+oUfsnwyEkBKEPNA1cQWDnZv8dPvIkZ
	N7SynFfCbf4uE7c5/jruPBjRqEUrqfOJ6PmkMfyIwC1HFkfS5D0l1L2iS+2lwjDi2bD2Ev6HbGYTS
	36eJbwWM0K3BI4GxmWOnlepzW31L85SWBF2ecZtremIXmdYZanDxkwXxdER//jGsuP1P79IHzQJZ+
	zLSRFeA+H2iESIhB3RtB8j0pRpTAcF5GZNGQYwuThogVpmynPRsOczu3MgzgRp7fJ2yiYyz+ncN5k
	T1UQ1CRxEEb7fQJs5Okw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFE5j-0005gb-4z; Tue, 01 Oct 2019 09:05:07 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFE5X-0005f3-FH
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:04:57 +0000
Received: by mail-ed1-f65.google.com with SMTP id f20so11156388edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 02:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDE63cHClZRpjYxaxSJbfnVBB7aC+oqxVvBZabNwLO8=;
 b=W8wtA9YU3QJoCc23mvNL6ZmXb6vY76KTmwcJGzvuz9PNnb+JEuTrQbEJhDuJczKRUr
 AnWI88DiOnnQvinHFiqUPL8mS6PQUP4eGZiDm6xe8aMIZPdG/uz33VkiEsnms0AIhM+P
 AgM3E1MrOhT9Don2yc+sI7a6nUfBXsQ1JXC4zfFe/PmSyjLzLSrkjGH8D/qHgwG9H2jM
 xschINqgVxB/M1spLX/raK+K5XQ5iqsLfbGxFBXhaTzD32A9Y7e9krI1wSYvC5+L6G6R
 gjWLVbw/fslKrp9s2Lw4oz03X9vlgREFJqt7eUYWlsjzRJxfn8k5ihCv8+Z8Alyt92f2
 AXvw==
X-Gm-Message-State: APjAAAXDWlk5lbK3ZtBjPHu9p4uPadP3rl0j7bE8I60ELJBhPjZHAPsk
 B0uBZuzmVeJFVyM5Ien1688HvP7UuTk=
X-Google-Smtp-Source: APXvYqxiGNGV5eS5FtpCEZSmXQk0KiJRyArmGfXetGAgkAn8A185G9xSSceRx1z0Mz8sXmtUCbOaxQ==
X-Received: by 2002:a17:906:a01:: with SMTP id
 w1mr6179346ejf.240.1569920693053; 
 Tue, 01 Oct 2019 02:04:53 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id f29sm3006197eda.76.2019.10.01.02.04.52
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 02:04:52 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id i1so14488551wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 02:04:52 -0700 (PDT)
X-Received: by 2002:a5d:684a:: with SMTP id o10mr16368695wrw.23.1569920692247; 
 Tue, 01 Oct 2019 02:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
 <110dd9ff1784c29fa16304825a41d1603a33f166.1562847292.git-series.maxime.ripard@bootlin.com>
 <CAGb2v64nx2AuWZN+RxCneE0pqvXr_d7u6mQ+=nCHv2VJ1MNtrQ@mail.gmail.com>
 <CAGb2v66Sin9HZ+QENegLQ3d7iiy278niwdr9rEZ0HwUfeQNFRQ@mail.gmail.com>
 <20191001085246.55srb62bpfc6jhtu@gilmour>
In-Reply-To: <20191001085246.55srb62bpfc6jhtu@gilmour>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 1 Oct 2019 17:04:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v66-Nak6RgtXYwOE6_nqHsOkLMh1G7CWJMDND1YzrywmHA@mail.gmail.com>
Message-ID: <CAGb2v66-Nak6RgtXYwOE6_nqHsOkLMh1G7CWJMDND1YzrywmHA@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_020455_516682_27E0B635 
X-CRM114-Status: GOOD (  32.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 4:52 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> Thanks for looking into this.
>
> On Sun, Sep 15, 2019 at 04:54:16PM +0800, Chen-Yu Tsai wrote:
> > On Thu, Aug 15, 2019 at 4:34 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > Hi,
> > >
> > > Sorry for chiming in so late.
> > >
> > > On Thu, Jul 11, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
> > > > used in later (A10s, A13, A20, R8 and GR8) SoCs.
> > > >
> > > > On some SoCs, like the A10, there's multiple instances of that controller,
> > > > with one instance supporting more channels and having an ISP.
> > > >
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 94 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> > > >  1 file changed, 94 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > new file mode 100644
> > > > index 000000000000..97c9fc3b5050
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > > @@ -0,0 +1,94 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Chen-Yu Tsai <wens@csie.org>
> > > > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > > > +
> > > > +description: |-
> > > > +  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
> > > > +  frames from a parallel or BT656 sensor.
> > > > +
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      - items:
> > > > +          - enum:
> > > > +              - allwinner,sun7i-a20-csi0
> > > > +          - const: allwinner,sun4i-a10-csi0
> > >
> > > CSI0 on the A10 has an ISP. Do we know if the one in the A20 does
> > > as well? It certainly doesn't say so in the user manual. If not,
> > > then we can't claim that A20 CSI0 is compatible with A10 CSI0.
> > >
> > > > +
> > > > +      - items:
> > > > +          - const: allwinner,sun4i-a10-csi0
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    items:
> > > > +      - description: The CSI interface clock
> > > > +      - description: The CSI module clock
> > > > +      - description: The CSI ISP clock
> > > > +      - description: The CSI DRAM clock
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: bus
> > > > +      - const: mod
> > >
> > > I doubt this actually is a module clock. Based on the usage in your
> > > device tree patch, and the csi driver in the old linux-sunxi kernel,
> > > the clock rate is set to 24 MHz, or whatever the sensor requires for
> > > MCLK.
> >
> > I'm working on adding support for this on the R40, and it seems with
> > this SoC the picture is much clearer. It has the same CSI interface
> > block, but the CCU has the clocks correctly named. We have:
> >
> >   - CSI_MCLK0
> >   - CSI_MCLK1
> >   - CSI_SCLK
> >
> > in addition to the bus clocks.
> >
> > The CSI section also explains the clock signals:
> >
> >     6.1.3.2. Clock Sources
> >     Two Clocks need to be configured for CSI controller. CSI0/1_MCLK
> >     provides the master clock for sensor and other devices. CSI_SCLK
> >     is the top clock for the whole CSI module.
> >
> > So it would seem the ISP clock we currently have in the DT is simply
> > the module clock shared by all CSI-related hardware blocks, and the
> > module clock is bogus.
>
> I don't think it is. It looks like there's no ISP in the R40 CSI
> controllers, so that would mean that we don't have an ISP clock, and
> the SCLK is the module clock.
>
> Does that make sense?

Right. That's another way to put it. The point is I believe the
CSI[01]_CLK clocks on the A10/A20 are simply the MCLK outputs.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
