Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A96138841
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UpedVviBj59EkF9h14usHqVkmzglg4hT51Bw5p7eR3U=; b=haMmOoT+HQBsipOn2q9gIg2R84
	8EclZaYq0pMBmz2beVcMoQHRGJczbfRhva/Hv+PVM/FmW7bUU49WLvzEL7Uk4iPgIB5L/I4i2hUYw
	pyrRL4lxPCNOWLfD7zJfl3OYTg79Fkp5ymCUzQe347eIBmsriI0X3UDmjiwk8BHpHtD3FR7VKlQ/+
	dMyZc7S0o9tdiRhGaLUEomCP0UKUvNJ7WZrp6eqcVWCD9nCBtJvp6CGBCMcmMb8dbpyVlF7SNssyR
	kYHlLl9Jb/McwVGZFIdP2DbK0sM77AY9b/+lQF/y7BAxwmyooaluz0hWXXY1T9zlTQthWCOdFfTvM
	XFWXtXMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCSA-0002QC-Uj; Fri, 07 Jun 2019 10:50:34 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCRU-0000re-6Y
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:49:53 +0000
X-IronPort-AV: E=Sophos;i="5.60,562,1549926000"; 
   d="scan'208";a="7741352"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 07 Jun 2019 12:49:39 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Fri, 07 Jun 2019 12:49:39 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Fri, 07 Jun 2019 12:49:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559904579; x=1591440579;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=zT95b/achx15JXRT8jtCbEqeZxzU7o/BMcswA2iPOao=;
 b=q5Xy3O5MVHv287lIWXVkHKQb4YzZSGbEch60r4F9IzEHO7SXrL5E5iov
 4Hj+Yd42ZbXPCEEeuzFXXASh8cCtIoD7o7B18a9GXN2DewB8fccNewqBJ
 FZWF6wFoCII/DwrqdG24yo/y2sqN9yIy9w3zRog67jryJMLqLaM6BDSF3
 +O7m3UOV61zB8o6/AeeNVx3Je2cLl8ni46tQZYKHooybsbI3Fqr2OaLWn
 WlVOCM1pMKyskFrA9FWDpWxa2Rwd3NbHKbfnNB+KY6pvCjFgFpX3yHdWw
 I/yWEZHnLZIo/WwTJc0gZZKNi7GdRx85XP7UUPffqNobrq4TGp11LjD1k w==;
X-IronPort-AV: E=Sophos;i="5.60,562,1549926000"; 
   d="scan'208";a="7741351"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 07 Jun 2019 12:49:39 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 7E995280075;
 Fri,  7 Jun 2019 12:49:46 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>,
	Jessica Yu <jeyu@kernel.org>
Subject: [PATCH modules v2 2/2] ARM: module: recognize unwind exit sections
Date: Fri,  7 Jun 2019 12:49:12 +0200
Message-Id: <20190607104912.6252-3-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
References: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_034952_584159_F5CDD28F 
X-CRM114-Status: UNSURE (   7.55  )
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

In addition to the prefix ".exit", ".ARM.extab.exit" and ".ARM.exidx.exit"
must be recognized as exit sections as well. Otherwise, loading modules can
fail without CONFIG_MODULE_UNLOAD depending on the memory layout, when
relocations for the unwind sections refer to the .exit.text section:

  imx_sdma: section 16 reloc 0 sym '': relocation 42 out of range
  (0x7f015260 -> 0xc0f5a5e8)

where 0x7F000000 is the module load area and 0xC0000000 is the vmalloc
area. Relocation 42 refers to R_ARM_PREL31, which is limited to signed
31bit offsets.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
v2: Use __weak function as suggested by Jessica

 arch/arm/kernel/module.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index 3ff571c2c71c..692001aabb0f 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
@@ -58,6 +58,13 @@ void *module_alloc(unsigned long size)
 }
 #endif
 
+bool module_exit_section(const char *name)
+{
+	return strstarts(name, ".exit") ||
+		strstarts(name, ".ARM.extab.exit") ||
+		strstarts(name, ".ARM.exidx.exit");
+}
+
 int
 apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 	       unsigned int relindex, struct module *module)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
