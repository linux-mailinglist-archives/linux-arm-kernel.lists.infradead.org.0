Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0AF5262
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYVpopbbczfNosMbU8H5Er0gdJ+w4dSw8820Vw4k/iE=; b=tHWnP8Cj0OCrtP
	IAhJ47ZANB0m2jyBvSAa1FnXEwn2NW+5BlF6Et4iZhR1YN/b3gj8q0dFLk48FeqCQmSSBrQLEmuut
	I+It9OPnMYMC9PXaplb+nI2mYUDBoZHMn1K+QflD1ILDHTd6L2AOyg3H7ysaYT0sPvApr1jAI2x5m
	mAVZk3gEdcyWY4Y9ms8caizlp+OLN9US9j/l4EpQnrJLzfPitCGC6ac3CT8/YvhC/GyfZVvS9c2i1
	zzURY5W7nIkb7zNHXHbagv4bHTb0Ihq5mcn+lT9H5/s1iIeG1TDVUzk953Gkk1nOYGfChFmKU6HyO
	JF0udaQ9qYTgz72Ci2+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7p8-0004wA-On; Fri, 08 Nov 2019 17:13:26 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7oW-0004XA-Oi
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=47/fzJXWe6SxBp2mmAOfxl5/Vc5aTcjcdd1y2YfHe9A=; b=q4FCBFu47EMsSbVBsnDVCFbOUJ
 WLEvRzZGp0HpwqluV0/Sn4UA6FWtkDtD9kmWgOTkmRMy1u3XEtp3NmRRMkkbSKW/I69+9jIRTkm6g
 7k6B+lhUlPPhpHj/G+rcNWx/PHncmt9/rQ1jyY5HzmqTEjT9LUKa+o0ZLVU6UB8zz8AQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT7oU-0007lY-L2; Fri, 08 Nov 2019 17:12:46 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DDF692741703; Fri,  8 Nov 2019 17:12:45 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v4 2/2] arm64: kaslr: Check command line before looking for a
 seed
Date: Fri,  8 Nov 2019 17:12:44 +0000
Message-Id: <20191108171244.48781-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108171244.48781-1-broonie@kernel.org>
References: <20191108171244.48781-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_091248_798447_0F9E756E 
X-CRM114-Status: GOOD (  13.54  )
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
misleading diagnostics so reverse the order of those checks. We still
parse the seed from the DT early so that if the user has both provided a
seed and disabled KASLR on the command line we still mask the seed on
the command line.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/kaslr.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 0039dc50e556..2a11a962e571 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -26,7 +26,7 @@ enum kaslr_status {
 	KASLR_DISABLED_FDT_REMAP,
 };
 
-enum kaslr_status __ro_after_init kaslr_status;
+static enum kaslr_status __initdata kaslr_status;
 u64 __ro_after_init module_alloc_base;
 u16 __initdata memstart_offset_seed;
 
@@ -108,10 +108,6 @@ u64 __init kaslr_early_init(u64 dt_phys)
 	 * Retrieve (and wipe) the seed from the FDT
 	 */
 	seed = get_kaslr_seed(fdt);
-	if (!seed) {
-		kaslr_status = KASLR_DISABLED_NO_SEED;
-		return 0;
-	}
 
 	/*
 	 * Check if 'nokaslr' appears on the command line, and
@@ -124,6 +120,11 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
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
