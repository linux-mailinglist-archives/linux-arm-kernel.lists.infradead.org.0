Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8A31C57CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PQMHEe3CqglEI/XD1hpb0zgJP6xx5BXB5oL2eSDVpv8=; b=E+wZEQSeOYzGJo
	+boxquDJvdbIOF9JNy9RNBW8PobeAxQUdjrQOH8VseBnCnWDvweqxhbSzLTiIabJqd4fUMWKcKWYc
	/NeozLqjyQDNYo7YeDsMxe3XtzaER/uJ5n9/0lgoELPGnCY94ovPf+JlOZz47ZRMG6drR1zcvanAu
	x4znTUnaJRhMpez+Ne7o+dG0PjtS/1bF5ODOAltSHIV6cRmISOzDr+1j/CSdsY/ofyI9Hffchuv8b
	GQq4dHuosKcaHXiC6AeaYD4s7BReIgUKxd6KVZwsE3tft0jePT9SsS+Hq5m27xx7u0PdsxBte/hip
	V2QSdq7+4CKAZh7gU5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyAU-0002Hj-0A; Tue, 05 May 2020 14:03:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyA7-0002E6-Tq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id j5so2109559wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PK31tVWfgrccN1MBhDjrbakpYyyD2tO24v7BYQEkurI=;
 b=a8DMxibRqTrZGmyZ0KLtsYlfgQSvtBtYx+i51AoL6kzVb3a3Zcw5KFc8r5emhX2L/e
 qLVl57SKF7PdhjnPEnfYmiBsHkXDn94m+UKH2rLq8YYGcxS7EN5GAv4eWBPvoY1byN7N
 QxZMFs3Qb+qVtydhG5IbCi+FEqOcJ0waPkxXqf2ILV3oLLL0N8BnwvrKySVqhV+H6q/X
 68KP5IqC6ZqPMnSBCsQ0mVeuFaW8UzGdm+AMBhfl1Jooa4pbk4UE+wnG551wvwjBL9yZ
 yo8Kq56xX0wXRuQs1Lf5bbGGIUhYjKU0+mCWMv1cZeNM2eZ0NXSh3Pl4lvUmp2tjq5pt
 c2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PK31tVWfgrccN1MBhDjrbakpYyyD2tO24v7BYQEkurI=;
 b=HE0kTZ9qQPwhhZHQhssCUIi9kkCWwegHnu+1UvVdeaxCvE5aeKUYdJic50+5tRDd9R
 UY8oNpLADZjeKm4BPzlVIU8RDS+GsoKuOMp4/EHcbErvHc8HGd+CliwSM6zw28qGVa54
 0oSAWloV0Bst0q5uqHYBhwCLN2RWFOWoNAJwLaI4DG45ayVsixBbrsJBv2QELmPAbxcH
 DPQuzrFtvi9ASr+5exz2jPpt1bhfFoMwg6VWM2aoxJYEzScrXMWBvywMHE2loIRG1Luv
 vetLRx541NfEaq91eq7yu8XTbJu8V7zxYfRO9qshgpmpyx8df1W7S0kgAsdiIKoN2v/y
 CB+A==
X-Gm-Message-State: AGi0PuZnba1wEk0u3fWDbgrA2aPUlm5WGy1NvbD4aiYpSe6Uq+wT+mc/
 PweTlOU9AFJ0JTrcox6EOS8TfA==
X-Google-Smtp-Source: APiQypJK0fRzPjzYsRI0o6WTCpJIb10ZVt2+vpQjB2QmGMKqpkl9pQ80cS/ZweDjU4zPMeSAzrIc8g==
X-Received: by 2002:a5d:4711:: with SMTP id y17mr3781592wrq.49.1588687383658; 
 Tue, 05 May 2020 07:03:03 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:03 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 00/11] mediatek: add support for MediaTek Ethernet MAC
Date: Tue,  5 May 2020 16:02:20 +0200
Message-Id: <20200505140231.16600-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070308_026920_7219D147 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the Ethernet Controller present on MediaTeK SoCs
from the MT8* family.

The first two patches add binding documents for the PERICFG syscon and
for the MAC itself.

Patches 3/11 & 4/11 do some cleanup of the mediatek ethernet drivers
directory.

Patch 5/11 provides a devres variant of register_netdev().

Patch 6/11 adds the new ethernet driver.

The rest of the patches add DT fixups for the boards already supported
upstream.

Bartosz Golaszewski (11):
  dt-bindings: add a binding document for MediaTek PERICFG controller
  dt-bindings: new: add yaml bindings for MediaTek Ethernet MAC
  net: ethernet: mediatek: rename Kconfig prompt
  net: ethernet: mediatek: remove unnecessary spaces from Makefile
  net: core: provide devm_register_netdev()
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
 drivers/net/ethernet/mediatek/mtk_eth_mac.c   | 1476 +++++++++++++++++
 include/linux/netdevice.h                     |    4 +
 net/core/dev.c                                |   48 +
 net/ethernet/eth.c                            |    1 +
 10 files changed, 1703 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
 create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
 create mode 100644 drivers/net/ethernet/mediatek/mtk_eth_mac.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
