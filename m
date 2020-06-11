Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7AE1F62B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+bLiNFqU5dRC2G2+mQVwp5ur9JAuV8c9Oz+adtS2Xk=; b=nYY3f9bgHAzyFi
	p6eDgHwzpNYerDGvjTeuE3urnzBJOeO9RS37bh3/n84FHJ+3IOO8DkLVSc1qcku/OdFysDj/cCL2N
	W5m93TdBVo6tbd7FxMcEQUgJVbKA2aES7zvbjC9d02yZL3w4y2mYPBa6qKXGZEYwy0K+Ch3n886CX
	CHb9EL0RSNDy0ncugfqe2fbW/+0OMUagMi5wZ6fGqW7pKYBtoFYtexZGVqM2qFLYnv46kzkFkMwKx
	F3CfMHwGA+C733UcWK9B+Y/47sBAnEtAb54+yQnTI1Mtltx7ma3mntKRH6DzT8mdnuSySn6+2en3R
	/UONoGH8URG2nvrqR3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHlg-00079A-N4; Thu, 11 Jun 2020 07:36:56 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhf-0001di-RW; Thu, 11 Jun 2020 07:32:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7AF705800D1;
 Thu, 11 Jun 2020 03:32:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=f/R5tcDXGnC0L
 EgPODfQACCnYjD2fbOepAi73Ul4TFY=; b=mH72VG5vRjan05kTugI47hqrvQg6S
 xZffrse6lBf5R2Ks6DVY5so+XvpBJbQmRIxzEuNWTmJnHKsa8Vg92jAvk1D2HyVn
 S68in8cVDT1lCCVMEvlAunMZpb2bwXg0tfIH/FRdD02RkypmrpyIndAZ+7SMd6Be
 ELL1CXSq2WHWU+a08NpgwoV2KX1ftk2uE6wp63QeKJQPlD2BZWHoJPFo2GDHM5J4
 j2dakACEGi95zfSBo8dP7w0mKWzp1no1qv6olV+X/AazdT66cR/yD+hN9UDMHJ2P
 XNRlpmvo1YWz06b2AzKtjxeEbcFIm85UnK+7EE1wSG8LjGxW04gxD6OtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=f/R5tcDXGnC0LEgPODfQACCnYjD2fbOepAi73Ul4TFY=; b=O6mY2HtE
 Wl+JVDUAl7QNxgAPDvutC1e1m4zWJaH3qh7jSlOKfXQ50ISL9V4X6WgQJGM67Z/U
 EzlJp0dqEqTEgdAJCFw0Jo9RJmAF5WNnPQtXKzM8nnm16AwMdqCUXTShWlRyUNsN
 GpRFKgd/9ALmIhC3BqTKi+sUhrH3Dy98lspW74oy9z5Sv34igbO+RERnlELMB93G
 ur6+7UwDqga5rPQEUVbmsGtByyF4K7XnHn99GuILfNoDbvvNu82H+tgTF1rcIeIp
 /SGdoV1HaJcbOP1N97Yw473/IFAug2QMZUStIvHpVxHNoT+bODx4wgkdn9qulnqI
 l9azrhF0qPTl/A==
X-ME-Sender: <xms:Ht7hXosKelMR34HtgywOPgy9C6g__ZS8IyJYAWB-8NXI2T0jTxdHsg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduvd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Ht7hXld7iboSJwNjJDNTNso-rqgDSyntz0IM5_ynK5YuBkNNXXs12Q>
 <xmx:Ht7hXjwG7g4lu_1HCBi4iw0Ce5_jW7aUB6I18BhUnNae7zsNWrj1YQ>
 <xmx:Ht7hXrP7JUFOtJNrAJscr1iTP_rZ8gnB7wev8X0mb4X4UxK0-2nPTQ>
 <xmx:Ht7hXsT1WjHRunP11b4PHi8Si8TlkV4XS0vwmwJQUveuTCWcAlYYWw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1808F328005E;
 Thu, 11 Jun 2020 03:32:46 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 16/27] clk: bcm: rpi: Rename is_prepared function
Date: Thu, 11 Jun 2020 09:32:05 +0200
Message-Id: <1b37336bee890d4f4be67741a2a324b73ec87cfb.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003248_248866_3F89350B 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
registered in the driver, but any clock exposed by the firmware.

Since we also implement the is_prepared hook, make the function
consistent with the other function names.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 3fce49a65a79..58ac1b104429 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -85,7 +85,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 	return 0;
 }
 
-static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
+static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -166,7 +166,7 @@ static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
-	.is_prepared = raspberrypi_fw_pll_is_on,
+	.is_prepared = raspberrypi_fw_is_prepared,
 	.recalc_rate = raspberrypi_fw_pll_get_rate,
 	.set_rate = raspberrypi_fw_pll_set_rate,
 	.determine_rate = raspberrypi_pll_determine_rate,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
