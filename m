Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C389CEDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2vmW72QatxKF21bUVmY6LTcyADcY8QtY/HDR/AJKLA=; b=LWLd0ZeShOMMQs
	RRgYHl+ghCLZyA+skQ47bN3Oy2GCO3IGyQL6e6OuGOKcOIU92t+Vr4H1GvCo+Kj4vAadganj1u3VD
	1qzvIzmgqJlL5tTwSneOEqhkwDnn6s5Gy6X2HTYJuU4Z30b1/HKSKXNiJkwtkxPCS+xQuJQPUdqrP
	qIYDJ7ZCRBgF8isO0Jq0hA5LfxuahMV6w0XRWXrVHShv4sgwzaqAN89AKcSb2rxEGdqVnT2htPUuX
	9rKiB0rkJiRi7h94T/vaXdQPYnShv3hoZBIacVuAPsglpwF+0x7RFfvftkxgeUfYONiIeQRVzoIzR
	JrooaOhKMWX94O1CDseA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DgJ-0006G0-Ld; Mon, 26 Aug 2019 12:01:07 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dew-0003XM-61
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:59:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id DEB47D7E57;
 Mon, 26 Aug 2019 13:59:35 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 55msylzmP3Vl; Mon, 26 Aug 2019 13:59:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 62D99D7E55;
 Mon, 26 Aug 2019 13:59:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xuimRokRPtg9; Mon, 26 Aug 2019 13:59:28 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 368ECD7E54;
 Mon, 26 Aug 2019 13:59:28 +0200 (CEST)
Message-ID: <481e832401c148baf222639f10f494b90dcd23c9.camel@v3.sk>
Subject: Re: [PATCH v2 00/20] Initial support for Marvell MMP3 SoC
From: Lubomir Rintel <lkundrak@v3.sk>
To: Marc Zyngier <maz@kernel.org>, Olof Johansson <olof@lixom.net>
Date: Mon, 26 Aug 2019 13:59:27 +0200
In-Reply-To: <08a0e65e-4a80-f611-e36e-8e3f70fa8113@kernel.org>
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <244fdc87-0fe5-be79-d9cd-2395d0ac3f57@kernel.org>
 <424d2881edcaf7cedbfa5cbbf2e73aaff5355df3.camel@v3.sk>
 <08a0e65e-4a80-f611-e36e-8e3f70fa8113@kernel.org>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045942_396672_C7120D99 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-23 at 10:42 +0100, Marc Zyngier wrote:
> On 23/08/2019 08:21, Lubomir Rintel wrote:
> > On Thu, 2019-08-22 at 11:31 +0100, Marc Zyngier wrote:
> > > On 22/08/2019 10:26, Lubomir Rintel wrote:
> > > > Hi, 
> > > > 
> > > > this is a second spin of a patch set that adds support for the Marvell
> > > > MMP3 processor. MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad
> > > > FZ-A1 tablet and Dell Wyse 3020 Tx0D thin clients. 
> > > > 
> > > > Compared to v1, there's a handful of fixes in response to reviews. Patch
> > > > 02/20 is new. Details in individual patches.
> > > >  
> > > > Apart from the adjustments in mach-mmp/, the patch makes necessary 
> > > > changes to the irqchip driver and adds an USB2 PHY driver. The latter 
> > > > has a dependency on the mach-mmp/ changes, so it can't be submitted 
> > > > separately.
> > > >  
> > > > The patch set has been tested to work on Wyse Tx0D and not ruin MMP2 
> > > > support on XO-1.75. 
> > > 
> > > How do you want this series to be merged? I'm happy to take the irqchip
> > > related patches as well as the corresponding DT change (once reviewed)
> > > through my tree.
> > 
> > I was hoping for the Arm SoC tree, because there are some dependencies
> > (MMP3 USB PHY depends on MMP3 SoC).
> > 
> > That said, the irqchip patches are rather independent and the only
> > downside of them going in via a different tree will be that the other
> > tree that will lack them won't boot on MMP3 (things will compile
> > though). I don't know if that's okay. What's typically done in cases
> > like these?
> 
> I usually take the irqchip patches that can be built standalone (without
> dependency on header files, for example). If you want them to go via
> another tree, stick my
> 
> 	Acked-by: Marc Zyngier <maz@kernel.org>
> 
> on patches #6 through #9.

Actually, please go ahead and pick the irqchip patches into your tree.

The rest of the patch set may need a couple more spins, and it will be
nice if it gets shorter.

Thank you
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
