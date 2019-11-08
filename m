Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29324F50EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDLoF163U7mUoVmSQc+apaocx8NLwPTxfQUrRk0PxLs=; b=aKN477HJSR5Dqe
	UZEsR8hiwsxZkKDL+5hxRG44vlkge40Jg2Py32LzugZyJZvyLs8jGhVh1PZ1fs1X44faziNNxIO61
	1OfRUxNSFzqomQkYUlBME6AEb/Ho/Y9/UL60SYHZeWBIeJ+kUTrFZc97SEnlFnxRWZcbXcCuGX0xi
	eVpud2mPbeTlhFxmS8YdHI9IoAGCz811+nZ34/61OfelkQZ1QesIo4RMzZI8VgoiaAabd0iDB99DM
	tSz/P9RqyWSZ5blfT3zKn5T9NVbKTJNYVbI0iAuvyOibrOkom5WnjiE1aeV0wW/AK6I2AVStL5xYC
	ewC4LRksg+Z35YBbdFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6zj-0002L3-RJ; Fri, 08 Nov 2019 16:20:19 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6zV-0001n7-Rg
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ew3ogKlXBoxc+2Xx91c/83BnYWnobgaDV0o3CeSH+Yc=; b=IR1HpFjeVv2Q9qF9u4kMXWPvcb
 jQ6/5NwYGUe/Xfxbus+bFC7jO8qt2lDTctRPBXll4sl75722YRFBUmbyIWTIySdQfm54el38wvV6U
 eX9Q+5P2R1WyyfdZwYYwNv+mTZpwu9ON5dt1ZGER6PZ9nTZSw5r3VZ/Fh6NfN2MzPyzU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT6zT-0007dt-Kz; Fri, 08 Nov 2019 16:20:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id EC6DB2741460; Fri,  8 Nov 2019 16:20:02 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 2/2] arm64: kaslr: Check command line before looking for a
 seed
Date: Fri,  8 Nov 2019 16:20:01 +0000
Message-Id: <20191108162001.11737-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108162001.11737-1-broonie@kernel.org>
References: <20191108162001.11737-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_082005_923285_CF355044 
X-CRM114-Status: GOOD (  13.75  )
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
---
 arch/arm64/kernel/kaslr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 0039dc50e556..c09f12ab6525 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
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
