Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2519021685
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 11:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJMsYKhLeOpqBVKpGHjf6L71VcaxN0XdrcsdePl3SRY=; b=cU0KqVMdkpJkk+
	2M0deGtbYQ9arCpB4w4xDDR88wLDPnT7yUcGnBe9qpW9yqUQwb0dD9f41gCr3ykxnQuIfg6BO8s/E
	jlVW1U+QMgRNEahVb3edOupgfogSMyA7RUEYIjWlFMgnl5jj0zwBXdueMZRwxZnuqvAyzBMee40YV
	jG3P0n7uNKFte9RBHVK0t8cAbj/K40ZgVRGnuit5/ID8LaCCBDLmBmuHZtFQOyUTHaPv1dhxdN8m2
	AjmJ9bLrTeeuiChQEXdMWDPEb2XGzoBwORvsZn4CHKH+N+zAfPBauGh5PDgoi2+hpNfL5cDhYiEcE
	170dfSbZsS5PhIF+8TXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZSl-0000CU-28; Fri, 17 May 2019 09:47:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZSd-0000Bg-KJ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 09:47:32 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id D876F68B02; Fri, 17 May 2019 11:47:08 +0200 (CEST)
Date: Fri, 17 May 2019 11:47:08 +0200
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190517094708.GA16858@lst.de>
References: <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
 <20190516164859.GB10431@lst.de> <20190517072738.deohh5fly4jxms7k@flea>
 <20190517101353.3e86d696@blackhole.lan>
 <20190517090845.oujs33nplbaxcyun@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517090845.oujs33nplbaxcyun@flea>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_024731_818997_7594DECB 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:08:45AM +0200, Maxime Ripard wrote:
> >
> > So for all current practical purposes, we can assume the Teres-I panel
> > to be powered properly and providing valid EDID; nothing to worry about
> > in software.
> 
> You're creating a generic binding for all the users of that bridge,
> while considering only the specific case of the Teres-I.

All I'm saying is that _this_ usage is also valid. Nothing keeps other
users from defining the output panel; on the contrary: the driver at hand
already considers an _optional_ panel and handles it, conditionally. So
driver and binding spec are 100% in sync here.

This is much more straightforward than requiring an output and making up
some dummy code and params because it cannot reasonably be handled.
(Remember, if there is an output, the driver will make calls to the
"attached device" driver.)

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
