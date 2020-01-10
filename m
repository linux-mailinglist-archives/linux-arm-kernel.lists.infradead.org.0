Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D071365B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9NaJ6pzBv+rPOyT47aYnTgYiJ2SiFtTuDUV68Fx01Yk=; b=G/DU80vsbLhRMCvWjMdllrn3Sj
	bMMXydS7vWETYUnHTWedt3pnHk0476Il0sSpAGwRPgZP15M20gik//o/4n1y/a+Hh7aGeF75grBGJ
	OrTYk884Zqd6owvqFgcHEQ17ZAPbOKN30/8ME+JvdBDVFntvDQIBhHJwT1Nr8FRIGylFxuh3lO2qi
	KCK54ZdShbM3RYV8yfy37tsLZec60UbSApVgzqL0IAzMYfyKrDxGVafI1jlZG+w04YBHOa0e3/cN6
	pBWVoW0EjsMz9Z2mmsZhVgT4KtHDtEKfmMnhLm32QNc4l1lOA41I8OqIY0I86BGIZMhN49kZu17XQ
	wiOpRGZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipkg5-0001L6-T0; Fri, 10 Jan 2020 03:09:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipkfZ-000121-Vy
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:09:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2925411D4;
 Thu,  9 Jan 2020 19:09:05 -0800 (PST)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5672B3F703;
 Thu,  9 Jan 2020 19:08:57 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org
Subject: [PATCH V11 3/5] of/fdt: Mark boot memory with MEMBLOCK_BOOT
Date: Fri, 10 Jan 2020 08:39:13 +0530
Message-Id: <1578625755-11792-4-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_190906_082489_2BCA5F2A 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, ira.weiny@intel.com, david@redhat.com,
 mgorman@techsingularity.net, steve.capper@arm.com, Robin.Murphy@arm.com,
 Rob Herring <robh+dt@kernel.org>, steven.price@arm.com, broonie@kernel.org,
 cai@lca.pw, ard.biesheuvel@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, dan.j.williams@intel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, logang@deltatee.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

early_init_dt_add_memory_arch() adds memory into memblock on both UEFI and
DT based arm64 systems. Lets mark these as boot memory right after they get
into memblock. All other platforms using this default implementation for
early_init_dt_add_memory_arch() will also have this memblock flag set on
boot memory ranges but will be upto the platforms if they would like to
use it or not. On arm64 platform this flag will be used to identify boot
memory at runtime and reject any attempt to remove them.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 drivers/of/fdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2cdf64d..a2ae2c88 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1143,6 +1143,7 @@ void __init __weak early_init_dt_add_memory_arch(u64 base, u64 size)
 		base = phys_offset;
 	}
 	memblock_add(base, size);
+	memblock_mark_boot(base, size);
 }
 
 int __init __weak early_init_dt_mark_hotplug_memory_arch(u64 base, u64 size)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
