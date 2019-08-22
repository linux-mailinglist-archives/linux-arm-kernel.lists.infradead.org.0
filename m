Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CFB99547
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgt5cqoNkfkriJvS8R2KO9jDd4MX+1wfj+wi3H5Kd7A=; b=HatsdXZgVo1CNR
	VWM3acDRvgQ8vr87o52QGu+dIDdIR5zha89hzebzplHC0PpPUebp1RImb+k/gB57VZOKvL2fNS19Y
	c0yvAIV39HIBUVH2Gj045CPYi2EBtBVrJV95NrmGeCzTHv09iXFsgX9Y0We/h466/Rhn41YzKvpGo
	UfV3008fHtTEMOGkX5VFxMwcxRSk3Aj8t+rjsELv8SRpmcrR4A5VnbCN0dmRSPHydIwrTnkYZP+lP
	iXLhDWh5R8JYadfuFdfLd1XDHT+DjMtPyDkxbH1aQ+aOwdAJJ2F2SAcgV3TvGZIs8tyWK5Ea5B2oF
	v7hHIu2eH8q2by/738Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nJ7-0006M5-Jf; Thu, 22 Aug 2019 13:39:17 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nIt-0006L5-Q1
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 13:39:05 +0000
Received: by mail-ua1-x942.google.com with SMTP id n13so1988600uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 06:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FeL+2QSM5K1YLKKF/js9TmuXZpGlOsVDG+4zs7enb+s=;
 b=vcFXE6FvKpiU/zrPeYmswemc9N4V2PgJ6+b3JrTcb/leP+MyngmDkrXMX6fNCC6dqn
 5U5DxhJ0+6trsoUFiL1UHaJoAtvD3avRnS5Jjn0hIWhxZH5BNh+UbEx7r03YoAl794Jw
 HR5w6Fc5AQ9DT3i4m4j2/UueQP7AxJY/ZOBZgowVNQz1pcUgPIDl6VPhzseEWNH2yhVL
 sFvrbBxAIf0ixOmb1AbOZTeD4bKcIaPo7/IS32eixFYAFFMtH0FSJExgG3ZVVpz5HtpK
 wpmlq/Au0mkNCg+tpVy6s1iBWLieOP1LhX0U0hAfS+Vy8qt+5L2lehHVNPiimzJsKJTU
 YaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FeL+2QSM5K1YLKKF/js9TmuXZpGlOsVDG+4zs7enb+s=;
 b=m9IKwyCy8Vzps+zOxjgITI4keF/SEYjg+qVIbNPZ9emuBd/X9hmG0V/NaVUgDEiph5
 Q+/ZZ8HhxgNF0GvlUFlYhQDvGYE6z3rD37jlwODF30wyWcBCY8shgWvo/w3gnhNbSMVk
 cVrHr2CgzxadqpF8rGETmOReYzHHqd8FZynjC5v8JCgo/bEyOMDj24OISlBa3tSC827f
 leXRib+o6DkhZ2NyTsaJLRHY6f4Tn4BsEQAHCnQjEaUBBKrdyrji4hJWfSwZun9JOqYv
 IgqrQZKkYha6lzTJwaqKj1wEhuyXADG8y+G9S13iQ1gRlkDocEwsfperVqi4PMEGxa6K
 jUsg==
X-Gm-Message-State: APjAAAXSx/M19Td5CsM2E1Dn3F6U6gPJ2ykG23pr+6JVB2aubxHklXNj
 3TgAPEgn0KUinPdCyOm2cZMOqEfMFwVfpajliDbejg==
