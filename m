Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110421695B7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gXBdxoMCNcI+HnlCxLE/3ho7qdIE+Bx0CPoRLI4LvJk=; b=hIiH9tK4rwipbW
	rGoy7MCZhsQLON2IKNNZe+PBMwcJ8qsy5PpCAS3saJPjfrVHfNPjAggcno/1Hbcxd0C6GIk7xHOOd
	avMSnz/iUo12YDmO3HOlbC4TzCLY/FnV073MjJp5JYN/N8Zc4CHimdqLF3/Kg5MKDDQyRePr6NoGx
	jrDx9fAUR6zzsJsVTAo3O9I62T3TkQISNpI92+ghQ65ZnZ087X1wyXeH4jgXTkT1YXnf1fwHgUHlD
	f+0jik68uglnDg5YyoVxuY+q3LIbTjHERMu132kv8s10fmoQvf1EYxBzBUjy7enHs9tiz/1hB3DqV
	5rWUGYHI+KmPuAw3sSsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5iZm-0000uR-Q3; Sun, 23 Feb 2020 04:09:06 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iZc-0000sU-Iw
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:08:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id B1EC65F00;
 Sat, 22 Feb 2020 23:08:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 23:08:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=q4Ot3OeJR3RSzSA1Bg9G4BvjjT
 WwbYiknLcd/Pnw3hY=; b=oxxpck8PRbftTSecbIJZKvtQAp3/63KVp8GEO6InhT
 yyX7TLVAQLSqAzvVmhgiWFhGtgFSX3ogu0InMV25csi15GK7SF1JYtY+jHVPsWvE
 7G352uk0MMh7hiUmeVv7zSPUCD1zjxMbKDPSDTfkbOiN9dn+2uzJTp/VIgStN+GN
 oW+HWVWxDzsoHYXtZxFbbSxNoIVsfU2KtN0QFacOMik0DCqQ4T9MDGIDxcqwSPeL
 8eSDu+iEvqwKfM2+iuCR3vSWYD1yQu9tubDRx3AzbQLtKVbAPFLTS78gxGiSzu1A
 VEWBXVPlDHWVPdGsXDuGXGhrUT4ajvtw4LT0o44RfmtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=q4Ot3OeJR3RSzSA1B
 g9G4BvjjTWwbYiknLcd/Pnw3hY=; b=SXPtn60L+C5blGwK36ygthuZnv82hw8Pq
 TsYnaEYe9rdUAIKTzS+UUCbadTNpExorwKbMBRvT+y8KPeiyI5zp+UXRpdHIO0Vt
 GOv0UjVJsUqV1wRD6WztNMKDMwN5vF31R+xNvHm5ZNKgaKVYLgloyJeoKQKXJZVm
 2xlWQsmFhRVMOcfB2M3a0BPyr7v96A3yHLoJpIKiaW/ECnWua4kwv7xHDeiLVWX3
 V+lq4jDvkOyLB66k9HxkVykLvc0ItbulhFehTbSj6uza19kFYFflFyjEBEUwmfuW
 2rCSu97wTmmrYxcehhVbgU7wewROVd4xMKE38eWqqRxeSrc/gHaWA==
X-ME-Sender: <xms:1vpRXgUY7eRF4M6nH0c28YrLTJPsT3EG-FYZqPI9jxZIuTYa9K2URw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:1vpRXkc3Bhic1H0udd1jzMF34-yyhTWiKKmQsCeS9MxiAXc_6lZWzw>
 <xmx:1vpRXhtam65ZIHFvz1C9rp59zXEGH0C_CbGT2dBKe53J3JWXZt930A>
 <xmx:1vpRXrhWrk0080BXohQ6CacYUiZ87kCizWfPSv-ReW0pLeLYehqJQg>
 <xmx:1_pRXs9GeGkNps2mHiVMg2TzJN4DWd0yYpw4Byw9kfjOW-qT0VfKAg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 10F313280060;
 Sat, 22 Feb 2020 23:08:54 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v7 0/6] Allwinner sun6i message box support
Date: Sat, 22 Feb 2020 22:08:47 -0600
Message-Id: <20200223040853.2658-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200856_772436_6E2812C4 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for the "hardware message box" in sun8i, sun9i,
and sun50i SoCs, used for communication with the ARISC management
processor (the platform's equivalent of the ARM SCP). The end goal is to
use the arm_scpi driver as a client, communicating with firmware running
on the ARISC CPU.

I have tested this driver with various firmware programs and mailbox
clients on the A64, H5, and H6 SoCs (including specifically a patched
version of the arm_scpi driver), and Ondrej Jirman has tested the driver
on the A83T (using a similar patch to arm_scpi).

This patch series includes just the driver and the device tree changes.

Thanks,
Samuel

Changes from v6:
  - Rebased on tag v5.6-rc2
  - Collected Acked-by/Reviewed-by tags
  - Dropped "FIFO full" check in sun6i_msgbox_send_data()

Changes from v5:
  - Rebased on tag sunxi-dt-for-5.5-2
  - Dropped unnecessary/unrelated patches
  - Addressed Maxime's dt-binding comments
  - Used devm_reset_control_get_exclusive

Changes from v4:
  - Rebased on sunxi-next
  - Dropped AR100 clock patch, as it was controversial and unnecessary
  - Renamed sunxi-msgbox to sun6i-msgbox and sun6i-a31-msgbox
  - Added comments about not asserting the reset line
  - Dropped A80 DTS changes as they were untested
  - Added Ondrej's Tested-by for A83T
  - Dropped the demo; replaced with a real arm_scpi fix

Changes from v3:
  - Rebased on sunxi-next
  - Added Rob's Reviewed-by for patch 3
  - Fixed a crash when receiving a message on a disabled channel
  - Cleaned up some comments/formatting in the driver
  - Fixed #mbox-cells in sunxi-h3-h5.dtsi (patch 7)
  - Removed the irqchip example (no longer relevant to the fw design)
  - Added a demo/example client that uses the driver and a toy firmware

Changes from v2:
  - Merge patches 1-3
  - Add a comment in the code explaining the CLK_IS_CRITICAL usage
  - Add a patch to mark the AR100 clocks as critical
  - Use YAML for the device tree binding
  - Include a not-for-merge example usage of the mailbox

Changes from v1:
  - Marked message box clocks as critical instead of hacks in the driver
  - 8 unidirectional channels instead of 4 bidirectional pairs
  - Use per-SoC compatible strings and an A31 fallback compatible
  - Dropped the mailbox framework patch
  - Include DT patches for SoCs that document the message box

Samuel Holland (6):
  dt-bindings: mailbox: Add a binding for the sun6i msgbox
  mailbox: sun6i-msgbox: Add a new mailbox driver
  ARM: dts: sunxi: a83t: Add msgbox node
  ARM: dts: sunxi: h3/h5: Add msgbox node
  arm64: dts: allwinner: a64: Add msgbox node
  arm64: dts: allwinner: h6: Add msgbox node

 .../mailbox/allwinner,sun6i-a31-msgbox.yaml   |  80 +++++
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  10 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
 drivers/mailbox/Kconfig                       |   9 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/sun6i-msgbox.c                | 326 ++++++++++++++++++
 8 files changed, 457 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
 create mode 100644 drivers/mailbox/sun6i-msgbox.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
