Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17E12F7B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 12:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=frAE9xTlJ2NdCFTGTvxI0kTmYOkP97JUt+yD7MEZbZ0=; b=aWW3R3xVkllV29
	B3V/3O7213E14pBTtVVxN+cvmNOjKNS7bqoMeUYQ8OUES31AHe8L/wCnZM9qjJMUIiZc6Eme93s5G
	/TONqNb/Jw2osZOn0YOi+dWSPc1ln2cHcoE2ezAeW+TxgT4z2ISWeqS1T2OLpfNj9oXEleCSHJn/t
	eGJ/rg/uvdk35VNVz5kKbFDJUdd2W0WQCFB+GAMRpfAwb59cp2F/3jxjAj8GZhtPTuS2GY27MUGfv
	vPmLqf2Z0lRYlq6GL0B2dEPhNSK72rTiisuDy1mBArT5li1aUuYGkiwQQXYmq0mPdoc7xNW8G+hBF
	ZJdTl/CBcQClosR5cMug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inLSn-00082t-MH; Fri, 03 Jan 2020 11:49:57 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inLSf-000823-LT
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 11:49:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578052189; h=Message-Id: Date: Subject: To: From: Sender;
 bh=r2EZ+2xziX53OTfMONPxF+br2j1dHKKsLKUSUS0Dx10=;
 b=mVtlLKs1ZV33Gtmc3q236liujTJ/+juHKpZMqDMHQGI69ndGtabYpMnIJvqodaXxk+HkN6R5
 l5khI3Meq+0gsXYArY1FnzELy44A9TcB0tL20pMVSEIzghbz6EXEieYpT43H/wI/Z2j2+vHN
 u2k2RJzVhyz4aeCu+5fBZhW/zHE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0f2a5c.7f1720fabce0-smtp-out-n02;
 Fri, 03 Jan 2020 11:49:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 121B4C4479C; Fri,  3 Jan 2020 11:49:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A824DC433CB;
 Fri,  3 Jan 2020 11:49:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A824DC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: sricharan@codeaurora.org, agross@kernel.org, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
 sivaprak@codeaurora.org
Subject: [PATCH V3 0/5] Add minimal boot support for IPQ6018
Date: Fri,  3 Jan 2020 17:19:32 +0530
Message-Id: <1578052177-6778-1-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_034949_764699_E22FBE9C 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IPQ6018 is Qualcomm\u2019s 802.11ax SoC for Routers,
Gateways and Access Points.

This series adds minimal board boot support for ipq6018-cp01 board.

[V3]
 * Removed clock driver and bindings from this patch series, and added them
   as a different series.
 * Removed qpic_padN from pinctrl driver.
 * Addressed review comments in dts, and added the remaining fixed clocks their
 * Fixed review comments in pinctrl bindings
 * Patch 4 arm64: dts: Add ipq6018 SoC and CP01 board support has build
   dependency with,
	https://patchwork.ozlabs.org/patch/1217293/

[v2]
 * Splitted dt bindings  and driver into different patches. Added missing bindings
   and some style changes.
 * Added ipq6018 schema
 * Addressed review comments for gcc clock bindings.
 * Removed all clk critical flags, removed 1/1 factor clocks, moved to new
   way of specifying clk parents, and addressed other review comments.
 * Sorted nodes based on address, name, label. Removed unused clock nodes,
   Addressed other review comments.

Sricharan R (5):
  dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl bindings
  pinctrl: qcom: Add ipq6018 pinctrl driver
  dt-bindings: qcom: Add ipq6018 bindings
  arm64: dts: Add ipq6018 SoC and CP01 board support
  arm64: defconfig: Enable qcom ipq6018 clock and pinctrl

 Documentation/devicetree/bindings/arm/qcom.yaml    |    8 +
 .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     |  174 +++
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts       |   30 +
 arch/arm64/boot/dts/qcom/ipq6018.dtsi              |  263 +++++
 arch/arm64/configs/defconfig                       |    3 +
 drivers/pinctrl/qcom/Kconfig                       |   10 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-ipq6018.c             | 1107 ++++++++++++++++++++
 9 files changed, 1597 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
 create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
 create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
 create mode 100644 drivers/pinctrl/qcom/pinctrl-ipq6018.c

-- 
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
