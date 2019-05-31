Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E764E307EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 06:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BGsUCs2ughzQDAsOxn2RkHphu+/V9QHCxPYPmKiVtE=; b=e1Xz4qq/bMknxF
	4HxitQk0y6ORBT0QaGPSLeE0aOFjLrIHgl4Bwe4Hmusrn3YN0phP8MynjFt9TydUfUYhOFARsNFot
	TOSmBGN2//Q90/bK6WwQGRJav2+aEBtugy3uyq8hxo4SA3IdwTNTxxIHWyn9YsPdW8BlH0w2A36Rs
	llprGM25gmUDq0OtD7WKXaZ1rUoJ7cLjLRJDSVktfSHVceVSukRvSgu/VVXUvqYMnQsw/XV0xAORL
	8T7FrbQeu5bit/H/7LY3X6tkIJqs5rKbDUs1iupsGsP/G/B6dTRiWOBOQQYfq4u0uuOxdt4H9IY2j
	iSiT3gjl3AEnvP8iM8Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWZbr-0001aA-8f; Fri, 31 May 2019 04:57:43 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWZbk-0001ZG-1E; Fri, 31 May 2019 04:57:38 +0000
Received: by mail-it1-x144.google.com with SMTP id t184so13707250itf.2;
 Thu, 30 May 2019 21:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pYMrn55kLH2S++DFur1WFLWOoxAYXbVwA77jHVN56K0=;
 b=kfoYhZkf6QrrWJKyrfZm2jySez/Ob1PR92nLjbtbCIkwApTrJE8LqKlBo+hOLDWtzm
 Kbtq5RETimAdVvyEQlSWLCxb9FxX67p4RfrZmKYTPVmM/7a66eqQt8supqC5Jl68mjXl
 3g0meLrU3kkQS2nIBulztcE8EsYVtq5Zt3yldQON/t2fiIgLNmGmq0iW9TjOf3cb8HRV
 hQUCSI48LvaJU4wgAQw6+tTPUsfGbpYE1FTI8IlM24vtiVxgkCJdT3er1u/dmKP5v9xo
 6pn8gVndXm6lkx/pDiVVkcj0Aqz42IxHdM3Zo+vXVJjOCDvwGBRmjTKMTNy21DiMmG6H
 FnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pYMrn55kLH2S++DFur1WFLWOoxAYXbVwA77jHVN56K0=;
 b=gkAzGZ4xv1pNzf5pae1Fq+oZhavJ0aERBLZrN+FuI/CfY/QD0eQ9RZa0oUwqW4+uGq
 8U7kSGQAIJmBx4T8MDbwafgPhXwa3DA739NzmtiXfxFZPT7bFvgYnKE54w3Rgl5wVjz4
 k8NQUcZ9nbloo8yi4ZYWbDus4rhyrYew9CI8Ayzg8C/JP90kP9dgTe+Fjx7jD9SNMJ3W
 hGqbnkP7jgmhpk6puQFY83ETCkuPIUFHGTPU3xUx05MLsz4uDSTaipnsl5OChhpBsu/X
 sI9K7b6KnTA7Q1aeilEjROp2tKJvil9OYY/aDSEp9wTsjk841Ipqxlu2p3vF4LaDgfYW
 4gQw==
X-Gm-Message-State: APjAAAWQdGbXv1nJSemFgs+lGR695Ti30IrFbs9iOTPCxJQGer8CaVMQ
 O5RxZr9Y3unE0I/KdkXAnAqXtRM29QBmAaT+S7U=
X-Google-Smtp-Source: APXvYqyrNSflW/4/Z9Kt+shMt+wzrH+meKU5Uw8V7PnnqJVcWdQXyvi3s2unKfCvSA99bkG0l1jdlkupXL3T+WefGeQ=
X-Received: by 2002:a24:4acd:: with SMTP id k196mr5575395itb.157.1559278654178; 
 Thu, 30 May 2019 21:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190530125837.730-1-linux.amoon@gmail.com>
 <20190531040222.GB9641@Mani-XPS-13-9360>
In-Reply-To: <20190531040222.GB9641@Mani-XPS-13-9360>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 31 May 2019 10:27:22 +0530
Message-ID: <CANAwSgQ13PizDuNEVF5JMM=byt-HELCmZFhLAa3RS6kvxmXuhw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing PCIe pwr amd rst
 configuration
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_215736_072627_EA7C03F0 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Fri, 31 May 2019 at 09:32, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Hi,
>
> On Thu, May 30, 2019 at 12:58:37PM +0000, Anand Moon wrote:
> > This patch add missing PCIe gpio and pinctrl for power (#PCIE_PWR)
> > also add PCIe gpio and pinctrl for reset (#PCIE_PERST_L).
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > Tested on Rock960 Model A
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > index c7d48d41e184..f5bef6b0fe89 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > @@ -55,9 +55,10 @@
> >
> >       vcc3v3_pcie: vcc3v3-pcie-regulator {
> >               compatible = "regulator-fixed";
> > +             gpio = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
> >               enable-active-high;
> >               pinctrl-names = "default";
> > -             pinctrl-0 = <&pcie_drv>;
> > +             pinctrl-0 = <&pcie_drv &pcie_pwr>;
> >               regulator-boot-on;
> >               regulator-name = "vcc3v3_pcie";
> >               regulator-min-microvolt = <3300000>;
> > @@ -381,9 +382,10 @@
> >  };
> >
> >  &pcie0 {
> > +     ep-gpio = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> >       num-lanes = <4>;
> >       pinctrl-names = "default";
> > -     pinctrl-0 = <&pcie_clkreqn_cpm>;
> > +     pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
> >       vpcie3v3-supply = <&vcc3v3_pcie>;
> >       status = "okay";
> >  };
> > @@ -408,6 +410,16 @@
> >               };
> >       };
> >
> > +     pcie {
> > +             pcie_pwr: pcie-pwr {
> > +                     rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +
> > +             pcie_perst_l:pcie-perst-l {
> > +                     rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
>
> Which schematics did you refer? According to Rock960 v2.1 schematics [1], below
> is the pin mapping for PCI-E PWR and PERST:
>
> PCIE_PERST - GPIO2_A2
> PCIE_PWR - GPIO2_A5
>

Opps, I have referred the wrong schematics *RK3399_Rock960_V1.0.pdf*
may be old version.
Thanks for pointing out the correct schematics.

> Above mapping holds true for Rock960 version 1.1, 1.2 and 1.3. Also,
> rk3399-rock960.dtsi is common for both Rock960 and Ficus boards, so the board
> specific parts should go to rk3399-rock960.dts and rk3399-ficus.dts.
>
> Thanks,
> Mani

I have ROCK960-V 1.2 (Model A) for testing so. I will be sending patch
v2 the relevant
node update in rk3399-rock960.dts and rk3399-ficus.dts if below common
for both the boards.

PCIE_PERST - GPIO2_A2
PCIE_PWR - GPIO2_A5

>
> [1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
