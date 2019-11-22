Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535491066A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 07:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbYMI1F48H2Z5h6gd8mDYxoTUzmgQjaWQOBsP3+oH4k=; b=XVLC7zUyfgLv8/
	AFoCPNLEtcpePHBSwoEA4kjigifjaV9izvllv2I2hunhgZfdQAizw58G/SERLsOmKnh5sZFOU+S88
	ROT5vf7NBe8/RpdQbzJzkfmdYqQWOWMrYvAn2FN3bsM/eE0AERE2pryyLzDPZJzpsNTToHQI0SbMk
	gewgtjRGIDk+TDCWOyeqnxoEQC9GuFa03h7Qck2A9OVlRP1iiAlNUm6AjcSBupsb4OheSDCKhAHkm
	3icMXz748R2gdwCk6rYA1bDQ8uxK00Hv4gBMVzmdWXadx9k0D/yx69l9n8lHn6NXojxp3EcXCDR1M
	0QrRn10tjdSjP4RuVQ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY2pG-0008Hk-EW; Fri, 22 Nov 2019 06:53:54 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY2p6-0008Gf-W0
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 06:53:46 +0000
Received: by mail-ua1-x943.google.com with SMTP id o9so1829808uat.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 22:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1YU9k9XpRr942/Ij03AkmdwfF1xW9f8cWmfS5A3XY0k=;
 b=QG3cF8pdSIL28X1eGzKqnGvTG84F3Ufrrvrc8SL1ku6vQwPYz/ZYUsZpu040Y27DJW
 L4VBXn057/NW7NJlATWTc6kcsgzfQILeq8kGDkpAJ/wNdnWF6S++4ZeRLrGnJxl9HBgq
 xkb413yOgTl5mrGqih/vn7f5AZJMoe1RGLo5v1LYiNyqM9A8Q1S0HQd62Pcn7VAK7AYS
 2+TIuyreiwtCByxwQBdy4QWiKXcJiQ2G/mFAyqgUILQ/P8wYxbmZoYE72OJFYQLkXXxB
 VMiMV9XRGwzFdh3shltnRsQq9EFe7sRrf2Nlp0z1T0cC+teVA/YJPjg3fZO9/MKgjYjj
 w2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1YU9k9XpRr942/Ij03AkmdwfF1xW9f8cWmfS5A3XY0k=;
 b=l0CZr+XaUlsMmWPCmKkB0G7HadfBSHAoAxOMwfIqLH6ABju8hYjRmpnqunLZ/La279
 VBc9uGRuvCerqK5FLN04ZSubAcDmabQOUPt9HNLg+ikJAZmjTTetaZYYoKIZwVQQAlZM
 ZbFGmwJlhCt9XKqKDHj+xybrO00Se4wcBzLm0C29gk1wBsP4j+8ZZEGsMJ7kRc9tsmtt
 6tgd2t+zLfEms2aa9SmnzecFauUGA39Kd2wI8vXLlyUO1gJvwYuYFz3+jG93WbAKVEi2
 SDrFDLpi0Ckbz2YHMHcDXLMxnAfXWSEt1EmD8wJayb9OZgI6h6cHKAv5U6c0Sh54laa5
 RDwg==
X-Gm-Message-State: APjAAAWpEnEtVCerW/XYwiOeRd+1Ipdf6W+71z6BvDxnkxjXixirXYIA
 fACVMPl/iOvHDBrWvAOYHBFoveGpbWzcPSudVvaPPQ==
X-Google-Smtp-Source: APXvYqxA4KymHfYVZJp+513DppW1RweHZkY7FevlDR8l2jLOXOk+nmSeISVuvQpjenrUnIKpX/cDOUf9dilFT9SRZZ0=
X-Received: by 2002:ab0:24ce:: with SMTP id k14mr8961736uan.15.1574405623268; 
 Thu, 21 Nov 2019 22:53:43 -0800 (PST)
MIME-Version: 1.0
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
 <1574232449-13570-5-git-send-email-manish.narani@xilinx.com>
 <CAC=3edbHWA7gv-mTFVXXcMzN6hyzO4LPqkbcRZ-zDp5BAm8_Vw@mail.gmail.com>
In-Reply-To: <CAC=3edbHWA7gv-mTFVXXcMzN6hyzO4LPqkbcRZ-zDp5BAm8_Vw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 22 Nov 2019 07:53:06 +0100
Message-ID: <CAPDyKFrgC1nxe7NqmNHHibYmDfrdx6ubTpOE41bW2Ge796+N8w@mail.gmail.com>
Subject: Re: [PATCH v6 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
To: Rob Herring <rob.e.herring@gmail.com>,
 Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_225345_060491_EB4D1799 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, rajan.vaja@xilinx.com,
 nava.manne@xilinx.com, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Moritz Fischer <mdf@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, jolly.shah@xilinx.com,
 linux-kernel <linux-kernel@vger.kernel.org>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 at 20:01, Rob Herring <rob.e.herring@gmail.com> wrote:
>
> On Wed, Nov 20, 2019 at 12:49 AM Manish Narani <manish.narani@xilinx.com> wrote:
> >
> > Add optional properties for mmc hosts which are used to set clk delays
> > for different speed modes in the controller.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  .../devicetree/bindings/mmc/mmc-controller.yaml     | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > index 080754e0ef35..305b2016bc17 100644
> > --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > @@ -333,6 +333,18 @@ patternProperties:
> >      required:
> >        - reg
> >
> > +  "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-(sdr(12|25|50|104)|ddr50))$":
> > +    minItems: 2
> > +    maxItems: 2
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +        maximum: 359
>
> This is wrong. It can't be both minItems of 2 and a single uint32.
> What's needed is:
>
> allOf:
>   - $ref: /schemas/types.yaml#/definitions/uint32-array
> minItems: 2
> maxItems: 2
> items:
>   minimum: 0
>   maximum: 359

Thanks Rob for clarifying!

Manish, can you please send a fixup on top?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
