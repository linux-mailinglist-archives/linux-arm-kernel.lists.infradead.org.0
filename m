Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041A51ADB17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+ry10zuZ6BpEA8NFt3qUfF2zsG4aYn94KGIfxDxjL8o=; b=qo7
	o4l2TW/1KqUL/gQo1S2vog27vWPdmcb6DDmP3k1xJJfXDZQbUBKa8+QrfCFXVU+xW78XdEvSSfija
	yZgSErcllpf9Y79cvwBGURISwNdTW8t0gqSs7l2B4lMvzKd5/ja5xNutNgM5YmmUTZ0VsevH7E27E
	qtRZrVnfR5WvsqnULMJghDfRoAkYsfD2mSrLhcIy5g1NIac0EYAmzEuJ3d3bRgz4chjoFlNR+7ENL
	4SGtr9ex4V2sKz/r/tlUzDliCc4qch8q9kfmftkTvrrQ32cV0CSVzalpyAd6vYc4Nvy388piyDZKm
	ilfhRKzB57TLPD8rmgaltuykSiWHsAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOJ2-0008Bo-IJ; Fri, 17 Apr 2020 10:33:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOId-0007u0-DW
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:32:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A9E1C14;
 Fri, 17 Apr 2020 03:32:39 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 50DC93F6C4;
 Fri, 17 Apr 2020 03:32:38 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] firmware: arm_scmi: Fix return error code in smc_send_message
Date: Fri, 17 Apr 2020 11:32:32 +0100
Message-Id: <20200417103232.6896-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_033243_508315_7C9DDDA9 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMCCC can return one of the 2 return error code here: NOT_SUPPORTED(-1)
and INVALID_PARAMETER(-3). Map them to appropriate Linux error codes
namely -EOPNOTSUPP and -EINVAL respectively. -EINVAL is also returned
for any other return values.

Cc: Peng Fan <peng.fan@nxp.com>
Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/smc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 833e793b5391..a8b5ecb8927a 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -114,7 +114,11 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
 
 	mutex_unlock(&scmi_info->shmem_lock);
 
-	return res.a0;
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return -EOPNOTSUPP;
+	else if (res.a0)
+		return -EINVAL;
+	return 0;
 }
 
 static void smc_fetch_response(struct scmi_chan_info *cinfo,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
