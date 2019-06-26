Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A248569E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ1+mPHmKTvcKH0pgh5tLM7DZVzImvVRwKLcl4QY/xk=; b=hRL25EkYFdavFq
	RKaAkOvUJTWcNkz2JG0a+UCt73YgFI7AAO3UFn2LNxfQReWo8mCCJ/8OYfJjDUZOMFd/y4H8gqbD4
	/jjLyBCD8ymTRKldVb0CqIOn8/GHQ55uHaXCNSDgYHDEWJF7RvhcLzZPwngaeKgCCGZR+QSpt40kB
	Y0JJRAlePB+tDfLRNV2013FPGHSpARJDh8wDx3FBf2D6MuqxKYU3pxiC1uC252IOv4wS+dRDWWZ4Z
	GSgutbJB3xPNYL6hCfn724NnTrmTtfcO2CQ9Trd50tcND1czUIWoZA7r2F8jXeJIDJlTPYnBlCVH0
	fhWlf+et6YST4xfftmtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7XS-0005WC-VY; Wed, 26 Jun 2019 13:00:39 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7X7-0005VF-9M; Wed, 26 Jun 2019 13:00:19 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 03DA42003C;
 Wed, 26 Jun 2019 15:00:08 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:00:07 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
Message-ID: <20190626130007.GE23428@ravnborg.org>
References: <20190401171724.215780-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401171724.215780-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=e5mUnYsNAAAA:8
 a=cKMTf3WC4CzyLkAXteUA:9 a=CjuIK1q_8ugA:10 a=PO69wPE_V6wA:10
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_060017_507496_7AAC7472 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?iso-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Douglas.

On Mon, Apr 01, 2019 at 10:17:17AM -0700, Douglas Anderson wrote:
> I'm reviving Sean Paul's old patchset to get mode support in device
> tree.  The cover letter for his v3 is at:
> https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> 
> No code is different between v4 and v5, just commit messages and text
> in the bindings.
> 
> I've pulled together the patches that didn't land in v3, addressed
> outstanding feedback, and reposted.  Atop them I've added patches for
> rk3288-veyron-chromebook (used for jaq, jerry, mighty, speedy) and
> rk3288-veryon-minnie.
> 
> Please let me know how they look.
> 
> In general I have added people to the whole series who I think would
> like the whole series and then let get_maintainer pick extra people it
> thinks are relevant to each individual patch.  If I see you respond to
> any of the patches in the series, though, I'll add you to the whole
> series Cc list next time.
> 
> Changes in v5:
> - Removed bit about OS may ignore (Rob/Ezequiel)
> - Added Heiko's Tested-by
> - It's not just jerry, it's most rk3288 Chromebooks (Heiko)

What are the plans to move forward with this?
Or did you drop the whole idea again?

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
