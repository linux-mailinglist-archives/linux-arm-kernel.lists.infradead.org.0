Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075D913B37A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 21:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKWx09aR2cFLCAWnQLay9myDA6VczJF0d3pgkkUjUNQ=; b=Jk4mrRRXqAS9tU
	xD3qqmP2ZtNGLnarva9s+65EuFA+YDVZ0EnygSr3zJdBObUg6EzqCW4VDd2bmGzypYt7iOeC9IZIU
	3NEz+y6tyOC08VX6n2GHVMuuVwWTPqFxqzDRTtwt/nb+kndAXo0zKQvFMUnEREfFNJ/LmHurw1vzh
	w9/KepHbVI4XPumi0835EZTee/U3YjFEYfTglbunliQw6zm7v5DGcPOhAQj7sULZ5/fH4o5AcLjiT
	ndkApU9ct4zqS8clhIrxP3hWFLVNZzPR+mvUgyOG103A7SOFQrVsAdnygGwRs1yc1+seCm77mSkiK
	aFdJEe1ll+qtYYhgLw8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irSYD-0005Hy-32; Tue, 14 Jan 2020 20:12:33 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSY2-0005G3-Mn; Tue, 14 Jan 2020 20:12:26 +0000
Received: by mail-ed1-x541.google.com with SMTP id b8so13167847edx.7;
 Tue, 14 Jan 2020 12:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vV+GJ0x1tGGP4SM4rLH+VCpE9DGndiHHm1uWDluzfFg=;
 b=RB4FekL2abu4zjxBeac2aIhtA1DQAYxku4TPR9xLduBUYzFIngDIvUVfWQl0NeSFGb
 foVcKgTtxAdlUNiPHyHsR3TAFANiNEknpe7Z+iwFIPR7H+VR8eBICh8MfO1KvRl9HoeX
 bT/JUkpT9TXwEW7Gzk+NAOXDtlxespc8KQULYfbJX4iYLAoNlpgMLtKt4cPjVl/td1Lq
 R18CdZfE713rmYAkkZEdn8xe33CUV55cn78GHb7YCcFeLce7T80FsBmt1lSBs2rMudRE
 MTDsrkBv7p68mTNKUayOrlvBGI62M7pnQB/x0T8UrOLSyWwa3SIhrlon2dWKpsGCAROq
 PTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vV+GJ0x1tGGP4SM4rLH+VCpE9DGndiHHm1uWDluzfFg=;
 b=uMYf8ccAWJLAeDAzpNvtQr08VEcgd3PfKDRf5ooTDBti7vgrI3qzpxgLG2Tp+VFkIE
 +SM1xXCo90MC0NjZXyasBANK584HXddtgtXO67RMlgOxaZEEnZ2SGGbgj+Nxxt43sRPg
 pU2N11tgZUSR2bKiqkmTFprhjuvrBmBd2jrCusOvaQP91YkoEeYHoJEZhKC1U7DswgnK
 INMYCByFNd0UB67FMJD0EekmOfXakuReCRnzvvaQOAkDehEmF8GxI8NIzOhdcfs/J0Ok
 FwAcwVQceNnib4c3TZVTYPzr4nDgTa8lIvJpcJ0EXZUzmtvl1WfRlbm5UNx0XBeCOiKX
 FKFQ==
X-Gm-Message-State: APjAAAX6R3KWnFmYUAGIIZ1eMXQUQmVkcCKg+ncZbkCMcA8gzrKf4FOT
 cXfp2GwR5BOb7EI9y1AJLFyJchQol6D0OIbRMLU=
X-Google-Smtp-Source: APXvYqwHoUwmDQgURkLoCVvyH8XUPku3082WCJH6JAKtOp7e/sjyH/7MAV/ghZOjgmzWWNTr0yjJ3rWdoYSYd6hulbA=
X-Received: by 2002:a50:875c:: with SMTP id 28mr6886375edv.271.1579032741448; 
 Tue, 14 Jan 2020 12:12:21 -0800 (PST)
MIME-Version: 1.0
References: <20200112002459.2124850-1-martin.blumenstingl@googlemail.com>
 <20200112002459.2124850-2-martin.blumenstingl@googlemail.com>
 <20200113211020.GA12476@bogus>
In-Reply-To: <20200113211020.GA12476@bogus>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 14 Jan 2020 21:12:09 +0100
Message-ID: <CAFBinCAA1kGFqDbYXYVn9W9DRhOnk09WpjGqP5R9YTwu_5vSCw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: Document the Amlogic Meson SDHC
 MMC host controller
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_121222_745282_D5BD5F26 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, Jan 13, 2020 at 10:10 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Jan 12, 2020 at 01:24:57AM +0100, Martin Blumenstingl wrote:
> > This documents the devicetree bindings for the SDHC MMC host controller
> > found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
> > bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
> > HS200 mode (up to 100MHz clock). It embeds an internal clock controller
> > which outputs four clocks (mod_clk, sd_clk, tx_clk and rx_clk) and is
> > fed by four external input clocks (clkin[0-3]). "pclk" is the module
> > register clock, it has to be enabled to access the registers.
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   | 83 +++++++++++++++++++
> >  .../dt-bindings/clock/meson-mx-sdhc-clkc.h    |  8 ++
> >  2 files changed, 91 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
> >  create mode 100644 include/dt-bindings/clock/meson-mx-sdhc-clkc.h
>
> Fails 'make dt_binding_check':
>
> Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.example.dts:17:53:
> warning: extra tokens at end of #include directive
>  #include <dt-bindings/clock/meson-mx-sdhc-clkc.yaml>;
>                                                      ^
> Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.example.dts:17:10:
> fatal error: dt-bindings/clock/meson-mx-sdhc-clkc.yaml: No such file or directory
>  #include <dt-bindings/clock/meson-mx-sdhc-clkc.yaml>;
>           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
sorry for that - I'll fix it in v5

[...]
> > +  clock-names:
> > +    items:
> > +      - const: pclk
> > +      - const: mod_clk
> > +      - const: sd_clk
> > +      - const: rx_clk
> > +      - const: tx_clk
> > +      - const: clkin0
> > +      - const: clkin1
> > +      - const: clkin2
> > +      - const: clkin3
>
> Kind of odd to put the output clocks in the middle of the list.
I'll have to re-send this anyways so I'll put clkin[0-3] at the start
of the list


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
