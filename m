Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E232836296
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 19:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7o29HSgMS1/MMl02kjK1dxeU649h86N+ygM3hBufwo=; b=S2ad6ZXvErdxOa
	hJR+NyzBcV96Fd7R3PeuSqcPGaMIYH22ZnFVE3nRO8vFk/1dE0bNLYR3BJlulJKup1h4N8QyxOR/7
	A0C3MHRLRHqEWV4EUsejaPK1XS8KHyAu4M0fStoTVdCZ/+E4Kf3gfbHzif0lTrj4HBjq0+sOA3eN2
	fUKQI4rb5WrjMpEYBWdtpGbT+WaoDTWOOngScWl4Wly/66aE9oAQjZuWTrkV0tw1/LtOZWSpTZ1NQ
	MxUhVuplMdYa8yI1QjGDIngPTO1NjrJJB+TFwPjTkMty+hYbAujghwQ31kvSuSGTDbsrOrbMs7COs
	//S+c5E2fof86/KjKmtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZk1-0000LD-KD; Wed, 05 Jun 2019 17:30:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZjL-0006zk-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 17:30:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 283A8614BF; Wed,  5 Jun 2019 17:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559755783;
 bh=c95mWIKY1tNSkuZhQIVCkq9LrewgA9o6Cw9pqYMpaQE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=GAwHkaXdsyETEl7PJWBJxRx8+JBCzrpmObgVMv6H70v5qZedKoCA8+qWp19cgv6dF
 nH2t8fUk1488SQc8KmVpgC4VqhB98dkw5v8eR9KC1/fNVJh00F3qog+HaPE9K1EWDU
 B1NGJCNk6zLyl0jRPGyZPaYKselyFYDFfBmdMAOs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E85EB61242;
 Wed,  5 Jun 2019 17:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559755775;
 bh=c95mWIKY1tNSkuZhQIVCkq9LrewgA9o6Cw9pqYMpaQE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=a6RJMWMahVE4KqiMFcralimPhGQPGxHXRkuEHSVpG5QzbahmZi+qnDFZ4vUW4tUfh
 kCo+P8ktG3oSRfKf4x0XxZeIh/5XECHWm+uxNAygifOLpAEh5Ys6e7d+K+BiUHubf8
 pXMZY2Hy0tzNzTFMQGUsWhzEmEy9D9K8QQx6zphA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E85EB61242
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: robh+dt@kernel.org, sboyd@kernel.org, linus.walleij@linaro.org,
 agross@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] arm64: defconfig: Enable qcom ipq6018 clock and pinctrl
Date: Wed,  5 Jun 2019 22:58:58 +0530
Message-Id: <1559755738-28643-7-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_102944_442685_5BD1B6BE 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These configs are required for booting kernel in qcom
ipq6018 boards.

Signed-off-by: Sricharan R <sricharan@codeaurora.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d58351..abf64ee 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -373,6 +373,7 @@ CONFIG_PINCTRL_MAX77620=y
 CONFIG_PINCTRL_IMX8MQ=y
 CONFIG_PINCTRL_IMX8QXP=y
 CONFIG_PINCTRL_IPQ8074=y
+CONFIG_PINCTRL_IPQ6018=y
 CONFIG_PINCTRL_MSM8916=y
 CONFIG_PINCTRL_MSM8994=y
 CONFIG_PINCTRL_MSM8996=y
@@ -646,6 +647,7 @@ CONFIG_COMMON_CLK_QCOM=y
 CONFIG_QCOM_CLK_SMD_RPM=y
 CONFIG_QCOM_CLK_RPMH=y
 CONFIG_IPQ_GCC_8074=y
+CONFIG_IPQ_GCC_6018=y
 CONFIG_MSM_GCC_8916=y
 CONFIG_MSM_GCC_8994=y
 CONFIG_MSM_MMCC_8996=y
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
