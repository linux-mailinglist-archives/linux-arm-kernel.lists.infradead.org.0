Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C7C16A07B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZtATH7AYdz0MWOx0BiN696FjbzB/itIpSRVgXy17pf4=; b=DDRi/pfCW2KHeY
	PT1vwbdx4x7PMj03UI4GtWV/TVmNZaVvFHX4S328+RcD6a2EGZv1AYsLJ42FnIRhSKFOAswLHefEy
	Hi2fVT+UxIGJDPx7iFhEZ3TGrkw/EuwRaOMIcRM3OedHDAH+Yjb2QJvGCyAloZf0784KpgDodjLLT
	XNkBHM6AthIsyx6FCY1bC0/Yj4Js/lE5VX8QfPe0B4oc6/wgVOQyPM7MDd+EXRAU1PlSY6GpYXPfG
	K1zPvB+nzDyhZqAhCf2P9L3IaEH5gVJlX+gycjUUeJctz4DfESWwTaC5Ezy/gzdHUccYWPA49hs4Q
	pZibHPhzSf+5mb/qzPwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Ue-0006ur-6t; Mon, 24 Feb 2020 08:53:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69UL-0006u4-V6; Mon, 24 Feb 2020 08:53:19 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD2602080D;
 Mon, 24 Feb 2020 08:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534397;
 bh=Ugc7dAKlC3R+DmK4jm+0O+ZH1JP8HnCfRCnDPMCyNBY=;
 h=From:To:Cc:Subject:Date:From;
 b=M6V5BoN3aIanBu9W67/8FCFljuvsP/AOnrv6eMUZzK50fmz1Ut13nmtdFHSs1q0Vy
 HTACB6z01GC4bHimMWIPhZNp5k7mp1ChYEo/5FMtLBa9lBD4EA1TXuO9j3UOV92K5c
 q2Cqf4vRkT37dayXHP2nuDpVFS+f1AXeAeGBLd4o=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 00/18] Clean driver, module and FW versions
Date: Mon, 24 Feb 2020 10:52:53 +0200
Message-Id: <20200224085311.460338-1-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005318_047046_E1BBDFFC 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Jay Cliburn <jcliburn@gmail.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Leon Romanovsky <leonro@mellanox.com>,
 Don Fry <pcnet32@frontier.com>, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ion Badulescu <ionut@badula.org>,
 Netanel Belgazal <netanel@amazon.com>, Mark Einon <mark.einon@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

Change log:
 v1:
  * Split all FW cleanups patches to separate patches
  * Fixed commit message
  * Deleted odd DRV_RELDATE
  * Added everyone from MAINTAINERS file
 v0: https://lore.kernel.org/netdev/20200220145855.255704-1-leon@kernel.org

----------------------------------------------------------------------------

Hi,

This is first patchset to netdev (already sent RDMA [1] and arch/um [2])
in attempt to unify the version management for in-tree kernel code.
The patches follow already accepted ethtool change [3] to set as
a default linux kernel version.

It allows us to remove driver version and present to the users unified
picture of driver version, which is similar to default MODULE_VERSION().

As part of this series, I deleted various creative attempts to mark
absence of FW. There is no need to set "N/A" in ethtool ->fw_version
field and it is enough to do not set it.

1.
The code is compile tested and passes 0-day kbuild.
2.
The proposed changes are based on commit:
  2bb07f4e1d86 ("tc-testing: updated tdc tests for basic filter")
3.
WIP branch is [4].

[1] https://lore.kernel.org/linux-rdma/20200220071239.231800-1-leon@kernel.org/
[2] http://lists.infradead.org/pipermail/linux-um/2020-February/002913.html
[3] https://lore.kernel.org/linux-rdma/20200127072028.19123-1-leon@kernel.org/
[4] https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=ethtool

Thanks

