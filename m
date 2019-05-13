Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C3A1B9BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKsUJhz61YIC/2T2LTUvJdafs3KdpWaZtVJG9OJVa34=; b=lxocUwsxpNkhe9
	zVHdx0RNAjLmCLbRakfNQB6JOX34Ir67g7tvZWnCQsjlV7XBGObcsmVjUieKeaBudziykjJHWlZPL
	MEEgpTbVTrWMTniK/k7rBjCC95Zoz0tPO/4wL80KM7WBobGzUcdo9JkZ2wlg79VlUn0UJdJ2o9KAX
	wr8LaRcaV9taX5uzptE8gyzw9lEJa0KoDWfOGOK7A5621LfflEtkGxt7LV5kmQSkO7NmvHPz58ue8
	vcxiS7e2ovPF+Y/vJD1WIwriSaVj/stXzXetngOTNcTLPhdQvu8f+Qdv6dKwUfo9yzGYM3Y2/MAgv
	ccOWa1xgfyUOKrmsSKPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQChA-0007tm-5S; Mon, 13 May 2019 15:16:52 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCh0-0007t4-Ie
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:16:44 +0000
X-Originating-IP: 109.212.159.106
Received: from localhost (alyon-652-1-184-106.w109-212.abo.wanadoo.fr
 [109.212.159.106])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 415D04000C;
 Mon, 13 May 2019 15:16:28 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org
Subject: Re: [GIT PULL v2] ARM: mvebu: arm for v5.2 (#1)
In-Reply-To: <87v9yw5525.fsf@FE-laptop>
References: <87v9yw5525.fsf@FE-laptop>
Date: Mon, 13 May 2019 17:16:27 +0200
Message-ID: <87sgti1j1w.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081642_760011_F02E52ED 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof, 

> Hi,
>
> Here is the second version first pull request for arm for mvebu for
> v5.2.  I fixed the coding style issue dtecting by checkpatch in the
> commit "ARM: mvebu: fix a leaked reference by adding missing
> of_node_put"

Any news about this PR?

I sent it less than 24 hours after being rejected by Olof because of a
missing space, so I hope this branch will be finally merged.

Thanks,

Gregory

>
> Gregory
>
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
>
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
>
> are available in the Git repository at:
>
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-arm-5.2-1
>
> for you to fetch changes up to 7af2ea3b29b1640f5aafe79d7c110ce66190c04a:
>
>   ARM: mvebu: drop return from void function (2019-04-30 09:05:44 +0200)
>
> ----------------------------------------------------------------
> mvebu arm for 5.2 (part 1)
>
>  - remove improper error message on kirkwood
>  - a couple a clean-up patch generated from automatic tools
>  - clean-up in assembly code allowing using LLVM
>
> ----------------------------------------------------------------
> Chris Packham (1):
>       ARM: mvebu: kirkwood: remove error message when retrieving mac address
>
> Nicholas Mc Guire (1):
>       ARM: mvebu: drop return from void function
>
> Stefan Agner (2):
>       ARM: mvebu: drop unnecessary label
>       ARM: mvebu: prefix coprocessor operand with p
>
> Wen Yang (1):
>       ARM: mvebu: fix a leaked reference by adding missing of_node_put
>
>  arch/arm/mach-mvebu/board-v7.c     |  1 -
>  arch/arm/mach-mvebu/coherency_ll.S |  2 +-
>  arch/arm/mach-mvebu/kirkwood.c     |  2 --
>  arch/arm/mach-mvebu/pm-board.c     | 11 ++++++++---
>  arch/arm/mach-mvebu/pmsu_ll.S      |  3 +--
>  5 files changed, 10 insertions(+), 9 deletions(-)
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
