Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC090AD89E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N23XcsTtIiP823UIw08qJEoYMLvbmjDrtPBwyU/azE0=; b=twxUDXB51oOU2k
	IuVoBsSXs/RerfOtsVDWYkxkfVWXCa0d56YyG75LLlHvpvRUZZyBw+cTcZ7YFg4JJifpifrn6Gij2
	zhjivJOZ9T9e5+d8xClh/ElTSxGI2YeaogOkyUjtD/zzMo7YH1Nrdfz5/acrl4f8ugapNKJkgj1bL
	/RBIZW9rzcYUlEFyRxk/pFap9bLVy3WchzqHu6GlgX2o/OU+08P770JeoUIj5Fy319YFzC1A+cfR9
	W5N/i1nABX5ObAud73DHl0pRbK+vvM2MORBJ3QLVE2fEm4Ka4h3sLTPIVVMCrfEYO1CXW+SVlzhTT
	hbKEqOklMGpvoLfkXXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IYG-0006Od-OB; Mon, 09 Sep 2019 12:13:48 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IY9-0006Nh-Tz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:13:43 +0000
Received: by mail-io1-xd44.google.com with SMTP id f4so27334089ion.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 05:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qg8xC9UxmhKCmV81UpwtW3mMWGVvqlb5I9FtLPwmTUM=;
 b=pku/NLUh4SJEsiCFuwtfYQi0lc090lQAayDr9JSBcsxNeYnjyOe+SOELeG2a0eqCX1
 BKT2Q8DKiqV16ITAFeCNmxC0VsSWvASPSTs713atMDmvhrOcitTUKrCuCwQxMBUV8IUp
 v1Qmpha3KShO+rFXG7/5aqdHM837Fyi+PFFMWRrMSqOHT5uvUtH+ulr9WDzoWVPpTP3s
 XSfsqM55yMsEGmGYfubsHGOgRtx5SaLmm2XhpYyBwGK4Uu7Ar7vU69MBSm+oJ5I/eDdz
 DwitdKuz5jdECbTDlC50wefxqE3Djak/O0KQ5npYtgoaqtfcAQ8WRF8ppSinzgPiBORq
 Yx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qg8xC9UxmhKCmV81UpwtW3mMWGVvqlb5I9FtLPwmTUM=;
 b=ZmiDlBu31GhP/qi468bkKBXr6pGXFEYYsCllkdtUflcEhV06p07Jg0clPOegMLdAaW
 JBeygnJ2PwQAsA47/HPUwrQD0XGdexJSKyh4SDYUyHTvXCHl7aqTvDL/JcODuEmou1hK
 NZz8ek90o9ieSz0/r8/Cl5qFMuprvmUTrVyPISs5Sy+1SI1RLQd01TkVIT3+wDops9n+
 gj0xu6KyLkZ3rSiLRs3SHhM8MzLm+ErhipBCYOgnhAyintaJFEB9mrYq87AhSfN6xIlg
 xglTxekuXVguA76SKakXFGMAjyBkcRzhr76GZDm7nqwJA7ZzPtpxHMh/m877pJ3Dk4PX
 oytQ==
X-Gm-Message-State: APjAAAVZY2z463HESYwnHCEeVDdULG6hLeaQ2BuBkf2LPiu75uNoHv2V
 RH20A986bNEJd8WrXkHEno7qEDGHTS2ypVArcEk=
X-Google-Smtp-Source: APXvYqyHw54reih0bwbQtWwZoTsD2HFT73oXHKwpVjtXdOQkOcP6NKzt03ZaIh/tcyxPMtwL33xaVzkLbAhFEKYczz0=
X-Received: by 2002:a5e:de47:: with SMTP id e7mr15561943ioq.127.1568031220454; 
 Mon, 09 Sep 2019 05:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
In-Reply-To: <20190905230443.GA52127@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 9 Sep 2019 07:13:29 -0500
Message-ID: <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_051341_994331_02BA87C4 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
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
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 6:04 PM Tony Lindgren <tony@atomide.com> wrote:
>
> Hi,
>
> * Adam Ford <aford173@gmail.com> [190828 15:01]:
> > The datasheet for the AM3517 shows the RNG is connected to L4.
> > It shows the module address for the RNG is 0x480A0000, and it
> > matches the omap2.dtsi description.  Since the driver can support
> > omap2 and omap4, it seems reasonable to assume the omap3 would
> > use the same core for the RNG.
> >
> > This RFC, mimics much of the omap2 hwmods on the OMAP3. It
> > also adds the necessary clock for driving the RNG.  Unfortunately,
> > it appears non-functional.  If anyone has any suggestions on how
> > to finish the hwmod (or port it to the newer l4 device tree
> > format), feedback is requested.
>
> Yup I'll take the bait :) The patch below seems to do the trick
> for me on dm3730 based on translating your patch to probe with
> ti-sysc.
>
> Not sure about 34xx, it seems we're missing rng_clk? Care
> to give it a try and attempt simlar patches for 34xx and
> 3517?
>
> At least I'm not needing the "ti,no-reset-on-init" property
> that your patch has a comment for. Maybe that's needed on
> some other omap3.
>
> Oh and this needs to default to status = "disabled" for
> HS devices like n900 as it needs to use the omap3-rom-rng.
>
> Regards,
>
> Tony
>
> 8< -----------------------
> diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
> --- a/arch/arm/boot/dts/omap36xx.dtsi
> +++ b/arch/arm/boot/dts/omap36xx.dtsi
> @@ -140,6 +140,29 @@
>                         };
>                 };
>
> +               rng_target: target-module@480a0000 {
> +                       compatible = "ti,sysc-omap2", "ti,sysc";
> +                       reg = <0x480a003c 0x4>,
> +                             <0x480a0040 0x4>,
> +                             <0x480a0044 0x4>;
> +                       reg-names = "rev", "sysc", "syss";
> +                       ti,sysc-mask = <(SYSC_OMAP2_AUTOIDLE)>;
> +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +                                       <SYSC_IDLE_NO>;
> +                       ti,syss-mask = <1>;
> +                       clocks = <&rng_ick>;
> +                       clock-names = "ick";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges = <0 0x480a0000 0x2000>;
> +
> +                       rng: rng@0 {
> +                               compatible = "ti,omap2-rng";
> +                               reg = <0x0 0x2000>;
> +                               interrupts = <52>;
> +                       };
> +               };
> +

Tony,

Can you tell me what branch you're using?  I am not seeing the note
below, so I am not exactly sure what version to base my testing.

ada,
>                 /*
>                  * Note that the sysconfig register layout is a subset of the
>                  * "ti,sysc-omap4" type register with just sidle and midle bits

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
