Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1425B5D0B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a64PmGElHgNi0k22bIGMN8XOVUUWJfkyPVGqSmOC5UI=; b=o5yCtJTZ9Wdpop
	/YMn6cBTyTm9CKWRGVwqLg/MWdbBOiA664Dpn60uwkUlobelmskmpIGqchB/S9qxBTFpBY4Rg4Hhg
	SjPGCslw/uq/Emddx9bgJMgv3GNtBYL0b6c+9ZS4EC/vQZvm7SNbwmKZ3lSl+5QSXPqZZJEEJwM6r
	tkQFsN5LPcMW4ZaJ/+NMdMpO+rbM5Dxa82Os2abYNjleuSGZgC5fqlcAfEJRem01SYLu4Q4HdwUYV
	KFiPZepafoQSkBgohlHfMlRyQuVFkeVj2m4LQJjHSHwab+xBxgAuBVcZ35eE5QQNUpaNfGLFyv/bb
	pye0Hfar0kzxPNQCi9YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIuZ-0001iF-NH; Tue, 02 Jul 2019 13:33:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIuN-0001hf-7z
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:33:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so17903520wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 06:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w0OYaXyIMcAAJ4gBJEOEXLofDRzjGVAncXahqHJtr3g=;
 b=jZmsk2apK9wWaC1Jwi8eJ+VpNeeqK9vyCI2z4YLKZy0UMQiklfvEJVTrYVsIE1tAoL
 Y0mxMn9PXmVbH/NBkukGPC7y0H/BBRFTvNqfGcb6L2DEcT68IJb+Tno6Sy2dbcfXF35q
 EYTpbUzAwTBib2rn38pMmYI7wgZXsOBsHf7d12NDK5rlNm1mLqrrvfLa0bpKw++S3JJW
 nmGOJnDN4flQWKyQ2INLpigpyMPRSa9KHhhIMB3wFazz2VGW/XO6KJlsgowT23b+pR+w
 +XCGBbRduRTbvzTTfwVMn2bBa69lj94fYKOEH8G7r345mzWJr0kHUuhILLc9d0GFZdHN
 ZeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w0OYaXyIMcAAJ4gBJEOEXLofDRzjGVAncXahqHJtr3g=;
 b=Ia2ByRhgYpB8rB7FXpOnMZj2IS2QD3r8cEVqkDqcBRjgoVkEmNfkdqeLicuQR7cPOb
 uTGsaE39x0LZ4UChcrYCP+CJijNBxdJk5ID7NmNDIsUn3ow4w46WZJbdP27vVoreL8Lv
 T37v8BYPg4QPq6VU5qYqkPtBB6B57nZYoKCtp0XHD5QKS84fsCnmfJQq3dR7FkPcK7Cj
 cf8zSi05H+CgOfs6bcjLQ5eVYgLloR0Vm14XjXrSct/Gc11XKD5a5XCIHI8A7RZ1EJXd
 EC8kbQSEhRb+2FdzAUGNyeP7C2KZUUTf7noQi+9URSDdz+U7g450gsvEr9srVo1F+AA2
 PL2g==
X-Gm-Message-State: APjAAAX6EmahSmCVGUt4b/9StFkOj5ejq0R4923vSOERUclmVqcQpo2Z
 9dZC6Zp5/imqpLNk4ctqtTZcSOridkS18xnl+ts=
X-Google-Smtp-Source: APXvYqwoFV/2mmIUnIen+iGNTWGL2iKe81qUb57QjAm12sViws9Te4KN/ERYebT9jYy+13diP//7AXRCkx/uQgDHlLE=
X-Received: by 2002:adf:db12:: with SMTP id s18mr23027525wri.335.1562074397596; 
 Tue, 02 Jul 2019 06:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <1561469191-26840-1-git-send-email-abel.vesa@nxp.com>
 <CAEnQRZCVQ0+pRh6akiZJXU-fRugEXmnthZp8Q2=aXFXCO3vcUg@mail.gmail.com>
 <20190702132647.3kyfl5gx6ghdiizl@fsr-ub1664-175>
In-Reply-To: <20190702132647.3kyfl5gx6ghdiizl@fsr-ub1664-175>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 2 Jul 2019 16:33:06 +0300
Message-ID: <CAEnQRZDn83HDR+k101UA9MVnCmQevAQcFTCRoS__Xf0PwCCSFQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Init rates and parents configs for
 clocks
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_063319_285047_DB347D91 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 4:26 PM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> On 19-06-26 15:45:15, Daniel Baluta wrote:
> > On Tue, Jun 25, 2019 at 4:42 PM Abel Vesa <abel.vesa@nxp.com> wrote:
> > >
> > > Add the initial configuration for clocks that need default parent and rate
> > > setting. This is based on the vendor tree clock provider parents and rates
> > > configuration except this is doing the setup in dts rather than using clock
> > > consumer API in a clock provider driver.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 36 +++++++++++++++++++++++++++++++
> > >  1 file changed, 36 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > index 232a741..ab92108 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > @@ -451,6 +451,42 @@
> > >                                          <&clk_ext3>, <&clk_ext4>;
> > >                                 clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
> > >                                               "clk_ext3", "clk_ext4";
> > > +                               assigned-clocks = <&clk IMX8MM_CLK_AUDIO_AHB>,
> > > +                                               <&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
> > > +                                               <&clk IMX8MM_SYS_PLL3>,
> > > +                                               <&clk IMX8MM_VIDEO_PLL1>,
> > > +                                               <&clk IMX8MM_CLK_NOC>,
> > > +                                               <&clk IMX8MM_CLK_PCIE1_CTRL>,
> > > +                                               <&clk IMX8MM_CLK_PCIE1_PHY>,
> > > +                                               <&clk IMX8MM_CLK_CSI1_CORE>,
> > > +                                               <&clk IMX8MM_CLK_CSI1_PHY_REF>,
> > > +                                               <&clk IMX8MM_CLK_CSI1_ESC>,
> > > +                                               <&clk IMX8MM_CLK_DISP_AXI>,
> > > +                                               <&clk IMX8MM_CLK_DISP_APB>;
> > > +                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
> > > +                                               <0>,
> > Isn't there a macro for 0? (dummy clock?)
>
> I don't know about any such macro. If you're referring to IMX8MM_CLK_DUMMY,
> that can't be used here since all I want here is to skip setting a parent to
> the  IMX8MM_CLK_IPG_AUDIO_ROOT. If I use IMX8MM_CLK_DUMMY (along with &clk)
> it will set the parent to IMX8MM_CLK_DUMMY and that's not what's needed here.
>
> This is in accordance to the documentation:
>
> Documentation/devicetree/bindings/clock/clock-bindings.txt:
>
> "To skip setting parent or rate of a clock its corresponding entry should be
> set to 0, or can be omitted if it is not followed by any non-zero entry."

You are right. Thanks for the explanation!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
