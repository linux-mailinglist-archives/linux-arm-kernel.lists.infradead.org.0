Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B085199B24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaZU8sg7aaeN9xPdSGHmL2sPjCs6JrpFZF8yXstY1as=; b=urZZbf+jT+EY0f
	/pf81gYUyciezf2KyXq/iKKPQWtDkNVtWT+den5RpGO7GyI4bkWPPSVYl9A2DBk8EOPmaOi3tq4Cq
	4fyF92/7A4Eye8yOSFg86W81jCTcXwLOQln0HQTDe04U3UK32/xCFMzlSCHRRx09QaoEJ/NZtX4zM
	igO7lVdu8P+7W8dxDb2m+S40zUzaf1ec2ZkSFnZzwH95Cnd2pgtpqpmITQtz1/iSwLZCIMyRvHbQe
	+oNEWVl9PGBHGbGr94svUFKxKbw+wtWO/7f8iqJwIrk8+XgjWiDDEqCmhfIeSaoC87GDwP6yCYTBw
	GClEzazg+2U5wwVV+fGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJY9-0002T0-Bg; Tue, 31 Mar 2020 16:15:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJXw-0002RI-7l; Tue, 31 Mar 2020 16:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/HVPi64qIRdc3panPh4kpEYyIrZRCsnANG5uQPfLZv0=; b=czW5H86boYJVa/CoBl22IF6KoZ
 cMr2tIHGzypLuUvydNMB/987A1fGnouf9gDSiDf7i4EOwszAmMX6RgsoPyEOi6qMLZcDWblNpLsX2
 q/jutGhJk1/mQtmY940KMomtTqJWi+7MrNiVPUdwu0f0CEpn40n0eu6GSsHoOR2O7n+Q+2Xv2J/4y
 tMl/87i2wZniy+cEE4SmoAyKf/7dbFgIEa5Ijyh1t45ArV/5KVqxHEx8MkmTM9BEYR3OxZjAm0Afa
 G0UTmboRH2F65jqKb9lBYkoXc3g1txNUmePOKc1PHYLCqOB9KYlPWnK+GrZ0L54RYiD3Zth0yOWA4
 9tc6eQWg==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFyT-0000aw-GJ; Tue, 31 Mar 2020 12:26:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75304208FE;
 Tue, 31 Mar 2020 12:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585657590;
 bh=blx66YChKg+gYzKEMC/qbWXbGWWkIDZF3MMoWKJ1eBs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hkw5y+kQWTNyKdIkosNGkEfWABxhGzH5a/ppqFq829ZPBlaDy5RCYDV91zOg1oJY1
 TVn2+L02XBcsrh2/Qs5dUdKrRx+B/MXJoJa0U9f9GVx3I2kH43m5N+oowO448yeNSt
 6H4qKsrdAGtepUtpQquxFrTr9E0K/5WcXQmtdOwI=
Date: Tue, 31 Mar 2020 14:22:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Message-ID: <20200331122209.GA1627483@kroah.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331120608.GB4767@pendragon.ideasonboard.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:06:08PM +0300, Laurent Pinchart wrote:
> Hi Mauro,
> 
> Thank you for the patch.
> 
> On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> > Most of media Kconfig/Makefile files already has SPDX,
> > but there are a few ones still missing. Add it to them.
> 
> I think it's a good idea to state the license of each source file, the
> patch looks fine to me. I've however been thinking about licenses for
> build system files recently, and I'll hijack this thread a bit to ask a
> question :-)
> 
> For a project like the Linux kernel, and especially for subsystems that
> are covered by a single license, the choice is easy, we can apply the
> same license to the build files. However, for a project that contains
> components covered by different licenses (such as, for instance, an LGPL
> library, a GPL application and a BSD plugin), how should the license
> covering the build system files be selected ? I searched a bit for
> guidance on this topic, and couldn't find much.

By "default" if there is no license on a file in the kernel tree, it
falls under the GPLv2 license and we should explicity state it, like
this patch does.

So this is fine, but if you want to license the build files some other
way, that's good too, but do so when you add them to the tree, not at
some later time when it could cause confusion :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
