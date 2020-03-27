Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC01195B46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:37:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AfFnXog6GRfKe7P4N0I9UkiChbG9bVq0Yr77EqeISmo=; b=VbsoaSsMUjG/ybueiVx2F9ePr7
	hGG6guTfbEo8O6of/VQ797gWxeRyizrmIAEejq2CsEA+uG7A8qQiQQ5bSFWPZumaecIyR0XmeuInI
	exd3hvbdKV7IHDvmr9fJkhqrio6dfdOTf8dETHA7avwB3G8rdUuuai/MKfNHPChTAafoxICrlQVty
	+k1e9ZKpk16CtmJ45oFfo8W96dveOuW0vvgoblH/fsZnU1Vc/V91XpmtUOslkglyQ/dMnClTa0AEA
	XRNTkEazLvyMUsZWv7AkuSvH8WYI9nwv3AWhwKVOqMBRl/pR1uxYRCDIHfIj2FgV3Go+2kz5oLzDi
	fkK8SUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrzS-0006M4-PE; Fri, 27 Mar 2020 16:37:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHryo-0005w2-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:37:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E1D0101E;
 Fri, 27 Mar 2020 09:37:09 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A0F6D3F71F;
 Fri, 27 Mar 2020 09:37:08 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>
Subject: [PATCH 2/4] firmware: arm_scmi: Drop empty stub for smc_mark_txdone
Date: Fri, 27 Mar 2020 16:36:52 +0000
Message-Id: <20200327163654.13389-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327163654.13389-1-sudeep.holla@arm.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_093710_546236_C32041D8 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: f.fainelli@gmail.com, linux-imx@nxp.com,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The scmi protocol core driver check for non NULL mark_txdone before
invoking the same. There is no need to provide a empty stub. SMC/HVC
calls are synchronous and the call return indicates the completion.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/smc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 6dc8a88cc91b..dd4b54c29679 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -114,10 +114,6 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
 	return res.a0;
 }
 
-static void smc_mark_txdone(struct scmi_chan_info *cinfo, int ret)
-{
-}
-
 static void smc_fetch_response(struct scmi_chan_info *cinfo,
 			       struct scmi_xfer *xfer)
 {
@@ -139,7 +135,6 @@ static struct scmi_transport_ops scmi_smc_ops = {
 	.chan_setup = smc_chan_setup,
 	.chan_free = smc_chan_free,
 	.send_message = smc_send_message,
-	.mark_txdone = smc_mark_txdone,
 	.fetch_response = smc_fetch_response,
 	.poll_done = smc_poll_done,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
