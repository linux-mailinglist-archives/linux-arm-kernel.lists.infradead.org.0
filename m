Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4625B194343
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ip9zxB/5fVKJh6m8KzBmOCftqqmDcYV25sdUC09/Udk=; b=ZEx
	MzByKnUZRy8aUm/gPehDVY5yWWh73ctXdhyo9vFzUQZpGBLb14raIiz4qjRMDTg0zjXb9OFKhlcBk
	yDtdHAnWgO8jck4CSVmL5GwMVvSjAqNMF6kZ4c5/oXcZEjHnURgA3SmdBvqt78d96ayAiYKOv53z9
	LJ28Papwm3H7t7JsyMRrxQLQE3GobOF2/Y/U4rFxBWIuUD4yM644Bv7Poiz1SzHhDK5/5hU/rrnpB
	zhOY/zjw5fkcSwFww2kD2jl+kAxV2peEeIX7JCgPJo+6IGprbDGsxRekaQ2y02DY7SICEGCroaNn2
	AyrVmbCbiu/w33ICK9jpPmQ9NlQeCuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUUh-0007AZ-IG; Thu, 26 Mar 2020 15:32:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUUT-00078y-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:32:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B3657FA;
 Thu, 26 Mar 2020 08:32:14 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6700E3F71E;
 Thu, 26 Mar 2020 08:32:12 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] init/kconfig: Add LD_VERSION Kconfig
Date: Thu, 26 Mar 2020 21:01:59 +0530
Message-Id: <1585236720-21819-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_083217_610900_C3CA8789 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This option can be used in Kconfig files to compare the ld version
and enable/disable incompatible config options if required.

This option is used in the subsequent patch along with GCC_VERSION to
filter out an incompatible feature.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---

This patch series is based on Linux arm64 for-next tree [1]. More details
of this work can be found in the thread [2].

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
[2]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-March/720257.html

 init/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/init/Kconfig b/init/Kconfig
index 452bc18..68ddbcd 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -17,6 +17,10 @@ config GCC_VERSION
 	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
 	default 0
 
+config LD_VERSION
+	int
+	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
+
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
