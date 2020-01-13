Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD489138BED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUHNqabTYOGFaBqEq5/qbbW2GSGgRRSE3elGAl/YAII=; b=SVGJ+h4t/Q2gGK
	31fixja0z4/bSGC1naHJAme32T7ZSzgzPqbCgzhWxAi5HbsQ0OjGGXdrewAqqugI0oXeRWCDmESU4
	iqSyyuogDoSe2kWvkwNv+tquWVPtTfj8rsMJ7tqA6jcMHHYWUaZrX9ojupqVTL8uJaU7Ng1WjyifR
	6Hvjz+lxS5jildhTTKyrA8mae7l0dt4WbEl6dYSpnde25xcUiye2WTMlOcWeRQL+JDS1F4q5yPS2i
	+gmRithVRIEt2K6n+F6G2y8nNZVgIzGMqC5VNRe+m0GT2hr2zDgyryyCTZHMZ2cY8Or3O1DKsrwUy
	sr+EMAKfUIJdqLM45vVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtSf-0004zp-7r; Mon, 13 Jan 2020 06:44:29 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtSV-0004ys-9t
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:44:20 +0000
Received: by mail-qk1-x744.google.com with SMTP id r14so7535206qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 22:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BNID1+xlk/LusKrfyvTRadaTjl4JTdHdZqFClmlrkE8=;
 b=OyvIPxXK+9gRKfh1j2g/pw9Okrn9nsbKhZjAf9nvWrFWTasOHoycaN/UYYMfhcIC19
 q7V2LwdxqeCs4zYNYujxCALeZwUnxdGHWOyse3uCMcKGt+LjGnSL1M0bpUfxgD4n2fec
 c1TWiw/luhrhXoyB6w/D1tFMJi+V+IvKJEasQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BNID1+xlk/LusKrfyvTRadaTjl4JTdHdZqFClmlrkE8=;
 b=gpGusY3sFGXkw2yjBznIGP2CV7wgj0Cie0JR8bTEBcOJ7L+5OlrLOu/9BwqPdRRY7W
 Y9qTtw66FQosThppj23hrNyT3SVPjKJF2e/Rr1gA5xF7wvcHmu4NuUrbvRv93Y7v/3iS
 5hGkcfmhKDEVl2pWIjoQxcOuPvLRkjzZ1WUPfnlD3ll/pIS5k2fjCf5WKsUVrNrh+Wlo
 hpz8EiYiw4L161c3SaqiMFKVjxDCHV1vbqkwV5IYwlNKbEg0X7hLVc6oxoVM3rttMDnH
 t/LylQxv5TeDo9UxP8gZB41RFtO/MUYq1dkvIukhBEgLMflJ6ZLBROmImobfrwXyG0T/
 QLHQ==
X-Gm-Message-State: APjAAAVrUwH6YWuudpQkCdTp7WF50xW8M/hkMvrzdHi/oPhlpN4aXVGY
 GWHl2aGJ5ZT6EW1bih4hvqRZ0aCah8UftXnyYuIoMg==
X-Google-Smtp-Source: APXvYqzL5B5r73soR628uc2jDkq8fU1OUh+0wVt0KMcWK9cN8MbW5ohquaKM4R+Ks/ACv40A/WWnmnHJYeJHxhoohe8=
X-Received: by 2002:a05:620a:6d7:: with SMTP id
 23mr14117387qky.299.1578897858106; 
 Sun, 12 Jan 2020 22:44:18 -0800 (PST)
MIME-Version: 1.0
References: <20200107070154.1574-1-roger.lu@mediatek.com>
 <20200107070154.1574-2-roger.lu@mediatek.com>
 <20200108203829.GA18987@bogus>
