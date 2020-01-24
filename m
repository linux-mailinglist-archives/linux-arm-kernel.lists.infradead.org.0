Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C351490F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 23:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6RUiyutOQqGC9lTs2T3Tx73RHZT7McVwO1BbyyUVr2U=; b=hfokJ3sVzvkLuh
	YBbhCQd9iKDpOz3Fkh/UEoky5Z+TYKUOrSInWz9qBsaRsUhYP3VdVL3uYn5wkEue6vga+ZuLcnoCq
	2b7qudQzbpUazbP11g0domx6cv0fiHCru0Gw9Pp3y7hTf1LBJDWH2ywFAUOgeLuIwXrYIMJ9h+lgb
	PDr/lFv6iJFpnshHDLiKhj9nRBb0qc1ThqqCPGRm7J80hf62UhPwAWQlXef+uvN+lAuDW7K4SwvsY
	cqXcxKag1zl14zaTgAevLxz6ERdZ9wh4MOkjypOtdGfn0KqhUPHSXGVQMV9kcptA8atNZAcFbEOM5
	NaYdpRwHSmlOzXuPWQ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7WB-00035F-Om; Fri, 24 Jan 2020 22:33:35 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7VK-0002aG-6P
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 22:32:44 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579905162; h=Message-Id: Date: Subject: To: From: Sender;
 bh=+VyCGh8CGrDtWBvdHmu30YsoZRjC+pFVKCdY2gMhLTo=;
 b=VShjhpORkw/59N9pLOYTXG341Ju/waPTKfcrThloxjXRr7ip1NeYvmxweL8ygaUyMnRzzNyF
 NUwdcN8BYKTKpdaHBe7f2NR16k9BqtblhMu5Hpm5ZLBvja7BgVppRQO5TZfdSoE9i0mvQZ/x
 KLX+O/Agv3TkO99AOqAcWz6+Pq4=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2b7083.7fc7443bee30-smtp-out-n03;
 Fri, 24 Jan 2020 22:32:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1DC74C447A2; Fri, 24 Jan 2020 22:32:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from vgutta-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: vgutta)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B681AC43383;
 Fri, 24 Jan 2020 22:32:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B681AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=vnkgutta@codeaurora.org
From: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 vinod.koul@linaro.org, psodagud@codeaurora.org, tsoni@codeaurora.org,
 jshriram@codeaurora.org, tdas@codeaurora.org, vnkgutta@codeaurora.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/7] Add device tree and clock drivers for SM8250 SoC
Date: Fri, 24 Jan 2020 14:32:20 -0800
Message-Id: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_143242_626924_5312625B 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds device tree support and clock drivers support
for SM8250 SoC.
As part of the device tree, the sm8250 dts file has basic nodes
like CPU, PSCI, intc, timer and clock controller.

Required clock controller driver and RPMH cloks are added to
support peripherals like USB.

All this configuration is added to support SM8250 to boot up to the
serial console.

V2:
 * Addressed comments on patch 2, kept new compatible in sorted order
   and fixed the additional spaces.
 * Addressed comments on patch 7, fixed the clk-cells of "sleep_clk"
   and updated name of the scm node.
 * Added reviewed-by/Acked-by tags.

Whole series:
Tested-by: Vinod Koul <vkoul@kernel.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org>
  
This patchset depends on one of the RPMH clock driver fix
https://patchwork.kernel.org/patch/11318949/

Taniya Das (6):
  dt-bindings: clock: Add RPMHCC bindings for SM8250
  clk: qcom: rpmh: Add support for RPMH clocks on SM8250
  clk: qcom: clk-alpha-pll: Refactor and cleanup trion PLL
  clk: qcom: clk-alpha-pll: Add support for controlling Lucid PLLs
  dt-bindings: clock: Add SM8250 GCC clock bindings
  clk: qcom: gcc: Add global clock controller driver for SM8250

Venkata Narendra Kumar Gutta (1):
  arm64: dts: qcom: sm8250: Add sm8250 dts file

 .../devicetree/bindings/clock/qcom,gcc.yaml        |    1 +
 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts            |   29 +
 arch/arm64/boot/dts/qcom/sm8250.dtsi               |  450 +++
 drivers/clk/qcom/Kconfig                           |    7 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/clk-alpha-pll.c                   |  259 +-
 drivers/clk/qcom/clk-alpha-pll.h                   |   12 +
 drivers/clk/qcom/clk-rpmh.c                        |   25 +-
 drivers/clk/qcom/gcc-sm8250.c                      | 3720 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sm8250.h        |  271 ++
 include/dt-bindings/clock/qcom,rpmh.h              |    4 +-
 13 files changed, 4731 insertions(+), 50 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8250-mtp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sm8250.dtsi
 create mode 100644 drivers/clk/qcom/gcc-sm8250.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-sm8250.h

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
