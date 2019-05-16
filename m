Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60663203A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d/6VCh5Vz5c9vks9dDXouXrvIuClNxlT+Ej7oIZITF0=; b=dnugMnhu52+y7ujq73J8xQl7O+
	cbmqvqPbhTI4ky3JN9W77YXLKIUpbQcSwE4cSEhp6vro/ei3zb8fXmJ4ZEs8LARDsqtroCXVL3jRo
	A6jYGaHGTGCkaialOQ8+sVGGdJiqFbAVv6nj5di1MiX/iotSMExCGNnTm34wvfLruYbnrHAn57Gta
	5Yz+HErVq8BOZDp70/OZawifQnMRGletQCbelJt8Xj6LhQ9edf3td2NtOJVXktX6YQqTk+h/sWCrC
	ERq57qvmWW0GOWeO1svjwTy9TofLdSOGse4Y8EhK6lK2B8pODOAwlnJ36GvCxLdWDwlhNUKzs/KQE
	YE3KZuFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDmh-0006Ix-SJ; Thu, 16 May 2019 10:38:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDm5-0005es-Qm
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:38:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9E671A25;
 Thu, 16 May 2019 03:38:09 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F3EF3F703;
 Thu, 16 May 2019 03:38:08 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 05/16] objtool: arm64: Handle hypercalls as nops
Date: Thu, 16 May 2019 11:36:44 +0100
Message-Id: <20190516103655.5509-6-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516103655.5509-1-raphael.gault@arm.com>
References: <20190516103655.5509-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_033810_131576_2C276B09 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We consider that the hypervisor/secure-monitor is behaving
correctly. This enables us to handle hvc/smc/svc context switching
instructions as nop since we consider that the context is restored
correctly. This enables us to get rid of the "unsupported instruction
in callable function" warning which is not really useful.

Note that those instruction/warnings are caused by hypervisor-related
calls.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch/arm64/decode.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 721152342dd3..6c77ad1a08ec 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -577,8 +577,11 @@ int arm_decode_except_gen(u32 instr, unsigned char *type,
 	case INSN_SVC:
 	case INSN_HVC:
 	case INSN_SMC:
-		*immediate = imm16;
-		*type = INSN_CONTEXT_SWITCH;
+		/*
+		 * We consider that the context will be restored correctly
+		 * with an unchanged sp and the same general registers
+		 */
+		*type = INSN_NOP;
 		return 0;
 	case INSN_BRK:
 		if (imm16 == 0x800)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
