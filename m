Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11EA1917C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXc+fvLdYzpdyebYz9opSczAq+fJ7RB18a3a5TttCKU=; b=eC2uLr+skIcVzx
	1QvI16aE1lGhrySXRExbcu2PXa9L4VhlOgPPvFCRhiUpPP2uPTjFbtVMGlMyLBW0Ci+3FDO1AT7re
	C6ty6fMX0YwQ4UZGrKfo3JWXnB36HrcmE//h8pYb9lrtAnB+zUXCYE4VA3M2/V+tWrZn0loZ/3AGn
	ncvSclxY0PusoS8PJ9plfA8/aZoKg1jPKpa/y3+UuAsz8UzLVDesEVfwDJc5Nmho/g+e/qg16VKdg
	VQcfepV6MZxdh95yLXPbjnNAW0k7KYHWVrPHX551CMsDm/ZmIxliIfblxdhujontZgQKZ21CTX/xd
	lKE94PZlSDert1W0In1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnUH-0007Yy-LB; Tue, 24 Mar 2020 17:37:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGnU8-0007Ye-B4
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:37:05 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9904781CA;
 Tue, 24 Mar 2020 17:37:49 +0000 (UTC)
Date: Tue, 24 Mar 2020 10:36:59 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@denx.de>
Subject: Re: Droid 4 in -next -- still no backlight was Re: [PATCH 1/4] tty:
 n_gsm: Add support for serdev drivers
Message-ID: <20200324173659.GC37466@atomide.com>
References: <20200319173755.65082-1-tony@atomide.com>
 <20200319173755.65082-2-tony@atomide.com>
 <20200322224230.GB28082@amd> <20200324170110.GB37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324170110.GB37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_103704_421605_BB6886EC 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, mpartap@gmx.net, merlijn@wizzup.org,
 martin_rysavy@centrum.cz, kernel list <linux-kernel@vger.kernel.org>,
 sre@kernel.org, nekit1000@gmail.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-serial@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Peter Hurley <peter@hurleysoftware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200324 17:02]:
> * Pavel Machek <pavel@denx.de> [200322 22:43]:
> > Before I start debugging, does screen work for you in -next, or do you
> > have some fixes I could try?
> 
> Yes the backlight works for me now just fine with current v5.6-rc.
> 
> But yeah, looks like LCD is again broken in current Linux next,
> maybe Laurent and Sebastian have some clues?

Oh it's just that now display-connector needs to be loaded instead
of the old omap specific hdmi connector :)

See commit e7e67d9a2f1d ("drm/omap: Switch the HDMI and VENC outputs
to drm_bridge") and check that you have the .config options enabled
in that patch also in your custom .config.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
