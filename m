Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E251DB215
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hRtx+P7sPbyziZQbfP2XZcnok5jWNjMzwr0EfKpGW+4=; b=dS3AzGS6XtBjzl
	P4uW+Hiq0ObuQGZ53x+xiSJeICJBiC8SBNzlvGqse67kPzi4WEF7FcMA0o4fcqEdWjU1yvWZPIec8
	EiWUrtaZTpS6QiZnTfYBMEUIxNHIKBlBjY6tH/nYsuRepM1vzag+wktYN2cUCbHnfRvxbYPhCGn8W
	Fm1uD4RVYEsk3lbHWPkTyYF9boCe33ROMBumRAB+1njVRGbd7m5365fDH3flwkobfkM8KxyR8UhVS
	ArKTG+oE/Sni/248ctbmd/PXcsK6/iLNCgTxnCmN5v1Hr6rUix6aBG560OwOtqHmnlyLV4CawTssz
	qyQ91ftvbkIPywC7g4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbN9Q-0004EN-FC; Wed, 20 May 2020 11:44:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbN95-0004CY-Si
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:44:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id m185so2518995wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6UO8846LBADOFjPscf273ixSDXaAAOc6agORXCpe8H8=;
 b=iA7PIL9mvAGiJIzT2Pq6EhZQNK50yl9l6lgYY6TkjfmiyQO+FovVbAOv/7wzEq+1X9
 mk2kx8kVrndLXYGlYRob3K37sWxWbqbnI8GWDIJLCTr5oUVIejD7J+mx3gMpB4DTpKoA
 FaRG8wrpDNLkbm99XKF5izs/ettSvwFAAZmYaIAIsUjyqyNHUMtk4Qx46M6ANLR+w5F6
 ezbE69fQTXSyyZKnlQbLkm9Hz8B7xUbu2oIoAQM7RfA9ZciAbdiNho0I/X5IwEbO3PFa
 0jKUay9jsKzznzMRBfuWpuhc5UJyj2/R8Ql6/EQ+pOSBZzl4zjCE2czpVX94eI+feqOM
 A9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6UO8846LBADOFjPscf273ixSDXaAAOc6agORXCpe8H8=;
 b=HJbQowwKMdhcYGaxQJvcgebWTsXih0uB1JV0eIOheDM6kS4zR6PD50fZDrLYZojcQL
 qMLBQHKu8OazC+qCYbcRbHWzwkpE0291/Rlt16ebD3k5gyhLfgURWhOfOukGJQTku/+h
 Rfk6oyEWlH41yaecZBmWrU3Cwn8YXcLmrOmru/nFq65qdNMZ845d3l43DqAyK7yPnASh
 8j87iaD43DN+nRDHXKpkgHObGpiMMPlur3EeqNCeitEDyIewDttKgiJVZ+ui2wQYPIPA
 6EeAm9DhyedoZjucfX1L5JgcuESS9V+3EeUyBqnAN46ESllHe/f7TOvQDjHa3TqFYYfE
 StKQ==
X-Gm-Message-State: AOAM533pYc20uUvXFQmWSv+DZNwHPQB11WYaQzOhcBhRyP30r7stBaiK
 +wpMhZqxoPI8vBq7rtNgoIzAmQ==
X-Google-Smtp-Source: ABdhPJzM9bN56A7SVl3pNrO/Ahl7zhy4npY69zCHarKqOc0WKvc7Va3/fmdS0rKJeLhFamtGgdLgcQ==
X-Received: by 2002:a05:600c:147:: with SMTP id
 w7mr4321322wmm.89.1589975062340; 
 Wed, 20 May 2020 04:44:22 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id q2sm2530782wrx.60.2020.05.20.04.44.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:44:21 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH 0/5] net: provide a devres variant of register_netdev()
Date: Wed, 20 May 2020 13:44:10 +0200
Message-Id: <20200520114415.13041-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_044423_925983_30DA7D81 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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

This series applies on top of my mtk-eth-mac series[1].

Using devres helpers allows to shrink the probing code, avoid memory leaks in
error paths make sure the order in which resources are freed is the exact
opposite of their allocation. This series proposes to add a devres variant
of register_netdev() that will only work with net_device structures whose
memory is also managed.

First we add the missing documentation entry for the only other networking
devres helper: devm_alloc_etherdev().

Next we move devm_alloc_etherdev() into a separate source file.

We then use a proxy structure in devm_alloc_etherdev() to improve readability.

Last: we implement devm_register_netdev() and use it in mtk-eth-mac driver.

[1] https://lkml.org/lkml/2020/5/20/507

Bartosz Golaszewski (5):
  Documentation: devres: add a missing section for networking helpers
  net: move devres helpers into a separate source file
  net: devres: define a separate devres structure for
    devm_alloc_etherdev()
  net: devres: provide devm_register_netdev()
  net: ethernet: mtk_eth_mac: use devm_register_netdev()

 .../driver-api/driver-model/devres.rst        |  5 +
 drivers/net/ethernet/mediatek/mtk_eth_mac.c   | 17 +---
 include/linux/netdevice.h                     |  2 +
 net/Makefile                                  |  2 +-
 net/devres.c                                  | 95 +++++++++++++++++++
 net/ethernet/eth.c                            | 28 ------
 6 files changed, 104 insertions(+), 45 deletions(-)
 create mode 100644 net/devres.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
