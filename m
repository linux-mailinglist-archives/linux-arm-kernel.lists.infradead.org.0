Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0A9F9119
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=612jS2TjeOxTSYiwyw8fycrUcjNiMEhai5ykNLdYAEw=; b=ArPg7rddrBOlO9
	okFRVXUqnCXkVqpSNCJ4ao0NWDy9uTXY4EsnlolcPd0B3tRFabpCAVOcgz+BayeTQz6w/UTHdEKvJ
	MFV5kw4FPRDrqagUCOsaUuHoHyU3ztXVxCWYHkvaAC5rNNSUiocXDj9NPH4nTKzOSLZKivRyzINXG
	XwDqyqumcwL3OXiVMsuaHsa0JrElJJesOTHr5BeubXtmwC38ywiBDvunz+C4deGz5dO2rKfeBxg19
	eAb0s5lDaBmXaOznLD4CAjr2/5/eaYlyvk68tdh9y3rk30VUPpumO8zyuZpgume8hqaGwKdMTr2ta
	+lKbC0+zEs/vB6kXsbwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWcL-0007uo-0p; Tue, 12 Nov 2019 13:54:01 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWcC-0007uN-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:53:53 +0000
Received: by mail-ed1-x542.google.com with SMTP id r16so14997022edq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pQcGXYOeHlLTHcZ1lo51qxyI9wQahbjQK0BQrlXS5rU=;
 b=ZQ4Ak+XUWpy6tCuJD8hjc5ZamO4lhS0gHReMpryPLOnorvowq4WXgrXPFvbyx/CCVg
 5Mv96LC4nLigaGD0ucmXb9/TCE/P7SzkMve/9RNYrcKx+ZtjQygIWfkCCb46IoiVLYaJ
 YheIG1ASMlRffDXyNQKIBFT6nGxc6PoIEVGO+WUr+cERECFDJsWbahMbIdJdttyw4pm7
 unBgDhkYDia6QBzqucjF6cX1FTf4kL6T/PjTZ37/cF/5dyscjmLUEG9xkYgIYGeOlT05
 bH6dCQVafBowD49kPxUUU1l5R/PZ10fYU75NLP+JwO1BUUV/FoOoSn/METjMmfDeQ3cA
 L+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pQcGXYOeHlLTHcZ1lo51qxyI9wQahbjQK0BQrlXS5rU=;
 b=ZLyqGS7bzw9Rgaa727Qd18CfbQOOd/auFTfGy/pK8PYp23YpMHjrmItgLMbXidCv4H
 eNTjZKRacDyKDrFI5xPmPOIuwpIvdg8zeOMkYG1J+LaQUiKLfe8D8j8zh334JBkrTVtQ
 OzoADMUPv4MkOJe1q8kyf5hzwXAfpHCaZZmfzjNahfqTJL6ejxFY1NKljpmWddtu9uKC
 lq6Dvfb4TpXvnGUMuzfXFdllpDgHVqZTHtfa7vl1TV7UaOxWzqKJExavOKWra0SeY3DQ
 RNTyQllJml7z7UN1Qo1bMwK5fzKAQDqp+eVggeVjtXKK2uYWD8WFH4YuknhnrGKhB9pU
 m2yg==
X-Gm-Message-State: APjAAAVXa11ZjeoVEgvO8TcOTHywNuxBmb/ZjurbwkmC1MEL/3sztUTv
 LEZe/JBphndw2ipeCfCYqgmDBZPN6dkg88pVIWw=
X-Google-Smtp-Source: APXvYqxO+WXiBJcbRCoMLP1h3kWtN5lV2SPbs9qh6z3L3L/q4O6fs+gNTF9PRsVm3lEi6KFhnXmie4NP8OeBlrchtgQ=
X-Received: by 2002:a50:c408:: with SMTP id v8mr32855306edf.140.1573566831102; 
 Tue, 12 Nov 2019 05:53:51 -0800 (PST)
MIME-Version: 1.0
References: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
 <20191112132010.18274-3-linux@rasmusvillemoes.dk>
 <CA+h21hqw16o0TqOV1WWYYcOs3YWJe=xq_K0=miU+BFTA31OTmQ@mail.gmail.com>
 <6d4292fcb0cf290837306388bdfe9b0f@www.loen.fr>
In-Reply-To: <6d4292fcb0cf290837306388bdfe9b0f@www.loen.fr>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 12 Nov 2019 15:53:40 +0200
Message-ID: <CA+h21hpE-Nu_Sh1fRizUoEs082ev=9nzuumSXDrk-QTXdnEbzg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII
 PHYs
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_055352_604548_415304FA 
X-CRM114-Status: GOOD (  18.23  )
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
 Andrew Lunn <andrew@lunn.ch>, netdev <netdev@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 at 15:49, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2019-11-12 14:53, Vladimir Oltean wrote:
> > On Tue, 12 Nov 2019 at 15:20, Rasmus Villemoes
> > <linux@rasmusvillemoes.dk> wrote:
> >>
> >> From: Vladimir Oltean <olteanv@gmail.com>
> >>
> >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and
> >> eth1
> >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> >>
> >> Switching to interrupts offloads the PHY library from the task of
> >> polling the MDIO status and AN registers (1, 4, 5) every second.
> >>
> >> Unfortunately, the BCM5464R quad PHY connected to the switch does
> >> not
> >> appear to have an interrupt line routed to the SoC.
> >>
> >> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
> >> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> >> ---
> >>  arch/arm/boot/dts/ls1021a-tsn.dts | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts
> >> b/arch/arm/boot/dts/ls1021a-tsn.dts
> >> index 5b7689094b70..135d36461af4 100644
> >> --- a/arch/arm/boot/dts/ls1021a-tsn.dts
> >> +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> >> @@ -203,11 +203,15 @@
> >>         /* AR8031 */
> >>         sgmii_phy1: ethernet-phy@1 {
> >>                 reg = <0x1>;
> >> +               /* SGMII1_PHY_INT_B: connected to IRQ2, active low
> >> */
> >> +               interrupts-extended = <&extirq 2
> >> IRQ_TYPE_EDGE_FALLING>;
> >>         };
> >>
> >>         /* AR8031 */
> >>         sgmii_phy2: ethernet-phy@2 {
> >>                 reg = <0x2>;
> >> +               /* SGMII2_PHY_INT_B: connected to IRQ2, active low
> >> */
> >> +               interrupts-extended = <&extirq 2
> >> IRQ_TYPE_EDGE_FALLING>;
> >>         };
> >>
> >>         /* BCM5464 quad PHY */
> >> --
> >> 2.23.0
> >>
> >
> > +netdev and Andrew for this patch, since the interrupt polarity
> > caught
> > his attention in v1.
>
> Certainly, the comments and the interrupt specifier do not match.
> Which one is true?
>
>          M.
> --
> Jazz is not dead. It just smells funny...

The interrupt specifier certainly works. So that points to an issue
with the description. What do you mean, exactly? Does "active low"
mean "level-triggered"? How would you have described this?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
