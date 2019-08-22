Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D6799561
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d99JMB/hcCQTPn6sBQ9I2dqHefcq66MHSpfRsr61Ums=; b=lJW0KcgCQJyHR/
	EoaXCVR9y5JfBtwrHYJFPDQNPcwk2/XOq33u342LCIeWe12L4MtYpz7N+AnIRzhsb6mAhUXbnlFA/
	7JczkodByUloltwFRvMS2R8U9vxWBau8GXx6HpW7Hw9hZGxdatjdtf5Y7Re+dY+52EHATiMttruxr
	qSDwun6qF6X0kkNDf4D01y278uc7aUD3QiTnHa+dusNRTTyMLFJPHzHPmqPN2GGtuyzXxzNWQYOir
	AJ/YsoRPIWEc18XSwrAUl+X5ZkUYYdxwD1G2EkxzTv/LFjRvJdzdy7KXkbhYRgny90/B+q5TFO8Js
	MYSqLXNhp9Ty8u6XT7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nPJ-0002Et-RJ; Thu, 22 Aug 2019 13:45:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nP6-0002Du-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 13:45:29 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1037F23404
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 13:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566481526;
 bh=Hj0g9/YvLJB/GMiuttfnQ/wy/9VbH/xrP0IgPVN17Zc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jnCnwugfLNTVW8eVNE6bQqVVKL+dAwDnJpPYacg1hM7jXTfCWILOKFzZoPIm0D/t7
 zD5RK29BhwJU/3yKCHRQyfAix/bDnhvz+dfTEv9VjFG0eRlol+pExjsikW7p0GP6HQ
 of4HWU/LjS8/pz2xoPQn6iebjvjjqQB1eYXfW0gA=
Received: by mail-lj1-f172.google.com with SMTP id x18so5636814ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 06:45:25 -0700 (PDT)
X-Gm-Message-State: APjAAAVUm1Wx+3fq6pj8fneDiLio5qebhIxwqc7YCfhxZIujOp3/EjEg
 i5EG2OwdIMcu4GX/5F31+tuMGiyCVZfXp4eaLjo=
X-Google-Smtp-Source: APXvYqxuT8xlgNSPZt83epiF37LgDQ9sK/vsAV6n794RAbob+czv9NCCVo7yAkDhpbS+aGKCuJAFi74CavuVY4sEe7E=
X-Received: by 2002:a2e:a0c3:: with SMTP id f3mr1973090ljm.123.1566481524218; 
 Thu, 22 Aug 2019 06:45:24 -0700 (PDT)
MIME-Version: 1.0
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
 <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
 <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
 <20190820202142.GA15866@kozik-lap>
 <CAL_JsqKBWB2FiVjYo9O7DPw1JYJvan7uRgbR0VBG=FfHDVYdZQ@mail.gmail.com>
 <20190821175458.GA25168@kozik-lap>
 <CAL_Jsq+YZ9KdCCT1grtpf7Z1o=-mFuq3O=o7iVGSAhJYO1-=Ww@mail.gmail.com>
In-Reply-To: <CAL_Jsq+YZ9KdCCT1grtpf7Z1o=-mFuq3O=o7iVGSAhJYO1-=Ww@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 22 Aug 2019 15:45:12 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc6UNMszVr+fRdLtPxj0GFVrwJ7JqyGrzXz+MC=fY7gUA@mail.gmail.com>
Message-ID: <CAJKOXPc6UNMszVr+fRdLtPxj0GFVrwJ7JqyGrzXz+MC=fY7gUA@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_064528_379172_E46FA397 
X-CRM114-Status: GOOD (  19.15  )
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

On Thu, 22 Aug 2019 at 14:52, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Aug 21, 2019 at 12:55 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Tue, Aug 20, 2019 at 03:27:39PM -0500, Rob Herring wrote:
> > > > I see. If I understand the schema correctly, this should look like:
> > >
> > > Looks correct, but a couple of comments.
> > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > index 7294ac36f4c0..eb263d1ccf13 100644
> > > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > > @@ -161,6 +161,22 @@ properties:
> > > >          items:
> > > >            - enum:
> > > >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > > > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> > >
> > > Is the SOM ever used alone? If not, then no point in listing this here.
> >
> > SoM alone: no, because it requires some type of base board. However it
> > will be used by some customer designs with some amount of
> > changes/addons.
> >
> > Looking at other aproaches, usually SoMs have their own compatible.  In
> > such case - I should document it somewhere.
>
> I wasn't suggesting not having the compatible for it, but you don't
> need it in this list because that is not valid. You have to list it
> with the base board compatibles.

The diff against v7 would be like this then:
---
diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1f440817fc03..7219c15f6185 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -161,7 +161,6 @@ properties:
         items:
           - enum:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
-              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
           - const: fsl,imx6ul

       - description: Kontron N6310 S Board
---

This passes the dtbs_check.

I'll send v8

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
