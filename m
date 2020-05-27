Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AEE1E3A0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egk0msRr/QakI7jMoAg/ojo1LQuuAosojohuhU4w3TU=; b=ZQgyyFaxv28Du7
	VeuLJZj7WfVn/8EaSEoSRGMP4o0NY1v315yK3EZWTbalZqmu25efZEf12c27c//XE70CHV6F8lv/H
	6Rzy/fgA/H07xNT0eOiFb1ui5Gw+duI2QDPkk9GOhujlolI1BKWnDnNU8lb5mH+IwL0iUx2PwFWDd
	0ybfHvsxNEhHh0ttZRbhEpx6KNQnEF/hIxxgVFPVK7XLN9eXqKmrZ+VtoDQUyhveqsC6WcHVyh/hT
	hOIf+ybLcUiWI8sUHAkJkMu4mH37kZsnQOkP5ct89OcSFMTWPO5DXkdgOGsBYISByIrRjrzHlaEl9
	cQ4gHcBE6RGR5HIpc/6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqGw-0001Mi-CX; Wed, 27 May 2020 07:14:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqGm-0001MD-TM
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:14:34 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63FED207ED;
 Wed, 27 May 2020 07:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590563672;
 bh=axTWvqm/1jxmhN6sEBwzGk9U0LLq3MsP8jRGcXy0l4M=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=UyEUPDt9X10WJ9ktolRx4di5JGIjM5W61oxW6c7ojiOC37lRH7iRD7yoreJA3D71c
 C+qeJo5LAglpq7gXjuDNoagj+sQLx2/yqqtfK61iMFK3taxZCGamid9W1wkYjXs/7F
 pi7bhfH6vjxqrsBb3Lh5jCHBDzePmF/+aJxX2fKA=
MIME-Version: 1.0
In-Reply-To: <CADRPPNQxRwa2kQj_5K26RcovBhtfxdKitOxBKF8sgoyu9O+W-Q@mail.gmail.com>
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <20200507112955.23520-4-geert+renesas@glider.be>
 <CADRPPNQxRwa2kQj_5K26RcovBhtfxdKitOxBKF8sgoyu9O+W-Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] clk: qoriq: Add platform dependencies
From: Stephen Boyd <sboyd@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>
Date: Wed, 27 May 2020 00:14:31 -0700
Message-ID: <159056367164.88029.13565982192052541003@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_001432_966309_D5C4651C 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, lkml <linux-kernel@vger.kernel.org>,
 linux-ide@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 ARM/FREESCALE IMX / MXC ARM ARCHITECTURE
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Li Yang (2020-05-22 14:28:06)
> On Thu, May 7, 2020 at 6:31 AM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > The Freescale QorIQ clock controller is only present on Freescale E500MC
> > and Layerscape SoCs.  Add platform dependencies to the CLK_QORIQ config
> > symbol, to avoid asking the user about it when configuring a kernel
> > without E500MC or Layerscape support.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Hi Michael/Stephen,
> 
> Are you applying this patch?  If not I can apply it with your ACK.
> 

I already acked it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
