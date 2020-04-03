Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8947819E04D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fZx2AYRmLJw8VN+r8AQk5PkaeX9oGKIe0n13tT5qaWo=; b=DOfXK88g1VAW6+
	TVpB8dxkj85cvBULQkFMCJWvSgV5gM5Bgke1lqMb5PM/fq7b6bO5dHAITWR9xLVt/Fmk56jwc6iab
	ZBiEIp9HNAGQnEVPPVq8GgbumT/WQi+nXKDa6tdiszNRPJuYFVTIXlOsbd5DXtsYasWib3GZNeO71
	XmMMED1w8HZFCZZrSZ3Cdgkp/aFTlRoKawKSliM11X350VcQoEBnvyMXUy2KumqtC5FsVqBaOBh0J
	vfBniY81XtYRB0jYmh0Y5RCphMZ/sYN1f3QRHIPy63u/gRcCz9sIZD/LK5H6U9LnYQbe6ogm47XaK
	tTDV7vqLVq552czxMXvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTtJ-0005VK-RJ; Fri, 03 Apr 2020 21:30:17 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTtB-00048m-7m
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:30:11 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MxUfh-1j99AD1mwL-00xtRw for <linux-arm-kernel@lists.infradead.org>; Fri,
 03 Apr 2020 23:30:04 +0200
Received: by mail-qt1-f181.google.com with SMTP id a5so7746192qtw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 14:30:04 -0700 (PDT)
X-Gm-Message-State: AGi0PuZArMgqLa7sQFyoD3WdatWPYTz6bdx51pzMg4n/mZMsRoxUYqic
 wX1Qa79n/gTmPIBjBWj2gnmPXquz4+napwBQWgY=
X-Google-Smtp-Source: APiQypJMLJzUbCfNCO5Og6VWOIdmag7cpl+F823zhRpXudOQprChEBxAxNFcT3I6LC4tRLPW4oQaKmAvbHGoZunOufU=
X-Received: by 2002:ac8:7292:: with SMTP id v18mr10420071qto.304.1585949403150; 
 Fri, 03 Apr 2020 14:30:03 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 3 Apr 2020 23:29:46 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
Message-ID: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
Subject: [GIT PULL 0/4] ARM: SoC changes for v5.7
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:QXTvYRcbQo3emARFGgoNsbAkuF25hwmbQQxNtcXSCBhUMjPv3SY
 VZgr+03zdHiO/ZRLs7ZkUmIoZhxiaInc2r9AObojHaerSpjXUqI1rmS0fND64u9llEGlf4p
 canX7xPosmuyoPipsHLminAKwooYb5NlZe+AsaNq/oH7ssTwNIt6JSVaRjtKDbiNowFPift
 rMJCrmqPwDTAvFI8hi53w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bQIda3gdoY8=:Un38VeHNGHZHHqXX3iY7t/
 p0TtEthq8rcuo+/b+i5SJ3ENvz4Qwxd0D3D4ri16fgEzMbj6tN0e9So9i1ykI7EJ74xXsGZot
 /QRQaiwzeOQ6/Zg7qgmMa+gQfVodmRUbhkfDCWQjVnEgwmyaK4yZgQ0mMBrEz+WPN/ucO3ZrB
 9zIVkMyQYHcI8cb6yo1uI5o0w/LkQ2/0of0qTc7jinEb8CNjp8+8CeN74l8+VzOm6eBumI1SA
 viQfYNjlzwsJLsyvRVmpv4B1sylqtJZS1DBFoycE2YpquaslVAGEl2pR3N5hDGT/ns7dOTOk6
 aGO6qX2z7jZIEW4op6UGMRM7MrY0Ew1OagKidjCvnyV5J0sQ60ItF5KbcQ2EqldxVG/xP2HoY
 npxAQmckoG1WzcxB+F7+FLYQmsZiDVaBhnH6McOsp+IW2Ihu7FVqOr6CLbDlqzGJBc67/YK2Y
 PFY4ZzN54lbyM2zlsRLWfblt+W20w0z9AA1XaeWlNnprNkOwA9/83tup32erWKKOdyx15yAne
 5l79nR8CUuxroYVgFl9fX4ECkSRYOjtAMrNCeQePIjXl9Oj9jk6Z4NpQou8eLlQ7VJKmz2k13
 E/HvHc2+gDZKFtmvuYZMRxM5z7rk4A+rzdpZIiRl+mUpOqqDE/YqjczADk3mJZK0bf/UPpIVP
 Ih98l9aiiN7XUG+w7K5WZINeh1PQDlLaBuDVLf7YXDTQaC2XuY+TWS9cE59BSQhPX1qyj4obn
 Ee9H0qwvBi7cUy80oKlBpDNFLYdBt8eF1X6p8ZLZSnlSPlb2v7d7OWY2d5OCNCrHD8A15B/Ct
 UI9K6HehC/n+0DepqVegAKiXZ/g2yh8Yoe9w3KLj+RUf/Q6Hrs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_143009_606912_FD1725AB 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Here are four pull requests for the soc tree, more of the usual, with roughly
two thirds of the changes for devicetree files, and the rest split between
DT binding updates, SoC specific drivers and 32-bit ARM platform code.

I like how most of the added machines are for fairly new hardware, as
this shows hardware manufacturers caring about upstream support.
It's also nice to see new support for old hardware like the Samsung
GT-S7710 XCover 2 added by hobbyists.

By changed lines (DT and drivers), most of the changes are now clearly for
64-bit platforms, though the number of changesets and the number of newly
added machines is slightly higher for 32-bit this time.

Overall we have 180 individual contributors on 714 patches, with only 14
people contributing 10 or more patches.

=== Top contributors by number of non-merge changesets ===

     66 Tony Lindgren
     40 Anson Huang
     33 Johan Jonker
     22 Li Yang
     21 Geert Uytterhoeven
     20 Dmitry Osipenko
     13 Linus Walleij
     12 Bjorn Andersson
     11 Nagarjuna Kristam
     11 Marek Szyprowski
     11 Florian Fainelli
     10 Sowjanya Komatineni
     10 Michael Walle
     10 Jernej Skrabec

=== Dirstat ===

   1.5% Documentation/devicetree/bindings/arm/bcm/
   2.4% Documentation/devicetree/bindings/arm/tegra/
   4.0% Documentation/devicetree/bindings/arm/
   0.8% Documentation/devicetree/bindings/
  24.4% arch/arm/boot/dts/
   0.5% arch/arm/mach-at91/
   4.7% arch/arm/mach-omap2/
   1.9% arch/arm/mach-tegra/
   1.8% arch/arm/
   2.7% arch/arm64/boot/dts/allwinner/
   1.0% arch/arm64/boot/dts/amlogic/
  15.7% arch/arm64/boot/dts/freescale/
   5.6% arch/arm64/boot/dts/mediatek/
   1.3% arch/arm64/boot/dts/nvidia/
   6.9% arch/arm64/boot/dts/qcom/
   0.8% arch/arm64/boot/dts/renesas/
   3.4% arch/arm64/boot/dts/rockchip/
   0.5% arch/arm64/boot/dts/
   2.4% drivers/bus/
   1.0% drivers/cpuidle/
   2.2% drivers/firmware/arm_scmi/
   0.6% drivers/soc/amlogic/
   3.3% drivers/soc/fsl/dpio/
   3.5% drivers/soc/qcom/
   3.1% drivers/soc/tegra/
   0.8% drivers/soc/
   0.9% drivers/
   0.8% include/
 648 files changed, 25235 insertions(+), 6618 deletions(-)

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
