Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7101E22D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B9UIsVNBzphNekyL9TWFUuzbYLzWZOjaiunFjvavn30=; b=do6T7rEZgAWgr5
	68uV2lKkgiYy9IZH/In5biyqd7w+YqK7rBaPCo0r6dPz4MQ9PoS20eAmgCCU9nyIuc/rOhGhA2eeR
	czVhA49MxkoG9yiem/aKiyXq2RwMUzfqe0x2zxtnCDUQssq5a737No+RNUW4QRVmEZ8cTOmSkwnm9
	MqskiHSeiGx4pSewWIOlRYH1RydfABcSwdXxdNSJAWzeM1yD4dUH2lM6X8puUg+3nZBl9sMksCWNG
	HbF1FGjAhyIp+2+HevKYUs9eImhdGddcEhphfeuC9tyJKaUDkFfJXNmZsxNLzqh1JgD7CdpC4GP2e
	RJopa+prJqs7bLXI0BkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZWE-0007Oe-CD; Tue, 26 May 2020 13:21:22 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZW5-0007Nw-Ct
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:21:15 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id 04QDKoZa004724;
 Tue, 26 May 2020 22:20:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 04QDKoZa004724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1590499252;
 bh=obb2n8kjtEQ2zCZI5gbwOsMihSFwQFDcm79n56a85H8=;
 h=From:To:Cc:Subject:Date:From;
 b=bqJSmPDJUkObDgEYZa4nT5OCk2gFkTJkHlDwNALQ1WQamQUQN9ao4xJHBwBGedKOo
 i4wvpdNVRi65OyHW88oAnV2+pKDRdcmvopsPXhYD/HyXV/0myMNX7xDgXaVZt3xGIK
 +Pseh2POVwToAgGuLSw7bX6U7jPzVLDA43l7dPAw4ZGHvbPFRztLM5uJW4efULPwKi
 gAcfqu4FQjq089c+CzNR6rZSKuih3mbYDQV1KhlCK8fP7jbpKlDt4CDPIJi3HC3y58
 shIwSbUwykOHl5cgbOa2GboKHTS+gtAjQUmzwOs3do9ufDlx8XhUZHzba3SdvGoHEp
 2cZ/Mr1IAd1Pg==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: patches@arm.linux.org.uk
Subject: [PATCH] ARM: add arch/arm/Kbuild
Date: Tue, 26 May 2020 22:20:31 +0900
Message-Id: <20200526132032.400264-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_062113_758406_B3562E00 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Christian Lamparter <chunkeey@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the standard obj-y form to specify the sub-directories under
arch/arm/. No functional change intended.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

KernelVersion: v5.7-rc1

 arch/arm/Kbuild   | 11 +++++++++++
 arch/arm/Makefile | 12 +-----------
 2 files changed, 12 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/Kbuild

diff --git a/arch/arm/Kbuild b/arch/arm/Kbuild
new file mode 100644
index 000000000000..5208f7061524
--- /dev/null
+++ b/arch/arm/Kbuild
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_FPE_NWFPE)		+= nwfpe/
+# Put arch/arm/fastfpe/ to use this.
+obj-$(CONFIG_FPE_FASTFPE)	+= $(patsubst $(srctree)/$(src)/%,%,$(wildcard $(srctree)/$(src)/fastfpe/))
+obj-$(CONFIG_VFP)		+= vfp/
+obj-$(CONFIG_XEN)		+= xen/
+obj-$(CONFIG_VDSO)		+= vdso/
+obj-y				+= kernel/ mm/ common/
+obj-y				+= probes/
+obj-y				+= net/
+obj-y				+= crypto/
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index cd28211f1418..5f617fb1782e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -272,18 +272,8 @@ endif
 
 export	TEXT_OFFSET GZFLAGS MMUEXT
 
-core-$(CONFIG_FPE_NWFPE)	+= arch/arm/nwfpe/
-# Put arch/arm/fastfpe/ to use this.
-core-$(CONFIG_FPE_FASTFPE)	+= $(patsubst $(srctree)/%,%,$(wildcard $(srctree)/arch/arm/fastfpe/))
-core-$(CONFIG_VFP)		+= arch/arm/vfp/
-core-$(CONFIG_XEN)		+= arch/arm/xen/
-core-$(CONFIG_VDSO)		+= arch/arm/vdso/
-
+core-y				+= arch/arm/
 # If we have a machine-specific directory, then include it in the build.
-core-y				+= arch/arm/kernel/ arch/arm/mm/ arch/arm/common/
-core-y				+= arch/arm/probes/
-core-y				+= arch/arm/net/
-core-y				+= arch/arm/crypto/
 core-y				+= $(machdirs) $(platdirs)
 
 # For cleaning
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
