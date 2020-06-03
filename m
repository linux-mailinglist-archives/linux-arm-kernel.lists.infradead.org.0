Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A061B1EC8C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 07:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RZJe15EyfVIpeZLic4bfAUVGXsAf5/R8TvAXlrtGnxg=; b=vAN
	M8AgTN3fRuBvSOXOHbyefPUxvOL9F5y7pARR4ntd1cNwgoxG3EQu4H+yNzVCsbDAMmk3LqVf2I/8I
	/tVEJ2um2cLQnr0hEz6v43QLRz35xFUrBY6Mrd5W1ddJ13HihzydqH0hSc5nbDcC5bI6QjrHS1JLM
	vYt/1n7dVC6D6csLjqwlkiPGJtDQgoLtxA0C5GX/AHlas/FC01veKZMxAkx3gKFfGimHF6RiOy8ws
	y1RSI82j7Fo7CfdEv6Usfbp2HXM7diQEJFyiB2pC0u24NIZFjd8R8EK1JG9wpJT9Ndv6HUyrKMAk8
	hliQnuvnpeJS/mUg3XQxqFAz+PPL0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgLv6-00054p-SG; Wed, 03 Jun 2020 05:26:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgLum-0004wM-BW
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 05:26:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E23D200D4F;
 Wed,  3 Jun 2020 07:26:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ADEFC200D21;
 Wed,  3 Jun 2020 07:26:06 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 218E9402E4;
 Wed,  3 Jun 2020 13:26:02 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: jassisinghbrar@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Handle mailbox clock/power management related issues
Date: Wed,  3 Jun 2020 13:15:41 +0800
Message-Id: <1591161344-12885-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_222612_535248_0F5786C1 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current i.MX mailbox driver mainly supports 2 series i.MX SoCs with
different architecture, one is for i.MX8X platforms with SCU inside,
the other is for i.MX6/7/8M series without SCU.

For i.MX8X, 2 types of MU are supported, one is for system IPC, such kind
of MU has no clock/power assignment, they are both controlled by SCU. The
other is for application, such kind of MU has no clock assignment, but have
power domain assignment, consumers need to call mailbox APIs to manage MU
power in runtime;

For i.MX6/7/8M, MU clock or power could be assigned based on different SoCs,
but all the MUs are for application, consumers need to call mailbox APIs to
manage MU clock/power in runtime.

For the power management related issue mentioned above, they are as below:

1. clock should be managed in runtime to make sure MU clock/power can be off
   on i.MX6/7/8M platforms;
2. ONLY system IPC MU needs to have IRQF_NO_SUSPEND flag set, other application
   MU no need to have this flag, since the MU clock/power is OFF in noirq
   suspend phase and if MU interrupt arrives, with IRQF_NO_SUSPEND flag set,
   the MU ISR will try to access MU register and lead to system hang because
   of clock/power disabled;

To distinguish these different MU instances, use MU's clock/power assignment
status to decide whether to save/restore MU context during suspend/resume,
whether to have IRQF_NO_SUSPEND flag set, etc..

patch #1 is identical with https://patchwork.kernel.org/patch/11581215/, the
patch #2/#3 depend on #1, so I resend #1 in this series to make them as a whole
series.

Anson Huang (2):
  mailbox: imx: Add runtime PM callback to handle MU clocks
  mailbox: imx: ONLY IPC MU needs IRQF_NO_SUSPEND flag

Dong Aisheng (1):
  mailbox: imx: Add context save/restore for suspend/resume

 drivers/mailbox/imx-mailbox.c | 72 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 69 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
