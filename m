Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC22EEB43B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqbQwS93cia7/Xhho0cRuaVcXPyV7ONUwHEyBwvZjoM=; b=Fp9CPRUJsYWJXH
	+cA+M7PJkMshOCFOYJI0za1zwDesCoR5ISX1zHOv2XpPY2fezTAWvPvCrjkBJKXfjeSdYN3GKnxiz
	Ww9fE81GiGI4oW7fQ4Bws8iC8dPrxecr4tykqgjyIS50sWT7Qlg6283vk/HHUieTDImUDbRRqJa0J
	aCOEr+p0QGiRxlvDW7X9nufjJG8YTMoWgHIMXXoBU0cCaOWsS1nChcR5pEYum3cMy2nUdVR1Kb6Hd
	y2Zo/CMZJvsZFrWvsOxfQIXQq7TuJWdgzw7jV3Hk4CrE2nom7FBrBD9yUPIrTTzNkTuDgxecR4J1A
	Qs9xr1snJfrjFjA7LfIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQChh-0007YO-4c; Thu, 31 Oct 2019 15:49:41 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQChU-0007Xb-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:49:30 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id AE154634C87;
 Thu, 31 Oct 2019 17:48:34 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iQCgb-0001mv-Nb; Thu, 31 Oct 2019 17:48:33 +0200
Date: Thu, 31 Oct 2019 17:48:33 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 0/2] Add IMX296 CMOS image sensor support
Message-ID: <20191031154833.GM6253@valkosipuli.retiisi.org.uk>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191031131644.GA8917@pendragon.ideasonboard.com>
 <20191031132352.GA24273@mani>
 <20191031132801.GC5018@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031132801.GC5018@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_084928_570641_BE912CAB 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani, Laurent,

On Thu, Oct 31, 2019 at 03:28:01PM +0200, Laurent Pinchart wrote:
> Hi Mani,
> 
> On Thu, Oct 31, 2019 at 06:53:52PM +0530, Manivannan Sadhasivam wrote:
> > On Thu, Oct 31, 2019 at 03:16:44PM +0200, Laurent Pinchart wrote:
> > > On Wed, Oct 30, 2019 at 03:19:00PM +0530, Manivannan Sadhasivam wrote:
> > > > Hello,
> > > > 
> > > > This patchset adds support for IMX296 CMOS image sensor from Sony.
> > > > Sensor can be programmed through I2C and 4-wire interface but the
> > > > current driver only supports I2C interface. The sensor is
> > > > capable of outputting frames in CSI2 format (1 Lane). In the case
> > > > of sensor resolution, driver only supports 1440x1088 at 30 FPS.
> > > > 
> > > > The driver has been validated using Framos IMX296 module interfaced to
> > > > 96Boards Dragonboard410c.
> > > 
> > > I've just been made aware of your work. I also worked on an IMX296
> > > sensor driver in parallel, which I will post to the list. My driver
> > > doesn't hardcode the resolution but computes register values at runtime,
> > > so I wonder if it could be a better option. I'll post it now.
> > 
> > I'm fine with it. The reason the driver is simple in the first place is, that's
> > how my usual workflow is. Start small and build it big ;-)
> > 
> > Anyway, I'm happy if your driver gets in.
> 
> My driver sometimes has trouble finding the sensor at probe time, so
> I'll study and try your code too. It could be a problem specific to my
> platform (I'm testing on a custom i.MX7 board).

Based on this discussion I'll mark the second patch of the set obsolete in
Patchwork.

Laurent: please see my comments on the driver as well.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
