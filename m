Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BDFF90E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaEGksbuYLzUPKYG8zMPZ0G1VEAq5Uc5KhRNwo/9pek=; b=kXxpZsG4n6LCPV
	T1VHAoIs/++ax0DKAXtiZL+L1PtfN6H/kpB3JJ1BP0sqIFTnvxEAh2LPmXGOFzg39vIcMnSE8OoQM
	DpEhXVIdqh0gMqW5vOOKbmzZNXyQlkt+x0BDkwrj5GKIkDF6lGN2jxDJtk36ARZpGn2knD42Y83TJ
	iil4KYboVN8Qu6Bgq5xlsbveoQle+KhieSHfh2711g7c6iT3eL/ccDobszm6QiAgmf+rpI7MoP0Le
	0NXtfgq7x0HFa5aFBV2Yv4LhLqWN4h9jzsPCkZXag84beTIg3q2vgy6TI5dp9EtB8tITePKgVAj40
	FMV99XB6YpHxle7fMzmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWTH-0003eK-GU; Tue, 12 Nov 2019 13:44:39 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWT7-0003db-Pb
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:44:31 +0000
Received: by mail-ed1-x542.google.com with SMTP id b5so14907480eds.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gXwOc0pJ6hqLtPP5MF3njwCDDhwJ+LtuEm52q4JdFG0=;
 b=YwcU2/mITcV4eLtuCPb7UvqNbE8wHLtLX/4m397nu8Ryp88ewpHBgxlJ1IB8gkm/4D
 +y1zXkERVtNiYvtmcqA/ADrdJsNZd299zT6m+hZ3c/uSjcWwqOydkDXZKTG0ubCfpAxP
 ySLfu1WWcUYFbJPmqrkVi56XkRw4sjEL/6hfDwSuUa1tY2xYk/7LkTNhAS5WxFJjIegZ
 N5ZCaAi5dXg1YsV7viSgFpNHCw/3qlIqSCH24n3MVoSz1ppEHhSdBibhjzSvZk41K6yb
 IHqYq40KcXiUX0IV4GA5YpfvxyUkaFbr9NL0u3slJap8qUMWvzk8Ipabi9HMPk5T21US
 jCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gXwOc0pJ6hqLtPP5MF3njwCDDhwJ+LtuEm52q4JdFG0=;
 b=cpk2YACxzLQ14vJSWUoELQStRGrlOi5dv4Fm1c2XOvj97uDxVQhn6uziMGa+3UZQwi
 eMjC/ac7gVBGjVeBbZYBiTSBU7xQW7gmQaTZK4qG6YgOAOjIyaLfVvpWxA7qU346VW9L
 ujC+Y8Q8YwURuXcswHddh1FURrxmqJ8uMeoxLtbDXmOL4G2xvjsVKzE6j+P7vCOQBKGR
 4FoR0Tx82Iq/im2QMzDLn1+4IWjt8FaJ50jXepn1wFpHO6O4i+bXFqGA49LUYRZ5zgfE
 QgLNIX0VkfZtwxfkU/OHBieWFxAVbx32fMcCVlFNIIr+nH6eBxEFyc/GOWMZWzkQJ/75
 kOzg==
X-Gm-Message-State: APjAAAXYZXs+5dmpFUtERgaXEZakW1ivrHAJ4sDf4IYprBpicDlNenjK
 xq9pDfbId3BDtbfrrNJUumisYvHol5aum0Cvtf4=
X-Google-Smtp-Source: APXvYqwEfukonUP8KqyQ+bKuKOQ1O/aGrq59NYnVrf1rT78e31Bw/atAL5285NQic4/J5nTNN05SD0UaFdCbcBRbuL4=
X-Received: by 2002:a50:b63b:: with SMTP id b56mr33037948ede.165.1573566267462; 
 Tue, 12 Nov 2019 05:44:27 -0800 (PST)
MIME-Version: 1.0
References: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
 <20191112132010.18274-3-linux@rasmusvillemoes.dk>
In-Reply-To: <20191112132010.18274-3-linux@rasmusvillemoes.dk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 12 Nov 2019 15:44:16 +0200
Message-ID: <CA+h21hqw16o0TqOV1WWYYcOs3YWJe=xq_K0=miU+BFTA31OTmQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII
 PHYs
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_054429_827668_BE46BAF9 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Andrew Lunn <andrew@lunn.ch>, Marc Zyngier <maz@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, netdev <netdev@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 at 15:20, Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:
>
> From: Vladimir Oltean <olteanv@gmail.com>
>
> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
>
> Switching to interrupts offloads the PHY library from the task of
> polling the MDIO status and AN registers (1, 4, 5) every second.
>
> Unfortunately, the BCM5464R quad PHY connected to the switch does not
> appear to have an interrupt line routed to the SoC.
>
> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  arch/arm/boot/dts/ls1021a-tsn.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
> index 5b7689094b70..135d36461af4 100644
> --- a/arch/arm/boot/dts/ls1021a-tsn.dts
> +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> @@ -203,11 +203,15 @@
>         /* AR8031 */
>         sgmii_phy1: ethernet-phy@1 {
>                 reg = <0x1>;
> +               /* SGMII1_PHY_INT_B: connected to IRQ2, active low */
> +               interrupts-extended = <&extirq 2 IRQ_TYPE_EDGE_FALLING>;
>         };
>
>         /* AR8031 */
>         sgmii_phy2: ethernet-phy@2 {
>                 reg = <0x2>;
> +               /* SGMII2_PHY_INT_B: connected to IRQ2, active low */
> +               interrupts-extended = <&extirq 2 IRQ_TYPE_EDGE_FALLING>;
>         };
>
>         /* BCM5464 quad PHY */
> --
> 2.23.0
>

+netdev and Andrew for this patch, since the interrupt polarity caught
his attention in v1.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
