Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741AB66556
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GdWhW2kBBKmClXy9a1P/K067ATeq2LDjo6/JBDauFs=; b=uV9M2fZvIiacX8
	xNe9+SmqW4zYGuQuEoL4KcWV2nynouRm7WAod2IUQgNletifQ8HYETXq4ECVJr5kTe9BdcLBhVkYD
	Y5CJqP5zj3qrOXmUMWM6Eg2SNHC9hcpyXHn2ViSP2ugiSUSxR87HfdjVIxDK+7tjw8inze9RoT7oo
	gq6yTKSq6D55DDlyxStaEZrNJLU7SRvVIqpR1sEk33r6ijuiLAJF4iXdGOjKA/tEIkbyqeEj0exSu
	jFoe4XrAhJGkJTrIvH9vPKq/AiD43NA9GGKP3D/H5FI+VG+y5jgWc3xJcHzUPXTMB02FKPisqhYHT
	d5Yp93BPHApiHehQFBcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmaf-0001mn-VY; Fri, 12 Jul 2019 03:51:22 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmYo-0007nA-5i
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:49:29 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 2B5C9891B2;
 Fri, 12 Jul 2019 15:49:15 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1562903355;
 bh=YlJL9VdfrtMa6MepsmOIBxWXF9RyXS2+R/9YZ01ZhYU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=b4O8Arsuyiu4cA+g9S2zTiH0XVjl4tf46+3e6b7T7XEFbjZGC5BgtYYDiV6xbxBOL
 XI1EHpV3nsv/kd5vy9cOrri7gcgaBT3XDbbgPu14YxLIt7yiGXoin+gN0Yz+g3pSl1
 RUy2HE06EHLDxpJB81madb37x6GumSMHP8BqPCLqE3iRYGNc0QQEgAlohvaHipWRn/
 IAiI1aRSkPm7x3yjYOQdzXgYCmk8vkG9qTidXst/4OKeRQcI1qw6FYkA1SMenrJm+O
 dO1xdzSSVNhQlkzaTkcaD1lbuKjZNzrAsmqdJ5AM7MySzGyw77/lhsytIYRLkxpiAa
 Shd1kYlNXzvGw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d28033a0005>; Fri, 12 Jul 2019 15:49:14 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 197EC13EF9C;
 Fri, 12 Jul 2019 15:49:16 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 512AC1E1D7A; Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: bp@alien8.de, robh+dt@kernel.org, mark.rutland@arm.com,
 linux@armlinux.org.uk, patches@armlinux.org.uk, mchehab@kernel.org,
 james.morse@arm.com, jlu@pengutronix.de
Subject: [PATCH v9 5/8] ARM: l2x0: add marvell,ecc-enable property for aurora
Date: Fri, 12 Jul 2019 15:49:01 +1200
Message-Id: <20190712034904.5747-6-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_204926_437115_994E6D6E 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aurora cache on the Marvell Armada-XP SoC supports ECC protection
for the L2 data arrays. Add a "marvell,ecc-enable" device tree property
which can be used to enable this.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
[jlu@pengutronix.de: use aurora specific define AURORA_ACR_ECC_EN]
Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---

Notes:
    Changes in v7:
    - remove marvell,ecc-disable

 arch/arm/mm/cache-l2x0.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
index 46a616ec6b0c..12c26eb88afb 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -1493,6 +1493,11 @@ static void __init aurora_of_parse(const struct device_node *np,
 		mask |= AURORA_ACR_FORCE_WRITE_POLICY_MASK;
 	}
 
+	if (of_property_read_bool(np, "marvell,ecc-enable")) {
+		mask |= AURORA_ACR_ECC_EN;
+		val |= AURORA_ACR_ECC_EN;
+	}
+
 	if (of_property_read_bool(np, "arm,parity-enable")) {
 		mask |= AURORA_ACR_PARITY_EN;
 		val |= AURORA_ACR_PARITY_EN;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
