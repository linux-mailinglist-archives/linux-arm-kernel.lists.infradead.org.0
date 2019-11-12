Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7429F9101
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g/6XN1KwVNJjn57geQFAiYWEDVLRhCiPafzE7VbWp3s=; b=tZ0TaCbfXGfZvqz+Z5loxIBet
	lTwAyetbI6csACfbFrlWvCtGbVnKn9eEpl8AosIaCDmke564TwJ2YoZSHhTqxSf4W/YcIZ/HkZjmO
	XG4Gxg2DPMWIwqbJ/Poq5JgphodY+Ez5ZD3TFwHHjsFkExcS1GoDSjm5q34BUyp3GCJp7z0QNb0Qz
	IZ2H9A/CcK1ki1PMynjirKkgegvQofkopR4hltLrlj3dIAI9jwrrt3pRUZ2uLb24tXGXDExtJgUcr
	6jqOv4I9BA+Nk253F/6cLVfjDW7V566gHmLi1IWvsQu/klIKmtrDSqZ7As4ne109Fy5UmZGonn82u
	gtMx1n3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWY1-0005nI-KW; Tue, 12 Nov 2019 13:49:33 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWXp-0005mv-O0
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:49:23 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUWXl-00084H-Gl; Tue, 12 Nov 2019 14:49:17 +0100
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII
 PHYs
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 12 Nov 2019 14:58:38 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CA+h21hqw16o0TqOV1WWYYcOs3YWJe=xq_K0=miU+BFTA31OTmQ@mail.gmail.com>
References: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
 <20191112132010.18274-3-linux@rasmusvillemoes.dk>
 <CA+h21hqw16o0TqOV1WWYYcOs3YWJe=xq_K0=miU+BFTA31OTmQ@mail.gmail.com>
Message-ID: <6d4292fcb0cf290837306388bdfe9b0f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: olteanv@gmail.com, linux@rasmusvillemoes.dk,
 shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, andrew@lunn.ch
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_054921_926295_5912CE11 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, netdev <netdev@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-12 14:53, Vladimir Oltean wrote:
> On Tue, 12 Nov 2019 at 15:20, Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> From: Vladimir Oltean <olteanv@gmail.com>
>>
>> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and 
>> eth1
>> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
>>
>> Switching to interrupts offloads the PHY library from the task of
>> polling the MDIO status and AN registers (1, 4, 5) every second.
>>
>> Unfortunately, the BCM5464R quad PHY connected to the switch does 
>> not
>> appear to have an interrupt line routed to the SoC.
>>
>> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
>> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>> ---
>>  arch/arm/boot/dts/ls1021a-tsn.dts | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts 
>> b/arch/arm/boot/dts/ls1021a-tsn.dts
>> index 5b7689094b70..135d36461af4 100644
>> --- a/arch/arm/boot/dts/ls1021a-tsn.dts
>> +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
>> @@ -203,11 +203,15 @@
>>         /* AR8031 */
>>         sgmii_phy1: ethernet-phy@1 {
>>                 reg = <0x1>;
>> +               /* SGMII1_PHY_INT_B: connected to IRQ2, active low 
>> */
>> +               interrupts-extended = <&extirq 2 
>> IRQ_TYPE_EDGE_FALLING>;
>>         };
>>
>>         /* AR8031 */
>>         sgmii_phy2: ethernet-phy@2 {
>>                 reg = <0x2>;
>> +               /* SGMII2_PHY_INT_B: connected to IRQ2, active low 
>> */
>> +               interrupts-extended = <&extirq 2 
>> IRQ_TYPE_EDGE_FALLING>;
>>         };
>>
>>         /* BCM5464 quad PHY */
>> --
>> 2.23.0
>>
>
> +netdev and Andrew for this patch, since the interrupt polarity 
> caught
> his attention in v1.

Certainly, the comments and the interrupt specifier do not match.
Which one is true?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
