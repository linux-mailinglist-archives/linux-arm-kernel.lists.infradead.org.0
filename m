Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3158F1DB17F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WWJe4VEf7OjvAqbidIUnCwKWm+DWj7NP3Z/CTl6RS+g=; b=Y17XS1mQP/bu7j
	ivu7IFemGswV468rgCYcxfuD7+9br/tC+bgqbGWkv0CEMK0WiT4T/4xyKt3niHiMqYoKxVpDS7aQf
	DaXgSYBouQ8p3IlY0M7ML8iO9P3rXl35YfOoeRgUa9ySfJLDQ0/BPlKouWrHpDIjCm/oAyj3+cvxc
	nXDcli4UwCem0SDBvZUKR6xShac4oG14bh7g+ZvVHxZ1QZ1KrMLluLVic09nHFsUcDVmzPPXF8wrJ
	2WrpgIb9bOdRiJHhnU5Us8K7n/048LwTh7ZJiuqB6K+hZH3frMYQw1aScDpat9yGxnu5deqSJRFKD
	AyUYM/SYumpXcf03NJjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMrG-0006u6-Fv; Wed, 20 May 2020 11:25:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMqr-0006r9-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so2486370wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x8P07aSxqqSoef+7i1vZAK90p0VIQV5p/d9MbWzhwtk=;
 b=l2llVtStUmtcCNTo5afEPmLyvTxIBdwXG1AUMYrSxn9vnU1okPRUTHjy7GcM5SDrIz
 wnqrKQcQklVQ5Yexfv8vxze3+jIIlXWUB0X3CBgCKLBrvTTcBmTqMU33VKQ4MFS3Dw/Y
 hbZ3aDfWsLuQs2OpjYbP9iBfDWXnc1oUCHzC3A6z6gd/c0xGKH5Pp514KF5//oqXI0mZ
 Gxp5YCn4z394NNDDP/cxiFxHqmIcTmvF/1bLlk2eQlnS5o3slS7b8dDjlGpw6GC56jL3
 2KhNbKDHE/CmlAJ0OylL/4CE2bAdvo0Z8522bcE6uAtv4pHLrCoCQk9UfRd+JAaA67S5
 y5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x8P07aSxqqSoef+7i1vZAK90p0VIQV5p/d9MbWzhwtk=;
 b=bwj0/nzhIvmZs4sWTwQIRvU7p8PIUJV1MWW2u9u2WNP0ZEZNHmlASDxQi+cfeCOwd4
 Ii8STWV0XnP4KOEsd/Ei/KtaMAmpkSfXppz2YKu8l/kGa4x6ctwX9nw6Ei2EuqTKf0Mx
 0ibyFhMmC/hBPWE0GUveGobNz637IKGJbpS1Y8xexpUjGbVhlFd9nT2xeVY06e8S/izr
 Iwu4vYoZMxmV79RNRX+/mb0m0pO8TIurssg+dI+Y1Oa7LpEl7ySV4jhMYRACE62qvgdU
 0OHJ+39H1sDaLhO8nj9kQ2SkRtXGQJzW6l9lG355/2JSe9rhqmhhZ5mZqqqAp3R1cMQg
 9q0g==
X-Gm-Message-State: AOAM53206heF40hA/LiL3TIEmw+EMjeUxdehTZQBTGAz9+5B9XcEWzQ+
 5AYiDN1Gc9zXoQejMvjnfStkuA==
X-Google-Smtp-Source: ABdhPJzvgBbyoSwS9NaFCCfWo8VDWuaPCd7LiS7WAWX/txGuTULWv1jp3jF8u37ucf8wB3E+cz+ahA==
X-Received: by 2002:a1c:df83:: with SMTP id w125mr4159276wmg.140.1589973931495; 
 Wed, 20 May 2020 04:25:31 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:30 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 00/11] mediatek: add support for MediaTek Ethernet MAC
Date: Wed, 20 May 2020 13:25:12 +0200
Message-Id: <20200520112523.30995-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042533_081742_0C9519E7 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the Ethernet Controller present on MediaTeK SoCs from
the MT8* family.

First we convert the existing DT bindings for the PERICFG controller to YAML
and add a new compatible string for mt8516 variant of it. Then we add the DT
bindings for the MAC.

Next we do some cleanup of the mediatek ethernet drivers directory.

