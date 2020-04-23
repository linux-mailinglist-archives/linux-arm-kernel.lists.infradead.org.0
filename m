Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6961D1B58D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lsWGndhGoYayXM2pADmsQXKSCgFXm2xpEsvp9XZ5RtA=; b=Npq
	fBSkfiRiToNcLW+6DxF8f3ji5m6kbqXgGpBAKITQkuxX1l5BUOqCweV/ObPss+7P/LX9x2Ie29B1/
	GOkuwzTjsWro1ZwKmRa9px2jyB87vQ5zfbtSbLkoJcA14X+Ev9jlgzi7A2rG+//m0sINlu0IfHcWG
	LiGoqUG8ijG9216KXp4SLw1xmcFn/uFzfwf3geTiokgo7ZYIvhiHXRRhrSKckDSAVnei7A6hbWpCa
	26FmYh7JIASQ82wu7V89hhZQoBK+osYJW9puq2g7r78yjAT2iOWqIEEfI4+2wgEqIlKcksWZ+ohMD
	1to8+aeDGdHbtGvNPpilMu67JDHVrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYqH-00010n-Ol; Thu, 23 Apr 2020 10:12:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYq1-0000bd-78
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:12:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75F4531B;
 Thu, 23 Apr 2020 03:12:04 -0700 (PDT)
Received: from DESKTOP-C6DAH4D.cambridge.arm.com
 (DESKTOP-C6DAH4D.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 88B733F68F;
 Thu, 23 Apr 2020 03:12:03 -0700 (PDT)
From: Anurag Koul <anurag.koul@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] coresight: etm4x: Add support for Neoverse N1 ETM
Date: Thu, 23 Apr 2020 11:11:41 +0100
Message-Id: <20200423101141.25280-1-anurag.koul@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_031209_308590_8C076E47 
X-CRM114-Status: UNSURE (   9.23  )
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
Cc: coresight@lists.linaro.org, suzuki.poulose@arm.com,
 Anurag Koul <anurag.koul@arm.com>, mathieu.poirier@linaro.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PID for Arm Neoverse N1 ETM to the list of supported/known ETMs.

Signed-off-by: Anurag Koul <anurag.koul@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 0b2c7c7efacb..7443a2e4528d 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1541,6 +1541,7 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_ID(0x000bb95a),			/* Cortex-A72 */
 	CS_AMBA_ID(0x000bb959),			/* Cortex-A73 */
 	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
+	CS_AMBA_UCI_ID(0x000bbd0c, uci_id_etm4),/* Neoverse N1 */
 	CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_UCI_ID(0x000bb802, uci_id_etm4),/* Qualcomm Kryo 385 Cortex-A55 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
