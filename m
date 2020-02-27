Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEF117255A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fj+B0NtssT1tnlK984lPOqoPtTcwjzsNlBU4uxzAWf8=; b=bF8/kB2jpLLkpB
	pko+nqZ74j9iFV9m27MpkLChCaRdJtMnVP4dY17pqLhIRVgbYcwPsrWazOy9WqPAEkZhT1MTCpQbm
	I3f4P7T6BceU2wyaHfNHZgi2TgkmMlL6ngUgP79kwXZiFojfznIYcGvnXhwtCo8SJGMLCywPc4qxI
	wFrmnx6hCSeatZSCaq7NJnoWAftBnR6OoKrdNQDJxOb1AZw138EKmCJadCQgNrEIGSoAvDtIb+XQw
	6CCAmkXyHjpLubDVgYQbm2nrdUYfFr2yVZE71mA8Jdo90r6AgzBgPknnN0CiIOFDe94pXAGEeDVWJ
	29OQpNr1iiysBCOzCaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NEb-0002zN-JF; Thu, 27 Feb 2020 17:46:05 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ND3-0000n3-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:44:32 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3677B80C0;
 Thu, 27 Feb 2020 17:45:12 +0000 (UTC)
Date: Thu, 27 Feb 2020 09:44:24 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/3] drm/omap: Prepare DSS for probing without legacy
 platform data
Message-ID: <20200227174424.GI37466@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-2-tony@atomide.com>
 <20200224233111.gkctx27usfxj2wgz@earth.universe>
 <20200224234333.GD37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224234333.GD37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094430_010090_55C3A06C 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Jyri Sarha <jsarha@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tomi,

* Tony Lindgren <tony@atomide.com> [200224 23:44]:
> * Sebastian Reichel <sre@kernel.org> [200224 23:32]:
> > Hi,
> > 
> > On Mon, Feb 24, 2020 at 11:12:28AM -0800, Tony Lindgren wrote:
> > > In order to probe display subsystem (DSS) components with ti-sysc
> > > interconnect target module without legacy platform data and using
> > > devicetree, we need to update dss probing a bit.
> > > 
> > > In the device tree, we will be defining the data also for the interconnect
> > > target modules as DSS really is a private interconnect. There is some
> > > information about that in 4460 TRM in "Figure 10-3. DSS Integration" for
> > > example where it mentions "32-bit interconnect (SLX)".
> > > 
> > > The changes we need to make are:
> > > 
> > > 1. Parse also device tree subnodes for the compatible property fixup
> > > 
> > > 2. Update the component code to consider device tree subnodes
> > > 
> > > Cc: dri-devel@lists.freedesktop.org
> > > Cc: Jyri Sarha <jsarha@ti.com>
> > > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > > ---
> > > 
> > > This is needed for dropping DSS platform data that I'll be posting
> > > seprately. If this looks OK, can you guys please test and ack?
> > > 
> > > ---
> > 
> > Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > 
> > FWIW, I dropped omapdss-boot-init.c in my patch series updating DSI
> > code to use common panel infrastructure, so this will conflict.
> 
> Hey that's great :) Sounds like we can set up an immutable branch
> for just this $subject patch against v5.6-rc1 to resolve the
> conflict. I can set it up for Tomi or Tomi can set it up for me,
> whichever Tomi prefers.

Do you want me to send you a pull request for just this one patch
against v5.6-rc1?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
