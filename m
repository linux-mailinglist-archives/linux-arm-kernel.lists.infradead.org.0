Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78141D294D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oQlSh6us2IJ41sPDBtKG4huRIjPCljDCNfLjwc6ODM4=; b=Ey+RGPpXNfa54a
	novHAtX3bME3QKYuGO3uZWL0W/WCqJwySxFOSkz37NrHKcFmgKkfI46GaCnlWTPNmBoISDHmhq7c9
	Aeo4KtPeA7eSlyABogD+X3Xk1iY8r8wY5d+bMhOcVBiLCU2yKppMTFYTkcy+RRbRMm1gzLbpjYqb/
	bXPrLw0Wg/ZTPZ/8m439h9EFfUMsaEzxHvjE+jzhIpa/SoZNAuZMs+jx1mRY6Rip7IdFeqByNu7K7
	LhUW7ywzmcsCdu2wDmmU1/krvaXEaRy1NvpAFWCv95hwWwZN5WZBD1bf8EGpmcsX+Y1D4Yu/dDFn+
	w+drfAYhYXzPFCBpWj9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8nC-0003bO-5P; Thu, 14 May 2020 08:00:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mk-000232-5s
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id 50so2571594wrc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LxiKwe63FtUym2hYC0zoHVQTlvrxg5XLv5yLWaD9fEo=;
 b=UeCZEBRs20fQXYUJ0r4rTsxGg5GcFmWuh+lzieEtDQHE6NKCFyIP95HcoRaJphptG5
 74JYw+/BDgF0+IGCJKhnHi2sLi9epciTNrn5bNRabbYKCppawHl9heC30ToTWy8S+k7K
 bX2hvRdeMZyAwM2HRTSbE7gTewUuiRny5XmWOo+XV3wnsrYxyzDOekfkIC8mT2wEbEzO
 igxRgI47NryMgg+Oy9pl5skMNrp+Un81sJEPKNc3dUOYJnkSblhpuqBZ3a/jPmmHjshf
 C9AGxQFsPEl2nOzoQkl7j+thuirCBjnt6vDkFMZ1oNrZL2ANTi+lKoWUYkba21FsTb26
 ORag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LxiKwe63FtUym2hYC0zoHVQTlvrxg5XLv5yLWaD9fEo=;
 b=ApRjN9xZMaPGK5EjolC092ChGNYN6Lj0cBfpo4MWUqwY/k0AMxGj9lbmdRHyuO4PkQ
 3n2nkAXVTQGa/B4pB6T8N2i2bcfN6SWhowBhAOEQZtan/kxzCgYO1xU/IGWWxZmAylB8
 uze6oUBZDmEHjqsRLyvgkFpysCHKEDPt5lWl5xeuR3eB1x5p1N8yAVpYXn17u/4e0JnM
 oR0VKuq5rOLm28xGX6zl26U9QjGn9kcZFJdiJ4pUbTpLCEHU4YgR+G7xtJxkHaXXoAa4
 4RzzHQqmtXtnr9bX5DEnfdXHmMY5WHAn42VgfhhOJ5FbtkzS3fa0zTN7MSMxrm0xcY6X
 J1iA==
X-Gm-Message-State: AOAM530jlItwtnB8Oz7Gelhs9nV1UkI400uN10Dhsovnz0TSiDDtxHBC
 6T5Sv0WsC5lQORjgfz//zrg22g==
X-Google-Smtp-Source: ABdhPJwI5TAiw6JGHe10xqjfyRvp21tN6e/WVtsWSo1V4Qnb8O2x5Ne8GkVd7g59r7PlsF292M6lGw==
X-Received: by 2002:a05:6000:1083:: with SMTP id
 y3mr3740674wrw.425.1589443204180; 
 Thu, 14 May 2020 01:00:04 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:03 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 00/15] mediatek: add support for MediaTek Ethernet MAC
Date: Thu, 14 May 2020 09:59:27 +0200
Message-Id: <20200514075942.10136-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010006_314439_9EB77ED2 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Next we do some cleanup of the mediatek ethernet drivers directory and update
the devres documentation with existing networking devres helpers.

The following patches introduce a resource managed variant of
register_netdev() and move all networking devres helpers into a separate .c
file.

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

Bartosz Golaszewski (15):
  dt-bindings: convert the binding document for mediatek PERICFG to yaml
  dt-bindings: add new compatible to mediatek,pericfg
  dt-bindings: net: add a binding document for MediaTek Ethernet MAC
  net: ethernet: mediatek: rename Kconfig prompt
  net: ethernet: mediatek: remove unnecessary spaces from Makefile
  Documentation: devres: add a missing section for networking helpers
  net: move devres helpers into a separate source file
  net: devres: define a separate devres structure for
    devm_alloc_etherdev()
  net: devres: provide devm_register_netdev()
  net: ethernet: mtk-eth-mac: new driver
  ARM64: dts: mediatek: add pericfg syscon to mt8516.dtsi
  ARM64: dts: mediatek: add the ethernet node to mt8516.dtsi
  ARM64: dts: mediatek: add an alias for ethernet0 for pumpkin boards
  ARM64: dts: mediatek: add ethernet pins for pumpkin boards
  ARM64: dts: mediatek: enable ethernet on pumpkin boards

 .../arm/mediatek/mediatek,pericfg.txt         |   36 -
 .../arm/mediatek/mediatek,pericfg.yaml        |   64 +
 .../bindings/net/mediatek,eth-mac.yaml        |   89 +
 .../driver-api/driver-model/devres.rst        |    5 +
 arch/arm64/boot/dts/mediatek/mt8516.dtsi      |   17 +
 .../boot/dts/mediatek/pumpkin-common.dtsi     |   34 +
 drivers/net/ethernet/mediatek/Kconfig         |    8 +-
 drivers/net/ethernet/mediatek/Makefile        |    3 +-
 drivers/net/ethernet/mediatek/mtk_eth_mac.c   | 1578 +++++++++++++++++
 include/linux/netdevice.h                     |    2 +
 net/Makefile                                  |    2 +-
 net/devres.c                                  |   95 +
 net/ethernet/eth.c                            |   28 -
 13 files changed, 1894 insertions(+), 67 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
 create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
 create mode 100644 drivers/net/ethernet/mediatek/mtk_eth_mac.c
 create mode 100644 net/devres.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
