Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D90768AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uqJ8ZAVCZ5V8mgdapK+8S+0ZT39eYdDOwZxDFtzOp24=; b=NxH
	EVek6a+ZSL4XwCjEyBDL8DuYNmfMcfggGUP8Trrj2o+E8lMsxzx+j7PjV5mpwykR2E38hJwj5r+nE
	Osa3F1wWwFkeCotLUIpagcUHgrPI1xJPKeC6AaknuCCit9+B5lJHJ/szoxyqCvQePjM/FvRlEzwc0
	5rUYWjFSw7uxwEDCup5DG2EZbT9GjeS+wW12RnRc5keY6Z2xmLnZJBulXlWaWn5fJDdkqYbRusrET
	8kRae+EZOs7bDYFn7zS0G6FS8t9yAA79XxUFHmoMcjyZGD+eJu8Hv/n6GAZPeWwUwYZDZyVo5TVUg
	Dox8Z2O59/aoonHJz5vXZAOYk/oWfEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Y8-0003G5-H5; Fri, 26 Jul 2019 13:46:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Xs-0003FI-Pt
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:46:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26A3B152D;
 Fri, 26 Jul 2019 06:46:04 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D81D73F694;
 Fri, 26 Jul 2019 06:46:02 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/6] firmware: arm_scmi: miscellaneous fixes/updates
Date: Fri, 26 Jul 2019 14:45:25 +0100
Message-Id: <20190726134531.8928-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064604_891455_122F1F76 
X-CRM114-Status: UNSURE (   8.05  )
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
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here are few miscellaneous fixes and updates to SCMI. Fixes are mostly
for the reported issues and updates are based on code inspection during
development of new features(delayed response and notifications). The
new features will follow this.

--
Regards,
Sudeep

v1->v2:
	- Fixed spurious ] in doxygen comment
	- Dropped the first patch as it's already merged
	- Added a new patch to use correct style for SPDX License in .h

Sudeep Holla (6):
  firmware: arm_scmi: Use the correct style for SPDX License Identifier
  firmware: arm_scmi: Align few names in sensors protocol with SCMI
    specification
  firmware: arm_scmi: Remove extra check for invalid length message
    responses
  firmware: arm_scmi: Fix few trivial typos in comments
  firmware: arm_scmi: Use the term 'message' instead of 'command'
  firmware: arm_scmi: Check if platform has released shmem before using

 drivers/firmware/arm_scmi/common.h  | 10 +++++-----
 drivers/firmware/arm_scmi/driver.c  | 24 +++++++++++++-----------
 drivers/firmware/arm_scmi/sensors.c | 28 +++++++++++++++-------------
 include/linux/scmi_protocol.h       | 14 +++++++-------
 4 files changed, 40 insertions(+), 36 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
