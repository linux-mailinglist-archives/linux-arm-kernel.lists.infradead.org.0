Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AC0FDBE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YofYn+vQ6/JX65ZYuhOy/To4y9PAOOhP8ID7iQ+i0wM=; b=ecQF0lExNoPrHl
	xnF9D0J/7BlndRaXz7GlVu7B1WQeSsnCJzhx0anmWu6gJi5f4878oIiJBtHJcqz9Zyag6N+CpX12L
	zm3JzX+0AmtQp99YBVlzT4dFTla9XRSjJ9BvhiEFV4IpWYRmq17LCLr63w6QsVTBCwSdrnguoaSYG
	pwPxTja1YYSg2VX9Y2ZFqK5fhVNjABzCyWaaZI+6qeZsB9nb9/wYQIOXnxd6LgFI81hpnRHkd/V0S
	AFstn0u7G7hlVQVuWSfu+5YmkTGWwQEqfBeZIqtsSOSWdkMBa+t6Jr37d029YGsQN1iXaHUuffpKc
	T1k+pj6ZeInAxbqwbblA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZLE-0002UV-2h; Fri, 15 Nov 2019 11:00:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZKH-0000v8-Go
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:59:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CCFFC60F7B; Fri, 15 Nov 2019 10:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573815580;
 bh=0CeatUUu67cKJ94G83JIPHr0HFJ4KEzJ4osRSG1ecA8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MbhIYZC/CmHN/SFZ+/poSf1wICUKN9RjcBdQ96yjCDds8bxGya3LDEbYNjZTZSMRY
 QajOQbAE/0Q6LbUNEeqRqQKfZ5BHeKvJejiBrqBI1Yb+6MjthXq4zLzymaDf47z90e
 YLp8mN8Nuu5hwTI7EVANMXr898IEpF9oEKY7psDs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5C74760E0D;
 Fri, 15 Nov 2019 10:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573815580;
 bh=0CeatUUu67cKJ94G83JIPHr0HFJ4KEzJ4osRSG1ecA8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MbhIYZC/CmHN/SFZ+/poSf1wICUKN9RjcBdQ96yjCDds8bxGya3LDEbYNjZTZSMRY
 QajOQbAE/0Q6LbUNEeqRqQKfZ5BHeKvJejiBrqBI1Yb+6MjthXq4zLzymaDf47z90e
 YLp8mN8Nuu5hwTI7EVANMXr898IEpF9oEKY7psDs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5C74760E0D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>, bjorn.andersson@linaro.org,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: sdm845: Update the device tree node for LLCC
Date: Fri, 15 Nov 2019 16:29:12 +0530
Message-Id: <a2bb92de65e90768bf1d6b8c0b7fbd43cba704d2.1573814758.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_025941_633577_DBFA1FF1 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LLCC cache-controller was renamed to system-cache-controller
to make schema pass the dt binding check. Update the device
tree node to reflect this change.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index ddb1f23c936f..250b65e8f7e5 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -1357,7 +1357,7 @@
 			};
 		};
 
-		cache-controller@1100000 {
+		system-cache-controller@1100000 {
 			compatible = "qcom,sdm845-llcc";
 			reg = <0 0x01100000 0 0x200000>, <0 0x01300000 0 0x50000>;
 			reg-names = "llcc_base", "llcc_broadcast_base";
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
