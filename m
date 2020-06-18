Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A5F1FEB5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3lraBlqGJCBUUqzdq/oO7yLF2VVn9aZH/gVxqHCuaKQ=; b=tiZgHffKdrvyqs
	NPioXHYhNZm3OFx/euTDv4OzY1MFY+Z3YNmYyo7B96mdwaF6GseIgzKzqaDLxnAILtNYYG/jNHoID
	mgW9oJMV+APPl4xXkfoP6aJuoWoFpdVEE827L4oXHX42pS8tzniGOuiLAQIFJDj4/cwdUuQOP6u//
	lY6sURhFw9Db66mQEwNj16/LRkNV+IlPNa7iRV+8IaajFIEXSlfOHW35HRx+hIQSyBLJ506oMkMUt
	0wIEAzmLjTaWR+CMU4h0YaiUAe0Bv4xOuFBFl4sucJ5PFC1Id3zhO5hfhYlRzbA3+vg10L3NtjzBm
	/GtF+oZu07aRy4Y0B3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnpu-0008IG-2P; Thu, 18 Jun 2020 06:15:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnpH-0005e2-UQ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:15:06 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D33D61A0E3C;
 Thu, 18 Jun 2020 08:14:59 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0EA441A00D4;
 Thu, 18 Jun 2020 08:14:56 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 048B64024F;
 Thu, 18 Jun 2020 14:14:50 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] Add audio support for imx6sx platform
Date: Thu, 18 Jun 2020 14:03:44 +0800
Message-Id: <cover.1592460381.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_231504_992737_2B083809 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Add audio support for imx6sx platform.
Enable ASRC, ESAI, SPDIF, MQS.

Shengjiu Wang (5):
  ARM: dts: imx6sx: Enable ASRC device
  ARM: dts: imx6sx-sdb: Add MQS support
  ARM: dts: imx6sx-sdb: Add SPDIF support
  ARM: dts: imx6sx-sabreauto: Add SPDIF support
  ARM: dts: imx6sx-sabreauto: Add cs42888 sound card support

 arch/arm/boot/dts/Makefile             |  1 +
 arch/arm/boot/dts/imx6sx-sabreauto.dts | 96 ++++++++++++++++++++++++++
 arch/arm/boot/dts/imx6sx-sdb-mqs.dts   | 48 +++++++++++++
 arch/arm/boot/dts/imx6sx-sdb.dtsi      | 30 ++++++++
 arch/arm/boot/dts/imx6sx.dtsi          | 36 +++++++---
 5 files changed, 203 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6sx-sdb-mqs.dts

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
