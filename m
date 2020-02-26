Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99120170771
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pONY7XtYWMuSahsUYDRPRgGdOIkkW30ogWMl5/+kL6E=; b=e2KvZhA/10uh1pU/OoRB0JuDJ9
	T5ruVwMm3gHs0tQXrVqh9u0XWkcZRE3OcqJIsoxCB9aZI7tDKQzbP9rVqzj9SX2fpA7Y7k48z3Qn+
	0B0GHsJEzODMzqnFNqF/ce4hv3qTBFo3I1PbTcZDrAWg8ImJ8/GePUfvJQvrSIaBfGUXQEanwS4e1
	ctq7uxHzFn2bjmzxaFJSmkFe+1IYrYjhjkx4CVsKn43ZLzEzfNhTnh80MMzwpGOUe1zi1nZ8pgnDe
	3nV64bmO48T1QdYhha4Lnc2sDTnXulXg3BG3BvyTFaNI/Qg2ktTj0Y1RjGTCoWsxDRUuHBAt27jPm
	uLA7xfeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71DV-0001b9-D2; Wed, 26 Feb 2020 18:15:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717p-0002K9-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E7F3106F;
 Wed, 26 Feb 2020 10:09:36 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD74F3F881;
 Wed, 26 Feb 2020 10:09:34 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 13/13] MAINTAINERS: Update Calxeda Highbank maintainership
Date: Wed, 26 Feb 2020 18:09:01 +0000
Message-Id: <20200226180901.89940-14-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100937_141448_A56A10BD 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob sees little point in maintaining the Calxeda architecture (early ARM
32-bit server) anymore.
Since I have a machine sitting under my desk, change the maintainership
to not lose support for that platform.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index fcd79fc38928..5354ba7460b8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1605,7 +1605,7 @@ F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-M:	Rob Herring <robh@kernel.org>
+M:	Andre Przywara <andre.przywara@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/mach-highbank/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
