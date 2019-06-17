Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883D04884D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QuAEWQKItbWBoRtxIqd3oWJbqAR6oFdwRZG4s6H9kM=; b=fIyRdERuhnewMs
	OiXRjSZMoBbIY1KAfZMX6glSeXiXoKnpIaydSNjZeeUDxSKAPp8KhlTh5PbHR/kMdJVqZlAijLdyV
	eL9aye4R05gTLF5fXyTt/YZ5GJQUJHnTpwzhZ1RYeanADVJYLSHSjZxb/eIRKo3aQ5HURrKjG/5RU
	Q0mEbQjMi3mezx98aAL6hNfZ1nzieN0StDw3HvfhBKImswaLPkZIFRm0R/rvqpKMDa+k6UKhyxVwB
	O99BeNiM3GVnaFGxjypDcT52eDumTCayF7VZ3gz01ePrBEq3uxoa6jmh+WGMC4xy+IaSQyAqWUb9p
	4EMl1QSx7JWVrmo4HU/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu8O-0006zG-2a; Mon, 17 Jun 2019 16:05:28 +0000
Received: from malenstwo.juszkiewicz.com.pl ([37.187.99.30])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu7X-0005FR-4P
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:04:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by malenstwo.juszkiewicz.com.pl (Postfix) with ESMTP id ACFBEC0441;
 Mon, 17 Jun 2019 18:04:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at juszkiewicz.com.pl
Received: from malenstwo.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (mail.juszkiewicz.com.pl [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCSNEM1qc_0K; Mon, 17 Jun 2019 18:04:26 +0200 (CEST)
Received: from puchatek.local.com.pl (89-67-26-161.dynamic.chello.pl
 [89.67.26.161])
 by malenstwo.juszkiewicz.com.pl (Postfix) with ESMTPSA id 65D86C05A4;
 Mon, 17 Jun 2019 18:04:25 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
To: arm@kernel.org
Subject: [PATCH 3/3] arm64 defconfig: enable Mellanox cards
Date: Mon, 17 Jun 2019 18:04:11 +0200
Message-Id: <20190617160411.24329-3-marcin.juszkiewicz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090435_339318_BAC1C5DF 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [37.187.99.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mellanox cards are present in several AArch64 servers.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/configs/defconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a3b311ea3f13..33f51ddf7d7d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -258,6 +258,15 @@ CONFIG_HNS3_ENET=y
 CONFIG_E1000E=y
 CONFIG_IGB=y
 CONFIG_IGBVF=y
+CONFIG_MLX4_EN=m
+CONFIG_MLX4_CORE=m
+CONFIG_MLX4_DEBUG=y
+CONFIG_MLX4_CORE_GEN2=y
+CONFIG_MLX5_CORE=m
+CONFIG_MLX5_CORE_EN=y
+CONFIG_MLX5_EN_ARFS=y
+CONFIG_MLX5_EN_RXNFC=y
+CONFIG_MLX5_MPFS=y
 CONFIG_MVNETA=y
 CONFIG_MVPP2=y
 CONFIG_SKY2=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
