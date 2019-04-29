Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F702DD4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnX0EmC0b8Q2hkBvs65XVUu3DJcXx+VIjJP2Q/5vvN4=; b=Uoahp+R1izyW3Y
	9Aw/r14V9ERAcjAyByDm9MlzCCYXVsCMdvYCttDXg8EfBiCEJWZvAPt6zUkHSdqnIOzbneWlYpBk0
	7UJ7bzFLdMrQd2c4PDNxO6ycLzLlC8HRAMi7NmTyQAxhKvOT6LuqwzYsidRS6R6Gru+BNL2n3UCK0
	Gsd7JdCb+twqTX1H3iXFsk3WcMXfRNFL/A7143m7VjTw5GKephokuzVcA1KHbUiXHlmyeXbEtaMFx
	KVYsLGTFY14D/8L8Rv54kHHu06g/Rb5XyPs15VOxVHYHDsIPQUkfgxbWOBhSmDAbO5UTXSzZM3VNC
	4Gy0Odt4+VXHj0GQdT5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1C2-00013U-8w; Mon, 29 Apr 2019 07:59:18 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1Bv-000136-1O
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:59:12 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id C72AB25B6F0;
 Mon, 29 Apr 2019 17:59:06 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id CA2AB940376; Mon, 29 Apr 2019 09:59:04 +0200 (CEST)
Date: Mon, 29 Apr 2019 09:59:04 +0200
From: Simon Horman <horms@verge.net.au>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] defconfig refresh for multi_v7_defconfig for v5.1
Message-ID: <20190429075904.a4qhqkhn4argt6b2@verge.net.au>
References: <pull-1555425463-418342@atomide.com>
 <20190429061714.3qcj72efkblqhjw3@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429061714.3qcj72efkblqhjw3@localhost>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005911_235024_A5FE3EA7 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 arm@kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 11:17:14PM -0700, Olof Johansson wrote:
> On Tue, Apr 16, 2019 at 09:13:37AM -0700, Tony Lindgren wrote:
> > From: "Tony Lindgren" <tony@atomide.com>
> > 
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> > 
> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/multi-v7-defconfig-for-v5.2-signed
> > 
> > for you to fetch changes up to 35f8e2e29e74bb7197419d7cd80df5584e2a6311:
> > 
> >   ARM: multi_v7_defconfig: Update for moved options (2019-04-16 07:05:07 -0700)
> > 
> > ----------------------------------------------------------------
> > Update multi_v7_defconfig for dropped and moved options
> > 
> > This series of two patches first updates multi_v7_defconfig for
> > dropped options, and then updates it for moved options. We want to
> > do this on regular basis to make it easier to patch multi_v7_defconfig
> > without introducing errors and merge conflicts. We update the defconfig
> > in two patches to make sure we're not accidentally losing any needed
> > options.
> > 
> > After this, updating multi_v7_defconfig will become trivial, and most
> > likely only a small follow-up patches are needed after the merge window
> > to update it again for moved options.
> 
> Merged, thanks.
> 
> 
> 
> -Olof
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
