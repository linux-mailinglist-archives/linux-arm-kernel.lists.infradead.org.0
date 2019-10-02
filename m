Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B461DC8783
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GaLYgSg9jj9g4C06zp6linOaz16c5diOPbr+sUjrgfA=; b=qBjGVs3CuO2enS
	N1EoDK7KIqiuxy7e43VEm1FoO4E8iJyFj2ZtVpE50OavdQWfGggWReBWZ4IoOJJxY1Rt567WaffBa
	gc6OCK7YHD3GGSuzYtFEkmDAOFssgfq//grzFJf8mWhpgQX7za2BYn1DKerAFd3Mg0epkdsha47WS
	FLABiOinOdRKKTT+HtCDxlTVQK05gG/fsoWXw+Ps7Pn9IOevUCfnf1sP5plGu7ms7kJuf3Q2Pu2Nq
	skdCASH5qEk5IkIKRaxcczU2RgzyuuEdYp+SF6byV+b9uL28nepaMwEs09R2NQKJD4xle53C6kaCV
	yy+LD6QKYJwEDmb3ynaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFd4P-0003Fg-MP; Wed, 02 Oct 2019 11:45:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFd4I-0003Eg-FU
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:45:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 840E4AF37;
 Wed,  2 Oct 2019 11:45:14 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dt: check MPIDR on MP devices built without SMP
Date: Wed,  2 Oct 2019 13:45:08 +0200
Message-Id: <20191002114508.1089-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_044518_663258_85FE6467 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kernelci.org bot" <bot@kernelci.org>, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, in arm_dt_init_cpu_maps(), the hwid of the boot CPU is read
from MPIDR on SMP devices and set to 0 for non SMP. This value is then
matched with the DT cpu nodes' reg property in order to find the boot
CPU in DT.

On MP devices build without SMP the cpu DT node contains the expected
MPIDR yet the hwid is set to 0. With this the function fails to match
the cpus and uses the default CPU logical map. Making it impossible to
get the CPU's DT node further down the line. This causes issues with
cpufreq-dt, as it triggers warnings when not finding a suitable DT node
on CPU0.

Change the way we choose whether to get MPIDR or not. Instead of
depending on SMP check the number of CPUs defined in DT. Anything > 1
means MPIDR will be available.

This was seen on a Raspberry Pi 2 build with bcm2835_defconfig.

Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/kernel/devtree.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/kernel/devtree.c b/arch/arm/kernel/devtree.c
index 39c978698406..a924fda9abc8 100644
--- a/arch/arm/kernel/devtree.c
+++ b/arch/arm/kernel/devtree.c
@@ -74,7 +74,7 @@ void __init arm_dt_init_cpu_maps(void)
 	struct device_node *cpu, *cpus;
 	int found_method = 0;
 	u32 i, j, cpuidx = 1;
-	u32 mpidr = is_smp() ? read_cpuid_mpidr() & MPIDR_HWID_BITMASK : 0;
+	u32 mpidr = 0;
 
 	u32 tmp_map[NR_CPUS] = { [0 ... NR_CPUS-1] = MPIDR_INVALID };
 	bool bootcpu_valid = false;
@@ -83,6 +83,9 @@ void __init arm_dt_init_cpu_maps(void)
 	if (!cpus)
 		return;
 
+	if (is_smp() || of_get_child_count(cpus) > 1)
+		mpidr = read_cpuid_mpidr() & MPIDR_HWID_BITMASK;
+
 	for_each_of_cpu_node(cpu) {
 		const __be32 *cell;
 		int prop_bytes;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
