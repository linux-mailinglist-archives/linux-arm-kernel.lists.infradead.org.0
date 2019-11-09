Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB91F6142
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gd//2VeBOlZcnS06oarJQQKkIdm1FRCH0ox8f3LmcN4=; b=ZV0Soc5YvR8eY6
	WYicHaC93gcuTl/HBKqISlka/1/y4rHxUdVasab+xQC2aB3ODbfg5LRZlbECrYqIeLq0c6BYF72zo
	eZ25BjQoLVVT6pLcBypeAKzHWRGxhaa1sViCPWC9BSr+im8+WDQPowiAzBGCyoC9+QHqaFt27bumx
	3rXpEJ7I64w6o6oogkG27YciKYvnqbm/0a8Hh7fKfEa2G3ZBZ0MLUgYaISgJn6XaK3v0rx6UBZLK9
	c12u2hYCcfJQ4i5ErDbijK+f7ic6WJsE4KlE9uk5F4WCdWMfXinedIHZhZecF9bsZM8FxZjDIr7+h
	auoIeMdNHbmqkTCsB6kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTWnX-0000L5-DK; Sat, 09 Nov 2019 19:53:27 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTWnL-00008q-SJ
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:53:18 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 479SVZ3zVPzKmQS;
 Sat,  9 Nov 2019 20:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:message-id:date:date:subject:subject
 :from:from:received; s=mail20150812; t=1573329177; bh=M7oLHM6GTq
 fgSDX0vgvOtgGwC8zzgFftT7dUZlMbO0k=; b=b63V1dqu9dyA86AtCs8CL1cx/F
 qZeFbJ5BWE92Icg54qxGj9JreMgnPVQt6NljKpXNdXcQxF7xceqdnAtdfKQhDEez
 7LoAcGcZo1ODymxkIc+KuvS0orUzWPoRWRDl53XXUoz9jwTTiFKCKd40FUYos8eC
 JOV82+SBQqC9nAcbpz4IwwTSGKfh+OjNCvYifJfqcKnP4rj/Rplquf+PwTc6zBfM
 s2QaLmw3MfZlyjtVxLbJlCraEIXHV7Wla5IKddVleCDRp5TU9vdqgf36TUXLjYah
 vuMVwjzinSlJwh17z2XyJgS5sbyi8ITIRwqvKU7YyEr8rU4v3X41RlFYMlVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1573329188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0TaijmMVk5bwn35HLiLpfyHZS0CXVgZsMgJ8IFKWEvM=;
 b=sNxawXykxIzAXTxNRSPAQvGs/YRwYpamJMw8YN7F+Er9Oz4Qa3DAvCG7JGyFRsZ7hgPVe7
 tzf6bj+qWncE9cNyZqFucBPVAeV038pP0sPmrrJuytebWo2pueFiWvAzy7schsorucLt2R
 FFk4zbSxB3DOcGwyboU2muHX35NoCI/UNFDMgi2P4GFY9MrHLaNlEOiyyRZUpre+op+MBS
 MyzXblFzGxdBWoUO84O+By8+8n5LptJn0LjTCp4AHWUCNt/DujsLSQ1TBrXIWI03K+1FLZ
 gUnNjLvELLtePLoyfCZH2x1JvD0d3qS6kRNLsZj4iDm2dozG6bWDVaSg3D2tfA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id asZD_HPxi0tO; Sat,  9 Nov 2019 20:52:57 +0100 (CET)
From: Alexander Stein <alexander.stein@mailbox.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
Date: Sat, 09 Nov 2019 20:52:54 +0100
Message-ID: <393335751.FoSYQk3TTC@kongar>
In-Reply-To: <CA+h21hoqkE2D03BHrFeU+STbK8pStRRFu+x7+9j2nwFf+EHJNg@mail.gmail.com>
References: <20191109105642.30700-1-olteanv@gmail.com>
 <20191109150953.GJ22978@lunn.ch>
 <CA+h21hoqkE2D03BHrFeU+STbK8pStRRFu+x7+9j2nwFf+EHJNg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_115316_374839_CA248019 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Andrew Lunn <andrew@lunn.ch>,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 On Saturday, November 9, 2019, 4:21:51 PM CET Vladimir Oltean wrote:
> On 09/11/2019, Andrew Lunn <andrew@lunn.ch> wrote:
> > On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
> >> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> >> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> >>
> >> The interrupts are active low, but the GICv2 controller does not support
> >> active-low and falling-edge interrupts, so the only mode it can be
> >> configured in is rising-edge.
> >
> > Hi Vladimir
> >
> > So how does this work? The rising edge would occur after the interrupt
> > handler has completed? What triggers the interrupt handler?
> >
> > 	Andrew
> >
> 
> Hi Andrew,
> 
> I hope I am not terribly confused about this. I thought I am telling
> the interrupt controller to raise an IRQ as a result of the
> low-to-high transition of the electrical signal. Experimentation sure
> seems to agree with me. So the IRQ is generated immediately _after_
> the PHY has left the line in open drain and it got pulled up to Vdd.

It is correct GIC only supports raising edge and active-high. The IRQ[0:5] on ls1021a are a bit special though.
They not directly connected to GIC, but there is an optional inverter, enabled by default. See RM for register SCFG_INTPCR.
If left to default, those pins get actually active-high internally.
There was a patch 2 years ago to add support for this inverter: https://lore.kernel.org/patchwork/patch/860993/

Best regards,
Alexander



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
