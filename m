Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923683A37E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 06:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LAstBLV86xXZ48n/KviOL3eGa8sXTo7/ZFHi9IpEaqk=; b=tDA
	COzCyP1RU/tS5jD/C6B6EyE8v8IjQZ2LYym0DUmnK7zu7tDb+oi16f0Bk0uxLaRP0Eb76Yj9xoWoh
	Edfd4cbyLdiQwVs716QDeX4vsIW2TruYncUKPim/wdZY2mlDw3ePIAP+dlUqOHaaM8bLXGhnr3i3O
	R2ZZbZjBIqv3xUbi152064lvraX92+BjRcXjpfcwnmYhJiI16sgKGcJGD/la2LN7USLZm8oUQmxgL
	eatAe6Q+P+PGVjOjbHqSiroF3mF13zxcNlIoEsGGUJQn+ouSw7Jsil8/g5euxs5Nrv9zucHjYVLam
	tZdZ3oTpaTRIM94OU863FqJ8V2lB8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZpJA-0002i7-GU; Sun, 09 Jun 2019 04:19:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZpIz-0002ho-GD
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 04:19:42 +0000
Received: from hector.attlocal.net
 (107-207-74-175.lightspeed.austtx.sbcglobal.net [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B92CF208E3;
 Sun,  9 Jun 2019 04:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560053976;
 bh=ILMIKm6unfoX0sFWJ1A3LaSPMfGyKOUWY4kQZ8AaS0A=;
 h=From:To:Cc:Subject:Date:From;
 b=0aA2xqD0SLfZNVTPTxO6F7sJ5iWvdnlSeaNhAzr5uGtqJKNV8DETsmrkVuYRB87Dy
 ZqCOZuse653Y5SwYrA/m8PootAso45zVBtIaxQ0V395yvVyXMLBImGtH+/+/7wTI01
 /3+ZsFhH0AQyeBYM3vCuWk6oEzxAoJRzKU3pD8TA=
From: Andy Gross <agross@kernel.org>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: qcom: qcs404: Add reset-cells to GCC node
Date: Sat,  8 Jun 2019 23:19:32 -0500
Message-Id: <1560053972-32273-1-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_211941_562382_C92F355E 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: arm@kernel.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds a reset-cells property to the gcc controller on the QCS404.
Without this in place, we get warnings like the following if nodes reference
a gcc reset:

arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
/soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
/soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
  also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3
  DTC     arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb
arch/arm64/boot/dts/qcom/qcs404.dtsi:261.38-310.5: Warning (resets_property):
/soc@0/remoteproc@b00000: Missing property '#reset-cells' in node
/soc@0/clock-controller@1800000 or bad phandle (referred from resets[0])
  also defined at arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:82.18-84.3

Signed-off-by: Andy Gross <agross@kernel.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 342788a..086cadb 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -426,6 +426,7 @@
 			compatible = "qcom,gcc-qcs404";
 			reg = <0x01800000 0x80000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 
 			assigned-clocks = <&gcc GCC_APSS_AHB_CLK_SRC>;
 			assigned-clock-rates = <19200000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
