Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF29F1F6961
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44263YlSTr9NO+7ujZoVnn7TRSeQrX0Z7Y3uochhdMc=; b=EFjehugbeBH5ee
	IxWrsVforIV4XZUEemIsI9Z+4ZEIm8ELS/R0lO1Mc6kwqjHKhpes2cXNO03XJutN1xmPMA3Qvhytv
	7Ad5LdHzLHWEfFfA/xruVqyAlZAdbE3T93OmG1s0kADF5EoOL9AgxfZbBWBUa9GUNiXIhNjUjE8+N
	OccK+R1Hb603PIBTDWj8R80JjisRk4ZMJ65WblqgtAOjKx4bjfK93d/R07MJyOXGwPxeYJwT+zrfF
	V/KBsH8oMSvtT63jxBUHyGF7HgYgc+m61ZYHXrms0UJ5eLadzhbDbXo87rw1B4cy/lUanC04ZuTF9
	hMeWikPppJEVtaXn38Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNbq-00070s-W5; Thu, 11 Jun 2020 13:51:11 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaJ-0003Tw-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:38 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 69CA54000E;
 Thu, 11 Jun 2020 13:49:29 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
Date: Thu, 11 Jun 2020 15:49:09 +0200
Message-Id: <20200611134914.765827-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064936_032644_C077F3DD 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
order to be able to use other size of page than 4K, use PAGE_SIZE
instead of the hardcoded value.

The use of PAGE_SIZE will be also aligned with what we find in other
architectures such as arm64.

This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
sizes") from
https://github.com/MarvellEmbeddedProcessors/linux-marvell.git

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/include/asm/elf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index b078d992414b..0e406ce25379 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -116,7 +116,7 @@ int dump_task_regs(struct task_struct *t, elf_gregset_t *elfregs);
 #define ELF_CORE_COPY_TASK_REGS dump_task_regs
 
 #define CORE_DUMP_USE_REGSET
-#define ELF_EXEC_PAGESIZE	4096
+#define ELF_EXEC_PAGESIZE	PAGE_SIZE
 
 /* This is the base location for PIE (ET_DYN with INTERP) loads. */
 #define ELF_ET_DYN_BASE		0x400000UL
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
