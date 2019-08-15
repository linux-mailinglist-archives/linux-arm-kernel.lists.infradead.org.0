Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B2F8EFAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ej+Yw6UZAoHBB2VqhPT/WMc2zANYG2uMcrz/FiDBHTM=; b=q4S0V7akOBIOY1
	C7vpNBdhXTvAypLsYyJH69Q4mN/WEBWrU/re8PTMSlQG81bYmzcDLcNqwWJx7RhRC2vROF7nvw7e9
	vAqwjNZBcdv0RkILjKlNeG/giKcSEVePStZBFdouNbbAMw23Er3UEX3/VBs1uerfAsrjwugPzhrUv
	cGrnJO3s/k/mLI1TkTKBlFec8k9yI5sOl+VpGtfuTqKwlofdsDoq/rdYhhFB/AX/9tmGUNQLb4pIa
	NARPjBF9lFts9eXDAUikSDtTMaCGeHznZMZAtGimB5P/+sfQyWABjKtOeCH1jpO37/8DcH2em/8a8
	BhPFg6RGsy/7QqJY6+1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHwH-0003kB-PF; Thu, 15 Aug 2019 15:45:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHvC-0002IS-Jl
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:44:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 956C81596;
 Thu, 15 Aug 2019 08:44:13 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E56B43F706;
 Thu, 15 Aug 2019 08:44:11 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH v8 3/5] arm64: Change the tagged_addr sysctl control semantics
 to only prevent the opt-in
Date: Thu, 15 Aug 2019 16:44:01 +0100
Message-Id: <20190815154403.16473-4-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
In-Reply-To: <20190815154403.16473-1-catalin.marinas@arm.com>
References: <20190815154403.16473-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_084414_687714_90AA310D 
X-CRM114-Status: GOOD (  13.13  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

First rename the sysctl control to abi.tagged_addr_disabled and make it
default off (zero). When abi.tagged_addr_disabled == 1, only block the
enabling of the TBI ABI via prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE).
Getting the status of the ABI or disabling it is still allowed.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/process.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 76b7c55026aa..03689c0beb34 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -579,17 +579,22 @@ void arch_setup_new_exec(void)
 /*
  * Control the relaxed ABI allowing tagged user addresses into the kernel.
  */
-static unsigned int tagged_addr_prctl_allowed = 1;
+static unsigned int tagged_addr_disabled;
 
 long set_tagged_addr_ctrl(unsigned long arg)
 {
-	if (!tagged_addr_prctl_allowed)
-		return -EINVAL;
 	if (is_compat_task())
 		return -EINVAL;
 	if (arg & ~PR_TAGGED_ADDR_ENABLE)
 		return -EINVAL;
 
+	/*
+	 * Do not allow the enabling of the tagged address ABI if globally
+	 * disabled via sysctl abi.tagged_addr_disabled.
+	 */
+	if (arg & PR_TAGGED_ADDR_ENABLE && tagged_addr_disabled)
+		return -EINVAL;
+
 	update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
 
 	return 0;
@@ -597,8 +602,6 @@ long set_tagged_addr_ctrl(unsigned long arg)
 
 long get_tagged_addr_ctrl(void)
 {
-	if (!tagged_addr_prctl_allowed)
-		return -EINVAL;
 	if (is_compat_task())
 		return -EINVAL;
 
@@ -618,9 +621,9 @@ static int one = 1;
 
 static struct ctl_table tagged_addr_sysctl_table[] = {
 	{
-		.procname	= "tagged_addr",
+		.procname	= "tagged_addr_disabled",
 		.mode		= 0644,
-		.data		= &tagged_addr_prctl_allowed,
+		.data		= &tagged_addr_disabled,
 		.maxlen		= sizeof(int),
 		.proc_handler	= proc_dointvec_minmax,
 		.extra1		= &zero,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
