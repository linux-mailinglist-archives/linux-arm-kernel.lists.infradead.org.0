Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5411117DEF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MnV0VYfYRf7z8tM6Ax4EccbR2ZUi2Azt0qDolKSOFpo=; b=hCN
	O1sivnCC+B20KE7ztFs5P1EpfPjIpJWZ91bCiYESG6AJXVpCmE5CPaRPtX/9vLFoVraVw+8ROLWUe
	DQgjSMnDR3h/lt+WqogIVnbruenBOz9f6D8DkV9vHbhiyHLHa7YbrXsKxW0BeBXyzXJMuCiTzmVB3
	KrXg7TxCdgooNU5pNjexdaARZx2wuiepmiSTwxQxwC9yBy/vFT7b0E/vM2pyIxTkfPc5XUtzOxSzr
	ZhE51b+lQmIe9GXo49Es66jHcI8z9uGsFD8PlzoHjj0x/KkxGp1rmBtfg0UlvKq9OKBMraFGeTbqK
	Ox09BnSQtrcWFd9+TX5d4PKlrDtGDRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGs7-0003AB-Uc; Mon, 09 Mar 2020 11:46:59 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGrx-00039O-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:46:51 +0000
X-IronPort-AV: E=Sophos;i="5.70,533,1574089200"; d="scan'208";a="41388051"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 09 Mar 2020 20:46:43 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id B8986421A427;
 Mon,  9 Mar 2020 20:46:39 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH 0/2] media: i2c: ov5645: Switch to assigned-clock-rates
Date: Mon,  9 Mar 2020 11:46:11 +0000
Message-Id: <1583754373-16510-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_044649_869654_201E8DBB 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for using assigned-clock-rates for
specifying clock rates for ov5645 driver

Lad Prabhakar (2):
  media: dt-bindings: media: i2c: Switch to assigned-clock-rates
  media: i2c: ov5645: Switch to assigned-clock-rates

 Documentation/devicetree/bindings/media/i2c/ov5645.txt | 4 ++--
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi               | 3 ++-
 drivers/media/i2c/ov5645.c                             | 9 ++-------
 3 files changed, 6 insertions(+), 10 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
