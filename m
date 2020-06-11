Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560D61F6F3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 23:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xfOT6KsbqV4D+RE/r37uFQ1DCml5ibDHRDS/IzT89qI=; b=VXVFFPD7MS1n5s
	4pjLEyNzIVBUct/qfDQdVE99UPLG0bfKsDlBXeZNepMk47/nnV7Z7jjkgDwn0sKPUgmZvdNT0J6Vr
	52WAFYzfZpGhqiSs6CO9KaY0Rs3cYlPj/PGs4Yum08UZp0pHdGElIMBnOqQdIdOmLEB3X0QS3dJ2Z
	cXeqBNlvdtjh8LfJGcVNlH4tSbXkwgiLJitLfwYJrKZmE233O/37kAEuYjxVV41EkTlrxq4yiyJPj
	yB8qvyVgvuFwvRH2njre4SqpOdH2xRWrS8rnsWGMsQP/djlRByZi4WTKrhqhZEzTQbDI/8Jmm6Vmx
	dZAn5IvcpKrxHzsLrxUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjUVd-00013T-7h; Thu, 11 Jun 2020 21:13:13 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjUUb-00009v-BL
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 21:12:12 +0000
Received: from [78.134.85.74] (port=40536 helo=melee.dev.aim)
 by hostingweb31.netsons.net with esmtpa (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jjUUN-000C9m-S7; Thu, 11 Jun 2020 23:11:55 +0200
From: Luca Ceresoli <luca@lucaceresoli.net>
To: linux-fpga@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: fpga: xilinx-slave-serial: valid for the 7
 Series too
Date: Thu, 11 Jun 2020 23:11:40 +0200
Message-Id: <20200611211144.9421-1-luca@lucaceresoli.net>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca+lucaceresoli.net/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_141209_570113_3070F106 
X-CRM114-Status: UNSURE (   4.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.40.174.40 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Moritz Fischer <mdf@kernel.org>, Luca Ceresoli <luca@lucaceresoli.net>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Xilinx 7-series uses the same protocol, mention that.

Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
---
 .../devicetree/bindings/fpga/xilinx-slave-serial.txt     | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
index cfa4ed42b62f..9f103f3872e8 100644
--- a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
+++ b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
@@ -1,11 +1,14 @@
 Xilinx Slave Serial SPI FPGA Manager
 
-Xilinx Spartan-6 FPGAs support a method of loading the bitstream over
-what is referred to as "slave serial" interface.
+Xilinx Spartan-6 and 7 Series FPGAs support a method of loading the
+bitstream over what is referred to as "slave serial" interface.
 The slave serial link is not technically SPI, and might require extra
 circuits in order to play nicely with other SPI slaves on the same bus.
 
-See https://www.xilinx.com/support/documentation/user_guides/ug380.pdf
+See:
+- https://www.xilinx.com/support/documentation/user_guides/ug380.pdf
+- https://www.xilinx.com/support/documentation/user_guides/ug470_7Series_Config.pdf
+- https://www.xilinx.com/support/documentation/application_notes/xapp583-fpga-configuration.pdf
 
 Required properties:
 - compatible: should contain "xlnx,fpga-slave-serial"
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
