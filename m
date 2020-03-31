Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8827E199B32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/t5mCka5IMTayPCmR60egG+m2O9zFN7012vj/vkM70=; b=uJdopsaqxrlaVg
	FkGHV3iagW4SyuliYffghjxjriW4TYE6ho7OEqH+4hDBRigwZOXnWzzLl/k5vEGokKboWG3FaCUNr
	/vX0hGENkNrBMpVXO92PEmAQbxAjXvv9awAtLvyB1Xhi6FHo/NDYpV0zEPKhfjHRwQD0Eiht7VZaY
	eqjMFVy0cb8JwYuTwMalyNMpltdyWXPWLvldZIW+mPxUOLeorod/3LjvflZ8LOx8WP//vrgBDq7Hp
	rCA+dXZNMqbTz/cobDsaFAuHC1Y554x5/jx0CPHZkXIz1U/qJesxzuqxcqlSkn1KHOLtIyfIJjzrX
	dWDFovqXXg4YRa6ju1Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJaP-0004SA-7I; Tue, 31 Mar 2020 16:17:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJZu-0004Hh-0e; Tue, 31 Mar 2020 16:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=pm+Yn5GXP35KHcLeuYjRYz4ytRkkx8//hIxWrnx7+rU=; b=e4yVl11++olKrYExhO4XTD/9tq
 /o4Ka4rLyyF6m3l8GLYjpXnYYNYolp32gq0OKotaG24phSM+bzncKdWFBuMozM3fnYsQNMw9n4tjS
 Z3MEewbz45eRFe+IBJ7p67Q9MVcJA/Dy5xzCkydgWaDY5ZsOHHhXXEvd6iHM0D37+Tm49O+L55Y+L
 fu9gohBzRqh6zfMySinQIGrWRecJ084AvBZgFrSBlcrljSVXivEQp2UpNwtXA0GrA+aQJLWGXchAN
 Qpb29M2lE6iujKQPxlChCWCpil3mkxhZXRxi3NyWlGK5HMPb5bV5rlHHiscW0khkJ6vDY1WfCjDjR
 wShF8mqQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJGJI-00016o-Ds; Tue, 31 Mar 2020 12:48:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 433C820848;
 Tue, 31 Mar 2020 12:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585658881;
 bh=Ep9oXY2shrD4wLEpeLwi0HCXZDPZJuk1J/OQxP6c2pA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mWKbsrXpqnSp87cvQuI8DI3ZfFygOmLEMtJsjhjgWH5cdrUlbArN9yfxVAkLYbm/4
 VOObvQR+WuYmB1vqa5WqFxbD+e+24rnj6CyEPXHPco/QPuFuVsVSakvAGRO/HnGUXY
 ZGPNTbsfII+ylcg6St6rIyiY3ZPyfiZvBR+mM/z8=
Date: Tue, 31 Mar 2020 14:47:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Message-ID: <20200331124756.GA1634223@kroah.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
 <20200331122209.GA1627483@kroah.com>
 <20200331123914.GC4767@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331123914.GC4767@pendragon.ideasonboard.com>
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
Cc: devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:39:14PM +0300, Laurent Pinchart wrote:
> Hi Greg,
> 
> On Tue, Mar 31, 2020 at 02:22:09PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Mar 31, 2020 at 03:06:08PM +0300, Laurent Pinchart wrote:
> > > On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> > > > Most of media Kconfig/Makefile files already has SPDX,
> > > > but there are a few ones still missing. Add it to them.
> > > 
> > > I think it's a good idea to state the license of each source file, the
> > > patch looks fine to me. I've however been thinking about licenses for
> > > build system files recently, and I'll hijack this thread a bit to ask a
> > > question :-)
> > > 
> > > For a project like the Linux kernel, and especially for subsystems that
> > > are covered by a single license, the choice is easy, we can apply the
> > > same license to the build files. However, for a project that contains
> > > components covered by different licenses (such as, for instance, an LGPL
> > > library, a GPL application and a BSD plugin), how should the license
> > > covering the build system files be selected ? I searched a bit for
> > > guidance on this topic, and couldn't find much.
> > 
> > By "default" if there is no license on a file in the kernel tree, it
> > falls under the GPLv2 license and we should explicity state it, like
> > this patch does.
> > 
> > So this is fine, but if you want to license the build files some other
> > way, that's good too, but do so when you add them to the tree, not at
> > some later time when it could cause confusion :)
> 
> Thanks for your answer. I was hijacking the thread a little bit, the
> question wasn't related to the kernel, but in this case to libcamera.
> We've been wondering how to pick licenses for build files there, and I
> thought fellow kernel developers may have valuable input on this topic.

I would make the files the same license as your project overall is to
make things simpler for everyone involved :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
