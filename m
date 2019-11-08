Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D362F501D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMy9tkH1ztPpH8drUaCB9mPyTlEWokSe0CjnlqlL1fg=; b=NZ5cK+c1m5gyHc
	/+D/pzHVY0zdQNXo5yErcTh2hc0MllJ8dWJp6loiJRwwrStXSuIp84WVz4oOsYkwe+UE91tRX6i8n
	kI8uzfv1fErIrSYaoRLCxX0HvuKsbVAkeVMc4JMyLWhEFaNLTPRcUCM3V4seJl8WpkmuDT+pxVfoD
	5T2rLVd5lOhoiOtU95IbV1ddelFbN8T1oexLLy9AUSYJ2pyGaIW1m6NNa7HnjL/1G+wdjSgbcLBAT
	JtDJ3MXeNLT68Yx5ONFuGMQxKt+NWWvHsxbhtrc9kQ8SwUaLXlRCQmKAkuefbkrMsxY8aanBipnmt
	Zuwra//+CUERA5R7zo8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6T5-0006Dc-1B; Fri, 08 Nov 2019 15:46:35 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6Sk-00064X-6h
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c+FytMcFbstnXhlctv7MGGLn21WswJahqRhykjACQvo=; b=xTp/jJcvP7mkb0JU3/TTk5OZQM
 8ZQsgvAgRkyFRnTNa0A1d7OvwD2cpQ7z+zq7bsNPGDtf+H6RcWxcIjDIivNNXQDlp85fRyHUym0n8
 VXugI4XOo15Bt79Cvogmzaj7BbmmkBBBLg81PiyGdDL/VVFqW52dCQ3xt662OX8bLNVw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT6Sh-0007Yd-IU; Fri, 08 Nov 2019 15:46:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DF8972741702; Fri,  8 Nov 2019 15:46:10 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/2] arm64: kaslr: Check command line before looking for a
 seed
Date: Fri,  8 Nov 2019 15:46:07 +0000
Message-Id: <20191108154607.51051-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108154607.51051-1-broonie@kernel.org>
References: <20191108154607.51051-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_074614_256229_85ED0B48 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we print diagnostics at boot the reason why we do not initialise
KASLR matters. Currently we check for a seed before we check if the user
has explicitly disabled KASLR on the command line which will result in
misleading diagnostics so reverse the order of those checks.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/kaslr.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 0039dc50e556..cbd481af0c3d 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -104,15 +104,6 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
-	/*
-	 * Retrieve (and wipe) the seed from the FDT
-	 */
-	seed = get_kaslr_seed(fdt);
-	if (!seed) {
-		kaslr_status = KASLR_DISABLED_NO_SEED;
-		return 0;
-	}
-
 	/*
 	 * Check if 'nokaslr' appears on the command line, and
 	 * return 0 if that is the case.
@@ -124,6 +115,15 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
+	/*
+	 * Retrieve (and wipe) the seed from the FDT
+	 */
+	seed = get_kaslr_seed(fdt);
+	if (!seed) {
+		kaslr_status = KASLR_DISABLED_NO_SEED;
+		return 0;
+	}
+
 	/*
 	 * OK, so we are proceeding with KASLR enabled. Calculate a suitable
 	 * kernel image offset from the seed. Let's place the kernel in the
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
