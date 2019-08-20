Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9978F95D5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rEBd8sIoVqJNDF4gZK4IjKTC3o3svRABlQD/JXEilEo=; b=Lsv
	AYBSKdz032lurtfNviX1AxAJgqlxkN08HcZ6yQqx+Ah9LwWprrW+kGme4y+FlnVMphbQeU51IaOQ1
	HdQJOqTsdtBr9SUfO3JjcqO0geRRaGb+bEPNzj6h+CuK6S9+BvEAiCmAv9tiZekM/5T4Izj7w9KFQ
	E9OvYtu8eNqCZW9XDljHQbGandyv3IB8DXKjaC+DcuYWoW/EQwxHrJCKSyPbute6gT/v8SKdQ3Qvt
	ItxHJc1pJybWRPEn0PsWcquy0GILJS09QveVKF0YpOUtKJ8g7zyf+eets7T11eeT6LZP9OcH47GNb
	4hwAvmAYnwI7ldOSeOmqfl8Pp4NR+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02NA-00025A-Ru; Tue, 20 Aug 2019 11:32:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02Mt-00023Y-St
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:32:05 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 349C320028C;
 Tue, 20 Aug 2019 13:32:00 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E64DC20006A;
 Tue, 20 Aug 2019 13:31:55 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 65B0B402B7;
 Tue, 20 Aug 2019 19:31:50 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V4 00/11] clk: imx8: add new clock binding for better pm
 support
Date: Tue, 20 Aug 2019 07:13:14 -0400
Message-Id: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043204_070341_CA5781D9 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a follow up of this patch series.
https://patchwork.kernel.org/cover/10924029/
[V2,0/2] clk: imx: scu: add parsing clocks from device tree support

This patch series is a preparation for the MX8 Architecture improvement.
As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
of a couple of SS(Subsystems) while most of them within the same SS
can be shared. e.g. Clocks, Devices and etc.

However, current clock binding is using SW IDs for device tree to use
which can cause troubles in writing the common <soc>-ss-xx.dtsi file for
different SoCs.

This patch series aims to introduce a new binding which is more close to
hardware and platform independent and can makes us write a more general
drivers for different SCU based SoCs.

Another important thing is that on MX8, each Clock resource is associated
with a power domain. So we have to attach that clock device to the power
domain in order to make it work properly. Further more, the clock state
will be lost when its power domain is completely off during suspend/resume,
so we also introduce the clock state save&restore mechanism.

ChangeLog:
v2->v3:
 * change scu clk into two cells binding
 * add clk pm patches to ease the understand of the changes
v1->v2:
 * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
   Documentation/devicetree/bindings/arm/arm,scpi.txt
 * Add required power domain property
 * Dropped PATCH 3&4 first, will send the updated version accordingly
   after the binding is finally determined,

Dong Aisheng (11):
  dt-bindings: firmware: imx-scu: new binding to parse clocks from
    device tree
  dt-bindings: clock: imx-lpcg: add support to parse clocks from device
    tree
  clk: imx: scu: add two cells binding support
  clk: imx: scu: bypass cpu power domains
  clk: imx: scu: allow scu clk to take device pointer
  clk: imx: scu: add runtime pm support
  clk: imx: scu: add suspend/resume support
  clk: imx: imx8qxp-lpcg: add parsing clocks from device tree
  clk: imx: lpcg: allow lpcg clk to take device pointer
  clk: imx: clk-imx8qxp-lpcg: add runtime pm support
  clk: imx: lpcg: add suspend/resume support

 .../devicetree/bindings/arm/freescale/fsl,scu.txt  |  12 +-
 .../devicetree/bindings/clock/imx8qxp-lpcg.txt     |  36 +++-
 drivers/clk/imx/clk-imx8qxp-lpcg.c                 | 124 ++++++++++++
 drivers/clk/imx/clk-imx8qxp.c                      |   9 +-
 drivers/clk/imx/clk-lpcg-scu.c                     |  41 +++-
 drivers/clk/imx/clk-scu.c                          | 216 ++++++++++++++++++++-
 drivers/clk/imx/clk-scu.h                          |  50 ++++-
 include/dt-bindings/clock/imx8-lpcg.h              |  14 ++
 include/dt-bindings/firmware/imx/rsrc.h            |  23 +++
 9 files changed, 495 insertions(+), 30 deletions(-)
 create mode 100644 include/dt-bindings/clock/imx8-lpcg.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
