Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13C71F2481
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIXmUjdtYNWaO3jV6vr9xHQULLkBFAuQBPOHRCUn1qs=; b=XapR8K0pKbR7Zm
	WQOVpZ6vNjm7shlYIsrsjVWw8S1Qpsv+9z5TbmsxTnRnuTe1Xd9JbIJ+uTdoJPkgyUD5YOdyJw0Fg
	z8paNRByJ3roDx9iDvyxExzZLGmf2EQs7KVn1b8iteK0aiFyTs3pIvIFMBB1EBbmpkXYTyi0d9i7U
	A2ir5aphXDCTLdVJ5Jg6Ptn1CgbzOmC9VKAcVr35ydHYBLtirbT6GbzjZgV/RQaifwGpj4+Eei5kd
	04jXuKlXqDsHTAh6LkvOnlNgjsmnH9bnAUjqKCVhR2WiUjyjTAOzzK3muJmGV6XyiQa5Y3HMtEiHq
	wlOMH9eRVIBEgzfZJ/9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR5i-0001RE-9E; Mon, 08 Jun 2020 23:22:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQvW-0004xn-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:11:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9DBD20897;
 Mon,  8 Jun 2020 23:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657893;
 bh=J2LPRJU66y4X8KcWE0g+592NbySdoJsVXoYtZI00P5I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ROP1rxkHmSif6KNnYX1KxXVihi18D7znAeCVKrM4JfqmcpMAO2N5DGoWqSkR+DckI
 9bG3th7dla5RoL0AlyciPDYvYRlw+AqeKhvBN1HOydba8dt8EPmEJ1Ce/4CEhdQaSA
 +FZmqdizTHwRR7Bh7T/2UgUoC5LNoVvtimsm9Kl8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 248/274] mmc: owl-mmc: Respect the
 cmd->busy_timeout from the mmc core
Date: Mon,  8 Jun 2020 19:05:41 -0400
Message-Id: <20200608230607.3361041-248-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161134_274558_7FA04C0E 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ulf Hansson <ulf.hansson@linaro.org>

[ Upstream commit f37ac1ae3ca93d0995553ad9604a25eadfe9406d ]

For commands that doesn't involve to prepare a data transfer, owl-mmc is
using a fixed 30s response timeout. This is a bit problematic.

For some commands it means waiting longer than needed for the completion to
expire, which may not a big issue, but still. For other commands, like for
an erase (CMD38) that uses a R1B response, may require longer timeouts than
30s. In these cases, we may end up treating the command as it failed, while
it just needed some more time to complete successfully.

Fix the problem by respecting the cmd->busy_timeout, which is provided by
the mmc core.

Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Link: https://lore.kernel.org/r/20200414161413.3036-8-ulf.hansson@linaro.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mmc/host/owl-mmc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/owl-mmc.c b/drivers/mmc/host/owl-mmc.c
index 01ffe51f413d..5e20c099fe03 100644
--- a/drivers/mmc/host/owl-mmc.c
+++ b/drivers/mmc/host/owl-mmc.c
@@ -92,6 +92,8 @@
 #define OWL_SD_STATE_RC16ER		BIT(1)
 #define OWL_SD_STATE_CRC7ER		BIT(0)
 
+#define OWL_CMD_TIMEOUT_MS		30000
+
 struct owl_mmc_host {
 	struct device *dev;
 	struct reset_control *reset;
@@ -172,6 +174,7 @@ static void owl_mmc_send_cmd(struct owl_mmc_host *owl_host,
 			     struct mmc_command *cmd,
 			     struct mmc_data *data)
 {
+	unsigned long timeout;
 	u32 mode, state, resp[2];
 	u32 cmd_rsp_mask = 0;
 
@@ -239,7 +242,10 @@ static void owl_mmc_send_cmd(struct owl_mmc_host *owl_host,
 	if (data)
 		return;
 
-	if (!wait_for_completion_timeout(&owl_host->sdc_complete, 30 * HZ)) {
+	timeout = msecs_to_jiffies(cmd->busy_timeout ? cmd->busy_timeout :
+		OWL_CMD_TIMEOUT_MS);
+
+	if (!wait_for_completion_timeout(&owl_host->sdc_complete, timeout)) {
 		dev_err(owl_host->dev, "CMD interrupt timeout\n");
 		cmd->error = -ETIMEDOUT;
 		return;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
