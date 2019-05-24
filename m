Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE8A29338
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjGm/yqxTRKr+QFsCz4O7td51HF66QZRL4D4zJX39k4=; b=ftIOkQbVpbt+lE
	Hh5Ycwg25uFipGUxJu8fCX4jdjq0eBlphGPbADSj5B1HsRoGjXQ/rUrnSW9pk6dRTmoyhYMuafkyz
	jlPn8QsxNJgzMraeX0TrIUeGSYNezkpRH+Npjg9sIXMrAVh5VArZ1VHpwJEjJJyhYaALe27bCeGs7
	EusZQKbqDdHHGtCXjulbOc7AoQ3KfLdFUlYTyrl6XqJ8UZG+FE0adRSFxeb46aB0SpCwlRC1OSouy
	LBmoK1+2DjIjAZqScy7tfLJDjg190A7OPK7Ywz+jTDuLSYEcyXRejHa2DEbA3g7jkFCMMCgeW9T/9
	pdpKM0PJDwAKSKWm3g3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5g4-00042c-OD; Fri, 24 May 2019 08:35:48 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5fw-00040n-Du
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:35:42 +0000
Received: from g550jk.localnet (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 6D2B1C1D14;
 Fri, 24 May 2019 08:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1558686937; bh=8QxbOGfJLKmBY8BnGjqJHLbP9D2w96jkIDyZThAA41g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ojaeizz5pLdCcF0xdLCfW2ni1k4DaVA/6/5fp3iYD4hTrR7fARGyYCfz5XnQRDoHI
 7h/ZuL2OpPXI3J+LHDxh1JlHJgpGe2DJBb1PlzoBfqK8WFhvQ3wa5it0XQv1AD4S2X
 FKdfKRnUKtB9iNVgwby3tNXv0SssAzJNxWfoQYqE=
From: Luca Weiss <luca@z3ntu.xyz>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Date: Fri, 24 May 2019 10:35:36 +0200
Message-ID: <4343071.IDWclfcoxo@g550jk>
In-Reply-To: <20190521142544.ma2xfu77bamk4hvc@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
 <EF411F71-D257-41FC-9248-B0E3F686B6B9@z3ntu.xyz>
 <20190521142544.ma2xfu77bamk4hvc@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_013540_822949_A754F457 
X-CRM114-Status: GOOD (  26.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Dienstag, 21. Mai 2019 16:25:44 CEST Maxime Ripard wrote:
> On Tue, May 21, 2019 at 03:52:47PM +0200, luca@z3ntu.xyz wrote:
> > On May 21, 2019 3:09:55 PM GMT+02:00, Maxime Ripard 
<maxime.ripard@bootlin.com> wrote:
> > >On Tue, May 21, 2019 at 08:43:45AM +0200, luca@z3ntu.xyz wrote:
> > >> On May 20, 2019 1:07:42 PM GMT+02:00, Maxime Ripard
> > >
> > ><maxime.ripard@bootlin.com> wrote:
> > >> >On Sat, May 18, 2019 at 07:09:30PM +0200, Luca Weiss wrote:
> > >> >> Add a node describing the KEYADC on the A64.
> > >> >> 
> > >> >> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> > >> >> ---
> > >> >> 
> > >> >>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 7 +++++++
> > >> >>  1 file changed, 7 insertions(+)
> > >> >> 
> > >> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >> >
> > >> >b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >> >
> > >> >> index 7734f70e1057..dc1bf8c1afb5 100644
> > >> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >> >> @@ -704,6 +704,13 @@
> > >> >> 
> > >> >>  			status = "disabled";
> > >> >>  		
> > >> >>  		};
> > >> >> 
> > >> >> +		lradc: lradc@1c21800 {
> > >> >> +			compatible = "allwinner,sun4i-a10-lradc-
keys";
> > >> >> +			reg = <0x01c21800 0x100>;
> > >> >> +			interrupts = <GIC_SPI 30 
IRQ_TYPE_LEVEL_HIGH>;
> > >> >> +			status = "disabled";
> > >> >> +		};
> > >> >> +
> > >> >
> > >> >The controller is pretty different on the A64 compared to the A10.
> > >
> > >The
> > >
> > >> >A10 has two channels for example, while the A64 has only one.
> > >> >
> > >> >It looks like the one in the A83t though, so you can use that
> > >> >compatible instead.
> > >> 
> > >> Looking at the patch for the A83t, the only difference is that it
> > >> uses a 3/4 instead of a 2/3 voltage divider, nothing is changed with
> > >> the channels.
> > >
> > >I guess you can reuse the A83t compatible here then, and a more
> > >specific a64 compatible in case we ever need to fix this.
> > >
> > >> But I'm also not sure which one (or a different one)
> > >> is used from looking at the "A64 User Manual".
> > >
> > >I'm sorry, what are you referring to with "one" in that sentence?
> > 
> > Sorry, I meant I didn't find anything in the A64 user manual whether
> > a 3/4 or a 2/3 voltage divider (or one with different values) is
> > used on the A64.
> 
> Ok :)
> 
> I guess you can just reuse the A83t compatible then, together with the
> A64's.
> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Hi Maxime,
I'd submit a v2 with these changes to v1 then:
                lradc: lradc@1c21800 {
-                       compatible = "allwinner,sun4i-a10-lradc-keys";
-                       reg = <0x01c21800 0x100>;
+                       compatible = "allwinner,sun50i-a64-lradc-keys",
+                                    "allwinner,sun8i-a83t-r-lradc";
+                       reg = <0x01c21800 0x400>;
                        interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
                        status = "disabled";
                };
Does that look okay?
The reg change is due to me not spotting the address being 0x01C2 
1800---0x01C2 1BFF, so the size should be 0x400 and not 0x100.

Thanks for the feedback,
Luca



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
