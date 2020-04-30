Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A591E1C020E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRFkgMM/4/tzkfRBbOcV3M7sB1uHtGi5SsPe4VY1qW4=; b=cSPvCZ7SendKoC
	Nd65gWPLS0g/KSM6Gg1A4zDA/tS8gtpKC5VJHKwrfYOrDYKG7pbucOvfZu71j6REZjprZxHW88C4j
	n2DSubSJyWUk/jST5BNwUeLOPgEiLfxQpUxK79XFdXowlHSsaYAuL6wRkBDwv5oVn+8TiM85qhzqS
	KQ0fTCJb91xdZ8zDFYiCWDoCJvEgeuGSzFVRjlqoFH45OmkHCQZk8hlra3IOCuLyvjjj3lKOOGoJ0
	+lVxSC/NaWzVMFZUm1nb6zL0JwzVFImqaVHiDCeHhrgwumRfWQdD+oVXwu0Nf+zaAToWohTAymnNk
	aaJNoy8gfYfSNdPX8Phw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBto-0003kS-Gc; Thu, 30 Apr 2020 16:18:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBtW-0003iA-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:18:40 +0000
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00A312495F;
 Thu, 30 Apr 2020 16:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588263518;
 bh=UpE+dTlKuyikMljGlNf1UxWAD7Ndhw2XMb6I2Wi6qoE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T7utN7vZwCW5xwUsZz0sn5YVysSacu6/KBk5tPG2P8St6gezMIk8BjvS11mxMKZld
 KnvVk/WouHMQedTao6KKA5jZCE7QbAbmT2oh71ntk7HXc1YspWZ+EV+AoFwE+St0kd
 fjDZEu3pMFRxZgSpUBoqZ/LbdqNzyQ5JMjPmeTgw=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jUBtU-00Axhc-7E; Thu, 30 Apr 2020 18:18:36 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v4 13/19] docs: arm64: convert perf.txt to ReST format
Date: Thu, 30 Apr 2020 18:18:27 +0200
Message-Id: <635734c88d06cafc73828aefb9619fe8de61fd5c.1588263270.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <cover.1588263270.git.mchehab+huawei@kernel.org>
References: <cover.1588263270.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091838_707245_F9BEAD88 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This file is almost in ReST. All it needs is a rename and
adding a :field: for the two fields at the beginning
(author and date).

While here, add a proper SPDX header, and use the standard
markup for document titles, just for consistency.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/arm64/index.rst              | 1 +
 Documentation/arm64/{perf.txt => perf.rst} | 7 +++++--
 2 files changed, 6 insertions(+), 2 deletions(-)
 rename Documentation/arm64/{perf.txt => perf.rst} (95%)

diff --git a/Documentation/arm64/index.rst b/Documentation/arm64/index.rst
index 09cbb4ed2237..d9665d83c53a 100644
--- a/Documentation/arm64/index.rst
+++ b/Documentation/arm64/index.rst
@@ -14,6 +14,7 @@ ARM64 Architecture
     hugetlbpage
     legacy_instructions
     memory
+    perf
     pointer-authentication
     silicon-errata
     sve
diff --git a/Documentation/arm64/perf.txt b/Documentation/arm64/perf.rst
similarity index 95%
rename from Documentation/arm64/perf.txt
rename to Documentation/arm64/perf.rst
index 0d6a7d87d49e..9c76a97baf28 100644
--- a/Documentation/arm64/perf.txt
+++ b/Documentation/arm64/perf.rst
@@ -1,8 +1,11 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=====================
 Perf Event Attributes
 =====================
 
-Author: Andrew Murray <andrew.murray@arm.com>
-Date: 2019-03-06
+:Author: Andrew Murray <andrew.murray@arm.com>
+:Date: 2019-03-06
 
 exclude_user
 ------------
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
