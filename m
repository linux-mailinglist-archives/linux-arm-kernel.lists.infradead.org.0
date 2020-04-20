Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053851B1324
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dk4bl/P7gS5HSyOrI1kmah9H3G4x9d4IqD7Z84FcRkY=; b=Hdz
	nDvqmSGWIcp/mr3b1fK+YVZjN9Zr7XA2A8YqpBgwbY0zSaCXi85g4ugvPLDmBv7Iia8gNx9fAyGYF
	nhvvZEmJY663SpvpYV/QDeIyaf4NFGwAHdzQ0FDNU6PDDqb3wW0PSWuNk+oGbnL5faRAD2rTrlIxs
	g3WaGT+JVnLr8y/fwmlYkbVgtZw8Qufd3WN13nZVDFTjJLyhjkRoXIZOfgvrhUnfLfP7IdYc8YInB
	oLQrVs3nNu+ApX+GOYRwYmJVo0K5JMRK6Yt+kXYQRr/kCaPyAKwMURODU/xzgKCxNN8vPtvD5VqLw
	WQYBeXmImuWIPtkmIehDYWOR5TAgR4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaH1-0004SJ-70; Mon, 20 Apr 2020 17:31:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaGk-0004RL-92
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:31:43 +0000
Received: from localhost.localdomain (unknown [157.46.94.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 633A920782;
 Mon, 20 Apr 2020 17:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587403901;
 bh=zYTCgzbp//wOmybEQMjzmB97i0Q6qYo7SyIvO8gPoho=;
 h=From:To:Cc:Subject:Date:From;
 b=c/1Ac+5eIzx9CK3uWozc2qQPpNtXOf1KFaNwjXhXFFBAhgIfobshyhwBRnWsGtYsd
 pK2Xa5F7fKm+lKFCTH8qb1lZGNslUoaHg5bB/Wp5A1ok+bBy0zvhBOCbyw63qBtuv5
 LGBP6duWY35waItnxkAWOxV1F9PKGnjfTVFkn8Qg=
From: mani@kernel.org
To: robh+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com
Subject: [PATCH 0/6] Add Stinger96 and IoT Box board support
Date: Mon, 20 Apr 2020 23:01:18 +0530
Message-Id: <20200420173124.27416-1-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_103142_335971_1369A3B8 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

Hello,

This series adds Stinger96 and IoT Box board support. These boards are
based on STM32MP157A SoC, designed and manufactured by Shiratech solutions.

The Stinger96 is a base board (96Boards IoT Extended edition) while IoT Box
adds one mezzanine on top of it and sold as a gateway device.

This series depends on below patchsets already submitted and gone through
reviews:

[PATCH v3 0/3] Add Reset and Wakeup support for CCS811
[PATCH v3 0/2] Add CTS/RTS gpio support to STM32 UART

More information about these boards can be found in below links:

https://www.shiratech-solutions.com/products/stinger96/
https://www.shiratech-solutions.com/products/iot-box/

Thanks,
Mani

Manivannan Sadhasivam (6):
  dt-bindings: Add vendor prefix for Shiratech Solutions
  ARM: dts: Add missing pinctrl entries for STM32MP15
  dt-bindings: arm: stm32: Document Stinger96 compatible
  ARM: dts: stm32mp1: Add Stinger96 board support
  dt-bindings: arm: stm32: Document IoT Box compatible
  ARM: dts: stm32mp1: Add IoT Box board support

 .../devicetree/bindings/arm/stm32/stm32.yaml  |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   2 +
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi      |  64 ++++
 arch/arm/boot/dts/stm32mp157a-iot-box.dts     |  92 +++++
 arch/arm/boot/dts/stm32mp157a-stinger96.dts   |  12 +
 arch/arm/boot/dts/stm32mp157a-stinger96.dtsi  | 342 ++++++++++++++++++
 7 files changed, 516 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-iot-box.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-stinger96.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-stinger96.dtsi

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
