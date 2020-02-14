Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A1815E1DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAmceVqc+Ki+Veu0D1R3RmTKCfh92FVae2bnc6TpVRE=; b=U7xxLdcu0NWHkf
	TZ6m/nzsOltcXvs41ItDlsxnArNNzVRkTqOgbrWpqkGDTAKUsyNsAY9cxebShd5KpdASNAtLOvRb8
	d5cfkw/ZP2trkgOY99kYpSi5JWh2JrOc7aDD0BP68/icXZHEqiHB6T0WvXiSWpmXKnCr9wrknLHRd
	g617AG1x4RAmLnp6w/tZlESNgqquRCkEV2ggyVBm/FOXibMmv8apQgKkyV39b5DVeUAOiIxjHq9OO
	EDm0qtdVE4V7jE1Ox+mR4CK7POmN1x+mEkx0P/xer8DLBHuCiM8VzvIAJbBDDoxbmbsE8Zd6yNPAs
	iNAPpQFoN8xaIfl+ROzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2di9-0004Pv-Cn; Fri, 14 Feb 2020 16:21:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dQh-0001HK-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:03:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B6C82067D;
 Fri, 14 Feb 2020 16:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696178;
 bh=OHflqUrzlm8/xx/dM//1K4Fu0XHAEpTzk5pVqK1KuwU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aZZOM1wJt5ohdqLRxlbs4WvPFNJv/l+YujhCLnyGTW4EZKWdPQlKyuukrr8uHr59s
 q7/oQJMQT9H5S6iabdtVOIvNh82F8XlwN2Aa/Qjwun6zSC3LyoQYUVUoF+7gqGa7iU
 n8auVwvzC6sArF+/8GXh+kDi2fPrx/R4+ibBHMMY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 050/459] arm64: dts: marvell: clearfog-gt-8k: fix
 switch cpu port node
Date: Fri, 14 Feb 2020 10:55:00 -0500
Message-Id: <20200214160149.11681-50-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080259_098965_A38CB575 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Denis Odintsov <d.odintsov@traviangames.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Baruch Siach <baruch@tkos.co.il>

[ Upstream commit 62bba54d99407aedfe9b0a02e72e23c06e2b0116 ]

Explicitly set the switch cpu (upstream) port phy-mode and managed
properties. This fixes the Marvell 88E6141 switch serdes configuration
with the recently enabled phylink layer.

Fixes: a6120833272c ("arm64: dts: add support for SolidRun Clearfog GT 8K")
Reported-by: Denis Odintsov <d.odintsov@traviangames.com>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index bd881497b8729..a211a046b2f2f 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -408,6 +408,8 @@
 				reg = <5>;
 				label = "cpu";
 				ethernet = <&cp1_eth2>;
+				phy-mode = "2500base-x";
+				managed = "in-band-status";
 			};
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
