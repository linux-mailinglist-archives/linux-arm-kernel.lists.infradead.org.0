Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC569203B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=szQ4kOhYi5F1NRBdtL3jjbrFjy4D+nXJzLOMmy9wqZY=; b=lGNT8Em/T4EwqWyF4FIzImyMB3
	ZDcUU3BXyowAC0nQ7vdqRgAQprsHW+IVmyybw2KqD9OjkfllPgVzM0+OPxLpD1z9QEZ8QIeVdRwiC
	AtwRUe6l9DVpPfLQSoYFoMFYR0RVWj9WtH+F6trEPvHhi90rrpCx4HeJjfrV+Yx5WVs0nw+0UqXPO
	nb+tlSCU0wOlP+NwNjiDy1sWTqneROYx3BvGYNaSUkbyZ+hMhW/vU0cbCeWWH0iDUw0+J0vI2ZULy
	OV3jclHo4e9swh0y8/bewyk/27FTYee32JTUD29+DBiKd5QOq8blOpMmWPXseXDC+72faT7Atq8n8
	mkQMsluQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDnv-0007sR-8s; Thu, 16 May 2019 10:40:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDmG-0005ut-EB
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:38:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DA8C1B55;
 Thu, 16 May 2019 03:38:20 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD5393F703;
 Thu, 16 May 2019 03:38:18 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 11/16] objtool: arm64: Enable stack validation for arm64
Date: Thu, 16 May 2019 11:36:50 +0100
Message-Id: <20190516103655.5509-12-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516103655.5509-1-raphael.gault@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_033821_270920_451F3CD2 
X-CRM114-Status: GOOD (  10.17  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7e34b9eba5de..01ef19d26bfa 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -152,6 +152,7 @@ config ARM64
 	select HAVE_RCU_TABLE_INVALIDATE
 	select HAVE_RSEQ
 	select HAVE_STACKPROTECTOR
+	select HAVE_STACK_VALIDATION
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
 	select HAVE_KRETPROBES
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
