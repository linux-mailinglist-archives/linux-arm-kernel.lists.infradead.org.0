Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146D43883D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8wEhOIx+n3RFrKl/s2eFtBOqmBi+0zHgbyvl87V6k6o=; b=dlR
	arL9Vzuo0EA1KfZJa8pdM4uOpWurj0er6dGjOYghCVSoe7CMqMyaykf6OhOTjeH7dlg43WehT1npj
	C4qrZl19KS5z96cweODCF9H2Dwqdkr0DfJfa/2eCTHFZCkYwPglzqNxIlPuQLnjT02tYDobI6AQn3
	ysfVd4E903udFGOTqPTUuckdr8padUqS1UKrysGJzn2tpJD5CtAx99J3V4Y2ntZHoualCzId2G0h6
	f5WLGPwbLAHWFBRGGsiIiwXx6SlGufTR0v8r4Q1tVv0ghiVhDCsHTKV/9pGGBhzRGT/R7+3yrQG1q
	Rn0mQLdWKki7SYtp9+CftdGLTMlg6bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCRZ-0000rs-EA; Fri, 07 Jun 2019 10:49:57 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCRQ-0000qh-U9
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:49:50 +0000
X-IronPort-AV: E=Sophos;i="5.60,562,1549926000"; 
   d="scan'208";a="7741348"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 07 Jun 2019 12:49:37 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Fri, 07 Jun 2019 12:49:37 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Fri, 07 Jun 2019 12:49:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559904577; x=1591440577;
 h=from:to:cc:subject:date:message-id;
 bh=jg3ogeYyjZ13Io4RHa3NmQVEVmQp6Dm5x4LA/opROkA=;
 b=ljwxq5PuG5u/2sZxxyIqATOHpl4awhzoMvnGGlAyT61kYH/nTULUnqVf
 vII+tiA6avsw3eXg0ufD19C/NQPhMb+aPZ39o8DvfiqepkwlzTwC1kscT
 3a/IygbrP0atz0RtWOuwYzZB00CqpS8wqTKOdjzF3ojW6+BVmg1+8JGxr
 e4dGFU2LRPpX4vkiMTbo9Bc9l61tZoleGdkvW+oZB94feWkZtr7h+S8aj
 tpYaUoAnVTYepFzJHGJHqg1L04dtGdsRfd8ixIjyWPkQmp/Km5aH/0FsS
 Saek5ARbYH3J8RSwQqpHsQhEgaiFNQ2tzaoSohz+TCDO+Q2HlWwouZxbp g==;
X-IronPort-AV: E=Sophos;i="5.60,562,1549926000"; 
   d="scan'208";a="7741347"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 07 Jun 2019 12:49:37 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 3BE62280074;
 Fri,  7 Jun 2019 12:49:44 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>,
	Jessica Yu <jeyu@kernel.org>
Subject: [PATCH modules v2 0/2] Fix handling of exit unwinding sections (on
 ARM)
Date: Fri,  7 Jun 2019 12:49:10 +0200
Message-Id: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_034949_291505_2AB21AC9 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some time (050d18d1c651 "ARM: 8650/1: module: handle negative
R_ARM_PREL31 addends correctly", v4.11+), building a kernel without
CONFIG_MODULE_UNLOAD would lead to module loads failing on ARM systems with
certain memory layouts, with messages like:

  imx_sdma: section 16 reloc 0 sym '': relocation 42 out of range
  (0x7f015260 -> 0xc0f5a5e8)

(0x7f015260 is in the module load area, 0xc0f5a5e8 a regular vmalloc
address; relocation 42 is R_ARM_PREL31)

This is caused by relocatiosn in the .ARM.extab.exit.text and
.ARM.exidx.exit.text sections referencing the .exit.text section. As the
module loader will omit loading .exit.text without CONFIG_MODULE_UNLOAD,
there will be relocations from loaded to unloaded sections; the resulting
huge offsets trigger the sanity checks added in 050d18d1c651.

IA64 might be affected by a similar issue - sections with names like
.IA_64.unwind.exit.text and .IA_64.unwind_info.exit.text appear in the ld
script - but I don't know much about that arch.

Also, I'm not sure if this is stable-worthy - just enabling
CONFIG_MODULE_UNLOAD should be a viable workaround on affected kernels.

v2: Use __weak function as suggested by Jessica


Matthias Schiffer (2):
  module: allow arch overrides for .exit section names
  ARM: module: recognize unwind exit sections

 arch/arm/kernel/module.c     | 7 +++++++
 include/linux/moduleloader.h | 5 +++++
 kernel/module.c              | 7 ++++++-
 3 files changed, 18 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
