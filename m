Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F70AC88E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdbrpAKTgvllkybgFssFW7y50nzWl4tFHAkoxgQALsM=; b=nO78r+JFWG6R+W
	h+GHpIwi1Z1/EhI/PmUZ6sQYWdRgzkVHTCljD/SFFjuton7pww0sHKqT2GRMfLvAx60GwR2E9Tf2g
	eMOlRch+d9weK+VH3NL08ML8Hr4CcaQbPAFd5FF4Z3A3fjn/rJ6aVKjchuKycg391ECU1e5SjKgui
	yoOVQdmFOHDAUVQyO2EFcuQaVXH9+wnO3nnjrVM9R6QeEPNRGN9Wb78uO7M3ov8w38/jUfDZGggAk
	5xAEnDv63/IHBg12EAArclQ/PHK7es6MC9fyibxFPb+b8OLn5zEank0Warl7mRhHp6B7VVymAHgLx
	TTA0+z2Qi6yvfBhNcmfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eun-0003VW-67; Sat, 07 Sep 2019 17:54:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6euZ-0003VA-AU
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:54:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id k2so9514694wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hiUXBkiQbc16IdopYPDPirbBRyqBVObPwXAlnyGJKFM=;
 b=FjTCr5v8LuQgVVNsuDdiwTTeimQZm0P9jI5mkwRE55/MwI5OMxqV6tDISyp8Ghxtfv
 cICzYY9w8DsHGC4tCzwWzzPZ4oDJhTeuu0PaD+YqSugVSapkGnyeEDiJXo3Np9ao5f5Y
 kVYGYcbLkRQ5rNx7ADwCHab6WWS55lPJ0VnGYaSsGWu5urDfuWxojP3ej/bv4eSWPEXQ
 Pnx+PmVCC7CULc+68zAoxNW128zHZqkMAMlj/OEVNrjPg+KwD4hLWvyGRRHr6dOC3fUL
 y7+JvbDH66lW/Vb9o9IXS07zUkYyfagHelRqbL77GJugZIRVueMOGqvEEX7/DNSZDTBa
 pJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hiUXBkiQbc16IdopYPDPirbBRyqBVObPwXAlnyGJKFM=;
 b=cjWrjgVKEDo7ibHNvd8rPWnwZfnji3LaNy84v7EZiSbMKxaAMKPQkFx8Y2L9Fms+cc
 Lj3R46WLH31CZ8+0K8vcHSU/+dmx992hUBUY5d2EXyv9nygDgsiVkVui28vJwyBdXmN5
 PhAWwjYwom/LKz8EF+l6FUXJUrLf6e68t99A3cOouoUVMMT51Bdpl0HOD/XROmpu1ePz
 f0ZuiI9l61r+cSfiw+95AZCrqUj/t1M9WRDAeeswjG130VfjfLxcvQTHakk7s3aHgcQB
 ZHRndxBWE05fRj3tynyv5DRNnVexsLw620SwPJOEuYkNuZ4Az8gEvwYc8e8LenNmP87n
 OFqA==
X-Gm-Message-State: APjAAAXxQSwFKQaBBWe1bgl7TFDCOQBmRXuAXRsuzV96SBUFtwu1Re1B
 AS0GTC+8+99bb3ANkjsnC3g=
X-Google-Smtp-Source: APXvYqzeU9yRw1n3fBHksbV82lOrLtD14+mnTih2C50hKWyUxYtUbZ3svSZc/H2l0oAT/0tZcV+tmA==
X-Received: by 2002:a1c:7c15:: with SMTP id x21mr13095007wmc.154.1567878849794; 
 Sat, 07 Sep 2019 10:54:09 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 b194sm20110217wmg.46.2019.09.07.10.54.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:54:09 -0700 (PDT)
Date: Sat, 7 Sep 2019 19:54:07 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 4/9] ARM: dts: sun8i: r40: add crypto engine node
Message-ID: <20190907175407.GB2628@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-5-clabbe.montjoie@gmail.com>
 <20190907040217.kzvq7gfxz67pluhz@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907040217.kzvq7gfxz67pluhz@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_105411_360741_5B6B4BB9 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 07:02:17AM +0300, Maxime Ripard wrote:
> On Fri, Sep 06, 2019 at 08:45:46PM +0200, Corentin Labbe wrote:
> > The Crypto Engine is a hardware cryptographic offloader that supports
> > many algorithms.
> > It could be found on most Allwinner SoCs.
> >
> > This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm/boot/dts/sun8i-r40.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> > index bde068111b85..7eb649cea163 100644
> > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > @@ -266,6 +266,17 @@
> >  			#phy-cells = <1>;
> >  		};
> >
> > +		crypto: crypto-engine@1c15000 {
> > +			compatible = "allwinner,sun8i-r40-crypto";
> > +			reg = <0x01c15000 0x1000>;
> > +			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
> > +			clock-names = "ahb", "mod";
> > +			resets = <&ccu RST_BUS_CE>;
> > +			reset-names = "ahb";
> > +			status = "okay";
> 
> The driver will probe if status is not declared, so if you want it
> always enabled you should simply remove status
> 

Fixed, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
