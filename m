Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6352A12AE73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 21:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cL3VTidwyPX1SsR25uIz4agGhGmINzoHaVwu2jq70o=; b=iXavWfXofYnUa1
	8a/WEnb1zeXmiq0atBuArkV5feKXV81Ub6caHB4Ussrn4Xks6kznXrNKOnRc44GZo6XTYvk8+A4Ex
	s2U4gkAoW1uMKBKhFaLgCdEZUH2JQ6QWRuKKYpt9UB+r/rONhhDB4TmwkYY3cd50gzFSs28PfaaOR
	8437lHJQQ8WixsHh+BFFyRy4EUAtAD7VZ4mjn8xi625lfV6F8mHM7gwa/O2A5WTAB3IkUqfrgY8XQ
	P19NWqkmiYtouC2ULAg/GPJebbLKqZbA/jbODNZwUV9jCJacXNG6tzMOip9qMAsb2d5Akx+rdi5Bx
	y4mbrFjmpsL3RFH9ui9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikZk0-0001iv-OM; Thu, 26 Dec 2019 20:28:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikZjo-0001hu-PR; Thu, 26 Dec 2019 20:28:06 +0000
Received: from [193.173.216.178] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ikZjg-0007qI-RB; Thu, 26 Dec 2019 21:27:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] Revert "rockchip: make sure timer7 is enabled on rk3288
 platforms"
Date: Thu, 26 Dec 2019 21:27:45 +0100
Message-ID: <1865524.AMUeMo0HA2@phil>
In-Reply-To: <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
References: <20191225025908.25305-1-kever.yang@rock-chips.com>
 <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_122805_001572_FB799924 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Russell King <linux@armlinux.org.uk>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 25. Dezember 2019, 04:02:29 CET schrieb Chen-Yu Tsai:
> On Wed, Dec 25, 2019 at 10:59 AM Kever Yang <kever.yang@rock-chips.com> wrote:
> >
> > This reverts commit 2a9fe3ca84afff6259820c4f62e579f41476becc.
> > All the U-Boot version for rk3288 including mainline, rockchip
> > legacy/next-dev, have init the timer7, so no need to init it in kernel
> > again.
> 
> What about the ChromeOS bootloader?

Coreboot does seem to start timer7 correctly:
https://github.com/coreboot/coreboot/blob/master/src/soc/rockchip/rk3288/timer.c

But old rk3288 Android TV-boxes do contain bootloaders not doing that and
as the owners of such boxes will most often not have too great development
tools available, that would break newer kernels for them, which is really bad
as we value backwards compatibility very much.

Instead (just checked theoretically) could we just check for psci existence?
I.e. the calling order seems to be:

start_kernel() (in init/main.c)
	-> setup_arch()
		-> psci_dt_init()
			-> populates struct psci_ops
	-> time_init()
		-> machine_desc->init_time()

so in rockchip_timer_init() you should "just" be able to check like

	if (of_machine_is_compatible("rockchip,rk3288") && !psci_ops.cpu_on) {
		/* timer init */
	}


Heiko

> > One more reason is that if  we enable the trust for rk3288, then timer7 is
> > not able to be accessed in kernel.
> >
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
