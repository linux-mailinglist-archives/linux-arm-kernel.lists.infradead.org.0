Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637BB3084F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 08:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moj2AqIC6f9PjI7uFjYIEcRWDtMS7VTfe+05gLAJp8Y=; b=m+nVtbfThgbxJG
	BaKLva4/Qd+boNpTMRUKpvb/gp3FbC0hCiXrKAwcm2ZRTc331Q1QkR/giKy++vzBm4W9L/6kh6EiB
	gyTWOGXhbwcMWansHHYz/VXj4rtjFpa/4CG4osCmuwgNLC0DeF7PE5qul8CH4/Pe0+Ch5FhW8Zq+4
	4CdDY6M3aizCHxBCm0a4pAQJddcVkDJIkivD370oTOiYEPvOfWTLlqULrTvc8NFTUks/1dJXJAktM
	bkE0i6zMEEa7tkwg4U8BKkhbuioKOTt0NKijs0TTPSV+TsdlWbP1jpA1Wl6Ksg1KbXyqCXvTk3nQJ
	vkjpyosuA10jRKpEUcaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWaii-0008D7-UB; Fri, 31 May 2019 06:08:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWaia-0008Bm-5j
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 06:08:45 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so3555771plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 23:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XwfqNiumqbGzIIC/RNtiSYns0HQ4qYSUZptMwlc/kUo=;
 b=bY1OiOlZBhPceUCRbkGtku9P7C5GJFH3r7S5acpROqVkrL05YeRY2a4qN5z6EKQJM8
 HBr9g7zmWxowRUXVStXMxAg7dVUlRxYdxmpE3sq/QqbaeswrsfMCUXyBpRLNp/ujYKBB
 5EPPuzwHc4Hbp+qHmZ8J3FbgxJ6JE+JGCoE86hVtf0xv8uoeM7UaskO0HZPG3P4kn+lb
 NjdnZUF0HuHXT3b5htg14CKa8jsYNHWJ9ZyIjpEe5+s+WFsg8xPObN4EIvF5jWb+9Tcd
 f3l/CMowGFQt1LUp0RHBs4IxDNYz7EF1K4+2NUKO41PdKjF90Abagopk8qQLg6a+VcmE
 PjvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XwfqNiumqbGzIIC/RNtiSYns0HQ4qYSUZptMwlc/kUo=;
 b=lG1qWwRzCwLGgZiYlWGqx2Ad2Ysfj9YL5SEAiri96s1Xkdsl2BmCUqOwIEG/r0IPm0
 cjHiCuGvfLlKt9W+oTA94RMK5/BduKi86ZM9cO5l0kgtzgiW1IU/smNZV6wfcHalZCNO
 NBcen/nsA1LjPdvQyO0rzI73izFgnT7+ELpVYqTzgvn26UpN7/C4w3b/sAW9QFBiYIwj
 gHHpERKXjvaisRAklH+dLGLNVMU6d5q+kJhGtPqoHCgzMmDyMcv7ZoDetvRg1A0Ann9b
 NvcAK61ZM3p6NwKTJMeyp5ldoCHoce2RmNHjCaUHTurud3ZXhmGtVvEugCS5L1MsfTyH
 KI0g==
X-Gm-Message-State: APjAAAU68V61PW1pUP0oGp5ED9FI6TCOmZgQNwgvok/jENUWDDZ6qVnm
 9RsylXr2oAzIEoZMXNVYVt/3
X-Google-Smtp-Source: APXvYqzrAfkfqti29DEdzisOmgSYSBFSIKUocZpAqFeqT3IHD3Tat99veY4H0d3/uwy4LsUUxMGAYA==
X-Received: by 2002:a17:902:e00a:: with SMTP id
 ca10mr7527559plb.18.1559282923093; 
 Thu, 30 May 2019 23:08:43 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id j64sm11527264pfb.126.2019.05.30.23.08.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 23:08:42 -0700 (PDT)
Date: Fri, 31 May 2019 11:38:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing PCIe pwr amd rst
 configuration
Message-ID: <20190531060834.GA23771@Mani-XPS-13-9360>
References: <20190530125837.730-1-linux.amoon@gmail.com>
 <20190531040222.GB9641@Mani-XPS-13-9360>
 <CANAwSgQ13PizDuNEVF5JMM=byt-HELCmZFhLAa3RS6kvxmXuhw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQ13PizDuNEVF5JMM=byt-HELCmZFhLAa3RS6kvxmXuhw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_230844_293258_CA521F40 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Fri, May 31, 2019 at 10:27:22AM +0530, Anand Moon wrote:
> Hi Manivannan,
> 
> On Fri, 31 May 2019 at 09:32, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > Hi,
> >
> > On Thu, May 30, 2019 at 12:58:37PM +0000, Anand Moon wrote:
> > > This patch add missing PCIe gpio and pinctrl for power (#PCIE_PWR)
> > > also add PCIe gpio and pinctrl for reset (#PCIE_PERST_L).
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> > > Tested on Rock960 Model A
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 16 ++++++++++++++--
> > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > index c7d48d41e184..f5bef6b0fe89 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > @@ -55,9 +55,10 @@
> > >
> > >       vcc3v3_pcie: vcc3v3-pcie-regulator {
> > >               compatible = "regulator-fixed";
> > > +             gpio = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
> > >               enable-active-high;
> > >               pinctrl-names = "default";
> > > -             pinctrl-0 = <&pcie_drv>;
> > > +             pinctrl-0 = <&pcie_drv &pcie_pwr>;
> > >               regulator-boot-on;
> > >               regulator-name = "vcc3v3_pcie";
> > >               regulator-min-microvolt = <3300000>;
> > > @@ -381,9 +382,10 @@
> > >  };
> > >
> > >  &pcie0 {
> > > +     ep-gpio = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > >       num-lanes = <4>;
> > >       pinctrl-names = "default";
> > > -     pinctrl-0 = <&pcie_clkreqn_cpm>;
> > > +     pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
> > >       vpcie3v3-supply = <&vcc3v3_pcie>;
> > >       status = "okay";
> > >  };
> > > @@ -408,6 +410,16 @@
> > >               };
> > >       };
> > >
> > > +     pcie {
> > > +             pcie_pwr: pcie-pwr {
> > > +                     rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +             };
> > > +
> > > +             pcie_perst_l:pcie-perst-l {
> > > +                     rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +             };
> >
> > Which schematics did you refer? According to Rock960 v2.1 schematics [1], below
> > is the pin mapping for PCI-E PWR and PERST:
> >
> > PCIE_PERST - GPIO2_A2
> > PCIE_PWR - GPIO2_A5
> >
> 
> Opps, I have referred the wrong schematics *RK3399_Rock960_V1.0.pdf*
> may be old version.
> Thanks for pointing out the correct schematics.
> 
> > Above mapping holds true for Rock960 version 1.1, 1.2 and 1.3. Also,
> > rk3399-rock960.dtsi is common for both Rock960 and Ficus boards, so the board
> > specific parts should go to rk3399-rock960.dts and rk3399-ficus.dts.
> >
> > Thanks,
> > Mani
> 
> I have ROCK960-V 1.2 (Model A) for testing so. I will be sending patch
> v2 the relevant
> node update in rk3399-rock960.dts and rk3399-ficus.dts if below common
> for both the boards.

Both boards are different in terms of pin mapping!

-Mani

> 
> PCIE_PERST - GPIO2_A2
> PCIE_PWR - GPIO2_A5
> 
> >
> > [1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
> 
> Best Regards
> -Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
