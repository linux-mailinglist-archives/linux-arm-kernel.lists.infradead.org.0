Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFD51B2183
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jsi2IKICAeFuxm1M5+1sC7ZDOoz4Z40kW1YNhTghsvE=; b=GKMtw6tMulzeRZ
	qXRFUVofAF+LJVzTP33Bsju/ZgfolpCmnxFGe2uWbN1+VOCroUuKw2HgpkcG6O/3ahyC92ZIPdVHG
	rOH7fovzTKG6XZWQUpEXSM9kNf+JCBgn/3Z60PyaO8xdbH/aCgtABdUBnvINq+CIhxGELMB+1tFQO
	7DtsZ1f+3M/6EWRN260dE1S9ETe7bkpxx3L1c/jkvkUqJQcAMGB4qFYHLvS/53K+fkzKCVUAO0FJi
	3xzqjm6/GGW9LB2GGsAVckut8xMVvmU/4qzqZiAhjK+ewjGTAQxEPXiFrg2a2JiUZ33FaLozImH3n
	/ZUrHkO0oH6tmwQtZkbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoCN-0004Qq-8B; Tue, 21 Apr 2020 08:24:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoC8-0004OF-Ds; Tue, 21 Apr 2020 08:23:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQoC0-0001S4-JW; Tue, 21 Apr 2020 10:23:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3328.dtsi
Date: Tue, 21 Apr 2020 10:23:43 +0200
Message-ID: <2710874.PL6qFFFsBp@diego>
In-Reply-To: <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ@mail.gmail.com>
References: <20200416181944.5879-1-jbx6244@gmail.com>
 <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_012352_469509_B7B49972 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ChenYu,

Am Dienstag, 21. April 2020, 05:48:52 CEST schrieb Chen-Yu Tsai:
> On Fri, Apr 17, 2020 at 2:19 AM Johan Jonker <jbx6244@gmail.com> wrote:
> >
> > 'bus-width' and pinctrl containing the bus-pins
> > should be in the same file, so add them to
> > all mmc nodes in 'rk3328.dtsi'.
> 
> Nope. First of all, pinctrl usage is with pinctrl-N properties, not the
> pinctrl device, and there are no defaults set for any of the mmc nodes.
> Second, these are board design specific. For example, boards are free to
> use just 4 bits for the eMMC if they so desire. So this should be in each
> board dts file. If a board is missing this property, fix the board.

you are correct that the pinctrl entries are missing from the patches,
bus-width and pinctrl should be defined in the same file each time,
but for the whole idea I tend to disagree. 

So far every board with a Rockchip socs follows Rockchip's reference design
for a lot of parts - for example I only see sdmmc nodes with bus-width=4
etc.

So the basic idea is to have default pinctrl settings for the settings
everybody uses predefined ... if a board comes along that needs different
settings it is free to redefine that.


Heiko


> 
> This applies to all three patches in the series.
> 
> ChenYu
> 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > index 175060695..db2c3085e 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > @@ -861,6 +861,7 @@
> >                 clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
> >                          <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
> >                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +               bus-width = <4>;
> >                 fifo-depth = <0x100>;
> >                 max-frequency = <150000000>;
> >                 status = "disabled";
> > @@ -873,6 +874,7 @@
> >                 clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
> >                          <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
> >                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +               bus-width = <4>;
> >                 fifo-depth = <0x100>;
> >                 max-frequency = <150000000>;
> >                 status = "disabled";
> > @@ -885,6 +887,7 @@
> >                 clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
> >                          <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
> >                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +               bus-width = <8>;
> >                 fifo-depth = <0x100>;
> >                 max-frequency = <150000000>;
> >                 status = "disabled";
> > --
> > 2.11.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
