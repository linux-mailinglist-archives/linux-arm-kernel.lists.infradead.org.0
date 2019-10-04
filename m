Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343A1CBFC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FuuS/u0otMCptchOvp8ZZ7GLpAr8D3fcJiJz3WBiFWM=; b=r814m0ZgXdo+AF
	bxSNN+5u2Bxa2LNwQA4Kim2aiHOm51I7xdd55I+nxH2GSCuBanC9wKM4Vaw6BRXyd+H5SDpj+cY9p
	sBcXrvHH69cOLIVfoHIN8EjP122eHW7XldXvK6ZtGqzKvw2Fih4rkDDpt2KB+TC96r+fCF94lwx2H
	bg1Q2JkyioHKdvvk0Q24v+oj8eaXlnodfkmXgSewYzVywcGX+/1b9VrVS9panX3o04llAsqIOkInL
	LHg4S9CBNSuyJr00zFbU5JpuCNLovTcli6i02/rLu7s8KZj9AilAPnM7ACwFzpwrC37ohz1XWi1C4
	kcxGWczszAbDRQQrvX7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPt3-0007MF-C6; Fri, 04 Oct 2019 15:52:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPsq-0007LJ-ND
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:52:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DA9D7B1AE;
 Fri,  4 Oct 2019 15:52:42 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: dt: check MPIDR on MP devices built without SMP
Date: Fri,  4 Oct 2019 17:52:33 +0200
Message-Id: <20191004155232.17209-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_085244_900961_3A55E62E 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: f.fainelli@gmail.com, "kernelci.org bot" <bot@kernelci.org>,
 Russell King <linux@armlinux.org.uk>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On SMP builds, in order to properly link CPU devices with their
respective DT nodes we start by matching the boot CPU. This is achieved
by comparing the 'reg' property on each of the CPU DT nodes with the
MPIDR. The association is necessary as to validate the whole CPU logical
map, which ultimately links CPU devices and their DT nodes.

On setups built without SMP, no MPIDR read is performed. The only thing
expected is for the 'reg' property in the CPU DT node to contain the
value 0x0.

This causes problems on MP setups built without SMP. As their boot CPU
DT node contains the relevant MPIDR as opposed to 0x0. No match is then
possible. This causes troubles further down the line as drivers are
unable to get the CPU's DT node.

Change the way we choose whether to get the MPIDR or not. On builds
without SMP check the number of CPUs defined in DT. Anything > 1 means
the MPIDR should be available and matched accordingly.

Note that if there was a rogue UP device exposing multiple active CPUs
in its DT the possible outcomes depend on the ARM series. For example
Cortex-A9 specifies that the MPIDR is returns 0x0 on UP devices. On the
other hand ARM1176JZ's TRM doesn't define a MPIDR register and specifies
that any unwarranted register access will raise an undefined exception.
Overall, given the bogus DT, a reasonable outcome.

This was originally seen on a Raspberry Pi 2 built with bcm2835_defconfig.

Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Stefan Wahren <wahrenst@gmx.net>

---

Changes since v1:
  - Rewrite patch description
  - Use of_get_available_child_count()

Note: kept Setfan's Tested-by as the changes only affect a corner case.

 arch/arm/kernel/devtree.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/kernel/devtree.c b/arch/arm/kernel/devtree.c
index 39c978698406..cd11742d9bc2 100644
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
 
+	if (is_smp() || of_get_available_child_count(cpus) > 1)
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
