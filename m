Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D28014F5C9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 02:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEmJxRGwvULzUngPcWZrQIO/koyVpk0TijZW2c502qw=; b=NVDLYaHctXiTiD
	Gvsfdz7j8pLfF68fDXCZsVK+EB09YCFjETnrHnj2HG5tlNLf0Ut1SMzhBmAYlykWFKXCEaAdWIAFI
	gC3IPXAGV0AVTKCWhIubIrAauiYQBDlVFGLjvecmTOVu0R8b/fCrqple6yhkVWLzQwhcaMaGdTUK3
	TKBu3YHXCp1rL9TAUeqYABE6UI19Dz+ySbgjolstWzMJ65vWbFcP8btckXhYxqv9ES4DnY0saeNGV
	bDR1UjcMwIA8Q06zgs13m5NS/jXtI2Ze8sJdyYF/vyv6TyEFlDUndgWdq7ZVz+413NfQD+btLI5qj
	dgTfQdUtMeKCB7NWRXlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixhwJ-0005Xh-4t; Sat, 01 Feb 2020 01:51:15 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixhwB-0005XH-PR; Sat, 01 Feb 2020 01:51:07 +0000
To: LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] arm64: fix NUMA Kconfig typos
Message-ID: <2c69f4d8-03a1-20a6-e8ef-a4518a7c6d07@infradead.org>
Date: Fri, 31 Jan 2020 17:51:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

Fix typos in arch/arm64/Kconfig:

- spell Numa as NUMA
- add hyphenation to Non-Uniform

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/Kconfig |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200131.orig/arch/arm64/Kconfig
+++ linux-next-20200131/arch/arm64/Kconfig
@@ -952,11 +952,11 @@ config HOTPLUG_CPU
 
 # Common NUMA Features
 config NUMA
-	bool "Numa Memory Allocation and Scheduler Support"
+	bool "NUMA Memory Allocation and Scheduler Support"
 	select ACPI_NUMA if ACPI
 	select OF_NUMA
 	help
-	  Enable NUMA (Non Uniform Memory Access) support.
+	  Enable NUMA (Non-Uniform Memory Access) support.
 
 	  The kernel will try to allocate memory used by a CPU on the
 	  local memory of the CPU and add some more


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
