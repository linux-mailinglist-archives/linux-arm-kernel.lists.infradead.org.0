Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80D41D9F31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1WmLveUvylRZ6MKIA6w5tjRbHS/BaC6Bi2LxPoCquI=; b=tc3BI/f+phJ9oH
	I9Tl7lj80fkUMabt2NDWPJBDNLhBomuNC06qU+RSr7liT2/DQJSCc7ESvIM9zyikm9n0QhCmEexxf
	c8cCq8zWCbqbogo4qb47MlLyzoCIDFAgalZhqtA+LxBitxEu3awQEiFSw2okYhxOLQw+4ZGvfvqag
	vPExWo3TE0ZstsA5MQ2kOscQiT0bNzgk78mYzpSeld8YWUcuX182cpKbYEUg3xoPRoidkz7pGZv1O
	5UdGlLE8IxLuvaZaiLDaHHvfVMDbCr4egZrnBsSUlIOh01DROscR97pFLFTeTMQnKqFUPSQyV3Aqf
	8NQiwu9kkoMN2mCII4pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6sk-0000i4-Km; Tue, 19 May 2020 18:22:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6rk-0008RT-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:21:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05C4011B3;
 Tue, 19 May 2020 11:21:24 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 218C03F305;
 Tue, 19 May 2020 11:21:23 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] firmware: arm_sdei: remove unused interfaces
Date: Tue, 19 May 2020 19:21:07 +0100
Message-Id: <20200519182108.13693-3-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200519182108.13693-1-james.morse@arm.com>
References: <20200519182108.13693-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112124_666591_6A31581C 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

The export symbols to register/unregister and enable/disable events
aren't used upstream, remove them.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Link: https://lore.kernel.org/linux-arm-kernel/20200504164224.2842960-1-hch@lst.de/
[ dropped the parts of Christoph's patch that made the API static too ]
Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index a33b701ab2b0..b12b99a19f66 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -429,7 +429,6 @@ int sdei_event_enable(u32 event_num)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_enable);
 
 static int sdei_api_event_disable(u32 event_num)
 {
@@ -471,7 +470,6 @@ int sdei_event_disable(u32 event_num)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_disable);
 
 static int sdei_api_event_unregister(u32 event_num)
 {
@@ -533,7 +531,6 @@ int sdei_event_unregister(u32 event_num)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_unregister);
 
 /*
  * unregister events, but don't destroy them as they are re-registered by
@@ -643,7 +640,6 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_register);
 
 static int sdei_reregister_event_llocked(struct sdei_event *event)
 {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
