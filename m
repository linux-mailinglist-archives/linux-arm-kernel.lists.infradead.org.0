Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B71136C8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D0KUBiL8kPvYd5MRQKzNb6BYXVZ5nT+8jTPipw20sZ4=; b=hSaWn/VcvneGAfZNoqusAKUnC2
	hP7zSRnyvYZiFHdGrBnVV0l3L0Lqj5jRRmPRtiHNhzq46xIpqgxKC1xYHlchMYg0lq62bwvdx2M6M
	A5K8F/FmAWZnCRspfU0jJaZtWYwr0HtKzw3PwuQERgxd5x9pi36rxX4Bscl/nIBX7h4qa2jRgc76b
	bbLW1zwjJ2aE655L+s9iwgbmpUXYZ131mU227lNTHwqbvQKUbGIMMv4Ru+QPKTOCTxNsE7hJhJju9
	9np72qmB6cYLygb8M570UzuPZjXCtCPdQ/PlLMnPc2WRWGTbITmQlA8zD/ySdMhYvNUROn6ODegbp
	HkRAX2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsvE-00022a-HW; Fri, 10 Jan 2020 11:57:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipss7-0006ko-39
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11C0F139F;
 Fri, 10 Jan 2020 03:54:34 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EABEB3F534;
 Fri, 10 Jan 2020 03:54:32 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 08/14] net: axienet: Drop MDIO interrupt registers from
 ethtools dump
Date: Fri, 10 Jan 2020 11:54:09 +0000
Message-Id: <20200110115415.75683-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035435_236033_39E68D20 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robert Hancock <hancock@sedsystems.ca>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Newer revisions of the IP don't have these registers. Since we don't
really use them, just drop them from the ethtools dump.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index e83c7b005f50..7a747345e98e 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1239,10 +1239,6 @@ static void axienet_ethtools_get_regs(struct net_device *ndev,
 	data[20] = axienet_ior(lp, XAE_MDIO_MCR_OFFSET);
 	data[21] = axienet_ior(lp, XAE_MDIO_MWD_OFFSET);
 	data[22] = axienet_ior(lp, XAE_MDIO_MRD_OFFSET);
-	data[23] = axienet_ior(lp, XAE_MDIO_MIS_OFFSET);
-	data[24] = axienet_ior(lp, XAE_MDIO_MIP_OFFSET);
-	data[25] = axienet_ior(lp, XAE_MDIO_MIE_OFFSET);
-	data[26] = axienet_ior(lp, XAE_MDIO_MIC_OFFSET);
 	data[27] = axienet_ior(lp, XAE_UAW0_OFFSET);
 	data[28] = axienet_ior(lp, XAE_UAW1_OFFSET);
 	data[29] = axienet_ior(lp, XAE_FMI_OFFSET);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
