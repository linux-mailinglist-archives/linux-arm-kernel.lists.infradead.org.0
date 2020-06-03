Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264F91ED1B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 16:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPxlG65RRAJbnqM99NVgcwyZZaKWElPD+HY/RSJevcE=; b=jyMl0kgXRjUghN
	TIHAdAL3iIXGFtQuNrmkCrNMchh68ssY3BI0djILAgf2RQdHMOa+Tty46FVHowd6krGugia4znblb
	N4JBboYvOE/vrQwlAOI8pZS8oFdDyiIfiITpkvydEQ2ONaaREvMnB6PHAODPjv6RIsGTNvue3xoFH
	zXWeq/E5ubtgTgnQHsYRkJa4KBZRzbzBsE3Euj+qhw2RH4xc/vQXefHR/9SMMyCNvbBUhYDhbGHVj
	mw2LERsX8cqDr8dPjBTJdDDO8OXfcZ6bACwAiXro+6TUEy594gWbqJ6kS8x306ZWVHjvcol7TTapB
	Kyd+mlKHn9m+SP8SJJug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgU2j-0001s8-7k; Wed, 03 Jun 2020 14:06:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgU2a-0001r7-Qs
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 14:06:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B20A1809C;
 Wed,  3 Jun 2020 14:07:32 +0000 (UTC)
Date: Wed, 3 Jun 2020 07:06:39 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
Message-ID: <20200603140639.GG37466@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_070648_912168_52C0DF4C 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200603 12:34]:
> Hi Tony,
> 
> On 31/05/2020 22:39, Tony Lindgren wrote:
> > When booting without legacy platform data, we no longer have omap_device
> > calling PM runtime suspend for us on suspend. This causes the driver
> > context not be saved as we have no suspend and resume functions defined.
> > 
> > Let's fix the issue by switching over to use UNIVERSAL_DEV_PM_OPS as it
> > will call the existing PM runtime suspend functions on suspend.
> 
> I don't think we can use UNIVERSAL_DEV_PM_OPS, as we can't disable DSS
> modules in any order, but things have to be shut down in orderly manner.

OK. I presume you talk about the order of dss child devices here.

> omapdrm hasn't relied on omap_device calling runtime suspend for us (I
> didn't know it does that). We have system suspend hooks in omap_drv.c:

We had omap_device sort of brute forcing things to idle on suspend
which only really works for interconnect target modules with one
device in them.

> SIMPLE_DEV_PM_OPS(omapdrm_pm_ops, omap_drm_suspend, omap_drm_resume)
> 
> omap_drm_suspend() is supposed to turn off the displays, which then cause
> dispc_runtime_put (and other runtime_puts) to be called, which result in
> dispc_runtime_suspend (and other runtime PM suspends).

OK thanks for explaining, I missed that part.

> So... For some reason that's no longer happening? I need to try to find a
> board with which suspend/resume works (without DSS)...

Yes it seems something has changed. When diffing the dmesg debug output
on suspend and resume, context save and restore functions are no longer
called as the PM runtime suspend and resume functions are no longer
called on suspend and resume.

I'll drop this patch, and will be applying the rest of the series to
fixes if no objections.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
