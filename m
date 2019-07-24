Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B0472DEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1zTuRk98pGQfq0rN6DHvhcLBsQxcuGO8GVESQi8Xk/8=; b=HjvlG12niCP+Z2
	cwea4bRFLlXbgyx7VaCusfSQvwuFoPaGZNcCIaAdSfrvZJkNdUB0SAYw9TNIHl9pmtX6KfSAow+l8
	1fv85WAfdvZzdVIQhTl6nm8vrV+73I6UK29T05kDN1B/tcWv45GnHZiXrTE+byXp7EYoyJcLz3jF3
	MmpXVk/gA3PVpPtolOSr9FtYcn+OzXhAGJUSZA733wy939DuflfhkP/JUHJYbkhaQdvxvwPN3sFWb
	uj/FoshHAi9pHykoMALY0p6pyywXlqvlSBbVP0VnCWS2Y8oUV3SxdoXQXuiHdMVco/jY2O61qUP/j
	id6q9/hJ17N3Trl9ghTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFgJ-0005LV-7G; Wed, 24 Jul 2019 11:43:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFg7-0005Ka-TE
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:43:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F3F9337;
 Wed, 24 Jul 2019 04:43:27 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A257D3F71A;
 Wed, 24 Jul 2019 04:43:26 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] coresight: tmc error handling and misc fixes
Date: Wed, 24 Jul 2019 12:43:07 +0100
Message-Id: <20190724114312.1024-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044327_989476_FFFC8566 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: coresight@lists.linaro.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is a collection of fixes and cleanups I gathered from trying
to get coresight up on a new platform.

The TMC-ETR reports MemErr in the status register if there was an error
in in the AXI transaction. So far we have ignored it and assumed that we
are running on perfect platforms. Let us add the support for handling
the MemErr reports and discard the buffer in such case. Also verify that
the ETR can do non-secure transactions on the platform at probe time,
in order to avoid presenting the user with a non-useable ETR.

Suzuki K Poulose (5):
  coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute
  coresight: funnel: Convert pr_warn to dev_warn for obsolete bindings
  coresight: etr_buf: Consolidate refcount initialization
  coresight: tmc-etr: Handle memory errors
  coresight: tmc-etr: Check if non-secure access is enabled

 .../hwtracing/coresight/coresight-etm-perf.c  |  1 +
 .../hwtracing/coresight/coresight-funnel.c    |  2 +-
 .../hwtracing/coresight/coresight-tmc-etr.c   | 26 +++++++++++--------
 drivers/hwtracing/coresight/coresight-tmc.c   | 12 +++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  4 +++
 5 files changed, 33 insertions(+), 12 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