In-Reply-To: <20200108203829.GA18987@bogus>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 14:44:07 +0800
Message-ID: <CANMq1KBu-gFy701BgFcjEwyhV9GgCCU2mkT9c8LviOJKBF30UA@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: soc: add mtk svs dt-bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_224419_368513_A79E4DC4 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 Roger Lu <roger.lu@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, YT Lee <yt.lee@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, Devicetree List <devicetree@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 4:38 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jan 07, 2020 at 03:01:52PM +0800, Roger Lu wrote:
> > Document the binding for enabling mtk svs on MediaTek SoC.
> >
> > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > ---
> >  .../devicetree/bindings/power/mtk-svs.txt     | 76 +++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> >
> > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > new file mode 100644
> > index 000000000000..9a3e81b9e1d2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > @@ -0,0 +1,76 @@
> > +* Mediatek Smart Voltage Scaling (MTK SVS)
> > +
> > +This describes the device tree binding for the MTK SVS controller (bank)
> > +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> > +needs thermal data to calculate thermal slope for accurately compensate
> > +the voltages when temperature change.
> > +
> > +Required properties:
> > +- compatible:
> > +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> > +- reg: Address range of the MTK SVS controller.
> > +- interrupts: IRQ for the MTK SVS controller.
> > +- clocks, clock-names: Clocks needed for the svs hardware. required
> > +                       clocks are:
> > +                    "main": Main clock for svs controller to work.
> > +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> > +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> > +
> > +Subnodes:
> > +- svs-cpu-little: SVS bank device node of little CPU
> > +  compatible: "mediatek,mt8183-svs-cpu-little"
> > +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> > +                    SVS will optimze this OPP table voltage part.
> > +  vcpu-little-supply: PMIC buck of little CPU
> > +- svs-cpu-big: SVS bank device node of big CPU
> > +  compatible: "mediatek,mt8183-svs-cpu-big"
> > +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> > +                    SVS will optimze this OPP table voltage part.
> > +  vcpu-big-supply: PMIC buck of big CPU
> > +- svs-cci: SVS bank device node of CCI
> > +  compatible: "mediatek,mt8183-svs-cci"
> > +  operating-points-v2: OPP table hooked by SVS CCI bank.
> > +                    SVS will optimze this OPP table voltage part.
> > +  vcci-supply: PMIC buck of CCI
> > +- svs-gpu: SVS bank device node of GPU
> > +  compatible: "mediatek,mt8183-svs-gpu"
> > +  operating-points-v2: OPP table hooked by SVS GPU bank.
> > +                    SVS will optimze this OPP table voltage part.
> > +  vgpu-supply: PMIC buck of GPU
> > +
> > +Example:
> > +
> > +     svs: svs@1100b000 {
> > +             compatible = "mediatek,mt8183-svs";
> > +             reg = <0 0x1100b000 0 0x1000>;
> > +             interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
> > +             clocks = <&infracfg CLK_INFRA_THERM>;
> > +             clock-names = "main_clk";
> > +             nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> > +             nvmem-cell-names = "svs-calibration-data", "calibration-data";
> > +
> > +             svs_cpu_little: svs-cpu-little {
> > +                     compatible = "mediatek,mt8183-svs-cpu-little";
> > +                     operating-points-v2 = <&cluster0_opp>;
> > +                     vcpu-little-supply = <&mt6358_vproc12_reg>;
> > +             };
>
> I don't think this is a good binding. This information already exists
> elsewhere in the DT, so your driver should just look in those nodes.
> For example the regulator can be in the cpu nodes or the OPP table
> itself.

Roger, if that helps, without changing any other binding, on 8183,
basically you could have:
 - svs-cpu-little: Add a handle to &cpu0 and get the regulator/opp
table from it.
 - svs-cpu-big: Handle to &cpu4
 - svs-cci: Handle to &cci
 - svs-gpu: Handle to &gpu (BTW, it is expected that SVS would only
apply to vgpu/mali regulator, and not vsram regulator?)

I'm not too sure how we'd fetch the right regulator name, however (for
the first 3 the name is "proc", for the last one it's "mali"), maybe
add a regulator-name list in the DT?

>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
