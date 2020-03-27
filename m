Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E845195B49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gk6/Cpd5pDDb56NjtYE7mdmxzLbS6vxRnb45fz9YfD0=; b=IWCtgEh0/bmihjCuwZlfqfIkSs
	qCY+QbDOBSzxQPL75c7XTBBfUvwReaIYnmz7Eyu7rSr7rAj8ngJStZE+nTVjmZAvd7tVS27bmT04r
	DXz5Xl+WvRUc3C0Nr1TGjm7faDkCo1HH9jDWQY25MCbNYRCYC95QbTTyi00q7213jyPYelQWcLypg
	yzfni1/RlQRhz6khTj8OnuVxZFbBRtzK443P2txqaZu4g5sHmb7+ObpVK0FXo1AD6teHKfEU38sDe
	RwA79dOzAr0azcXfSIKX3UKq4tbVSXdzdtcEWlKXNPYoaw4LZJnu+LchVaDfYrTPXyKUsjSk4YSEh
	PqmuPfvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrzv-0006o9-Nm; Fri, 27 Mar 2020 16:38:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHryq-0005yL-U4
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:37:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF9D331B;
 Fri, 27 Mar 2020 09:37:11 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E1FBA3F71F;
 Fri, 27 Mar 2020 09:37:10 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>
Subject: [PATCH 4/4] firmware: arm_scmi: Drop checking for shmem property in
 parent node
Date: Fri, 27 Mar 2020 16:36:54 +0000
Message-Id: <20200327163654.13389-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327163654.13389-1-sudeep.holla@arm.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_093713_081781_1D200EA6 
X-CRM114-Status: UNSURE (   9.64  )
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

The scmi protocol core driver checks for the channel availability
before evaluating the shmem property. If the individual protocols
don't have separate channel assigned to them, the channel alloted
for the BASE protocol is reused automatically.

Therefore there is no need to check for the shmem property in the
parent node if it is absent in the child protocol node.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/smc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 5929c668dc1d..833e793b5391 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -60,8 +60,6 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 		return -ENOMEM;
 
 	np = of_parse_phandle(cdev->of_node, "shmem", 0);
-	if (!np)
-		np = of_parse_phandle(dev->of_node, "shmem", 0);
 	ret = of_address_to_resource(np, 0, &res);
 	of_node_put(np);
 	if (ret) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
