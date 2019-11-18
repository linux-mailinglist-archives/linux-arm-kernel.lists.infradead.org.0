Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D61100DAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 22:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBR75+0IeuUm9xOA7eF4LBKX2VNNdxBYboEOD7d1F1U=; b=BaRCP4uh6HUAgG
	k21unmF3YxGsHyHC2+3NWUUw3MwOsh91haceWL0tfsWJ1piOcRFVfG0NlVKAAx8ExT+SjK/Apr0bZ
	aD8M7NhPIE8mkopOf+fHGTBIy8IWWmk3IKs81mQzdLI0VLUbyY7KAWPBFcYnrEov4qH6efsbj+IGI
	/lkxyhTdU1vRkhfXXa4HP2dLBXP6ijyztLok4T5LNSUkOtcyvor0kkFivsubXzpluLgHzg3ndauWE
	ntEEvMWKaDe6AgD+Ejg4UBBxayZVoxQYqa8kdXT3XfSx6dwZ+dATTHspmJcWH8gBMwX5n8A3awwQV
	LhvnYIxS80UyuRaPhIew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWoaN-0003hK-8Y; Mon, 18 Nov 2019 21:29:27 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWoaB-0003fr-58
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 21:29:19 +0000
Received: by mail-ot1-f65.google.com with SMTP id w24so15413278otk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 13:29:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i+YO38WgStB7nYPSXcUR6YrSTtp1l2WDphJUjDsiG8A=;
 b=hff2/Z2odU5ssuFSFejEkE1dQ3ssUqg9uK1a2ArH5tK59MZLBhokhZA4BAThHpFAeL
 qlQGSWFrg0fSI5nap0iX5KNPpCK6IOzxdw9zOJLzQS/DIXQtvTha/m2TI7Ze1JGdxtuG
 0ApfHJREUl8+JXT8Z5LX1K9Zz20PTT/md00MO++lzySevEzCK2R9Mvn4Z5iW+HqKIUGt
 4jN3S2SIQ6+0UYBvEib+paE13mAIrcUG2/wH3keO0NhEwyDZ+/dtwalSBtUfmZWc4CQL
 UCIPHmtNr2Vi7euj4VTYR9ukwcNZvR0hl2rAEaeRAEFsEX2AI3RTtqR9Xo5PFMPgdE4l
 x4aQ==
X-Gm-Message-State: APjAAAVOox/kCObIePhp/vRtzxLLNRM/qGrJ7U1hC3nI2yEojXWxeb3A
 KfgQ5jVQrnK/ndKace02Hg==
X-Google-Smtp-Source: APXvYqzrzbwSYe5wu/iJKT9qZvzRqWrX+EPEq/49EneSWuAZ5oGeI5ckJK8JP2PSx39iTQehpaZz8w==
X-Received: by 2002:a9d:154:: with SMTP id 78mr1031136otu.294.1574112554132;
 Mon, 18 Nov 2019 13:29:14 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l40sm6634725ota.24.2019.11.18.13.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 13:29:13 -0800 (PST)
Date: Mon, 18 Nov 2019 15:29:12 -0600
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: arm: fsl: Add Variscite i.MX6UL
 compatibles
Message-ID: <20191118212912.GA16329@bogus>
References: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
 <1573593892-25693-1-git-send-email-oliver.graute@gmail.com>
 <CAOMZO5DYssbnVsemV+U24wbVoYM3LM3ZZtFwWHonXLHKF0Y+kg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DYssbnVsemV+U24wbVoYM3LM3ZZtFwWHonXLHKF0Y+kg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_132915_195807_30E98A8E 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oliver Graute <oliver.graute@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 08:19:44PM -0300, Fabio Estevam wrote:
> On Tue, Nov 12, 2019 at 6:25 PM Oliver Graute <oliver.graute@gmail.com> wrote:
> >
> > Add the compatibles for Variscite i.MX6UL compatibles
> >
> > Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index f79683a..d0c7e60 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -182,6 +182,7 @@ properties:
> >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> >                - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> >                - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
> > +              - variscite,6ulcustomboard" # i.MX UltraLite Carrier-board
> 
> I guess what you mean is:
> 
> variscite,imx6ul-var-6ulcustomboard # i.MX6 UltraLite Carrier-board

It matched the .dts file. However the '"' in there is an error. Make 
sure 'make dt_binding_check' passes.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
