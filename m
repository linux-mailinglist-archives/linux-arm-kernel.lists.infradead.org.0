Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B19C1B0FF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dB+JNF42n9NvoDfZg4MikQ8Y9BACOyGC1xNw3647HQY=; b=c2cLhAUDkE0VdM0YxUJr6EE9BB
	SLCCgFOIIEQBHsDzp5o/s1lruUCKkjBjs9NoNwoBPaJFZc4bfAhM18e7dqoiMniqyvY5d7zE5yUbE
	SgoGcIfkbhlnrE8ULy03TPlUfEqL751+zeVghiRddf3BT50bMXGuWGD7ZhXWbxr/8vVnBjNo8A8+6
	9y1Jh+8PKbSwgnEWKe/uSwo/roc0nCF0xFn1Tjl8ZiBVyHnOPAKpSVhAr+2q0vBWNNyj6/8c3Gwgp
	Y7fl+9Q2Q2l/rZExTylbBQnnoN+AGFEzq8O169vtMyQ2VZdbhtMecJKUyS8W34P+gNhmCh5Kihvf5
	xSNy+A0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYHZ-0008NS-PE; Mon, 20 Apr 2020 15:24:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYGi-0007jG-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:23:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C173101E;
 Mon, 20 Apr 2020 08:23:30 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E35B73F73D;
 Mon, 20 Apr 2020 08:23:29 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] firmware: arm_scmi: Clear channel on reception of
 unexpected responses
Date: Mon, 20 Apr 2020 16:23:13 +0100
Message-Id: <20200420152315.21008-3-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420152315.21008-1-cristian.marussi@arm.com>
References: <20200420152315.21008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082333_009569_7453F148 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: cristian.marussi@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When an unexpected response message is received we currently warn the user
and bail-out: ensure to also free the channel by invoking the transport
independent operation .clear_channel()

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 90c7a0bb62ef..31c6a89a6edd 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -242,6 +242,7 @@ static void scmi_handle_response(struct scmi_chan_info *cinfo,
 	/* Are we even expecting this? */
 	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
 		dev_err(dev, "message for %d is not expected!\n", xfer_id);
+		info->desc->ops->clear_channel(cinfo);
 		return;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
