Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5646921DFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 21:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XKpmMX32V7Wrvqmq2tTMB+26fcGbmRqShnM3sJZD8Gw=; b=AMm
	AjUlSc/dWed60b4qR9v4RxRRhtvOpjV/9isMQzUD0L2uHDcPKMgXJOINYb3foN3DJfUhJlpuvQldI
	qJqJBwOZuumkziyl50lYWVnPAW3+TlkPwEY963LAkite6NJ44d59q8XHBcfBi4E84auF1cV8Tiadc
	L9waS6RdcSeLATXZS2PyQsn9sOYpEWxgp+3FlPnCc64d5lB7iNpFY8ydm2hWhF7bw0YgZfm5m5bst
	pMruH9gwd7OjTVR4+ikGzEPELeVc7TA6Kpa6KxBWU8sAumVi7O9BGtmAB3q5mFfjdTxJk0ulK/KQA
	I9ROv74uMsN8C46izQL27SaxiZxtcUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRi9g-0004XH-88; Fri, 17 May 2019 19:04:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRi9Z-0004O6-RU
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 19:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rIhU5aTgtzoUCNxJiklVzrpHV4QE1hOPANElVQCtAL0=; b=qu4TZwyQc9CFxDZ7JSTlnhlJ0
 oxTzYP1e14XF6Z0aDwsmZfa4Oa9EXc+mcQLTdqeJdfunEl3xT8myAgv+gWU1vIzIzBplzlfmuBJrN
 Bets8ufs2vCzLOqzpinhBN5L73Bi9s5PyMPo9yfvTHLHjcsEqBaXN9YFlmlO72yXcsvigeAFrgPKo
 M4qYa5TzOZdCtyboqqgYSVPmk7UiYndXhmjwY1UIbJ1kOvxG9V6lP4zg7n4UCS1iTqQD4Ulh4UFFb
 hO9IsHupPR+CFOXEMOE2/hFaUxJyxfNFE3tuYpvlqnxhV31hZNp7L2+rYjyvex8RzS2KmrBtjFtgg
 2O1CejeZg==;
Received: from smtp.codeaurora.org ([198.145.29.96])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhu3-0006J8-39
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:48:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 87A026179C; Fri, 17 May 2019 18:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118899;
 bh=35zZ5q4uMp/3q4Z0JDCSvFDAAIE0REjNe04GsZlSd9s=;
 h=From:To:Cc:Subject:Date:From;
 b=ZK8ChJIaS2QzJz9uDPxWDCvMxjLxCEfuHkxRo4tm6KG+/DWPf+5G6e//KUN9aTjij
 omS1hEUQrUYrEFvTg31pvqk1KIHES8tucv9KS75NWKxpIo/iWJfd2JDgffyvupkFFe
 JwolzZsvMkqTEBRQRslf1cgLjbKG8c0N9cM1O7lA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from isaacm-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: isaacm@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 736716179C;
 Fri, 17 May 2019 18:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118891;
 bh=35zZ5q4uMp/3q4Z0JDCSvFDAAIE0REjNe04GsZlSd9s=;
 h=From:To:Cc:Subject:Date:From;
 b=SOz/6r03g7SCcJGbSThbJKQnFy/ydy//GRaazg08v/2nnzbeA2kfwt+7DU/h5VOl4
 xXmNB0yQSIchcnRZzMOY3UoRMEbtrWtzv2tggQZPxIPf3+VznmC4rVcRLPMToj7grj
 pn7Xia0PvsazfTd/chmiqRi5k+mz1Ap3FJqYLL18=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 736716179C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=isaacm@codeaurora.org
From: "Isaac J. Manjarres" <isaacm@codeaurora.org>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC/PATCH 0/4] Initial support for modular IOMMU drivers
Date: Fri, 17 May 2019 11:47:33 -0700
Message-Id: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_194823_431613_03416E64 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Isaac J. Manjarres" <isaacm@codeaurora.org>, kernel-team@android.com,
 robin.murphy@arm.com, joro@8bytes.org, will.deacon@arm.com,
 lmark@codeaurora.org, robh+dt@kernel.org, bhelgaas@google.com,
 frowand.list@gmail.com, pratikp@codeaurora.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds initial support for being able to use the ARM
SMMU driver as a loadable kernel module. The series also adds
to the IOMMU framework, so that it can defer probing for devices
that depend on an IOMMU driver that may be a loadable module.

The primary reason behind these changes is that having the ARM
SMMU driver as a module allows for the same kernel image to be
used across different platforms. For example, if one platform
contains an IOMMU that implements one version of the ARM SMMU
specification, and another platform simply does not have an
IOMMU, the only way that these platforms can share the same
kernel image is if the ARM SMMU driver is compiled into the
kernel image.

This solution is not scalable, as it will lead to bloating the
kernel image with support for several future versions of the
SMMU specification to maintain a common kernel image that works
across all platforms. Having the ARM SMMU driver as a module allows
for a common kernel image to be supported across all platforms,
while yielding a smaller kernel image size, since the correct
SMMU driver can be loaded at runtime, if necessary.

Patchset Summary:

1. Since the ARM SMMU driver depends on symbols being exported from
several subsystems, the first three patches are dedicated to exporting
the necessary symbols.

2. Similar to how the pinctrl framework handles deferring probes,
the subsequent patch makes it so that the IOMMU framework will defer
probes indefinitely if there is a chance that the IOMMU driver that a
device is waiting for is a module. Otherwise, it upholds the current
behavior of stopping probe deferrals once all of the builtin drivers
have finished probing.

The ARM SMMU driver currently has support for the deprecated
"mmu-masters" binding, which relies on the notion of initcall
ordering for setting the bus ops to ensure that all SMMU devices
have been bound to the driver. This poses a problem with
making the driver a module, as there is no such notion with
loadable modules. Will support for this be completely deprecated?
If not, might it be useful to leverage the device tree ordering,
and assign a property to the last SMMU device, and set the bus ops
at that point? Or perhaps have some deferred timer based approach
to know when to set the bus ops? 

Thanks,
Isaac

Isaac J. Manjarres (4):
  of: Export of_phandle_iterator_args() to modules
  PCI: Export PCI ACS and DMA searching functions to modules
  iommu: Export core IOMMU functions to kernel modules
  iommu: Add probe deferral support for IOMMU kernel modules

 drivers/iommu/iommu-sysfs.c | 3 +++
 drivers/iommu/iommu.c       | 6 ++++++
 drivers/iommu/of_iommu.c    | 8 ++++++--
 drivers/of/base.c           | 1 +
 drivers/pci/pci.c           | 1 +
 drivers/pci/search.c        | 1 +
 6 files changed, 18 insertions(+), 2 deletions(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
