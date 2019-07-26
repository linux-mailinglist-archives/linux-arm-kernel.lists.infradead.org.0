Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B3176AA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HSVORU4NfwIShFacPUmOshGPG+ZIUZLBfmlnkgM1YKg=; b=SZV
	/tZzWUm20rtiVE2YC5gkRvRQgGYxSCewJswPM3wK4BI2dSrVdQeh9wXG3TopHCNvNb8UUWQTiGneE
	SQZs98wbnBUcX5oJ+J+LSSoX3j2KmWnVgb50LtsOLESodFNcENU+D9w18l+QgqLe3cg1S+UNi30wn
	12ny0PXi1xiCqhM2o1Hn7ZTmXRxs8EcuDu2QIKi7ttt503vRZY3JwfFepZqLZlk0JDC3z+W0/BgO8
	/wu7ZK/0lFCdWXo+Z5wK1ZNc1G6BdPgSpaJJb7kn+HACWjU0Py7/mAPqdIUj9rccepZU4jxbmFZWC
	rf86nwloesV1rGgOGXQG+0x/fknu3GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0li-0005D2-Bs; Fri, 26 Jul 2019 14:00:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0lS-0004lP-Nh
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:00:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42007337;
 Fri, 26 Jul 2019 07:00:06 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5AC803F694;
 Fri, 26 Jul 2019 07:00:04 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] firmware: arm_scmi: add SCMI v2.0 fastchannels and reset
 protocol support
Date: Fri, 26 Jul 2019 14:59:49 +0100
Message-Id: <20190726135954.11078-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070006_832009_E9A7B06E 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 pajay@qti.qualcomm.com, Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCMI v2.0[1] released recently adds support for:

1. Performance protocol fast channels
2. Reset Management Protocol
among several other features.

This series adds support for the above 2.

The code is based on the cleanup[2] and Rx/async/delayed response series[3]
and is available @[4]

--
Regards,
Sudeep

[1] http://infocenter.arm.com/help/topic/com.arm.doc.den0056b/DEN0056B_System_Control_and_Management_Interface_v2_0.pdf
[2] https://lore.kernel.org/lkml/20190726134531.8928-1-sudeep.holla@arm.com
[3] https://lore.kernel.org/lkml/20190726135138.9858-1-sudeep.holla@arm.com/
[4] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git scmi_updates

Sudeep Holla (5):
  firmware: arm_scmi: Add discovery of SCMI v2.0 performance fastchannels
  firmware: arm_scmi: Make use SCMI v2.0 fastchannel for performance protocol
  dt-bindings: arm: Extend SCMI to support new reset protocol
  firmware: arm_scmi: Add RESET protocol in SCMI v2.0
  reset: Add support for resets provided by SCMI

 .../devicetree/bindings/arm/arm,scmi.txt      |  17 ++
 MAINTAINERS                                   |   1 +
 drivers/firmware/arm_scmi/Makefile            |   2 +-
 drivers/firmware/arm_scmi/perf.c              | 257 +++++++++++++++++-
 drivers/firmware/arm_scmi/reset.c             | 231 ++++++++++++++++
 drivers/reset/Kconfig                         |  10 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-scmi.c                    | 133 +++++++++
 include/linux/scmi_protocol.h                 |  26 ++
 9 files changed, 669 insertions(+), 9 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/reset.c
 create mode 100644 drivers/reset/reset-scmi.c

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
