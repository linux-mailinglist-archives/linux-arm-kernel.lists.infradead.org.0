Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A68FE31B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=udCFqHhXan3LX6IBylX98uJ1uihZGR1gtvjTaSmeDIY=; b=lknLu1C4HXQZQB
	SryQx4Y2pQMT924AfwdDRL9aLZxpNeDdcZr1AX0hbp1r8aEDvGAZ3CMoR9VizX4ukMrBCwUqkH6xF
	wmbnrOWitn38ierlxxqzBEEdt1GWg/87Ma1tGZNq27f4rFv38kS2Wvfh5+xQm1z9JgF6aeb3Fvb1Q
	vsxn2/v4TQ6R+EUZ8WfZIC8OOLz2o86rJVPI39+brRUoWQ5gYZqXunZU7b3FVXoUO2xArGQTDdDFX
	2L930wZkismfFZyZasWtA8XUvGtpqLvUmUnRdGKYU/u9IfRf99MRLmZr8cFg37ScL+2/YKJkH97Ct
	NgFGVpGP6DY1CFqNdfRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbog-0008Q0-Gw; Thu, 24 Oct 2019 12:02:10 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNboS-0008PC-NG
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jc5Ij7yge+2d3Qxg+SrQy37JR+CCTk1/KKEFRTcecxQ=; b=iuNS3VdaBFDkvouxVz1q5p6H3
 HF5+DnfhSkwxFACT/t1gRSU//BtkhTi6XhsQCgu8VE9nje0UbbH98D8Ty364x69brEIX0GRIDngKz
 vEcDOeubxMeQ/gCfHnI90OJPhetcZqevq/lOPFgtZlF3c3dYaJQdIrV9lE6CaxkSzYvYY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNboP-0003SB-T1; Thu, 24 Oct 2019 12:01:53 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 4D313274293C; Thu, 24 Oct 2019 13:01:53 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: pgtable: Correct typo in comment
Date: Thu, 24 Oct 2019 13:01:43 +0100
Message-Id: <20191024120143.48584-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_050156_763678_45410C2C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

vmmemmap -> vmemmap

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/pgtable.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 69b1b9126d90..e9e14fa608f7 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -17,7 +17,7 @@
  * VMALLOC range.
  *
  * VMALLOC_START: beginning of the kernel vmalloc space
- * VMALLOC_END: extends to the available space below vmmemmap, PCI I/O space
+ * VMALLOC_END: extends to the available space below vmemmap, PCI I/O space
  *	and fixed mappings
  */
 #define VMALLOC_START		(MODULES_END)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
