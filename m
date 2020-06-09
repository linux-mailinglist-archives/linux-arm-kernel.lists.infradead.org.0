Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9C91F3F1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PguBIZlXgHpOq48OFWpmvFLufISwUe1sJCiwRfcHUNA=; b=QnTQcjISW23mvV
	s7rcO2cuHrakqLywtTgS42GnBcSWWXO1vvJKnIF3E51SgyFiy1ytntMc+3KnVCZE/kZHOzqDcYvSm
	DWap+ar/OzsQ1dAwh5GeIj/fYioGfE4ho2PmjX02PiQcKu2+e1TiI/8utd8OLrZx7teNDabLF0Nyw
	RmeXfOdQFXyGyt3PVD5irvHJR4l38f8QLBTJqWjsNRPCmbnPCL+z/Ipr/Bm54pBHoQn42+60C3MQZ
	ZQHFrjZM/bekZWyej4Qs9x+wBsjSkoSx7zEOFf6GC5AslRodzac7iglI3vHPVb6jeankAztQtin8o
	5MfhHSiuMBFrYEQLfDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jig3E-0004ge-Mn; Tue, 09 Jun 2020 15:20:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jig2X-0003jd-06
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:19:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4AAD38088;
 Tue,  9 Jun 2020 15:20:37 +0000 (UTC)
Date: Tue, 9 Jun 2020 08:19:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
Message-ID: <20200609151943.GL37466@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_081949_079622_AACBCE00 
X-CRM114-Status: GOOD (  28.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Keerthy <j-keerthy@ti.com>, Suman Anna <s-anna@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200609 07:05]:
> On 03/06/2020 17:06, Tony Lindgren wrote:
> > * Tomi Valkeinen <tomi.valkeinen@ti.com> [200603 12:34]:
> > > Hi Tony,
> > > 
> > > On 31/05/2020 22:39, Tony Lindgren wrote:
> > > > When booting without legacy platform data, we no longer have omap_device
> > > > calling PM runtime suspend for us on suspend. This causes the driver
> > > > context not be saved as we have no suspend and resume functions defined.
> > > > 
> > > > Let's fix the issue by switching over to use UNIVERSAL_DEV_PM_OPS as it
> > > > will call the existing PM runtime suspend functions on suspend.
> > > 
> > > I don't think we can use UNIVERSAL_DEV_PM_OPS, as we can't disable DSS
> > > modules in any order, but things have to be shut down in orderly manner.
> > 
> > OK. I presume you talk about the order of dss child devices here.
> 
> Yes, but not only that.
> 
> E.g. the dispc driver hasn't been designed to be suspended while active. The
> only way to properly suspend the dispc HW is to first disable the outputs,
> wait until they've finished with their current frame, and only then can
> things be shut down.

OK

> The suspend machinery doesn't handle all that (and it couldn't anyway, due
> to the dependencies to other DSS devices in the pipeline).

OK I replied to your patch with some untested comments that might simplify
it potentially.

> > > omapdrm hasn't relied on omap_device calling runtime suspend for us (I
> > > didn't know it does that). We have system suspend hooks in omap_drv.c:
> > 
> > We had omap_device sort of brute forcing things to idle on suspend
> > which only really works for interconnect target modules with one
> > device in them.
> > 
> > > SIMPLE_DEV_PM_OPS(omapdrm_pm_ops, omap_drm_suspend, omap_drm_resume)
> > > 
> > > omap_drm_suspend() is supposed to turn off the displays, which then cause
> > > dispc_runtime_put (and other runtime_puts) to be called, which result in
> > > dispc_runtime_suspend (and other runtime PM suspends).
> > 
> > OK thanks for explaining, I missed that part.
> > 
> > > So... For some reason that's no longer happening? I need to try to find a
> > > board with which suspend/resume works (without DSS)...
> > 
> > Yes it seems something has changed. When diffing the dmesg debug output
> > on suspend and resume, context save and restore functions are no longer
> > called as the PM runtime suspend and resume functions are no longer
> > called on suspend and resume.
> 
> I now tested with AM4 SK, and I still can't get system suspend/resume work
> (without DSS). I have no clue about how to fix that. But if I use pm_test to
> prevent total suspend, I can reproduce this (or at least looks the same).

OK

> And now that I look at this, I have a recollection that I've seen this
> before. What happens is that the system suspend hook (omap_drm_suspend) gets
> called fine, and it turns off the displays, which leads to
> dispc_runtime_puts etc. All goes fine.
> 
> But there's an extra runtime PM reference (dev.power.usage_count) that seems
> to come out of nowhere. So when omap_drm_suspend is finished, there's still
> usage_count of 1, and dispc never suspends fully.

Hmm no idea about that. My guess is that there might be an issue that was
masked earlier with omap_device calling the child runtime_suspend.

Currently I'm only able to rmmod -f omapdrm, not sure if these issues might
be related.

As we now have the interconnect target module as the parent so usage counts
might be different but should balance out the same way as earlier.

> I think the PM framework does this when starting system suspend process.
> Maybe this was also happening earlier, but omap_device used to do the final
> suspend (so omapdrm depended on that functionality, after all...).

Yes the different handling seems to be the main part of the issue.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