X-Google-Smtp-Source: APXvYqyNGgp4CW1Vx1Kr/v3sCAPsdONPj1D+yM9NJraECZoktBBfmsmh2N05UsLj8cJbC+xyyKQktBrLSJpWnqXuTU4=
X-Received: by 2002:ab0:15e9:: with SMTP id j38mr5992611uae.19.1566481142313; 
 Thu, 22 Aug 2019 06:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
 <20190722215404.GA28292@bogus>
 <MN2PR02MB602907616249FF19C1A737D8C1C70@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFostBKYipTkCsDbggsrux7w8BPqARx7fwRsL1XqEEX2NQ@mail.gmail.com>
 <MN2PR02MB60299EB8B83C4EA68A0F2B33C1A80@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB60299EB8B83C4EA68A0F2B33C1A80@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 15:38:26 +0200
Message-ID: <CAPDyKFqdLE7d9uz_KcpO0CihM+QsFyKbNsoDMoNLT2Qy_TmNdw@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_063903_878156_F3123C82 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "kernel@esmil.dk" <kernel@esmil.dk>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>,
 "tony.xie@rock-chips.com" <tony.xie@rock-chips.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>, "heiko@sntech.de" <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "ayaka@soulik.info" <ayaka@soulik.info>, "mdf@kernel.org" <mdf@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[...]

> > > > > ---
> > > > >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15
> > ++++++++++-
> > > > ----
> > > > >  1 file changed, 10 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > index 1edbb04..15c6397 100644
> > > > > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > > @@ -23,6 +23,10 @@ Required Properties:
> > > > >    - reg: From mmc bindings: Register location and length.
> > > > >    - clocks: From clock bindings: Handles to clock inputs.
> > > > >    - clock-names: From clock bindings: Tuple including "clk_xin" and
> > "clk_ahb"
> > > > > +            Apart from these two there is one more optional clock which
> > > > > +            is "clk_sdcard". This clock represents output clock from
> > > > > +            controller and card. This must be specified when #clock-cells
> > > > > +            is specified.
> > > > >    - interrupts: Interrupt specifier
> > > > >
> > > > >  Required Properties for "arasan,sdhci-5.1":
> > > > > @@ -36,9 +40,10 @@ Optional Properties:
> > > > >    - clock-output-names: If specified, this will be the name of the card
> > clock
> > > > >      which will be exposed by this device.  Required if #clock-cells is
> > > > >      specified.
> > > > > -  - #clock-cells: If specified this should be the value <0>.  With this
> > property
> > > > > -    in place we will export a clock representing the Card Clock.  This clock
> > > > > -    is expected to be consumed by our PHY.  You must also specify
> > > > > +  - #clock-cells: If specified this should be the value <0>. With this
> > > > > +    property in place we will export one clock representing the Card
> > > > > +    Clock. This clock is expected to be consumed by our PHY. You must
> > also
> > > > > +    specify
> > > >
> > > > specify what?
> > > I think this line was already there, I missed to correct it, Will update in v3.
> > >
> > > >
> > > > The 3rd clock input I assume? This statement means any existing users
> > > > with 2 clock inputs and #clock-cells are in error now. Is that correct?
> > > Yes, this is correct. So far there was only one vendor using '#clock-cells'
> > which is Rockchip. I have sent DT patch (02/11) for that also.
> > > Here this is needed as earlier implementation isn't correct as suggested by
> > Uffe. (https://lkml.org/lkml/2019/6/20/486) .
> >
> > I am not sure how big of a problem the backwards compatible thingy
> > with DT is, in general we must not break it. What do you say Manish?
>
> Though I agree with Uffe on this, there is no other way from my understanding. Please suggest.
>
> >
> > As a workaround, would it be possible to use
> > of_clk_get_from_provider() somehow to address the compatibility issue?
>
> For this to be used we have to parse 'clkspec' from the DT node and pass the same as an argument to this function. In this case also the DT node needs to be updated, which is same as we have done in this series.

Alright. I guess breaking DTBs for Rockchip platforms isn't
acceptable, especially if those are already widely deployed, which I
have no idea of....

And having support for both options in the driver seems not a great
option either, so it looks like you need to convert back into the old
v1 approach. Huh, sorry.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
