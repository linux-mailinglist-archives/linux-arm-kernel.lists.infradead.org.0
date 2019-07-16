Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4DE6A125
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 06:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cGk/J655+WwFtjdZw3zlto0b38TPKVd0Wc30dfcQ+D4=; b=AqNL2dRD4qMr3z
	iyKPDU7XsweCPgr8aeWzB2A+JdITI42lHXciT33OAI2+AoyS8OZxQn4xjedJjNGtTmg9YKTqKGcEi
	lcNRSOxUZ8stGyiLb/1l2nGGqnOV+5e0nAJK3JftLQzgF659xNSz8MLfkNSwHFFykuT8sq7ikKFxG
	15uYt6QIBCdPYmKIC62elPEAXMry4zn7FAtp/n7y/8SVKnwTyBon8dJbzoa4lAcrUQNcWyB6z79fp
	q6LSkXMxUCcm6ep/fAqNoMTuSSQ498zW5gAkIyia0OVyVJ/MPwOHV3jnWyPKZl3O2hnB1MhZ6WbzD
	zgDlfx/nsiErqJJsoYSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnEiD-0005vG-Mm; Tue, 16 Jul 2019 04:05:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnEhx-0005ux-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 04:04:54 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 013E420693;
 Tue, 16 Jul 2019 04:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563249893;
 bh=++dKw1lhK39CNSlaPfQ8Gyeqk+cayF8swOEw8Z7CrnY=;
 h=From:To:Cc:Subject:Date:From;
 b=t0t5BeCHM4C3Lfmt0dzv+pEsJ5EI11b9O5FBD/eGQ1sA/24H+h3lZnYU8Ob8ELmpw
 mKeg+yNLzvyGiq7K6N+N63kYGFGr/ZQnr1cT5UHtZyDoEczSx07FfNhYFUA6VuKXe1
 n/+999HZed+RZqlwqRzBbfckAirxfkVVc50H+MzY=
From: Sasha Levin <sashal@kernel.org>
To: marc.zyngier@arm.com, will.deacon@arm.com, julien.thierry@arm.com,
 catalin.marinas@arm.com
Subject: [PATCH] ARM64/irqchip: Make ACPI_IORT depend on PCI again
Date: Tue, 16 Jul 2019 00:04:41 -0400
Message-Id: <20190716040441.12101-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_210453_545352_4D7FAE21 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@microsoft.com,
 okaya@kernel.org, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI_IORT lost it's explicit dependency on PCI in c6bb8f89fa6df
("ARM64/irqchip: Update ACPI_IORT symbol selection logic") where the
author has relied on the general dependency of ACPI on PCI.

However, that dependency was finally removed in 5d32a66541c4 ("PCI/ACPI:
Allow ACPI to be built without CONFIG_PCI set") and now ACPI_IORT breaks
when we try and build it without PCI support.

This patch brings back the explicit dependency of ACPI_IORT on PCI.

Fixes: 5d32a66541c4 ("PCI/ACPI: Allow ACPI to be built without CONFIG_PCI set")
Cc: stable@kernel.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a36ff61321ce..d6d93027196b 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -4,7 +4,7 @@ config ARM64
 	select ACPI_CCA_REQUIRED if ACPI
 	select ACPI_GENERIC_GSI if ACPI
 	select ACPI_GTDT if ACPI
-	select ACPI_IORT if ACPI
+	select ACPI_IORT if (ACPI && PCI)
 	select ACPI_REDUCED_HARDWARE_ONLY if ACPI
 	select ACPI_MCFG if (ACPI && PCI)
 	select ACPI_SPCR_TABLE if ACPI
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
