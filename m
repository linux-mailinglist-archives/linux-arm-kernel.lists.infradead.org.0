Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65C41B9136
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 17:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrviAtFaa5/CACwRjmtLsQms2RB3BIhGs5kJ34OB7t4=; b=shpnjQnPjNRHgs
	4suCgT0HjJR9/WLkWY8EGvBhFjgoZrwpNYGMJQHDQBsWjFN5/imhp8GPpd23qesH1S7Vffm54/Xmi
	fEF6McCbKVnB6+jYbdqaOsH6TZGn12YMzPmt+EkYXUWon4ZttaVX6nt8g6RzF/luFpnzbTsO2Gz4s
	TufqVlPag0dx1YNpYIYqk5VuItghcHr0v3doJwhzg6LmVRSLihwm3blZr3HQFIYjlJowLVorxZL2n
	97a0yp0vspbXc63xeuEOVeZ+048nO2GFoOxvmLe5C2xu43ZoIKbA8cZvPNkP2aHQhL6WLFFR0SFT6
	0/pkfQxYjb1Tl21q/Mzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjKv-0007TD-5Z; Sun, 26 Apr 2020 15:36:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjKb-0006vj-Np
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 15:36:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id f11so10305552ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 08:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X77CRMCQDDgdc4Bur39RULXQxF3a/MrJ/qM13TQRcl0=;
 b=NYVYUIdXiXEUEPYYT3I/R1qAnkPPt3cT7aB7wcoSmtGOcWinkwL3B4FAZKsqUsBC+7
 EbE20jkfrnneUQiwAC3g3XB+K72YRxyC7g9/b3z8XqRwKEs7Phsfd9nQiLH0aY5a4sPy
 YpSzGv+bVifsrIV7RfYcYTkf/rKBasnwAMVUHprWphf0HsikZIOwrJ16GBbbvY1+ObKA
 VGvJ+y7WwtkxvVTJTuf8cZI1zMMyyY+sqfhGajVIPN+M2rDln91qxhZ+ewxRuOrRrKJV
 mdxDKAYaguUjc/Dg6MV3ccxQP/KAwqmIJPUqWulw+eEM1J2C6XmPJZ5zx39OHRyBhDOK
 qXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X77CRMCQDDgdc4Bur39RULXQxF3a/MrJ/qM13TQRcl0=;
 b=T/x9KPBbFucezIfyVgfPfHkVbRHOwwEZR5ikwiMdiBwcsSaMrUK0+G9BjDXrn6S03U
 hXQzeGr3RwTmU7HtR78kOuTz27No9mbunzmO6iiMh9Oo010RXEeZ+GMl5AJJZLobnxAh
 +zCsig25r4nJuVkB9KkKBumdZpBKBza2WpWa7qRqqqROv7BjDEyxWZZFqd1PoaM8NGIo
 ilwK34U5xG1B1n0WYu96O3qu3ILvpTsN/LajGjbZCqBf0TbLPUwpx1mfOy/gIpnquAv+
 LuLEx/nDJ2IH7QWPdZl//q24xVuai0GhHw6ae9z1RxADT4O8dvB6YQSkk0jnv0hk6CAm
 B6EQ==
X-Gm-Message-State: AGi0PubrLLTcouwuf6JVOuJpmy8EF/KaufNLnveGsb8ApUzLlxWJj5Tp
 8OfaHev0qvaSy/ffKtLBdavPkR1VcD4l7WjeWs7QxQ==
X-Google-Smtp-Source: APiQypKj/Im70RltLS80+jbqf0SqRD8efu2GTat9yvLZn+7xqD3hNXs33YaVw72fniLFc/ebyiVe0IHjroY93q9fxEE=
X-Received: by 2002:a2e:553:: with SMTP id 80mr11651325ljf.147.1587915391895; 
 Sun, 26 Apr 2020 08:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200423064808.10468-1-etienne.carriere@linaro.org>
 <20200423064808.10468-2-etienne.carriere@linaro.org>
 <CAL_JsqKvQasaBCHC2s68WmtfwGN+t349tzmF=ySkuYz11HzksQ@mail.gmail.com>
In-Reply-To: <CAL_JsqKvQasaBCHC2s68WmtfwGN+t349tzmF=ySkuYz11HzksQ@mail.gmail.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Sun, 26 Apr 2020 17:36:20 +0200
Message-ID: <CAN5uoS-zizF_by6WDtF7j9MrGsRt1fir5w+r1cN1QNzDUf8zgQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: arm: Add secure-clocks binding
 description
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_083634_300666_FCAB7264 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 at 00:06, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Apr 23, 2020 at 1:49 AM Etienne Carriere
> <etienne.carriere@linaro.org> wrote:
> >
> > Describe how clocks property can leverage secure- property prefix
> > for clocks handled exclusively or shared by secure and non-secure
> > worlds.
> >
> > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > ---
> >  .../devicetree/bindings/arm/secure.txt        | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/secure.txt b/Documentation/devicetree/bindings/arm/secure.txt
> > index f27bbff2c780..9bc94921f2a6 100644
> > --- a/Documentation/devicetree/bindings/arm/secure.txt
> > +++ b/Documentation/devicetree/bindings/arm/secure.txt
> > @@ -53,6 +53,25 @@ Valid Secure world properties
> >     status = "disabled";                             /* disabled in both */
> >     status = "disabled"; secure-status = "disabled"; /* disabled in both */
> >
> > +- secure-clocks : specifies the Phandle list secure world shall use
> > +  for the related clocks whereas property "clocks" specifies the
> > +  clock Phandle list non-secure shall use for the that clocks.
> > +  This configuration can apply for example when a hardware clock is
> > +  shared by the 2 worlds and the hardware implements a specific interface
> > +  for each world, i.e.:
> > +
> > +  clocks = <&clk DMA_NS>;      /* NS relies on clock handle DMA_NS */
> > +  secure-clocks = <&clk DMA_S>;        /* S relies on clock handle DMA_S */
>
> The device has to know what it's clocks are for and should know if
> some clocks are secure only.
>
> > +  Another example where use of "clocks" and "secure-clocks" can apply
> > +  is when hardware implements a clock that secure and non-secure must
> > +  share, as a shared GPIO bank clock, and secure world relies on clock
> > +  device driver whereas non-secure world relies on a software service
> > +  exposed by secure world as SCMI clock device. I.e.:
> > +
> > +  clocks = <&scmi_clk 2>;      /* NS relies on SCMI resources */
> > +  secure-clocks= <&clk 5>;     /* S accesses the SoC reset interfaces */
>
> If you have this case, I don't think this is the solution. I don't
> think it scales well and you probably need separate DTs. It's
> something to solve in the system DT project.

Acked,

Thanks,
Etienne

>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
