Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697821CF7EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=blIa65ZwnyR5syoVqIHqw7z8UCZbUGfydOKXM2ZsTeQ=; b=Rnj
	balnHlteW+kw0A/irA0NuGiC/5QAMwttiUGWW0uNy+tLNMI4adHz4xmozrUU31xfL/l3lu1lgGLyD
	8dC+yqy2N1/69369ToAQZGEnJ8ECQiGtoyP09SDKDjfEWd+wHXug0zNzhqxQ1/PyZb/g/rzik/kcr
	SRuIvFjzHeJNHdvODY/opZD7Q/0IEgCcs6oFmhSFzpFDT6v3ICd0KjQNLP1qY8DkKXsz44LWMmVIg
	M1PUNcQKgifEdmkeKZx7Pid8q86enFbCK40Sjqz5G5v6kyfsxOS/hQrKtRGFn3bZkpTn9B6oDxLyZ
	u4hJheVVJkKjfvDHAm4lRvARBlAdaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWHb-00020j-Q0; Tue, 12 May 2020 14:53:23 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWHK-0001t8-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:53:08 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:81a0:190c:7969:2334])
 by baptiste.telenet-ops.be with bizsmtp
 id dqsw220025045R201qswl3; Tue, 12 May 2020 16:52:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jYWH9-0001kH-U0; Tue, 12 May 2020 16:52:55 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jYWH9-0001Rl-RC; Tue, 12 May 2020 16:52:55 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: cpufeature: Add "or" to mitigations for multiple
 errata
Date: Tue, 12 May 2020 16:52:55 +0200
Message-Id: <20200512145255.5520-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075306_549090_9ED5C566 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several actions are not mitigations for a single erratum, but for
multiple errata.  However, printing a line like

    CPU features: detected: ARM errata 1165522, 1530923

may give the false impression that all three listed errata have been
detected.  This can confuse the user, who may think his Cortex-A55 is
suddenly affected by a Cortex-A76 erratum.

Add "or" to all descriptions for mitigations for multiple errata, to
make it clear that only one or more of the errata printed are
applicable, and not necessarily all of them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Rebased on top of arm64 for-next/kconfig, which required updating the
    example and the explanation.

 arch/arm64/kernel/cpu_errata.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index df56d2295d165a0d..c8cb98a4fa6d5bf5 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -774,7 +774,7 @@ static const struct midr_range erratum_speculative_at_vhe_list[] = {
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_ARM64_WORKAROUND_CLEAN_CACHE
 	{
-		.desc = "ARM errata 826319, 827319, 824069, 819472",
+		.desc = "ARM errata 826319, 827319, 824069, or 819472",
 		.capability = ARM64_WORKAROUND_CLEAN_CACHE,
 		ERRATA_MIDR_RANGE_LIST(workaround_clean_cache),
 		.cpu_enable = cpu_enable_cache_maint_trap,
@@ -856,7 +856,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #endif
 #ifdef CONFIG_ARM64_WORKAROUND_REPEAT_TLBI
 	{
-		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
+		.desc = "Qualcomm erratum 1009, or ARM erratum 1286807",
 		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = cpucap_multi_entry_cap_matches,
@@ -899,7 +899,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #endif
 #ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
 	{
-		.desc = "ARM errata 1165522, 1530923",
+		.desc = "ARM errata 1165522 or 1530923",
 		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_VHE,
 		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_vhe_list),
 	},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
