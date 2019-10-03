Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6EEC9CF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oJY0s8T/zDKb10DDbTUCWXCBe3MEDV5/Xq57rZKyTiE=; b=u75E+so2oT2ka1Gj10ZdzvlSmN
	60sIP0dBwzmboKDZgZ6jKn2azbiUbv+LJr9sBA/6zllXi/Qzccz8Y7G7WP35ruJexwHvSBtybdXQA
	1JlakQ8yQUqiiqi+9HVzW+Esei0OfSXHKsrLAIwmGdAPq4dQcp0c7Ii1yAU0FqeEyQNny1ew2wi3R
	O43GM00bI90jbSRMEgP9/rRaQxU+LWJUL2yj9PujOOonPfH6bw7wyFwp1dpiEJcXwcZf0TGDMGciK
	3BO6sNMsegaGBpCJ1uiJIprAQRQXkU9J9sqG9a4cI0DrR0y83g5MYScOuVV5zfn4YfFrfAuvIKzx2
	gwjnZSdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz2X-0007i5-K8; Thu, 03 Oct 2019 11:12:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz1w-0007Br-ML
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:12:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52C471000;
 Thu,  3 Oct 2019 04:12:20 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34C173F706;
 Thu,  3 Oct 2019 04:12:19 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] docs/arm64: elf_hwcaps: Document HWCAP_SB
Date: Thu,  3 Oct 2019 12:12:10 +0100
Message-Id: <20191003111211.483-4-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191003111211.483-1-julien.grall@arm.com>
References: <20191003111211.483-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041220_769999_896BDBA5 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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
Cc: Jonathan Corbet <corbet@lwn.net>, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All the hardware capabilities but HWCAP_SB is not documented in
elf_hwcaps.rst. So document it.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 Documentation/arm64/elf_hwcaps.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/arm64/elf_hwcaps.rst b/Documentation/arm64/elf_hwcaps.rst
index 9ee7f8ff1fae..7fa3d215ae6a 100644
--- a/Documentation/arm64/elf_hwcaps.rst
+++ b/Documentation/arm64/elf_hwcaps.rst
@@ -155,6 +155,9 @@ HWCAP_FLAGM
 HWCAP_SSBS
     Functionality implied by ID_AA64PFR1_EL1.SSBS == 0b0010.
 
+HWCAP_SB
+    Functionality implied by ID_AA64ISAR1_EL1.SB == 0b0001.
+
 HWCAP_PACA
     Functionality implied by ID_AA64ISAR1_EL1.APA == 0b0001 or
     ID_AA64ISAR1_EL1.API == 0b0001, as described by
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