Leon Romanovsky (18):
  net/bond: Delete driver and module versions
  net/dummy: Ditch driver and module versions
  net/3com: Delete driver and module versions from 3com drivers
  net/adaptec: Clean driver versions
  net/aeroflex: Clean ethtool_info struct assignments
  net/aeroflex: Don't assign FW if it is not available
  net/agere: Delete unneeded driver version
  net/alacritech: Delete driver version
  net/allwinner: Remove driver version
  net/alteon: Properly report FW version
  net/althera: Delete hardcoded driver version
  net/amazon: Ensure that driver version is aligned to the linux kernel
  net/amd: Remove useless driver version
  net/apm: Remove useless driver version
  net/apm: Properly mark absence of FW
  net/aquantia: Delete module version
  net/arc: Delete driver version
  net/atheros: Clean atheros code from driver version

 drivers/net/bonding/bond_main.c               |  6 +-----
 drivers/net/bonding/bonding_priv.h            |  5 ++---
 drivers/net/dummy.c                           |  3 ---
 drivers/net/ethernet/3com/3c509.c             |  8 +-------
 drivers/net/ethernet/3com/3c515.c             | 16 +---------------
 drivers/net/ethernet/3com/3c589_cs.c          |  2 --
 drivers/net/ethernet/3com/typhoon.c           |  1 -
 drivers/net/ethernet/adaptec/starfire.c       | 19 +------------------
 drivers/net/ethernet/aeroflex/greth.c         |  2 --
 drivers/net/ethernet/agere/et131x.c           |  1 -
 drivers/net/ethernet/agere/et131x.h           |  1 -
 drivers/net/ethernet/alacritech/slicoss.c     |  3 ---
 drivers/net/ethernet/allwinner/sun4i-emac.c   |  2 --
 drivers/net/ethernet/alteon/acenic.c          |  5 ++---
 .../net/ethernet/altera/altera_tse_ethtool.c  |  1 -
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  1 -
 drivers/net/ethernet/amazon/ena/ena_netdev.c  | 17 ++---------------
 drivers/net/ethernet/amazon/ena/ena_netdev.h  | 11 -----------
 drivers/net/ethernet/amd/amd8111e.c           |  5 +----
 drivers/net/ethernet/amd/au1000_eth.c         |  5 -----
 drivers/net/ethernet/amd/nmclan_cs.c          |  9 +++------
 drivers/net/ethernet/amd/pcnet32.c            |  7 -------
 drivers/net/ethernet/amd/sunlance.c           | 10 ----------
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  |  1 -
 drivers/net/ethernet/amd/xgbe/xgbe-main.c     |  1 -
 drivers/net/ethernet/amd/xgbe/xgbe.h          |  1 -
 drivers/net/ethernet/apm/xgene-v2/ethtool.c   |  2 --
 drivers/net/ethernet/apm/xgene-v2/main.c      |  1 -
 drivers/net/ethernet/apm/xgene-v2/main.h      |  1 -
 .../ethernet/apm/xgene/xgene_enet_ethtool.c   |  2 --
 .../net/ethernet/apm/xgene/xgene_enet_main.c  |  1 -
 .../net/ethernet/apm/xgene/xgene_enet_main.h  |  1 -
 .../net/ethernet/aquantia/atlantic/aq_cfg.h   |  4 ----
 .../ethernet/aquantia/atlantic/aq_common.h    |  1 -
 .../ethernet/aquantia/atlantic/aq_ethtool.c   |  1 -
 .../net/ethernet/aquantia/atlantic/aq_main.c  |  1 -
 drivers/net/ethernet/aquantia/atlantic/ver.h  | 12 ------------
 drivers/net/ethernet/arc/emac.h               |  1 -
 drivers/net/ethernet/arc/emac_arc.c           |  2 --
 drivers/net/ethernet/arc/emac_main.c          |  1 -
 drivers/net/ethernet/arc/emac_rockchip.c      |  2 --
 drivers/net/ethernet/atheros/atl1c/atl1c.h    |  1 -
 .../ethernet/atheros/atl1c/atl1c_ethtool.c    |  2 --
 .../net/ethernet/atheros/atl1c/atl1c_main.c   |  5 -----
 drivers/net/ethernet/atheros/atl1e/atl1e.h    |  1 -
 .../ethernet/atheros/atl1e/atl1e_ethtool.c    |  2 --
 .../net/ethernet/atheros/atl1e/atl1e_main.c   |  4 ----
 drivers/net/ethernet/atheros/atlx/atl1.c      |  6 ------
 drivers/net/ethernet/atheros/atlx/atl2.c      | 10 ----------
 49 files changed, 14 insertions(+), 193 deletions(-)
 delete mode 100644 drivers/net/ethernet/aquantia/atlantic/ver.h

--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
