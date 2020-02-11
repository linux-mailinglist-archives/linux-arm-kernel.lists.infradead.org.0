Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FE61588A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 04:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKwoFyU5BWLAxJHRn0Qxl8KMgFeNVJ0Dp7IkLdhvmcE=; b=KCTmE3yOE0qlEe
	5dXCXfh13FXoFfV1o6G9ukfdHP/vOqj3F8Mhb2EHhw0htrXc6jT4VCxRepkH/8ufbeJsuSdqEF8OB
	3lEcLoxylPHq3JWrgHVxwsc+/PQlmFNsdV3LQT9YFHWf5BzLJlimOYOR+1MjcZYDrW8Dtk3NP37QR
	WofKdYGQ0RtTFDaJTDo8ydm4Q0aRk9a+MZ7nzOh0W0VO8Wrr5eTGFbXzJ3vDls2zNE0GMQ1lIdm0i
	At/9SSoXYQAjjbH2kNh/dWSYrKrZLEOq/Hdf5zZQHrAKNLGzkLH8bpXpscxmu/Ei0eL5vm7mk9+ea
	eVdKm2jz4+RkhVAh7i+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1M4G-0007jQ-47; Tue, 11 Feb 2020 03:18:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1M45-0007in-To; Tue, 11 Feb 2020 03:18:23 +0000
X-UUID: 980dcd7ad5e54796b05b72ac25a6416e-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Q4e7Fdzl/uPZinYhRGJtG7vhEdKUSYrzIdt4zGDHw+A=; 
 b=Mq6bNoLyJE4QQWehR4LQ3AjaFzR2PlAAnowDxikQz1cY6nsVrlna8gln1dcMd5aEOjo9ufQsH9yJvuzMADWcwQozqVOLlM14IZqgZeuoW7p3TWvusjBFIqBdyKxOg82DhL6bsHLRQ4dqipf/aq7QnBj78MkDb+RSceD6+QTKU+k=;
X-UUID: 980dcd7ad5e54796b05b72ac25a6416e-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1242957250; Mon, 10 Feb 2020 19:18:18 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 19:17:34 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 11:16:38 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 11:17:39 +0800
Message-ID: <1581391046.31005.12.camel@mtksdccf07>
Subject: Re: [PATCH v3,1/8] arm64: dts: mt8183: add thermal zone node
From: Michael Kao <michael.kao@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Date: Tue, 11 Feb 2020 11:17:26 +0800
In-Reply-To: <00c8be46-3ba1-571a-0230-7c722ce1901e@linaro.org>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-2-michael.kao@mediatek.com>
 <00c8be46-3ba1-571a-0230-7c722ce1901e@linaro.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_191821_974247_79C27A15 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-01-09 at 12:31 +0100, Daniel Lezcano wrote:
> On 03/01/2020 07:44, Michael Kao wrote:
> > From: "michael.kao" <michael.kao@mediatek.com>
> > 
> > Add thermal zone node to Mediatek MT8183 dts file.
> > 
> > Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 85 ++++++++++++++++++++++++
> >  1 file changed, 85 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 10b32471bc7b..a2793cf3d994 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -570,6 +570,88 @@
> >  			status = "disabled";
> >  		};
> >  
> > +		thermal: thermal@1100b000 {
> > +			#thermal-sensor-cells = <1>;
> > +			compatible = "mediatek,mt8183-thermal";
> > +			reg = <0 0x1100b000 0 0x1000>;
> > +			interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
> 
> What is this interrupt for?

The interrupts pin is designed in our SoC. But it is not used in our
upstream thermal code now. There is also add the settings but not use
for mt8173.dtsi. To align the thermal dtsi format, I follow the past
experience to add the interrupt settings of this project first.

> 
> > +			clocks = <&infracfg CLK_INFRA_THERM>,
> > +				 <&infracfg CLK_INFRA_AUXADC>;
> > +			clock-names = "therm", "auxadc";
> > +			resets = <&infracfg  MT8183_INFRACFG_AO_THERM_SW_RST>;
> > +			mediatek,auxadc = <&auxadc>;
> > +			mediatek,apmixedsys = <&apmixedsys>;
> > +			mediatek,hw-reset-temp = <117000>;
> > +			nvmem-cells = <&thermal_calibration>;
> > +			nvmem-cell-names = "calibration-data";
> > +		};
> > +
> > +		thermal-zones {
> > +			cpu_thermal: cpu_thermal {
> > +				polling-delay-passive = <1000>;
> > +				polling-delay = <1000>;
> 
> [ ... ]
> 
> 
> 
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
