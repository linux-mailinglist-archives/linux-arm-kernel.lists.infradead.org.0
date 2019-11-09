Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D36F61A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 22:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMNQjebNDPNLxeVt/LsUHOjrjnapWarBsobqeLtwaHc=; b=YVqvvchENkA7jF
	vAtQs8VeXmNe6q7aF7SjYIaVmPQ2igdW8WZ0V61rnFpy0zebwEfAN0oGffJKn6rpiLm9HsRKGoLz8
	Yud5gAg0AIsxTHqD5t/QOaLo6+hQa6VBV1lNHc/DajOT232xI/y+VooqwozPXnA40dvlUatThlFuD
	RzNjDjPGVUiD/uN6AhTxfZ5qYoAZvoBgrYJzY6UTuNek3u5PObeJBTihJdaL9/YTl46L0Zec5lvkT
	wFaZEQfYICSZ7sAEimFgzF8QWDGP5k+485evupY1gXIc1ifXFS2KLQZ81hjg1dvY1yXH1o1jNpS66
	rEGgsJAerL8zgEi8wU5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTYQS-0002qG-7z; Sat, 09 Nov 2019 21:37:44 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTYQJ-0002pq-1W
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 21:37:36 +0000
Received: by mail-ed1-x541.google.com with SMTP id s10so8954598edi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 13:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v2rlUqcAtuAl3VsuUjT6IuOByjI2GD6fMPEYr5wAeuI=;
 b=TXCDad10SMV/uwl8/+qe0SREn2XQsQqXQR3prsAxoLCFxxeqergAC9f9+2CJugiARs
 JHVgCjM7DXZeQCW5gmyskvM0m8NZdblM3ykJXvnVPmMD0LwK4Iip9DDJzonBJkB7OGkl
 qYG3yieHrxhPpc+Q1++skFFogVH6YCgtMLmXjATUzLidIJQiCJIoT+ZHgKO2fEbFJw3Q
 bKJ5rQj+fAmcXT7o8Gm48+xCbSTF3nZC/18xIc3Ragm/BfIW95MRvYPprzjgiE71ePM4
 sZI30DpBqceE/YH3mefCaLbP77XL7hGwFNpq4QX14kklNoFoFDhUOKistffPik5vxan7
 fe4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v2rlUqcAtuAl3VsuUjT6IuOByjI2GD6fMPEYr5wAeuI=;
 b=cT3uVkgg000D7UXEhFSajxGgDosVuJskmiMkxIrVCESXZ94+bj8+vW3bwPuK+MVLqQ
 798tspEpdxbEbhMwaGhOcou8zfoLBtcJScRiLAE0rwz5GO/sKIyuyXUJi7erCccuP37j
 j/OhZ+eXpDgT/EWySmM1hzT9lDWRKBoCsU86B+qDRd6N0XNPIXYGRpJiF8ylztfkTmMw
 0VuwhKXpijydlxdbmiFW8y2W4OGoSD/9jdsFclvR/lthqFvIzA5hr9ka5mWeUSDtUxbd
 eyZxsOJFr1wzHYl72tZ+E+ZFZQEQH0tI0NpT9fmX7ggMhwrgqNYTDbHJvOlaKeDh8DSM
 v+eA==
X-Gm-Message-State: APjAAAUFB5HAIOMufCqkrJa4na0BaSdvVFMoWRb4JGOR9PEGOtl11RRU
 CFNF3XM1nQCoYtr7K/XpIK725EJuHBsq0Tc9GV0=
X-Google-Smtp-Source: APXvYqz9fVCFirGSrnpJPZ/fGN+Vp1m8kWf/gR7wl8YC+sQC1r3wJYxUYLIziw0nTEibrT8sz6mJqeFEXn/GXtoUx4U=
X-Received: by 2002:a50:b63b:: with SMTP id b56mr18152663ede.165.1573335453236; 
 Sat, 09 Nov 2019 13:37:33 -0800 (PST)
MIME-Version: 1.0
References: <20191109105642.30700-1-olteanv@gmail.com>
 <20191109150953.GJ22978@lunn.ch>
 <CA+h21hoqkE2D03BHrFeU+STbK8pStRRFu+x7+9j2nwFf+EHJNg@mail.gmail.com>
 <393335751.FoSYQk3TTC@kongar> <20191109210549.GB12999@lunn.ch>
In-Reply-To: <20191109210549.GB12999@lunn.ch>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sat, 9 Nov 2019 23:37:22 +0200
Message-ID: <CA+h21hqU2bW82Q5jReEhsP6fhLTEgpcXuyU3EsdKFOgNrogoTQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_133735_107539_B5B6B2E0 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev <netdev@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 leoyang.li@nxp.com, Rob Herring <robh+dt@kernel.org>,
 Alexander Stein <alexander.stein@mailbox.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 9 Nov 2019 at 23:05, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Sat, Nov 09, 2019 at 08:52:54PM +0100, Alexander Stein wrote:
> >  On Saturday, November 9, 2019, 4:21:51 PM CET Vladimir Oltean wrote:
> > > On 09/11/2019, Andrew Lunn <andrew@lunn.ch> wrote:
> > > > On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
> > > >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> > > >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> > > >>
> > > >> The interrupts are active low, but the GICv2 controller does not support
> > > >> active-low and falling-edge interrupts, so the only mode it can be
> > > >> configured in is rising-edge.
> > > >
> > > > Hi Vladimir
> > > >
> > > > So how does this work? The rising edge would occur after the interrupt
> > > > handler has completed? What triggers the interrupt handler?
> > > >
> > > >   Andrew
> > > >
> > >
> > > Hi Andrew,
> > >
> > > I hope I am not terribly confused about this. I thought I am telling
> > > the interrupt controller to raise an IRQ as a result of the
> > > low-to-high transition of the electrical signal. Experimentation sure
> > > seems to agree with me. So the IRQ is generated immediately _after_
> > > the PHY has left the line in open drain and it got pulled up to Vdd.
> >
>
> > It is correct GIC only supports raising edge and active-high. The
> > IRQ[0:5] on ls1021a are a bit special though.  They not directly
> > connected to GIC, but there is an optional inverter, enabled by
> > default.
>
> Ah, O.K. So configuring for a rising edge is actually giving a falling
> edge. Which is why it works.
>
> Actually supporting this correctly is going a cause some pain. I
> wonder how many DT files currently say rising/active high, when in
> fact falling/active low is actually being used? And when the IRQ
> controller really does support active low and falling, things brake?
>
> Vladimir, since this is a shared interrupt, you really should use
> active low here. Maybe the first step is to get control of the
> inverter, and define a DT binding which is not going to break
> backwards compatibility. And then wire up this interrupt.
>
>           Andrew

Oh, ok, this is what you mean, thanks Alexander for the clarification.
This sure escalated quickly and is going to keep me busy for a while.

-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
