Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF4018076B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEMS/YM8/DybBLa4rmHTa7F2B+huLq38yWxSsoZo5dI=; b=XPe2+ZRqFKDFUM
	xLCqPBN4OOyH5qzE61+8Ochi8lcc02D7976GyqUWM1BMQ6db86i4EdYcJYWfsUEub75zJhBlG37/X
	/wdYhH0L1Ak2jO65esSc7PYeGf/1vsv57nK8PxdDmhLHZn8TApAg0Wep/QHiR+35R/5HiAI00hlZS
	C4K2rsPbLkiIhAqscI3qxlWCDOMU5phWtuJySEXcjQsT74nbHkJdz4m/OvndgUDnEddyOXrMSDTVU
	rM6Ad5p05tCLNlYVIYsAWR1OsauMa1+lOyePK84BISVPM+vuwKgxw/EMwTJcd4MayZkhxhJRGm0l9
	/sZzqkFQMSEMpOioXeeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjyF-0001bX-Ul; Tue, 10 Mar 2020 18:51:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjwZ-0007y3-UZ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:49:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CDF5222C4;
 Tue, 10 Mar 2020 18:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583866171;
 bh=tw0gB/ovTVcwrhtwprojKzwKigF0zMWLOBTxhTgjsuU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nDcTjMpNX02c3ckluYK+vNdLFT/Tl7iG4Z2tiCzUMyp16ctrkTgRf5C2IGs6TPnSI
 lEmhUSqmKR9t2oufMCrzHgH2FWJTe4j4rl3ROUyUfmgBpmTBx335O75xN8tFB/sOTC
 fHlOhxbEJ+cOagJXpGC0R+zkPUh/pmDAfdjlNa5w=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBjwX-00Bi6k-G6; Tue, 10 Mar 2020 18:49:29 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] ARM: sa1111: Fix irq_retrigger callback return value
Date: Tue, 10 Mar 2020 18:49:20 +0000
Message-Id: <20200310184921.23552-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200310184921.23552-1-maz@kernel.org>
References: <20200310184921.23552-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, tglx@linutronix.de, jason@lakedaemon.net,
 linux@arm.linux.org.uk, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 yuzenghui@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_114932_036566_4DC503B3 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The irq_retrigger callback is supposed to return 0 when retrigger
has failed, and a non-zero value otherwise. Tell the core code
that the driver has succedded in using the HW to retrigger the
interrupt (if ever).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/common/sa1111.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/common/sa1111.c b/arch/arm/common/sa1111.c
index 947ef7981d92..c98ebae1aeac 100644
--- a/arch/arm/common/sa1111.c
+++ b/arch/arm/common/sa1111.c
@@ -302,10 +302,13 @@ static int sa1111_retrigger_irq(struct irq_data *d)
 			break;
 	}
 
-	if (i == 8)
+	if (i == 8) {
 		pr_err("Danger Will Robinson: failed to re-trigger IRQ%d\n",
 		       d->irq);
-	return i == 8 ? -1 : 0;
+		return 0;
+	}
+
+	return 1;
 }
 
 static int sa1111_type_irq(struct irq_data *d, unsigned int flags)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
