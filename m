Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512631A7C07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PadZ77HybKcZ/0X1uzmFac5PL6VHR9aX5sjsmegXhAM=; b=QOnBQC2bCLhBrf
	4BXMsHTz/vS9lYgM1xfg9TDgclfx5Vgq2IFvpydsb6S4xw8ljyHIwFQl/99CGkjtWXGgbRRm1Eq4n
	tpDswgCW+wA5V9/GIOt8et60Iyr3EtB2sCDmhboS42UrROM1pGJL20oCneUa+8eYXg1ZgF5jyupC3
	faPhc6g3yc42IKdwpSqAhya9Ty9oPkgMcYnKUA6+R5INVzWTBzEcoqrSaEqBlkVSkHsawQjItsHHl
	GFW3engTySzybZgf1lukgnrkKAWlDt9K/1YHuuJvDhzfMsbNtwYZZSRl1RGBd7J+oNITLRGMZUJht
	Zonl/n3Mb1NN/pv2j6PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLNE-0005ng-Em; Tue, 14 Apr 2020 13:13:08 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLN6-0005n7-Eh
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:13:02 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 98D6224000E;
 Tue, 14 Apr 2020 13:12:55 +0000 (UTC)
Date: Tue, 14 Apr 2020 15:12:55 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Message-ID: <20200414131255.GK34509@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
 <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
 <20200414111600.GE34509@piout.net>
 <a07d841e-efa9-6c01-69e2-0ed33f9759c5@microchip.com>
 <20200414124741.GJ34509@piout.net>
 <ae278226-7616-5306-a8b5-3f937aa6b322@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae278226-7616-5306-a8b5-3f937aa6b322@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061300_626535_749153AF 
X-CRM114-Status: GOOD (  12.48  )
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

On 14/04/2020 13:05:03+0000, Claudiu.Beznea@microchip.com wrote:
> >>> But this is very unlikely to happen because this would be limited to a
> >>> single board device tree instead of impact every sam9x60 based boards.
> >>
> >> Very unlikely but a having a patch with diff like this:
> >>
> >> +&gpbr {
> >> +     status = "okay";
> >> +};
> >> +
> >> +&rtt {
> >> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> >> +     status = "okay";
> >> +};
> >> +
> >>
> >> and reverting it may affect the other users of gpbr in sam9x60ek.dts.
> >>
> > 
> > Again, this affects only sam9x60ek.dts instead of possibly multiple DTs
> > that may be out of tree. So the risk of doing that is null.
> 
> Anyway... I'll merge it although I don't consider is the right way.
> 

Do as you wish but a board DT change mixed with a dtsi is a no go.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
