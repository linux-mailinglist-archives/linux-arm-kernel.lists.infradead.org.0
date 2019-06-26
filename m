Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19A456584
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VbuTd7ac1hOjk1aiSkFzVrHYvD2L+mfXbp/CJw0h1w=; b=GMAJYuSn8g7CUb
	ZVJEPMjGLJ2AjYcxxeuL1FDKTAJxkjXXPSOwrVi43QpH2GvdAxtp5nKgJ6lPzDKJEwlFc3CwABh8R
	jOoNHZ3ewmIUZmpY58LuAjbek5HtkUBeGRHpnUcm5I+E53PLlvnCuohcv8DafxnHNXUVAK4gfSx0C
	xZq5Th7Oyg/HxSU9tsD6KDw+1EZcq0klMPKQZVA6a17ecVPPzWIHFYtnUKd6Sfu+MeWMETFR75/TK
	GtJ4+11T586/cGFHiGRpm3VLPOj6oadNVdfluo8aWdXVIC+b3n9dvMid1B24cDumfEW3B5p6LnVMy
	76P88XW4LbCwk3iPg2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg40p-0001K2-00; Wed, 26 Jun 2019 09:14:43 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3xD-0006bz-Ic
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:11:01 +0000
Received: by mail-io1-xd41.google.com with SMTP id k20so3354807ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sno8Ge+rHMIdDtzIc8dnl34qGNRf0feu0UyAZSnI4mg=;
 b=Bi6GewvMVw3/YibnpaewlUpeDadIoCMTgCZXgDZCC0T1ddx1CCk6oedQAwY+9Dqp2p
 rvjlH/huHtMUx7CvabwZ2TMZDTZdGg64iMT71dioEjyLeu4pq1o86RLLZCuMKmI/HJVA
 l0Aiuwyrdq1BqL5ZFBTMw/zuvSw2SZ3Trs0lK81iDFvQPcKoAKsMW9827XDmLCeCl2Ix
 zCY4eJ2Sq7crCzXcasod7zL9BycVXALQnXX95diymI0ol5tGwMICw7F+udWs9D671qJn
 QCSrL1H19PDQsg8pVd2qT/YRvu6h6ayjy0URcTYRMCgpUEZxHkWZ0hq1f58hVIdCSc7w
 Csrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sno8Ge+rHMIdDtzIc8dnl34qGNRf0feu0UyAZSnI4mg=;
 b=ccYP/s620nQ19IiWCXKhLik0Rf++np5UJmGkJH7lHBBfQFqv1fyKeN7MOqmO9i+fND
 BPB3hpf2yeuHNlii+Mpv4k1vmm1iCIUhCg5Wk9VIg319AwPXZDSdrHX7bh4geSU05kOQ
 Au/AQfjxjh0n5vwV/hxRb9xaGYUmEt69Li6L1GYPeIUbq9Idkg7AzIXO3YO8wHFn9Rhu
 rH4Alp14GZiOlps3ZGuAbmpC5aHXmJ+08ZTR7vUL1pz4PKBgPqO8FCGhr0nZts44ci8K
 bly1WMB3/SVBojhyzW0jyovF5mF+H0Y1HAJ+lv4yZIDHcKtow6oIOzh4a5GVaLHziN0V
 hHFw==
X-Gm-Message-State: APjAAAW8GAcuPFl0wF7+k71IQlrYDKYoPfVQOt+gnluGOVU9+66BB5a0
 +lDvLSWJd8f0oebI+8STyCg/7OrguQ5owFLdu19QAA==
X-Google-Smtp-Source: APXvYqyp3VOv+KPURb+KoDDpojB8TjqXw4jTuOzIoV1yCakDUsaxF/3kVvaBFKPGrZ0qD06iylhlFA3tH5NcrgMZ65Y=
X-Received: by 2002:a5e:8518:: with SMTP id i24mr3690057ioj.149.1561540258934; 
 Wed, 26 Jun 2019 02:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org>
 <CAHYWTt37Q1E_bggbKb8VdcHRj_YYubqaoVHNN7+1kcr8+XMX0g@mail.gmail.com>
In-Reply-To: <CAHYWTt37Q1E_bggbKb8VdcHRj_YYubqaoVHNN7+1kcr8+XMX0g@mail.gmail.com>
From: Niklas Cassel <niklas.cassel@linaro.org>
Date: Wed, 26 Jun 2019 11:10:47 +0200
Message-ID: <CAHYWTt2bHqR5aP4-zJ==txGvzuhAa=+q=5Qpag7ucMEEnM1dZg@mail.gmail.com>
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: qcs404: Add DVFS support
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_021059_665877_BB1C67A9 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, heiko@sntech.de,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 jassisinghbrar@gmail.com, Sibi Sankar <sibis@codeaurora.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 devicetree <devicetree@vger.kernel.org>, arnd@arndb.de,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, olof@lixom.net,
 Rob Herring <robh+dt@kernel.org>, horms+renesas@verge.net.au,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Khasim Syed Mohammed <khasim.mohammed@linaro.org>,
 enric.balletbo@collabora.com, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Perhaps I should look at the recipient list next time before posting :)

Kind regards,
Niklas

On Wed, 26 Jun 2019 at 11:08, Niklas Cassel <niklas.cassel@linaro.org> wrote:
>
> I actually think that it makes sense to squash this patch with the
> [PATCH v3 10/14] arm64: dts: qcom: qcs404: Add OPP table
> patch.
>
> But that might be a personal preference.
>
> Either way, I think this series in ready for the real mailing list.
>
>
>
>
> On Tue, 25 Jun 2019 at 18:48, Jorge Ramirez-Ortiz
> <jorge.ramirez-ortiz@linaro.org> wrote:
> >
> > Support dynamic voltage and frequency scaling on qcs404.
> >
> > Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> > Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qcs404.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > index 9569686dbc41..4b4ce0b5df76 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > @@ -34,6 +34,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 CPU1: cpu@101 {
> > @@ -43,6 +46,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 CPU2: cpu@102 {
> > @@ -52,6 +58,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 CPU3: cpu@103 {
> > @@ -61,6 +70,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 L2_0: l2-cache {
> > --
> > 2.21.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
