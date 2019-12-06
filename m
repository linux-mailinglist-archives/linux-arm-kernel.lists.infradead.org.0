Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA2A11552D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4z4PIYZoFJHW30VOcWQXkeVhouQjQRe0JyyOaBI4Cc=; b=DqeOs5vmsSHkKN
	4Yi590syWzMr7EFFz628x2Wayz6PHfWPmALh3Fc8Ys6UuBaY98ltuwpEUsHCXSr4Sn1pAcxqn1K0c
	HOnJP2GOn7ZzQfWDPPEsAr2lEXvmXvCXfw5DPJAB9mKKqaZuTHxtbRiBb/5NtloYlkwOZA9AKiu4g
	f4SHAsjb6HOGFT6SNJef1g3movxyBFd6vcFWKMDtIwLmI3FCYFwgLbsCyocWkCLJBcIAft4aZYJpI
	ARwYziJLHjsmp5uJ0322sptVJs512J02QES5xkS7fLirq7uWyeYtbIQvEelug8Df+ZEdkAw57xZDP
	VzKcVy4yAqJxBelVJMvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGQ4-00058k-59; Fri, 06 Dec 2019 16:25:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGPH-0003Na-A3
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:24:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A9EB4B1D2;
 Fri,  6 Dec 2019 16:24:35 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Date: Fri,  6 Dec 2019 17:24:21 +0100
Message-Id: <20191206162421.15050-4-trenn@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191206162421.15050-1-trenn@suse.de>
References: <20191206162421.15050-1-trenn@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_082439_637829_2AFF25DA 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, gregkh@linuxfoundation.org,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 fschnitzlein@suse.de, trenn@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Felix Schnizlein <fschnizlein@suse.de>

Export all information from /proc/cpuinfo to sysfs:
implementer, architecture, variant, part, revision,
bogomips and flags are exported.

Example:
/sys/devices/system/cpu/cpu1/info/:[0]# head *
==> architecture <==
8

==> bogomips <==
40.00

==> flags <==
fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm

==> implementer <==
0x51

==> part <==
0xc00

==> revision <==
1

==> variant <==
0x0

Signed-off-by: Thomas Renninger <trenn@suse.de>
Signed-off-by: Felix Schnizlein <fschnizlein@suse.com>
---
 Documentation/ABI/testing/sysfs-devices-system-cpu | 22 +++++++++
 arch/arm64/Kconfig                                 |  1 +
 arch/arm64/kernel/cpuinfo.c                        | 55 ++++++++++++++++++++++
 3 files changed, 78 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-devices-system-cpu b/Documentation/ABI/testing/sysfs-devices-system-cpu
index 791390ab66d5..b6a167cd0beb 100644
--- a/Documentation/ABI/testing/sysfs-devices-system-cpu
+++ b/Documentation/ABI/testing/sysfs-devices-system-cpu
@@ -604,3 +604,25 @@ Description:	Expose information about x86 cpu information.
 		flags: Extended capabilities supported by the cpu
 		bugs: Known bugs by cpu
 		bogomips: calculated bogomips
+
+
+What:		/sys/devices/system/cpu/cpu#/info/
+		/sys/devices/system/cpu/cpu#/info/implementer
+		/sys/devices/system/cpu/cpu#/info/architecture
+		/sys/devices/system/cpu/cpu#/info/variant
+		/sys/devices/system/cpu/cpu#/info/part
+		/sys/devices/system/cpu/cpu#/info/revision
+		/sys/devices/system/cpu/cpu#/info/flags
+		/sys/devices/system/cpu/cpu#/info/bogomips
+Date:		August 2017
+Contact:	Linux kernel mailing list <linux-kernel@vger.kernel.org>
+Description:	Expose information about arm64 cpu.
+
+		implementer,
+		architecture,
+		variant,
+		part,
+		revision: Cpu identification depending on each vendor
+
+		flags: Extended capabilities supported by the cpu
+		bogomips: calculated bogomips
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 43aa1de727f4..0e8f7733e8c3 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -169,6 +169,7 @@ config ARM64
 	select HAVE_KPROBES
 	select HAVE_KRETPROBES
 	select HAVE_GENERIC_VDSO
+	select HAVE_CPUINFO_SYSFS if SYSFS
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
 	select IRQ_FORCED_THREADING
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 56bba746da1c..d142e2d37ead 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -24,6 +24,7 @@
 #include <linux/sched.h>
 #include <linux/smp.h>
 #include <linux/delay.h>
+#include <linux/cpuinfo.h>
 
 /*
  * In case the boot CPU is hotpluggable, we record its initial state and
@@ -33,6 +34,8 @@
 DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
 static struct cpuinfo_arm64 boot_cpu_data;
 
+#define cpu_data(cpu)			per_cpu(cpu_data, cpu)
+
 static const char *icache_policy_str[] = {
 	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
 	[ICACHE_POLICY_VIPT]		= "VIPT",
@@ -285,6 +288,58 @@ static int cpuid_cpu_offline(unsigned int cpu)
 	return 0;
 }
 
+#ifdef CONFIG_HAVE_CPUINFO_SYSFS
+
+#define cpuinfo_implementer(cpu)	MIDR_IMPLEMENTOR(cpu_data(cpu).reg_midr)
+#define cpuinfo_architecture(cpu)	"8"
+#define cpuinfo_variant(cpu)		MIDR_VARIANT(cpu_data(cpu).reg_midr)
+#define cpuinfo_part(cpu)		MIDR_PARTNUM(cpu_data(cpu).reg_midr)
+#define cpuinfo_revision(cpu)		MIDR_REVISION(cpu_data(cpu).reg_midr)
+
+static ssize_t cpuinfo_flags(unsigned int c, char *buf)
+{
+	unsigned int i;
+	ssize_t len = 0;
+
+	for (i = 0; hwcap_str[i]; i++) {
+		if (cpu_have_feature(i))
+			len += sprintf(buf+len, len == 0 ? "%s" : " %s",
+				       hwcap_str[i]);
+	}
+	if (!len)
+		return 0;
+	return len + sprintf(buf+len, "\n");
+}
+
+static ssize_t cpuinfo_bogomips(unsigned int c, char *buf)
+{
+	return sprintf(buf, "%lu.%02lu\n", loops_per_jiffy / (500000 / HZ),
+		       (loops_per_jiffy / (5000 / HZ)) % 100);
+
+}
+
+CPUINFO_DEFINE_ATTR(implementer, "0x%02x");
+CPUINFO_DEFINE_ATTR(architecture, "%s");
+CPUINFO_DEFINE_ATTR(variant, "0x%x");
+CPUINFO_DEFINE_ATTR(part, "0x%03x");
+CPUINFO_DEFINE_ATTR(revision, "%d");
+
+CPUINFO_DEFINE_ATTR_FUNC(bogomips);
+CPUINFO_DEFINE_ATTR_FUNC(flags);
+
+struct attribute *cpuinfo_attrs[] = {
+	CPUINFO_ATTR(implementer),
+	CPUINFO_ATTR(architecture),
+	CPUINFO_ATTR(variant),
+	CPUINFO_ATTR(part),
+	CPUINFO_ATTR(revision),
+	CPUINFO_ATTR(bogomips),
+	CPUINFO_ATTR(flags),
+	NULL
+};
+#endif /* CONFIG_HAVE_CPUINFO_SYSFS */
+
+
 static int __init cpuinfo_regs_init(void)
 {
 	int cpu, ret;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
