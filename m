Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA81F6198
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 22:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paGS6EgoMUUhFo5dtLM6Gf8vYqpVug7O3A4NosEAegs=; b=fS6MyQPZXs/iVa
	p0/iMHhoTayonwtDWKUnI1W6g5YbqHlR9NMKQSboudejxlB5BEc6aD+bDwLha8JddUrMXko1RhCIN
	1eYqZchqhcjJDnvx7f/gAFTVK/F2E+7a48N71PLL8V+O47WtRf2K2ol9ml/CRE5HBTMYt+IBNkEHk
	TAoQEt3CcdWJpU+jysQdQ2kiyLlU2yJF2g6XgUuzb/lOhW6YrH5N0YGIIoBIMYIGUAHPhsGpM2ug6
	1TPXP4TSB9X16Kgw4tg17APFRtDq/YrdetbRyJET+k34ghCFuZMx1bYOYpM1UgfJualRvsDStIa/t
	HJVxDG1P8Q7YPuvXCoqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTXvt-0000Q8-NC; Sat, 09 Nov 2019 21:06:09 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTXvl-0000P6-Tw
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 21:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AeGy6oWAVhpsj0BuOFBbXLEEpIX0zbaOX8ktv7sw73c=; b=lYQBPpkdLtKmSRGPLw1rP6Sksg
 5cbWGNaNDZmJvgYtA1Bu3BaWCIDw5+TcbSLT/PtHyDpdwR0UwQB3Qq9itkCuBTffpi4ZXU7qGEbsB
 Gjb8s+Mps3XmVAbR9KR4IuqePkrcPpDIDNG/PnJJLfFTYw8Vj3qY5wZuv6erEbfcpD0g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iTXvZ-0003tj-MJ; Sat, 09 Nov 2019 22:05:49 +0100
Date: Sat, 9 Nov 2019 22:05:49 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Stein <alexander.stein@mailbox.org>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
Message-ID: <20191109210549.GB12999@lunn.ch>
References: <20191109105642.30700-1-olteanv@gmail.com>
 <20191109150953.GJ22978@lunn.ch>
 <CA+h21hoqkE2D03BHrFeU+STbK8pStRRFu+x7+9j2nwFf+EHJNg@mail.gmail.com>
 <393335751.FoSYQk3TTC@kongar>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <393335751.FoSYQk3TTC@kongar>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_130601_966174_4662AD3F 
X-CRM114-Status: GOOD (  18.00  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 09, 2019 at 08:52:54PM +0100, Alexander Stein wrote:
>  On Saturday, November 9, 2019, 4:21:51 PM CET Vladimir Oltean wrote:
> > On 09/11/2019, Andrew Lunn <andrew@lunn.ch> wrote:
> > > On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
> > >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> > >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> > >>
> > >> The interrupts are active low, but the GICv2 controller does not support
> > >> active-low and falling-edge interrupts, so the only mode it can be
> > >> configured in is rising-edge.
> > >
> > > Hi Vladimir
> > >
> > > So how does this work? The rising edge would occur after the interrupt
> > > handler has completed? What triggers the interrupt handler?
> > >
> > > 	Andrew
> > >
> > 
> > Hi Andrew,
> > 
> > I hope I am not terribly confused about this. I thought I am telling
> > the interrupt controller to raise an IRQ as a result of the
> > low-to-high transition of the electrical signal. Experimentation sure
> > seems to agree with me. So the IRQ is generated immediately _after_
> > the PHY has left the line in open drain and it got pulled up to Vdd.
> 

> It is correct GIC only supports raising edge and active-high. The
> IRQ[0:5] on ls1021a are a bit special though.  They not directly
> connected to GIC, but there is an optional inverter, enabled by
> default.

Ah, O.K. So configuring for a rising edge is actually giving a falling
edge. Which is why it works.

Actually supporting this correctly is going a cause some pain. I
wonder how many DT files currently say rising/active high, when in
fact falling/active low is actually being used? And when the IRQ
controller really does support active low and falling, things brake?

Vladimir, since this is a shared interrupt, you really should use
active low here. Maybe the first step is to get control of the
inverter, and define a DT binding which is not going to break
backwards compatibility. And then wire up this interrupt.

	  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
