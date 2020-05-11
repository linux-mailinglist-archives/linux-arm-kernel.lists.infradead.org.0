Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17261CDE2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VHx0WdI8mdQ1/cXvoVuQJaz4gtGxI5QLtxM08vmEdbw=; b=MIWW+Nu3W2wzXK
	1U7cFeGeE9s/w8hiSQviCJMujMq/cEMLa13Cjq9yHolH0d9SvIzRIvnh8t2ZSf2j+Z/HGork9Ebiv
	XrZ/Vfqa5BgCcIFIYkT8W3bnZ5bYi8KtkuWjdDeVWVjotIBl6oLZijC/Phg1Z9zZgZs03VpjFUose
	uhY7Wrt7DqWbiBT9uEkIqLHu+YR0gBM2t8UErlLPRuclW3r5xGD4vNnLebCz2p3jHBw44sBk9vUjv
	cLOT6slyHyI4UfcXHZ3XQM8rNVyCoFBYeDrwM+aJctBFP6mpD1k+v7iSy0QnvhCmE7ar5sabo2ev4
	cSIBgiCRA10QrJTxjV7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA2p-0002Ks-UD; Mon, 11 May 2020 15:08:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2X-0002H2-Kq
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id z72so10106584wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/J8miyILwwd4yeHypeApHEY6tVwb+3C32vv+icx83JU=;
 b=OTdMO8s1WgboMNhaDTGwQRLL6oPTm6LLnYMKvpds/gLxCEYm/L/tz9ICUGzZLiU3ei
 YvwiSmIcssbhOdrNVTjU1HfBqBCs40dnl89hXOHPRmjaAeJghS71NCJu97EEFzClXyBj
 zTErYcE0rLjPIXk+WVMw1CWhUrB1AnSiADXS9GirXjYlf3y0SX2kJ2UxyLMjh70hVx8I
 8EHLcu3Ps8hB00DG8HRf8pVDeNBL0fkVe//Q9BB7IlC/wjAB4W/ZNdfHvQ/nEkSNqcuW
 58RZ2Gwh4Oygoe8bll6iXGBANCMQIPkT9lY0vDfjRphc+q+S6RvvW0gPn4yLXGy29b/Y
 zW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/J8miyILwwd4yeHypeApHEY6tVwb+3C32vv+icx83JU=;
 b=KqPRHM0AhReoKS+1GCTWQ/30pZlrI/D+dabkL+PXxMfBN6LtR5L1jH16x0vDN4FkrJ
 8M7L01h+Vei9R6jAVImhoof8mvpT0w/yOI7NmwDpf96Z0F9fmnIJ2YFhrlMOfHWceDYC
 gNdp1Wb/jaap4EA/bOKwTSeWkhMoYTeB7n9LjGXTzWeWRjbM/Xmx1TH7W4iBd3yf/OcA
 OgkQ1x8wWBZmRHsU0aOLGRM6WAv+pvYJ7+OUSItubibVk9FP/extL7n8T3HO8JR70a1n
 7JqjTz3GluDQkp5PIp872zStWr6pFmI6OG7byYi1jSb3A668zpm71vtNvLbE5NGPdeTt
 s72w==
X-Gm-Message-State: AGi0PuZTc8a6yVxyS8bcn06fnynIJdcKV0wKg2vhQBLUJMKBkAmeIrnZ
 b58W2fn6hSqQktFkRHVP8ucx6w==
X-Google-Smtp-Source: APiQypKvNSjq4TfJ0CivzedoluQIOXBiXcFnJi5slyojLcRrav800+2iZaWdjk73vkbbGixHhUBMBA==
X-Received: by 2002:a1c:2457:: with SMTP id k84mr30052808wmk.96.1589209699367; 
 Mon, 11 May 2020 08:08:19 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 00/14] mediatek: add support for MediaTek Ethernet MAC
Date: Mon, 11 May 2020 17:07:45 +0200
Message-Id: <20200511150759.18766-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080821_719939_26B292D2 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

This adds support for the Ethernet Controller present on MediaTeK SoCs
from the MT8* family.

The first two patches add binding documents for the PERICFG syscon and
for the MAC itself.

Patches 3/14 & 4/14 do some cleanup of the mediatek ethernet drivers
directory.

Patch 5/14 provides a new helper that allows to retrieve the address of
the net_device associated with given private data address.

Patches 6-8/14 introduce the managed variant of register_netdev().

Patch 9/11 adds the new ethernet driver.

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

Bartosz Golaszewski (14):
  dt-bindings: arm: add a binding document for MediaTek PERICFG
    controller
  dt-bindings: net: add a binding document for MediaTek Ethernet MAC
  net: ethernet: mediatek: rename Kconfig prompt
  net: ethernet: mediatek: remove unnecessary spaces from Makefile
  net: core: provide priv_to_netdev()
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

 .../arm/mediatek/mediatek,pericfg.yaml        |   34 +
 .../bindings/net/mediatek,eth-mac.yaml        |   80 +
 arch/arm64/boot/dts/mediatek/mt8516.dtsi      |   17 +
 .../boot/dts/mediatek/pumpkin-common.dtsi     |   34 +
 drivers/net/ethernet/mediatek/Kconfig         |    8 +-
 drivers/net/ethernet/mediatek/Makefile        |    3 +-
 drivers/net/ethernet/mediatek/mtk_eth_mac.c   | 1561 +++++++++++++++++
 include/linux/netdevice.h                     |   14 +
 net/Makefile                                  |    2 +-
 net/devres.c                                  |   95 +
 net/ethernet/eth.c                            |   28 -
 11 files changed, 1845 insertions(+), 31 deletions(-)
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
