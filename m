Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFA51C1A5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=18GsUzlCIHq/rB5UOwqD+X8Peu3eWxN+J9YkNazGn/c=; b=AOH
	7RQ4giPglCERwm7psfKk9k47K8IKNxV7AJ6kALYJpxhibkZT06bcJUBxj5Zkty1pWyoZS3Ho9hSKz
	OteIRo3H/UUTvptc8373XQoEcehLlh3JhG8ahqNNod4ySG1uSjpN6/0kefZXe6AbyfIjH51jzV7s/
	1Gt0on5nv9p6ZZg7pSI0nF37zpxo2fLsW1v1KTUWLBYIiATkwem5LNhZSWGl8R7JrNu3IQdPnE+OO
	37mDRPU1g5x6msE0WjMNV7h39Iu/wDcl1/nSphq4BlhKcLOSnacWObU0oDQmVywwlR5Pifqrp1+AS
	lAc03lMaOMirO3HfYlD0qDs2dFRLF7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYFQ-0006jb-S7; Fri, 01 May 2020 16:10:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYF9-0006ap-Q8
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:10:29 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DA7B208DB;
 Fri,  1 May 2020 16:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588349425;
 bh=WdDDo0kFFFObg+/uRnNWj+161scQaRmsJMatdV7pV5U=;
 h=From:To:Cc:Subject:Date:From;
 b=MA3fRVpgbAwk4MbkZocX2oK8yNI5ti+nmUYRwldUlDMHT8FS7vzyfXKBySKSJw6Sv
 j2ONn/PcdhgJQky4VdZfA4hNPog25MFejK61c769W9psABCI0DJ6M02r6MCTWDuTep
 mJd1gZUoZpGNGP3YejCeuN7NBeptjthM0XnXMM7c=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] ACPI/IORT: rework num_ids off-by-one quirk
Date: Fri,  1 May 2020 18:10:12 +0200
Message-Id: <20200501161014.5935-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_091027_877595_2E6FF575 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-acpi@vger.kernel.org,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the ACPI OEM ID matching based IORT quirk for the ID region size
ambiguity with runtime handling of this condition.

This is based on the observation that we only care about this when it
causes ambiguity regarding the output reference, which means that we
will have more than one match for the input ID. In this case, we can
just disregard the one at the end of a multi-ID region: if we hit it
first, we record it tentatively but allow a subsequent match to
supersede it. If we hit the correct match first, there is nothing we
need to do.

Changes since v1:
- print FW_BUG error to the kernel log when a duplicate match is found
- ignore duplicate matches unless they occur at the start of a region
  (for compatibility with broken systems that might exist that happen to
  work today because the first match is always chosen)

Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
Cc: Will Deacon <will@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>

Ard Biesheuvel (2):
  Revert "ACPI/IORT: Fix 'Number of IDs' handling in iort_id_map()"
  ACPI/IORT: work around num_ids ambiguity

 drivers/acpi/arm64/iort.c | 95 ++++++++------------
 1 file changed, 35 insertions(+), 60 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
