Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096F51D5073
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TuiuTpprY0MRCBR6QD9tRqCX995DSFKSuwgKpcHY0p8=; b=NmjJQhpzeMqD7k
	ZcJRUFnXDGuK8foAXzkQq1yyKa3dQJW7OOlSrfFcKroklN+zefu6MSuFqjDaDf/TFOSRh2iFLwdHM
	6EzCBtTXzuWYnD4qNCeZ/qxo/sMMc01DneuaaagWWrSS697OJOugSPy280Wye03TLnYwYqDRaF+p8
	LI//NPuSrCOPSq2XRj6qGhHm6SegNPwAeTu/Gea0WZIfEQfiCu94BocAtQL8vt2Ade1kioifLGVqO
	4yWR0z+2/Tno0THMob2Zi4UKS36OxLqi1VTUul7aiJRRTo6w99mSRV4iCuOd4iEpOOQoWjyVcFRP2
	iRDaJszfc5xJn0EnuMgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbJh-0005sl-Aq; Fri, 15 May 2020 14:28:01 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbJW-0005qr-4v
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589552870; x=1621088870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0AgeZMJbdU9KyuRMCIUBu9McO6vER1rNgjfIxpR274I=;
 b=g4QGQzAZD/oKt62h6X9FElfg5yxAPNEhN+tHA3wRwYGutSA10J0p/yd2
 nhuP3Uu+cBPO+uQlo0JmzAcPK10AIUiHbVzltvYioE9zdhFY2VILstd3p
 n9w14NjZufACADO+7bWOdV1Ev8tN5CHjYi7TlPwt2MGzz0vZ1fs/fkd1J
 2BrM3Nnntb16fZ7AdjIDd3IMDsV6q3r8WQ69GbJ5K4XnynPkaZgIse1ag
 BLFNeuiR02WT9BVvMgo3nMbcNQ2dqF3meYG5dw3+22sP+Q8tKwapZT823
 7VK9mpsgRS2hzsKHdrlZeF05bvpmITJPTipR4Ik31slRXNjKpYsXjtkC4 w==;
IronPort-SDR: zUxu1mdSuJ3C0VOKq9t5RCnhqUBxbNxPvczwXo6LzTRvz2lQnXu5v7wXQKdVigzrMMpTz+EdSc
 /MirwJyXyPyEidppEp8ncornFCklQ36fIhbgdDnhbU8rN9l6orsNmkgOhAjAEXM8UuqQ/ySa5E
 +a7PjsZosn5Ix6XFhtnJfPzZ3yXxevmfP4rlZunzd5bqvt19NPOqhgDkrvvj98X+VjL5NxGyoj
 i1pXdHglL1KVHqkuXR/eAM1KydX0NQ9Ueihi0USx9WZ4syPGEFkz2ZHuDoruZcE7S6ETh73DxU
 aJg=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="73584368"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 07:27:49 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 07:27:50 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 07:27:30 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: at91: Add peripheral clock for PTC
Date: Fri, 15 May 2020 17:27:20 +0300
Message-ID: <20200515142720.290206-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_072750_297111_6F80C734 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, sboyd@kernel.org, mturquette@baylibre.com,
 ludovic.desroches@microchip.com, eugen.hristev@microchip.com, Codrin
 Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PMC generates the peripheral clock for the PTC.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 drivers/clk/at91/sama5d2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index ff7e3f727082..73b287fbecb8 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -89,6 +89,7 @@ static const struct {
 	{ .n = "i2s1_clk",    .id = 55, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can0_clk",    .id = 56, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can1_clk",    .id = 57, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "ptc_clk",     .id = 58, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "classd_clk",  .id = 59, .r = { .min = 0, .max = 83000000 }, },
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
