Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46252F60A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OMiPmZuu9ixsh0AoAyICVUGCw76XWpnaq93gQkp404=; b=YR7q1cpk0tuUjo
	lqi4gT8WUuinQvgjjziSTRGGGSfEslN/yKQgaHgRtSR8Y85qHW7GJIn7d9owXe81l+dl+uw4tBVZ2
	kzw4xM4Ula/E3ez5ZtLbXHT0pamyQ2FpZB9LoDSMnFzGm1YrFkDblB4S2y2e9FiHNJ0MfXz4pjAjD
	kI8u60zma30yif7H4ke88nWHvcYgZYMops5AdsG380LdvzXBBZiDv65AuS9BmJPcop2htwOjU9WJs
	CRS6snce5XsLSwuGC4jqvOo9pZZ/+bDTH7fhpJ09vfY8lVi0PBlnoMGpbARA6gjb68atCO14K9FvV
	6Ud/hdmrZlRnvIm4ov0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUQt-0006xP-RI; Sat, 09 Nov 2019 17:21:55 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUQj-0006wP-N4
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GnBQ82YlwA0ID38IFrxIGR1cO4p7JxsUcnjCyBe4x6E=; b=WMLHZ2PkZVx00hZyvDfl5UIP9s
 gxOZwLATHW98FpyGk4aPz/fdyyErcYH6+PsWU9Tvl96ExhmGlT5yQgcO3HNlC8WAjmgDTVuz2JJL+
 0k+cYrj8jVYxbCpGO/3yPXL3w68p1vm4H2Of5dZz/8GRYVTfN3y1LjhbqcdCg4LSM9z8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iTUQf-0003Ct-CI; Sat, 09 Nov 2019 18:21:41 +0100
Date: Sat, 9 Nov 2019 18:21:41 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
Message-ID: <20191109172141.GL22978@lunn.ch>
References: <20191109105642.30700-1-olteanv@gmail.com>
 <20191109150953.GJ22978@lunn.ch>
 <CA+h21hrqczuOhTzWFZKX0XvgjgTzHT=3AdCPvO_eSabOzA3OCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hrqczuOhTzWFZKX0XvgjgTzHT=3AdCPvO_eSabOzA3OCQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_092145_777007_F4B3E9F9 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "leoyang.li@nxp.com" <leoyang.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 09, 2019 at 05:16:48PM +0200, Vladimir Oltean wrote:
> On Saturday, 9 November 2019, Andrew Lunn <andrew@lunn.ch> wrote:
> > On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
> >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> >>
> >> The interrupts are active low, but the GICv2 controller does not suppo=
rt
> >> active-low and falling-edge interrupts, so the only mode it can be
> >> configured in is rising-edge.
> >
> > Hi Vladimir
> >
> > So how does this work? The rising edge would occur after the interrupt
> > handler has completed? What triggers the interrupt handler?
> >
> > =A0 =A0 =A0 =A0 Andrew
> >
> =

> Hi Andrew,
> =

> I hope I am not terribly confused about this. I thought I am telling the
> interrupt controller to raise an IRQ as a result of the low-to-high trans=
ition
> of the electrical signal. Experimentation sure seems to agree with me. So=
 the
> IRQ is generated immediately _after_ the PHY has left the line in open dr=
ain
> and it got pulled up to Vdd.

Hi Vladimir

                       t1                    t2

     ------------------\                     /----------------
                        \-------------------/

The interrupt output is active low. So it is high by default. At time
t1 something happens, say the link is established. The interrupt
becomes active, we have a failing edge. We want the interrupt
controller to fire. Lets say it does. The interrupt handler runs, and
clears the interrupt cause. This is at time t2. We then get a rising
edge and the PHY releases the interrupt, and the level returns to
high.

So how does this work if you have the interrupt controller triggering
on a rising edge? The edge won't rise until the interrupt handler
finishes its work.

	 Andrew

   =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
