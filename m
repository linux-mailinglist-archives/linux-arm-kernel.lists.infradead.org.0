Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391C32984C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EbveHKmBC20xMDcGLhE1rroEJzPM3loORnkoP5NSjjI=; b=Z+sBNppAaTgfLV
	qsHA1DJkFqCGDujWibmD68ltDCy5blKqZLTdy2gknWrg3g8SVj35V74fZAJvwZQJssfa/fPV0kGI2
	3a/5BeltSLVyOkkP/Eh4I7bXWlOgGZy0keCYp9CYZCrrc/lPafF4NxnOa/6UqqcO7SlzE3Zoy4p3G
	0whbrz/qECh56gnzhyEebhJdM2TEkqk+jeR58DYzGLsWXGIVd1/wuLVTOpgDwdTNR8pb8jLmIjhmr
	RDSob82xDBvQyNX4cn5RZAdwwqTWQsPdatV3lHX6TohT9F1rEV42VqlC3W3AWJtVxhjx8Aj5V+vbn
	fbEYQt1gkiNKNFiPRnIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9hd-0001io-E9; Fri, 24 May 2019 12:53:41 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9hW-0001hz-2H
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:53:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4745DA78;
 Fri, 24 May 2019 05:53:33 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E34EA3F703;
 Fri, 24 May 2019 05:53:31 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: will.deacon@arm.com,
	catalin.marinas@arm.com
Subject: [PATCH 1/2] arm64: insn: Fix ldadd instruction encoding
Date: Fri, 24 May 2019 13:52:19 +0100
Message-Id: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_055334_113185_63AEB2C0 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bpf@vger.kernel.org, yoshihiro.shimoda.uh@renesas.com,
 linux-arm-kernel@lists.infradead.org, daniel@iogearbox.net,
 kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCC 8.1.0 reports that the ldadd instruction encoding, recently added to
insn.c, doesn't match the mask and couldn't possibly be identified:

 linux/arch/arm64/include/asm/insn.h: In function 'aarch64_insn_is_ldadd':
 linux/arch/arm64/include/asm/insn.h:280:257: warning: bitwise comparison always evaluates to false [-Wtautological-compare]

Bits [31:30] normally encode the size of the instruction (1 to 8 bytes)
and the current instruction value only encodes the 4- and 8-byte
variants. At the moment only the BPF JIT needs this instruction, and
doesn't require the 1- and 2-byte variants, but to be consistent with
our other ldr and str instruction encodings, clear the size field in the
insn value.

Fixes: 34b8ab091f9ef57a ("bpf, arm64: use more scalable stadd over ldxr / stxr loop in xadd")
Reported-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
Strictly speaking, to be consistent with the ldr/str instructions we
would also check the Acquire/Release bit to filter out the acquire
release variants. I'm not sure if that matters, I think taking them in
is harmless.
---
 arch/arm64/include/asm/insn.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index ec894de0ed4e..f71b84d9f294 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -277,7 +277,7 @@ __AARCH64_INSN_FUNCS(adrp,	0x9F000000, 0x90000000)
 __AARCH64_INSN_FUNCS(prfm,	0x3FC00000, 0x39800000)
 __AARCH64_INSN_FUNCS(prfm_lit,	0xFF000000, 0xD8000000)
 __AARCH64_INSN_FUNCS(str_reg,	0x3FE0EC00, 0x38206800)
-__AARCH64_INSN_FUNCS(ldadd,	0x3F20FC00, 0xB8200000)
+__AARCH64_INSN_FUNCS(ldadd,	0x3F20FC00, 0x38200000)
 __AARCH64_INSN_FUNCS(ldr_reg,	0x3FE0EC00, 0x38606800)
 __AARCH64_INSN_FUNCS(ldr_lit,	0xBF000000, 0x18000000)
 __AARCH64_INSN_FUNCS(ldrsw_lit,	0xFF000000, 0x98000000)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
