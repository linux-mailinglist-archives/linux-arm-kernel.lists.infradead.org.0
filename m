Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1C3298E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YaN9xuNey4wbzLWrE5KRJaag++d0o4BGspoMFWulYDw=; b=qZg
	nl+UQ2i0wetF5b6aUrqgeu/3f6dEj27bRYs68lBceMnMMdyST811Ew3eimxi7qD/X/op9UvwPqW+3
	ydc1G0t89hpcAE5dIPXuDT3CPkioN3RRrk4Fu+cH/5kLx4KRYu0V57ImRQCacGPJlgvTqKv4aHyQy
	n1itmaq7vis4PrNd1QscI6mNupOWIpqvml/nFAcNZOb31O8RoASbKqaf6uyX109m+WXUdY4et1gW8
	GO/5OyrDIiL7oaqcLxEQq1sCnFr9KGVtfJejYGMnN185I5MFLvia82dwokakrrMZ5/0q05uYFDHpX
	xiEmVE8PW3T9PK3yGUrJvSnjcwIO5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAEi-0000W3-Nv; Fri, 24 May 2019 13:27:52 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAEc-0000VV-1y
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:27:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54658A78;
 Fri, 24 May 2019 06:27:45 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1624E3F5AF;
 Fri, 24 May 2019 06:27:43 -0700 (PDT)
From: Will Deacon <will.deacon@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Kconfig: Make ARM64_PSEUDO_NMI depend on BROKEN for now
Date: Fri, 24 May 2019 14:27:35 +0100
Message-Id: <20190524132735.6592-1-will.deacon@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062746_102759_954C221B 
X-CRM114-Status: GOOD (  11.72  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>, "# 5 . 1" <stable@vger.kernel.org>,
 Julien Thierry <julien.thierry@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although we merged support for pseudo-nmi using interrupt priority
masking in 5.1, we've since uncovered a number of non-trivial issues
with the implementation. Although there are patches pending to address
these problems, we're facing issues that prevent us from merging them at
this current time:

  https://lkml.kernel.org/r/1556553607-46531-1-git-send-email-julien.thierry@arm.com

For now, simply mark this optional feature as BROKEN in the hope that we
can fix things properly in the near future.

Cc: <stable@vger.kernel.org> # 5.1
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6a9544606da3..f6275c265d41 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1422,6 +1422,7 @@ config ARM64_MODULE_PLTS
 
 config ARM64_PSEUDO_NMI
 	bool "Support for NMI-like interrupts"
+	depends on BROKEN # 1556553607-46531-1-git-send-email-julien.thierry@arm.com
 	select CONFIG_ARM_GIC_V3
 	help
 	  Adds support for mimicking Non-Maskable Interrupts through the use of
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
