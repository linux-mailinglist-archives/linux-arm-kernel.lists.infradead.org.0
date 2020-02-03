Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BEE150FEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 19:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EVdBuYx+pvA+oPCQjbqKW76GKerxaIkYEd+n1yT7Lc=; b=fDbIi15n6fp7zR
	kN+F19Fy9aQYdmcD1fK5NpKL6YzTh6mu/1TAfCvs3UKeDEPLmzW3riM0zDdZWEBt0AJNWmeXfH6iR
	ffFUfK4HXQo6yAZYxKjt7MoPTpPzGponOkyYdWW/TYDYC7sjCfI+x+ei6QVByUrJrwwFbL8NgWmQP
	4sKhPs6J1UvfqXSi2Ja8APbJmr2eTAawzfqqWY4dTJ08AXuQJ8E9j8rVO3+ivutKnrU0BrIZruK0y
	u4NooSl5+woEv9p6Nt0MRl5+p6JK/gW4QpjpqWYf4CF8jckRfpcxsZ5m09ZHZpbqrfGY/mUBuWAr8
	PIcBS00kiNZAL6YdUJ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iygmB-0007C5-Aq; Mon, 03 Feb 2020 18:48:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iygm4-00079t-5J; Mon, 03 Feb 2020 18:48:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7B025AD55;
 Mon,  3 Feb 2020 18:48:39 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-kbuild@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH 1/2] kbuild: Add config fragment merge functionality
Date: Mon,  3 Feb 2020 19:48:18 +0100
Message-Id: <20200203184820.4433-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200203184820.4433-1-nsaenzjulienne@suse.de>
References: <20200203184820.4433-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_104844_347690_EBCE670A 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 yamada.masahiro@socionext.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far this function was only used locally in powerpc, some other
architectures might benefit from it. Move it into
scripts/Makefile.defconf.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/powerpc/Makefile    | 12 +-----------
 scripts/Makefile.defconf | 15 +++++++++++++++
 2 files changed, 16 insertions(+), 11 deletions(-)
 create mode 100644 scripts/Makefile.defconf

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index f35730548e42..517ef8ec774b 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -301,17 +301,7 @@ $(BOOT_TARGETS2): vmlinux
 bootwrapper_install:
 	$(Q)$(MAKE) $(build)=$(boot) $(patsubst %,$(boot)/%,$@)
 
-# Used to create 'merged defconfigs'
-# To use it $(call) it with the first argument as the base defconfig
-# and the second argument as a space separated list of .config files to merge,
-# without the .config suffix.
-define merge_into_defconfig
-	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
-		-m -O $(objtree) $(srctree)/arch/$(ARCH)/configs/$(1) \
-		$(foreach config,$(2),$(srctree)/arch/$(ARCH)/configs/$(config).config)
-	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
-endef
-
+include $(srctree)/scripts/Makefile.defconf
 PHONY += pseries_le_defconfig
 pseries_le_defconfig:
 	$(call merge_into_defconfig,pseries_defconfig,le)
diff --git a/scripts/Makefile.defconf b/scripts/Makefile.defconf
new file mode 100644
index 000000000000..ab332f7534f5
--- /dev/null
+++ b/scripts/Makefile.defconf
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+# Configuration heplers
+
+# Creates 'merged defconfigs'
+# ---------------------------------------------------------------------------
+# Usage:
+#   $(call merge_into_defconfig,base_config,config_fragment1 config_fragment2 ...)
+#
+# Input config fragments without '.config' suffix
+define merge_into_defconfig
+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh \
+		-m -O $(objtree) $(srctree)/arch/$(ARCH)/configs/$(1) \
+		$(foreach config,$(2),$(srctree)/arch/$(ARCH)/configs/$(config).config)
+	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
+endef
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
