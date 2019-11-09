Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9360FF61AF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 22:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b69qoBsNTbtKYIrFduIi7unFhFiTuNUgeaAbyrzCufI=; b=M/q6z9Chxc97UV
	gzE/ZUqvCbTjPbxT0nfrDwEBGysdg4ngphFR+aluCy5W6G46TKFI3c9Zs2UYBbraKIzNkiVbvdje+
	rDjeV3vCCUkzDb+w0XERF1iWISFlS7lkXK/SKqUd3EXmenRF4lxCRSt8h9vPj62ZDJCKumyyj1KXM
	oHW0VERFqryNJkSHyYZ7IpRgp+v7t9+OEjrJfMCnIVZ5qVjxPO17aQkU/T/8YjImqQLxhR9fCCjDx
	znOKjy0ZuqTItLEKMosPWBh1G7TSJX6g+lPZp9OVjDMi2Av56IxQhjec4QkQCWssNaTQt+3GykPSW
	Fdi8fLZ3R0eH/NfJc6rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTYjI-0001Mx-EY; Sat, 09 Nov 2019 21:57:12 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTYj8-0001Mb-Jo
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 21:57:04 +0000
Received: by mail-ed1-x541.google.com with SMTP id b5so8937434eds.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 13:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8zojunifusLfr1jEnEqSjmYR20WZ1fEsNzo7A4tHyP4=;
 b=uAilhEvmsunwlRYaO8NewWUlIBVMw9lqI/EQoAycrXedwuMCAqhuSLshlMW/1fGKbA
 C9EzYTZSNQA+3MoUraoCugy+J5rvKXP5Q90uJ3IiZpH58io+0eLHHVVq5d7at6ypub1d
 flbu6krRuXsXKgzvMqB6u78dkyVAQZP5K1aU9YVbfkG2P9Z++3tTisQ2Q3u9LhX6yHco
 cu5+EOglOgLAPV0bV7eljtIeZRF9Bdb5enl/yynRw7r2ELYl8xJ7aaAFcqyEOty+hwAc
 58LEmr/ASPEqdgz1Avh6qqdUJpVg6sLB/bmkaeZ9m53/OBY8kdX8S1TCjtI1emBvYL0T
 Py/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8zojunifusLfr1jEnEqSjmYR20WZ1fEsNzo7A4tHyP4=;
 b=P7UFn5czzXVcQZbv13FIlb2bc9Pf0nqqYvVfsvIzUkBgjMnCV7VwiOIsQtHeENC8pX
 jI+h1FGQsL0TKn+QRXe0DYV9NbcypI/DE9zFq9muWzL/oCP52r/Pf5HTSvURLwENo11s
 1rMKaMyQ9wIMYqFurfmXszDR8yvX93zMrdnI6u9PwaJ+cSNtOhF0Kzx/36yrH/6sC5KO
 67I6g3GT5vQAhcHO5XJfF81+Iq/W1YfD/zFrnM8GrtBY49wKD0zy36E88wbiPrVK17LN
 YZHMoQ5HdWnl4UnmR3hnzAlrYOMQF+jQOCm879x6bJjn+CryA3+QSdKJ5hNAJ3Vg6kPY
 Ga6A==
X-Gm-Message-State: APjAAAWuXGPmlCjFh5NLvwszBdGIuEPPWCM0VmtdEd4JkVp3raA0QY7n
 mzliYKCtUqhGFa4mXzSireKdcIDV3fdQxfx4jGw=
X-Google-Smtp-Source: APXvYqzN0POuwv56LXfez+H6xjZkYp5GeQpjPOMQc4iIa4vxocTm7F9V1LtTp49CZtcIduerqAiinNINZ7IzqarUkHk=
X-Received: by 2002:a17:906:3450:: with SMTP id
 d16mr3032396ejb.216.1573336620802; 
 Sat, 09 Nov 2019 13:57:00 -0800 (PST)
MIME-Version: 1.0
References: <20191109105642.30700-1-olteanv@gmail.com>
 <20191109150953.GJ22978@lunn.ch>
 <CA+h21hoqkE2D03BHrFeU+STbK8pStRRFu+x7+9j2nwFf+EHJNg@mail.gmail.com>
 <393335751.FoSYQk3TTC@kongar> <20191109210549.GB12999@lunn.ch>
 <CA+h21hqU2bW82Q5jReEhsP6fhLTEgpcXuyU3EsdKFOgNrogoTQ@mail.gmail.com>
In-Reply-To: <CA+h21hqU2bW82Q5jReEhsP6fhLTEgpcXuyU3EsdKFOgNrogoTQ@mail.gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sat, 9 Nov 2019 23:56:49 +0200
Message-ID: <CA+h21hpGvqLa_1DKXSWCZtP_LKtVQZsvQCTdWK_svyzjMSdZbg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
To: Andrew Lunn <andrew@lunn.ch>, Alexander Stein <alexander.stein@mailbox.org>,
 Kurt Kanzenbach <kurt.kanzenbach@linutronix.de>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_135702_800026_5105CBA7 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 9 Nov 2019 at 23:37, Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Sat, 9 Nov 2019 at 23:05, Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > On Sat, Nov 09, 2019 at 08:52:54PM +0100, Alexander Stein wrote:
> > >  On Saturday, November 9, 2019, 4:21:51 PM CET Vladimir Oltean wrote:
> > > > On 09/11/2019, Andrew Lunn <andrew@lunn.ch> wrote:
> > > > > On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
> > > > >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> > > > >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> > > > >>
> > > > >> The interrupts are active low, but the GICv2 controller does not support
> > > > >> active-low and falling-edge interrupts, so the only mode it can be
> > > > >> configured in is rising-edge.
> > > > >
> > > > > Hi Vladimir
> > > > >
> > > > > So how does this work? The rising edge would occur after the interrupt
> > > > > handler has completed? What triggers the interrupt handler?
> > > > >
> > > > >   Andrew
> > > > >
> > > >
> > > > Hi Andrew,
> > > >
> > > > I hope I am not terribly confused about this. I thought I am telling
> > > > the interrupt controller to raise an IRQ as a result of the
> > > > low-to-high transition of the electrical signal. Experimentation sure
> > > > seems to agree with me. So the IRQ is generated immediately _after_
> > > > the PHY has left the line in open drain and it got pulled up to Vdd.
> > >
> >
> > > It is correct GIC only supports raising edge and active-high. The
> > > IRQ[0:5] on ls1021a are a bit special though.  They not directly
> > > connected to GIC, but there is an optional inverter, enabled by
> > > default.
> >
> > Ah, O.K. So configuring for a rising edge is actually giving a falling
> > edge. Which is why it works.
> >
> > Actually supporting this correctly is going a cause some pain. I
> > wonder how many DT files currently say rising/active high, when in
> > fact falling/active low is actually being used? And when the IRQ
> > controller really does support active low and falling, things brake?
> >
> > Vladimir, since this is a shared interrupt, you really should use
> > active low here. Maybe the first step is to get control of the
> > inverter, and define a DT binding which is not going to break
> > backwards compatibility. And then wire up this interrupt.
> >
> >           Andrew
>
> Oh, ok, this is what you mean, thanks Alexander for the clarification.
> This sure escalated quickly and is going to keep me busy for a while.
>
> -Vladimir

Sorry, I'm still a bit in shock, since this hit me in the face from
nowhere, so I hadn't followed the entire history when I sent the above
email.
It looks after all that Kurt and Rasmus have picked this up again and
that the latest patch set is from 2 days ago, I'll take a look at
that...
https://lwn.net/Articles/804103/

Thanks,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