The largest patch in the series adds the actual new driver.

The rest of the patches add DT fixups for the boards already supported
upstream.

v1 -> v2:
- add a generic helper for retrieving the net_device associated with given
  private data
- fix several typos in commit messages
- remove MTK_MAC_VERSION and don't set the driver version
- use NET_IP_ALIGN instead of a magic number (2) but redefine it as it defaults
  to 0 on arm64
- don't manually turn the carrier off in mtk_mac_enable()
- process TX cleanup in napi poll callback
- configure pause in the adjust_link callback
- use regmap_read_poll_timeout() instead of handcoding the polling
- use devres_find() to verify that struct net_device is managed by devres in
  devm_register_netdev()
- add a patch moving all networking devres helpers into net/devres.c
- tweak the dma barriers: remove where unnecessary and add comments to the
  remaining barriers
- don't reset internal counters when enabling the NIC
- set the net_device's mtu size instead of checking the framesize in
  ndo_start_xmit() callback
- fix a race condition in waking up the netif queue
- don't emit log messages on OOM errors
- use dma_set_mask_and_coherent()
- use eth_hw_addr_random()
- rework the receive callback so that we reuse the previous skb if unmapping
  fails, like we already do if skb allocation fails
- rework hash table operations: add proper timeout handling and clear bits when
  appropriate

v2 -> v3:
- drop the patch adding priv_to_netdev() and store the netdev pointer in the
  driver private data
- add an additional dma_wmb() after reseting the descriptor in
  mtk_mac_ring_pop_tail()
- check the return value of dma_set_mask_and_coherent()
- improve the DT bindings for mtk-eth-mac: make the reg property in the example
  use single-cell address and size, extend the description of the PERICFG
  phandle and document the mdio sub-node
- add a patch converting the old .txt bindings for PERICFG to yaml
- limit reading the DMA memory by storing the mapped addresses in the driver
  private structure
- add a patch documenting the existing networking devres helpers

v3 -> v4:
- drop the devres patches: they will be sent separately
- call netdev_sent_queue() & netdev_completed_queue() where appropriate
- don't redefine NET_IP_ALIGN: define a private constant in the driver
- fix a couple typos
- only disabe/enable the MAC in suspend/resume if netif is running
- drop the count field from the ring structure and instead calculate the number
  of used descriptors from the tail and head indicies
- rework the locking used to protect the ring structures from concurrent
  access: use cheaper spin_lock_bh() and completely disable the internal
  spinlock used by regmap
- rework the interrupt handling to make it more fine-grained: onle re-enable
  TX and RX interrupts while they're needed, process the stats updates in a
  workqueue, not in napi context
- shrink the code responsible for unmapping and freeing skb memory
- rework the barriers as advised by Arnd

Bartosz Golaszewski (11):
  dt-bindings: convert the binding document for mediatek PERICFG to yaml
  dt-bindings: add new compatible to mediatek,pericfg
  dt-bindings: net: add a binding document for MediaTek Ethernet MAC
  net: ethernet: mediatek: rename Kconfig prompt
  net: ethernet: mediatek: remove unnecessary spaces from Makefile
  net: ethernet: mtk-eth-mac: new driver
  ARM64: dts: mediatek: add pericfg syscon to mt8516.dtsi
  ARM64: dts: mediatek: add the ethernet node to mt8516.dtsi
  ARM64: dts: mediatek: add an alias for ethernet0 for pumpkin boards
  ARM64: dts: mediatek: add ethernet pins for pumpkin boards
  ARM64: dts: mediatek: enable ethernet on pumpkin boards

 .../arm/mediatek/mediatek,pericfg.txt         |   36 -
 .../arm/mediatek/mediatek,pericfg.yaml        |   64 +
 .../bindings/net/mediatek,eth-mac.yaml        |   89 +
 arch/arm64/boot/dts/mediatek/mt8516.dtsi      |   17 +
 .../boot/dts/mediatek/pumpkin-common.dtsi     |   34 +
 drivers/net/ethernet/mediatek/Kconfig         |    8 +-
 drivers/net/ethernet/mediatek/Makefile        |    3 +-
 drivers/net/ethernet/mediatek/mtk_eth_mac.c   | 1668 +++++++++++++++++
 8 files changed, 1881 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
 create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
 create mode 100644 drivers/net/ethernet/mediatek/mtk_eth_mac.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
