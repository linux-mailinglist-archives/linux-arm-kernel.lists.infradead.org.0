Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F132165F8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:16:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8Hk8EC3YwQLRmLqahl3Xvs2edGHyw9W+kohnarJdYg=; b=mPm2Vkx1VGgVnk
	0CBpP+0KNQymUcgDZCy/cJnZzTobsI47sr8AfPbes8GXl3j+6XsxBPKU83xx+0mxLkblS+urFVxE6
	0qR94sgYsZLlpXi7loyYCRmYFvLUU8phpEJINz+ASDjeCYLiMXbq3+G4I2oo+T1J47Sn3v/AgACNU
	tBzSThpp7eruTIaeDr+skjZ3hwh8qLCu6/qXRJeFbHvdQISXtO4rTRAMmdBvAveT3m90Qaznu/FTp
	rwKQbsdAot18RUtm9XahpkfExwWl29lNnGeuqo7trbiV3pbT8RNYuf6EA5n7x4HiuZaXrKAdvWmjl
	Kls4Jqgr7vH/0FNnV81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mdG-0002ff-9w; Thu, 20 Feb 2020 14:16:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4md7-0002fH-W1
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:16:43 +0000
Received: from localhost (static-140-208-78-212.thenetworkfactory.nl
 [212.78.208.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC20B208E4;
 Thu, 20 Feb 2020 14:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582208201;
 bh=ELL3hEpGo9sAinW5R6kKrZvV1yKEFg4R0dnJKKl/e5E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QbjHw5kA8g04sBo+4CIz97a/75O3v3KPnvVZEWPkhLl9HNfY8YSJVGOU0eHiS6wBI
 sGzdXyEQ5LQVkLw+CI8Ti/rlYUV+mrdoF+jILKt7dL6Bb8Buoh5f5oR35Sf7QC0ijM
 yqtry28uArBqZ/Forgszj6uh9kyddJIl9X41IZdA=
Date: Thu, 20 Feb 2020 15:16:37 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RESEND RFC PATCH v3] clk: Use new helper in managed functions
Message-ID: <20200220141637.GA3433108@kroah.com>
References: <f48d1df3-fc1f-ac5c-b11e-330f18aad539@free.fr>
 <20200220112700.GJ3374196@kroah.com>
 <8866e533-967f-e208-1ec8-888d72f3052e@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8866e533-967f-e208-1ec8-888d72f3052e@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_061642_068285_940E2A13 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 03:05:54PM +0100, Marc Gonzalez wrote:
> On 20/02/2020 12:27, Greg Kroah-Hartman wrote:
> 
> > On Thu, Feb 20, 2020 at 11:04:58AM +0100, Marc Gonzalez wrote:
> >
> >> Introduce devm_add() to wrap devres_alloc() / devres_add() calls.
> >>
> >> Using that helper produces simpler code, and smaller object size.
> >> E.g. with gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu:
> >>
> >>     text	   data	    bss	    dec	    hex	filename
> >> -   1708	     80	      0	   1788	    6fc	drivers/clk/clk-devres.o
> >> +   1524	     80	      0	   1604	    644	drivers/clk/clk-devres.o
> >>
> >> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> >> ---
> >> Differences from v2 to v3
> >> x Make devm_add() return an error-code rather than the raw data pointer
> >>   (in case devres_alloc ever returns an ERR_PTR) as suggested by Geert
> >> x Provide a variadic version devm_vadd() to work with structs as suggested
> >>   by Geert
> >> x Don't use nested ifs in clk_devm* implementations (hopefully simpler
> >>   code logic to follow) as suggested by Geert
> >>
> >> Questions:
> >> x This patch might need to be split in two? (Introduce the new API, then use it)
> >> x Convert other subsystems to show the value of this proposal?
> >> x Maybe comment the API usage somewhere
> >> ---
> >>  drivers/base/devres.c    | 15 ++++++
> >>  drivers/clk/clk-devres.c | 99 ++++++++++++++--------------------------
> >>  include/linux/device.h   |  3 ++
> >>  3 files changed, 53 insertions(+), 64 deletions(-)
> >>
> >> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> >> index 0bbb328bd17f..b2603789755b 100644
> >> --- a/drivers/base/devres.c
> >> +++ b/drivers/base/devres.c
> >> @@ -685,6 +685,21 @@ int devres_release_group(struct device *dev, void *id)
> >>  }
> >>  EXPORT_SYMBOL_GPL(devres_release_group);
> >>  
> >> +int devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
> > 
> > Please add a bunch of kerneldoc here, as I have no idea what this
> > function does just by looking at the name of it :(
> 
> Fair enough. (This was one of my "Questions" in the patch comments.)
> 
> Note: My patch adds a new function, then makes use of said function.
> Is this typically done in two patches or one?
> 
> Patch 1/2 augmenting the API.
> Patch 2/2 making use of the new function.

2 is usual.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
