Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080EF628DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 21:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1z7o2xCTBB2DHnblrtmgHchAiLFDv0FPnhoh9qhu0pg=; b=qAb
	ILTj6/1Ayzwmqv2wbzCYwbcN2bgMFo6H6PhAVbVFluPfG2myP2lzZ7HIKCCxw4g84y0zRqY7KxVJO
	MDLi8qmQ4St4Fo0mHjfQXQq1woT/eCGDAujF6DvW1lnb1JnZ4O4C7f3d0KRt6gRT5QiD2WojxkyGB
	x55NtJXOMjutVF4v9JDAxyiy4i56amTtlCDHKCiDbBH1P5EHMY+nUulmM/MYdfIMRuGEfylq1NN63
	sdos1EPXbdBC//3Q9w3/pWn/tOrINbtxmHa0DPuRP158Y2MR087fQmGUOE1Zp3vjW1wv4C46KJ4YN
	oZY9He+VISaU2xw0JxBrnKGU7+rPu0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkYt6-0004jW-Ux; Mon, 08 Jul 2019 19:01:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkYsg-0004iu-15
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 19:00:55 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9E7FD60FEB; Mon,  8 Jul 2019 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562612453;
 bh=3cZ120rfFscLjFKv5nknwSkEb05XjN6zsQhL+0Uk7mA=;
 h=From:To:Cc:Subject:Date:From;
 b=g1j6LoPaI/+wTOsEw8t+ilntBs99VUFNL2oAqVgkWMt7JpF/I6zD4AusUlN+gbTIN
 KhIxdl59ekJSr0ovtRKdFugLystTw/kd7nrVGV8R3ZBHh0CeNToUU3E2WnXHeBLywI
 On01R9Eygl+8egTxC+YzUsCatNy0mC1kglBnJ6Nw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7647C60E3F;
 Mon,  8 Jul 2019 19:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562612452;
 bh=3cZ120rfFscLjFKv5nknwSkEb05XjN6zsQhL+0Uk7mA=;
 h=From:To:Cc:Subject:Date:From;
 b=RlxX3GiGklNIZkgVbwds5vGc/pv3hVX+zqgSNP+HNfsm24k64LSUODh3aC3fMWjJL
 X0hcGZee8Nkg+jE3I1wgIg51HApyOTNFneQmhTD8a5DQnMbqfk4jLyPETtxuDtki4E
 Q9prYAIIOOnhj6gIaNiBYZLNVn2siZMldjiyVJXw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7647C60E3F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [RESEND PATCH v2 0/3] iommu/arm-smmu: Split pagetable support
Date: Mon,  8 Jul 2019 13:00:44 -0600
Message-Id: <1562612447-19856-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_120054_100031_5B9F676F 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, jean-philippe.brucker@arm.com,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 dianders@chromium.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, hoegsberg@google.com,
 linux-arm-kernel@lists.infradead.org, Zhen Lei <thunder.leizhen@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, baolu.lu@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(RESEND because I fat fingered a email address and I didn't want everybody to
get a bunch of SMTP errors)

This series implements split pagetable support for arm-smmu-v2 devices. You have
seen this code before as part of [1] but I split it apart from the other
features to make it easier to review / merge.

This series adds a new format type to io-pgtable-arm to enable TTBR0 and
TTBR1. Because of the way that the registers are mixed up it makes the most
sense to enable them together instead of trying to create two different
pagetables and merge them together later in the arm-smmu drive.

This will be used later by the drm/msm driver to enable split pagetables
as part of the effort to implement per-context pagetables [2].

Thanks,
Jordan

[1] https://patchwork.freedesktop.org/series/57441/
[2] https://patchwork.freedesktop.org/patch/307616/?series=57441&rev=3


Jordan Crouse (3):
  iommu: Add DOMAIN_ATTR_SPLIT_TABLES
  iommu/io-pgtable-arm: Add support for AARCH64 split pagetables
  iommu/arm-smmu: Add support for DOMAIN_ATTR_SPLIT_TABLES

 drivers/iommu/arm-smmu.c       |  16 ++-
 drivers/iommu/io-pgtable-arm.c | 261 +++++++++++++++++++++++++++++++++++++----
 drivers/iommu/io-pgtable.c     |   1 +
 include/linux/io-pgtable.h     |   2 +
 include/linux/iommu.h          |   1 +
 5 files changed, 256 insertions(+), 25 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
