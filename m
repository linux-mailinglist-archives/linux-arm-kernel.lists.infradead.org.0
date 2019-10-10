Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FAED2440
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXpX2cgczGDpD2M24uxD0z2JVg++Usas5gTcEoiC2sk=; b=aJeP2KP+fo3Rev
	Tx9moHy10hQ4VNmIUdVzaomUNYt3aK9IQKHmyOy3aD4qQ70qmMwCztWkzqlm8u1t9BXEgLnASmbdk
	YHp2tjF9KmgyeSwqHl0YXTOTURKYn7OXUg/YciButs/NOTBfuzRKejwpaHG4eNR6IK3kpsR2thtl5
	fBhW2OBNjOLsOQ5uEWfEodAFEAKAtMBCwg+XcU5RfsPscXKrza5SFesmEPXjBJRboUBy4YJwghfJB
	DxV95GwNxAlyZ9jp/SiGidWQLkhBuzN6chqK0Kdd5MT1Ke6cCXW5KQagEfsGUghVKJbW3CWkCBnJ9
	k+7LUJEjpPcDzncm+nGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIU9l-0007U9-Ts; Thu, 10 Oct 2019 08:50:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU7l-00045A-LC
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:48:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B833121929;
 Thu, 10 Oct 2019 08:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570697321;
 bh=IyVvloWswiwb0rHjj5ssPaCzfOBHQsDBo6CZ5n2dG7o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=siq/iEVaQlSVNtjn/p3JBKEpbkKzNDmrrbS7Dr4V1H7jjz8KRLH4VupRd166e8NFu
 Vwb73Y4t4AicllntYTo4FFd15md9UrqbGoHVjsb4/D99gUkNfK1Lf9rcs5a++o0PNI
 MqBk/LxYP9i3uN1NrsznUHgYLT6pOprpY7G/ahxs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4.19 100/114] arm64: add sysfs vulnerability show for
 spectre-v2
Date: Thu, 10 Oct 2019 10:36:47 +0200
Message-Id: <20191010083613.477591447@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010083544.711104709@linuxfoundation.org>
References: <20191010083544.711104709@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014841_747872_22F56F82 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit d2532e27b5638bb2e2dd52b80b7ea2ec65135377 ]

Track whether all the cores in the machine are vulnerable to Spectre-v2,
and whether all the vulnerable cores have been mitigated. We then expose
this information to userspace via sysfs.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |   27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -480,6 +480,10 @@ has_cortex_a76_erratum_1463225(const str
 	.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,			\
 	CAP_MIDR_RANGE_LIST(midr_list)
 
+/* Track overall mitigation state. We are only mitigated if all cores are ok */
+static bool __hardenbp_enab = true;
+static bool __spectrev2_safe = true;
+
 /*
  * Generic helper for handling capabilties with multiple (match,enable) pairs
  * of call backs, sharing the same capability bit.
@@ -522,6 +526,10 @@ static const struct midr_range spectre_v
 	{ /* sentinel */ }
 };
 
+/*
+ * Track overall bp hardening for all heterogeneous cores in the machine.
+ * We are only considered "safe" if all booted cores are known safe.
+ */
 static bool __maybe_unused
 check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 {
@@ -543,6 +551,8 @@ check_branch_predictor(const struct arm6
 	if (!need_wa)
 		return false;
 
+	__spectrev2_safe = false;
+
 	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR)) {
 		pr_warn_once("spectrev2 mitigation disabled by kernel configuration\n");
 		__hardenbp_enab = false;
@@ -552,11 +562,14 @@ check_branch_predictor(const struct arm6
 	/* forced off */
 	if (__nospectre_v2) {
 		pr_info_once("spectrev2 mitigation disabled by command line option\n");
+		__hardenbp_enab = false;
 		return false;
 	}
 
-	if (need_wa < 0)
+	if (need_wa < 0) {
 		pr_warn_once("ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware\n");
+		__hardenbp_enab = false;
+	}
 
 	return (need_wa > 0);
 }
@@ -753,3 +766,15 @@ ssize_t cpu_show_spectre_v1(struct devic
 {
 	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
 }
+
+ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
+		char *buf)
+{
+	if (__spectrev2_safe)
+		return sprintf(buf, "Not affected\n");
+
+	if (__hardenbp_enab)
+		return sprintf(buf, "Mitigation: Branch predictor hardening\n");
+
+	return sprintf(buf, "Vulnerable\n");
+}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
