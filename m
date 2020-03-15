Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA3E185D40
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 14:51:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=obHvqPccM65LCB4AjUJO6Lbkzz1BikH0ZqUtGHNKNSs=; b=A/d
	pKAmOd8vxDVlDfPt5b3GT7XdqBMwhRRuOAMbbT0913O5A0SJtVYcLfV38WuN9HJmWUX1whk3cCIBG
	z6hgQEaEsfZRZ1/OXOHlJBmeEUevNq++bAqGSWq3nlMK1aa1lbPvn4zKlIkHiywb4PSYJMuXQTqV1
	6oGZgMiGbBGT3A4R4U40ixxYHGQYQtng5dO73Zysu5AtEQ059Ozht1Vl0wkJo5dYgx+4ihgYH/VTD
	su6vvJ4q7Bx3xbBBdobnlyj1p+m1TI4ctv9FKeXS+eQvWXuyUN/frbMJ++eINK57603tj4uMAfAZM
	rSY6/dTWfwpeYsdGUjaIfP3Dtyqhw9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTfS-0003ul-92; Sun, 15 Mar 2020 13:51:02 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTfD-0003tC-B9
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 13:50:49 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7FCA41A04DF;
 Sun, 15 Mar 2020 14:50:41 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B1A2E1A04CE;
 Sun, 15 Mar 2020 14:50:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AB35C402D0;
 Sun, 15 Mar 2020 21:50:30 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V6 00/12] clk: imx8: add new clock binding for better pm
 support
Date: Sun, 15 Mar 2020 21:43:44 +0800
Message-Id: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_065047_666848_5F30B320 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

It's based on latest shanw/for-next branch.

The top commit is:
4559a11e48d5 Merge branch 'imx/defconfig' into for-next

ChangeLog:
v5->v6:
 * add scu clk unregister if add provider failed
v4->v5:
 * Address all comments from Stephen
v3->v4:
 * use clk-indices for LPCG to fetch each clks offset from dt
v2->v3:
 * change scu clk into two cells binding
 * add clk pm patches to ease the understand of the changes
v1->v2:
 * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
   Documentation/devicetree/bindings/arm/arm,scpi.txt
 * Add required power domain property
 * Dropped PATCH 3&4 first, will send the updated version accordingly
   after the binding is finally determined,


Dong Aisheng (12):
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
  clk: imx: scu: unregister clocks if add provider failed

 .../bindings/arm/freescale/fsl,scu.txt        |  12 +-
 .../bindings/clock/imx8qxp-lpcg.txt           |  36 ++-
 drivers/clk/imx/clk-imx8qxp-lpcg.c            | 139 +++++++++++
 drivers/clk/imx/clk-imx8qxp.c                 | 136 ++++++-----
 drivers/clk/imx/clk-lpcg-scu.c                |  53 +++-
 drivers/clk/imx/clk-scu.c                     | 231 +++++++++++++++++-
 drivers/clk/imx/clk-scu.h                     |  56 ++++-
 include/dt-bindings/clock/imx8-lpcg.h         |  14 ++
 include/dt-bindings/firmware/imx/rsrc.h       |  23 ++
 9 files changed, 610 insertions(+), 90 deletions(-)
 create mode 100644 include/dt-bindings/clock/imx8-lpcg.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
