Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E13162809
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 20:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kIz4vn8DDdE8W4pMs9zreDjK1Osm1z63Mx6I2jyeX1M=; b=Vzr
	MT3AxwnG4piAgUHYKE7mXfL4FundYgG7h9hDCaPh6uBMwlQCJGv65OmHsj2wXyO43J7Yb6OfWVooW
	XdZMwEVdCmotVfpsAawG5X2IRD7Uk5gC4fL63dlNgX3q9OBRyPMRgb2lWzWGm1P4z6evyaJ3lBX0D
	tWBIjxzImN3RNRwYbYZ5onfS8IRVXA5QHKqAiZ5UApfc2FF5lWmhNhXfptcfaK56G/jPyXPPPPQUW
	gVS5UUbZyXNTtE7I4sh8xOJZyPiyQh9TA4Y0g/blo2PkrGc230ASP+ylF1Va1Dxv3NTUaKPBE432D
	j44OFi1ruWAVrPWoUMIsr645OZQPIVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkY64-0002Q0-P8; Mon, 08 Jul 2019 18:10:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkY5q-0002Oz-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 18:10:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EADD260F3F; Mon,  8 Jul 2019 18:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562609424;
 bh=RYakAtzfd68XjS32CGKsM0PJUck7IxLNDzXB/YezXpk=;
 h=From:To:Cc:Subject:Date:From;
 b=Ad8kI3O0+s4YwlFbID8kBOAt4b+HDkQfXy2QX0s0abp4uoLt2JeVkl/JMoUFDReJx
 QcUmPJrxrh2tq5JHtIuKztBpxSxPNlycZqPUsd7JE2ThrlOES8O+KGPYSfOAjdK2/g
 eM6KtmEGxjI1Fjn3YPRMS2eXN4+9Rr+RgTxFDfmk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D16A0602F0;
 Mon,  8 Jul 2019 18:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562609424;
 bh=RYakAtzfd68XjS32CGKsM0PJUck7IxLNDzXB/YezXpk=;
 h=From:To:Cc:Subject:Date:From;
 b=Ad8kI3O0+s4YwlFbID8kBOAt4b+HDkQfXy2QX0s0abp4uoLt2JeVkl/JMoUFDReJx
 QcUmPJrxrh2tq5JHtIuKztBpxSxPNlycZqPUsd7JE2ThrlOES8O+KGPYSfOAjdK2/g
 eM6KtmEGxjI1Fjn3YPRMS2eXN4+9Rr+RgTxFDfmk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D16A0602F0
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v2 0/3] iommu/arm-smmu: Split pagetable support
Date: Mon,  8 Jul 2019 12:10:15 -0600
Message-Id: <1562609418-25446-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_111026_359315_CCD6DE6E 
X-CRM114-Status: GOOD (  11.50  )
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
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, dianders@chromimum.org, hoegsberg@google.com,
 Zhen Lei <thunder.leizhen@huawei.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series implements split pagetable support for arm-smmu-v2 devices. You have
seen this code before as part of [1] but I split it from the other features
to make it easier to review / merge.

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
