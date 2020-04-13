Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5180E1A6558
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epjgDKUO7VcGV7KHx1rf2WeXCCokg6OdPGnpCUwvR5Y=; b=rLRm8VBTRpcf++
	1X3yieoEG/EOY5aKKnMhl/JrN6tSXOrNA4jFSQDkQzC+AwgXBx4ulwYZW5kEjW8/2l12UfwLQoAYe
	vlH3ZSKSAFRTk6hehPiDoenW8Q/PomfIPBZD76C/duxddflzH/9Y7HdB3FVJpHvLuOehkqTiAY/cU
	VYpDwh/NRYFl7Dnss6jsD9rcjnMXiSveFSwrpF3vqZwez835JRDrWz4CUSr3i+N3rgZX2eHXZ4uLS
	Rl0G3Ocyu56Z2HMgpQKwSCg25YW2WMEAkB1PYv7FqMdPtOhS9XyZ6zEo+ffhxasZCPDTUwdmX60G7
	/eLQFuD5GsBO1wc4+PeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwcL-0006LL-Cl; Mon, 13 Apr 2020 10:47:05 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwcE-0006KX-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:46:59 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1FA72240004;
 Mon, 13 Apr 2020 10:46:52 +0000 (UTC)
Date: Mon, 13 Apr 2020 12:46:52 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Message-ID: <20200413104652.GE3628@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_034658_186519_AA9B9196 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/04/2020 08:51:12+0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 11.04.2020 01:26, Alexandre Belloni wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 10/04/2020 19:26:58+0300, Claudiu Beznea wrote:
> >> Add RTT.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >> ---
> >>  arch/arm/boot/dts/at91-sam9x60ek.dts | 5 +++++
> >>  arch/arm/boot/dts/sam9x60.dtsi       | 7 +++++++
> >>  2 files changed, 12 insertions(+)
> >>
> >> diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
> >> index ab3d2d9a420a..4020e79a958e 100644
> >> --- a/arch/arm/boot/dts/at91-sam9x60ek.dts
> >> +++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
> >> @@ -617,6 +617,11 @@
> >>       };
> >>  };
> >>
> >> +&rtt {
> >> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> >> +     status = "okay";
> > 
> > Is there any point using a gpbr register while there is already a much
> > better RTC in the system?
> 
> Only to have it also enabled.
> 

Why would one use the RTT while the RTC is far superior?

> > 
> > In any case, this diff should be merge with the other at91-sam9x60ek.dts
> > change instead of being with the dtsi change.
> 
> The changes in this patch are related to enabling the RTT. The other dts
> change is related to enabling gpbr. The RTT uses that enabled gpbr -> one
> change per patch.
> 
> If you still want to merge then, I'll do it, but then it becomes mixed.
> 

This patch is already mixing add the gpbr in sam9x60ek and add the node
in sam9x60.dtsi which is worse.

Just have one patch adding the rtt node to the sam9x60.dtsi and then a
patch adding the RTT to sam9x60ek. Because the RTT uses the gpbr, it is
a good time to add enable the gpbr, this is a single functionnal change.

Let's say that for some reason, the RTT patch on sam9x60ek has to be
reverted, then the RTT node is still defined which is good for all the
other eventual users.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
