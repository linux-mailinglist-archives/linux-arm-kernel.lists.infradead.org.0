Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCAE10281
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TjDpxiRAgC452gEWfuLZd3ue1VjfwTLkUk++TMnNnM4=; b=fYO
	FNeE8bLhi+1pqSJ8hkXW+4ZmlhVlbbx65WOf+LSugeO0Y5Oe3ESuJD9njwsp11EvCTQqWZ2++hEWs
	cqJOkUOWH4pxNqJ7kLZOgbadTdVO08U43YMFlO97/tqh3jA6dDTZUCftLuiursYxUBTV+QO7dEcco
	CFlIFlnJsQ/Bl3Awg3fqW4yE9ZFkqwweWPOM+RKXSgM2klL5JMxl+rSw92ZpBDGGAR3F/+lpGOsHn
	Qd8P66pDSOey7gRpFCg/kk4Hf5FGCR19lpJF1mLO5vBcIbLEFQK9ivFzcr8EDiOp2c2pr4ysQT8jg
	VX6McadwP9CTcqEPLAOs9thZ1cuL2Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbPF-0005Sk-5N; Tue, 30 Apr 2019 22:39:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbP7-0005Rx-La
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:39:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id z26so3892191pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BH4bZIoYFh+BZeuStnVh4oqr1cPMGw3OERKeRDVWU08=;
 b=OIvXEuVL9Uv69bTytaoqWmRftzsJ4wBG0LYBtrjl6WnOblUu05EIVX+NHm/lpilCno
 b8WwUWIF6x5Y5G/SSCjGEMqDKPGlKEZMGXBBBF80JQyvCTKr8gQzEQZB2W+FcfO52KvM
 L+DuKuA9cl2LR6x7m6FHyKYx+V4h8AroJ0Ujg0oTX0Kkw6QS8Xv03E87GIYi+y9oD5IF
 qrmZcI3U9V0KNFOki8GtqaWJf4h9sBQftWmZoOmpXF4xSfBaq13Seoh3hKAvA2fkr4Ok
 nKIqrp/xeB9s/o9e3lQYdu3KJuP3kwAHvJ7sGZnxhUefsNaSl0uKEikSsP5Fnvzs04qy
 PV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BH4bZIoYFh+BZeuStnVh4oqr1cPMGw3OERKeRDVWU08=;
 b=EWrl6Du+TIcKjKVjndBB9SoRV6sr1Kt3zTFPwMj2ZN34JLm94nqgD3jeFe9NlbEFE0
 eSGvIVhqWwpc6W7kzd4yCqadgrPu13GZP20Kd6y7b0nhudXCjgovb8OO92LdR9Dy7JS5
 iRzbxXcZbu1M4yD5H9mI4h/M+aIRlz9rfGcdK8MGflDaO0oRE22hMvp0Nm01Wu7VSjPB
 NoLtttsB1I+xRhttApnoJp7oDciilHmtfMUPim6/q5ZyTNDlDQB1FcAGBTHdormGhMBW
 ozJw97UQxiFcbBw/NTs16rBbrNmRiI+FGdV6AUdfkI6K0exxJpH723yHtIiR7p36jXAu
 SjVw==
X-Gm-Message-State: APjAAAUL64Rgz+5qshjbsG74RksV1B0Mhx7eey7UzD1Suhy/XWldi17+
 TF/ZkZv3GaRiOeO/wqirDEcyxkDV
X-Google-Smtp-Source: APXvYqzWZUGXQC0CYwvVzbYHuPdpj3mWL11+509Lnrq/yd2kilWOvzRF3C9VoPDJB+A8UsYHCaEfIA==
X-Received: by 2002:a63:4c1a:: with SMTP id z26mr53118353pga.324.1556663951853; 
 Tue, 30 Apr 2019 15:39:11 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id c28sm27788476pgm.42.2019.04.30.15.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 15:39:10 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Demote boot and shutdown messages to pr_debug
Date: Tue, 30 Apr 2019 15:38:31 -0700
Message-Id: <20190430223835.23513-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_153913_709767_419CCD78 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, rmk+kernel@armlinux.org.uk,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Suzuki K Poulose <Suzuki.Poulose@arm.com>,
 Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to commits c68b0274fb3cf ("ARM: reduce "Booted secondary
processor" message to debug level") and 035e787543de7 ("ARM: 8644/1: Reduce "CPU:
shutdown" message to debug level"), demote the secondary_start_kernel()
and __cpu_die() messages from info, respectively notice to debug. While
we are at it, also do this for cpu_psci_cpu_kill() which is redundant
with __cpu_die().

This helps improve the amount of possible hotplug cycles by around +50%
on ARCH_BRCMSTB.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/kernel/psci.c | 2 +-
 arch/arm64/kernel/smp.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index 8cdaf25e99cd..a78581046c80 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -96,7 +96,7 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
 	for (i = 0; i < 10; i++) {
 		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
 		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
-			pr_info("CPU%d killed.\n", cpu);
+			pr_debug("CPU%d killed.\n", cpu);
 			return 0;
 		}
 
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 824de7038967..71fd2b5a3f0e 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -259,7 +259,7 @@ asmlinkage notrace void secondary_start_kernel(void)
 	 * the CPU migration code to notice that the CPU is online
 	 * before we continue.
 	 */
-	pr_info("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
+	pr_debug("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
 					 cpu, (unsigned long)mpidr,
 					 read_cpuid_id());
 	update_cpu_boot_status(CPU_BOOT_SUCCESS);
@@ -348,7 +348,7 @@ void __cpu_die(unsigned int cpu)
 		pr_crit("CPU%u: cpu didn't die\n", cpu);
 		return;
 	}
-	pr_notice("CPU%u: shutdown\n", cpu);
+	pr_debug("CPU%u: shutdown\n", cpu);
 
 	/*
 	 * Now that the dying CPU is beyond the point of no return w.r.t.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
