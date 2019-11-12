Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E49FF91A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:12:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HiDX6rRf23/oBLOAJ+RgMUlYh50cgf3eOZJYO7rAmbE=; b=tNyG+bX6w73P8h
	U/Q2X9+8lh3FIKjL1k/W7Qnly6nbyz5CTBtBLNjDs3tvRCC92+czBo3y2XO1SUu/+F32XALOetD7J
	UCkgbky5fR3uMqBbpdx1pvbZiR1PRzm+oGLuHP8FxY+XGsGfupXYYKSxH5QXr3Rmd3ECqZoWPL1wU
	vHsTlxYIZta/OC5WjDQDNevAirLPTwaRLHb8HOOmI08mWOacjLJTYLT545Yx564QqdiEbWwRcH4xj
	OFDKuQ+6MJYRg0dQtqL4EJCQiM/cNlb7WmShsiOpNnSKR8AyZ9uOU2eRegEKuvB6LzbY8KU08LWnl
	/tWiIdQC4czvRy0DZW+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWu7-0001bO-0F; Tue, 12 Nov 2019 14:12:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWtz-0001b4-9L
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:12:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id a24so11345543edt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 06:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KxSPlrqtEzHjDjmMoesMoA1oYmvT3buCd5ykJgz1zH4=;
 b=azxIbnR14SLX1EEBSNv3knBGIxYmKTsERV55xjemZBeEqgKPTy37mAxU7sFe2Rj/tf
 OY1Jisto9ME9u6C31XRuv2Sh6WwETVDHCBCGdGvfUpUafPdNZRrn7hg8Fcc6kJVqsL+N
 LDHra+Z0UDv49RtAlISWxn5bNJ65EXgriDHyOUw/jwOjySmNy/jmAbtwONICQJBTaP6I
 QF5kBz2CAuZ6yfB3/QV7SzKo9ofZBaV/TfsijKaGB0av6B+9x7LaikNc5YYLvTJKHzeK
 XZd39b7WwXlmuRPFEF/Xj4h87odt64jwzcjSVZx+vuArqAIJ+o1WeDZS/hjln6zSd+zW
 aGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KxSPlrqtEzHjDjmMoesMoA1oYmvT3buCd5ykJgz1zH4=;
 b=cC/+bUMbK0NJri5IfLxJWCf5qk3Rcle0/rGT9pkXrch5qXM8d2YkFXkIcu9kSPX1qX
 NM2sjxLqYNRaIEApqr9ro+hU0ecGTTpPFv7I1HDBGt4d9X9NfjST4iTDAFcYNNC/sCvr
 1PvtmeCLGXr0cVpEVWZGT2GCvNZX3VI4wdaexF7+iRrtC4RQbsTjeySEYEsvcTdhHYpr
 cB55hwTLmHMWXxbRMBz2aqlXSU+26qe1fCIujUpnF/OK46RahutjcZ2pBT2joGjMOlUs
 7D+kXJ6t1CAt6XOtzlrEqS+zUonSMfvOieO9Uss7UPEZ0gKlpPliIlDDIaZfLomZU0O7
 I56w==
X-Gm-Message-State: APjAAAWLU/NJvWXPQ+wksSRvermSASdeo0xytU7WebAWQiIaAWXFcXTs
 SmsVmo6z4ho3KWb6lunlSYZwSGp6sKL8owx8oPg=
X-Google-Smtp-Source: APXvYqx6gy2SiezBYVxCNFX0y4S7P2z/l2MUZWIDu9IBINqX69LmFc046Aug3tBhXJobpzrUhTTqryc2NmW89CYErdw=
X-Received: by 2002:a50:91c4:: with SMTP id h4mr33376125eda.36.1573567933749; 
 Tue, 12 Nov 2019 06:12:13 -0800 (PST)
MIME-Version: 1.0
References: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
 <20191112132010.18274-3-linux@rasmusvillemoes.dk>
 <CA+h21hqw16o0TqOV1WWYYcOs3YWJe=xq_K0=miU+BFTA31OTmQ@mail.gmail.com>
 <6d4292fcb0cf290837306388bdfe9b0f@www.loen.fr>
 <CA+h21hpE-Nu_Sh1fRizUoEs082ev=9nzuumSXDrk-QTXdnEbzg@mail.gmail.com>
 <aee81d64979bb72b63a8889fb7193c3f@www.loen.fr>
