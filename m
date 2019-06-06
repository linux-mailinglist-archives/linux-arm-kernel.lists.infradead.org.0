Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA9836FEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cLrP4N4sSBVbDHId/+aZY3h3gsqaCANPHUB2PKBVYKo=; b=S84OvLPz5fwPmVzLrmu+8chxmE
	o2pDjTarjKUvfnKsvXU0e6WNFdpZUuU+XB1TjjHn1ahKqf3mS8xGtgPqdpHzCey+xaz8tUCNiufvq
	rngHbOeSw7w10v358Yaa4SjoyeKphGJHsDu3Lf0UFu0jhNWgV0Bp7uokXnpgxh6TTpoafLPl47Aut
	czFBel+pXnaq1GjYyoViJVtGc+WgUvZqb09pr8+DtHekqnsFlfjqwAnEZYAuohFrVW9QCEaK4YcW2
	ZWvC13VAOdnsVMD4iHZHOVr11mekgAoK1FOvqBL2madWDliT3uTK6lbqu4aAVAHfV/JdQKL41kwpI
	2ZTMdwIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoly-0007w3-Nq; Thu, 06 Jun 2019 09:33:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoky-0006nF-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:32:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDC101993;
 Thu,  6 Jun 2019 02:32:23 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D987B3F690;
 Thu,  6 Jun 2019 02:32:21 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 8/8] arm64: Allow selecting Pseudo-NMI again
Date: Thu,  6 Jun 2019 10:31:57 +0100
Message-Id: <1559813517-41540-9-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023225_129056_58EA8A90 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that Pseudo-NMI are fixed, allow the use of that option again

This reverts commit 96a13f57b946be7a6c10405e4bd780c0b6b6fe63 ("arm64:
Kconfig: Make ARM64_PSEUDO_NMI depend on BROKEN for now").

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8acc40e..a9dde24 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1423,7 +1423,6 @@ config ARM64_MODULE_PLTS

 config ARM64_PSEUDO_NMI
 	bool "Support for NMI-like interrupts"
-	depends on BROKEN # 1556553607-46531-1-git-send-email-julien.thierry@arm.com
 	select CONFIG_ARM_GIC_V3
 	help
 	  Adds support for mimicking Non-Maskable Interrupts through the use of
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
