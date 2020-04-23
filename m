Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B727F1B584C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AoeGgVOU8IeuPcfq2XOz9tZ2Iw4u4sAuaH4a7l0mhd4=; b=t0K6s8UhjzT5ry
	syvkyJnLtma7YIx7WJL3BF61eyU1KwFblFEp1JY1AWSN/tqAAdWlZq10EwpvozIoBHRWXr0mTMCRp
	JFs438JlWmcfgjY5JXESWGNQqBUsnqLfyVINgyafwPa6rBiEsx+rauTrmM31N3q6fwckQcrbNhGRM
	wip7sxEQOVSnwQGy8ZQURXDUGfarmhOrLQIgtBbIicPpj5gYjZXhwhDIqDpx9fh3R9mnE61kXebDK
	lSQhrjkjJj+hWKpjv/NEUSl2k8AEgnsNCZ+vbwqNmzQ6T6xR8SsWAGbsn3h/qjd5riAtXw237W9B0
	9oYlm7UqjkKClBge1Sdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYII-0000WG-RV; Thu, 23 Apr 2020 09:37:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYIA-0000Vi-Hg
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:37:11 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E10A12076C;
 Thu, 23 Apr 2020 09:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587634629;
 bh=VHdWH0zB7VKklrgWf6/I9gPE7c1O9QGH2AY15eddvOQ=;
 h=From:To:Cc:Subject:Date:From;
 b=C7X2kaVkdJOrp3c2Ka5ws1WRXZH9eDJnBrKXCa0K2B1nPVYnlxtzHLekR0az58MPu
 1PnCfvO0CGtkTI42HuPoFo5S//ARQGgIkSGHiFkS6FP/D2KNCNY5KzCwrCjQNJTSwF
 tiwxdJBLbkZ93lsj9YJK8JIUc3gWUuxWCoycNIxk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: docs: Mandate that the I-cache doesn't hold stale
 kernel text
Date: Thu, 23 Apr 2020 10:36:58 +0100
Message-Id: <20200423093658.10602-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_023710_604873_9D1D1D60 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 kernel-team@android.com, Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although we require that the loaded kernel Image has been cleaned to the
PoC, we neglect to spell out the state of the I-cache. Although this
should be reasonably obvious, it doesn't hurt to be explicit.

Require that the I-cache doesn't hold any stale entries for the kernel
Image at boot.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 Documentation/arm64/booting.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
index a3f1a47b6f1c..d063c05d5fb0 100644
--- a/Documentation/arm64/booting.rst
+++ b/Documentation/arm64/booting.rst
@@ -173,7 +173,8 @@ Before jumping into the kernel, the following conditions must be met:
 - Caches, MMUs
 
   The MMU must be off.
-  Instruction cache may be on or off.
+  The instruction cache may be on or off, and must not hold any stale
+  entries corresponding to the loaded kernel image.
   The address range corresponding to the loaded kernel image must be
   cleaned to the PoC. In the presence of a system cache or other
   coherent masters with caches enabled, this will typically require
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