In-Reply-To: <aee81d64979bb72b63a8889fb7193c3f@www.loen.fr>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 12 Nov 2019 16:12:02 +0200
Message-ID: <CA+h21hqxpy-n6HBkyGSKFEm_CujG5x3Y3Wj-frj0OSwbVWgCng@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII
 PHYs
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_061215_348111_5C56C612 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
 Andrew Lunn <andrew@lunn.ch>, netdev <netdev@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 at 16:04, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2019-11-12 15:03, Vladimir Oltean wrote:
> > On Tue, 12 Nov 2019 at 15:49, Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On 2019-11-12 14:53, Vladimir Oltean wrote:
> >> > On Tue, 12 Nov 2019 at 15:20, Rasmus Villemoes
> >> > <linux@rasmusvillemoes.dk> wrote:
> >> >>
> >> >> From: Vladimir Oltean <olteanv@gmail.com>
> >> >>
> >> >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and
> >> >> eth1
> >> >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> >> >>
> >> >> Switching to interrupts offloads the PHY library from the task of
> >> >> polling the MDIO status and AN registers (1, 4, 5) every second.
> >> >>
> >> >> Unfortunately, the BCM5464R quad PHY connected to the switch does
> >> >> not
> >> >> appear to have an interrupt line routed to the SoC.
> >> >>
> >> >> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
> >> >> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> >> >> ---
> >> >>  arch/arm/boot/dts/ls1021a-tsn.dts | 4 ++++
> >> >>  1 file changed, 4 insertions(+)
> >> >>
> >> >> diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts
> >> >> b/arch/arm/boot/dts/ls1021a-tsn.dts
> >> >> index 5b7689094b70..135d36461af4 100644
> >> >> --- a/arch/arm/boot/dts/ls1021a-tsn.dts
> >> >> +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> >> >> @@ -203,11 +203,15 @@
> >> >>         /* AR8031 */
> >> >>         sgmii_phy1: ethernet-phy@1 {
> >> >>                 reg = <0x1>;
> >> >> +               /* SGMII1_PHY_INT_B: connected to IRQ2, active
> >> low
> >> >> */
> >> >> +               interrupts-extended = <&extirq 2
> >> >> IRQ_TYPE_EDGE_FALLING>;
> >> >>         };
> >> >>
> >> >>         /* AR8031 */
> >> >>         sgmii_phy2: ethernet-phy@2 {
> >> >>                 reg = <0x2>;
> >> >> +               /* SGMII2_PHY_INT_B: connected to IRQ2, active
> >> low
> >> >> */
> >> >> +               interrupts-extended = <&extirq 2
> >> >> IRQ_TYPE_EDGE_FALLING>;
> >> >>         };
> >> >>
> >> >>         /* BCM5464 quad PHY */
> >> >> --
> >> >> 2.23.0
> >> >>
> >> >
> >> > +netdev and Andrew for this patch, since the interrupt polarity
> >> > caught
> >> > his attention in v1.
> >>
> >> Certainly, the comments and the interrupt specifier do not match.
> >> Which one is true?
> >>
> >>          M.
> >> --
> >> Jazz is not dead. It just smells funny...
> >
> > The interrupt specifier certainly works. So that points to an issue
> > with the description. What do you mean, exactly? Does "active low"
> > mean "level-triggered"? How would you have described this?
>
> Active Low definitely implies level triggered. And if that's how it
> is described in the TRM, than the interrupt specifier is wrong, and
> just *seem to work* because the level goes back to high between two
> interrupts.
>
> Also, shared *edge* interrupts do not work, full stop. So I'm pretty
> convinced that what you have here is just wrong.
>
>          M.
> --
> Jazz is not dead. It just smells funny...

Ok, I've tested both interrupts with IRQ_TYPE_LEVEL_LOW and they still
work. I'll let Rasmus re-send if there is no trouble with the dtsi
patch. Sorry for the trouble and thanks for teaching me something new.

Cheers,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
