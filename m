Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C1F135DE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JESEaEzzliC3dMj6EWj6FuiiGwgfF7I3zbOvhFgVj/4=; b=o8zSs4Ypf5xgVT
	Pdg9QXFJ/KbUlaPUJGFZAbKvBVZqE99L+K7pvBGITxYfdyIs2Y6pfNRJfwi3YtrgCo8hwsCiinDph
	6XuJhhSv18dTK0kwQ09yOLLubtZMiiFTqRaetBQxMYPOBD3oF6t+EFhKASoWibJ8EQUiA/9qkIBD2
	d2NajBmNOPj7F53vysL+Hw+1BaO/bLlI11UPnS1PE+WW7NsC5N23teQDUQWJaoZBtENzENtSPHv4W
	mdzuwfo7Lf3IEeXJYa2IG2wc93wSdl+g9Ga5uAxdE+5MUcZHDwbhS3Rd266PWbPHjvm2MiZxM/BzC
	0xJrrzbT0y8XRpetQURw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaQi-0006d5-JC; Thu, 09 Jan 2020 16:13:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKK-0007vH-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585983;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2G/c7GPowFok5ALwyk1F5fUboM78XmAHyRYoMCK7uzU=;
 b=IMYWAiSmiQ/pLNRxU5Cbw3UAiesWuaU7dShSYrdwWyk0JgPBojt7bydNpCoFL7irJm9uUx
 DwWGdKPE4WoCQvP1S3mBGg7QR4V1Mc+LKgAezYH/wKPy3yiY80oYWl0qbDDWbL0wVhpClV
 sgDANf69XBVMLdgChVCwtDWNBi+BdFg=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-6WttVQ6AM5WnQAll9BTE1Q-1; Thu, 09 Jan 2020 11:06:22 -0500
Received: by mail-wr1-f71.google.com with SMTP id d8so3035573wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:06:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FgwSNSqS6px8jp3jNYPpBzj7QjkDMZcWf7jBSHIJiCU=;
 b=M/FCv35MF4zG7XJMKl9S1WJffWIVvcfNrTGlyCvtkEIhifl15B5O9m0SKy2PCVnGL5
 Qr+lD4VYBG+hUbUHdUOgM4i8pgc5LZUDHzjGPF+TmIXidxkUokgBy3AXRMK4fl/HF6bV
 wBpooY3o1zV4FR0uLDmN5A/y5zo0dNSOqH07/P9zDI8OeVfpZVMysRFtCHfmeJyuW7Fj
 ZSXyoVVmj+Dgyg7qkBPTn+3UW1pXDx8b8f2UCluYDZw2uxQDLlEZNClX+XDHWsawo/PB
 IKUQ+xvoivz08V5FLcCw7E4ed4SNV8JIeZHQ88V0kUN7PCaiH/eFFnmk0Yov395eyjpr
 egWw==
X-Gm-Message-State: APjAAAXvrJ56PvfeT22PP9gJTT0zoT3cR+BHCkDxaO3arvMaLKRGpSHt
 eFHA+ubB7q8Kfp5qA6zd7zH0IIo8JmMxL/d7lLkEHtYwqfLgOvza7BueLWcPnSSHimAAEJ4nC2v
 P4mHn+JAdKimMWRnm2JKcfx3rHy7vRNOM0cQ=
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr5555833wmj.37.1578585981649;
 Thu, 09 Jan 2020 08:06:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqz3pweoOYbsv4OP48X37FSBCDstfv+4OYIDJH8H8/t6Mr+whcukViSF0ZLbVNz5xhoyBsMETg==
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr5555817wmj.37.1578585981473;
 Thu, 09 Jan 2020 08:06:21 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e18sm8643101wrr.95.2020.01.09.08.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:06:20 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 26/57] objtool: arm64: Decode brk instruction
Date: Thu,  9 Jan 2020 16:02:29 +0000
Message-Id: <20200109160300.26150-27-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 6WttVQ6AM5WnQAll9BTE1Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080628_381306_ABAF363B 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add decoding brk instructions. Associate known immediate values with
their kernel/compiler semantics.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c | 33 +++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index aa00de725686..1609750cc4b9 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -507,6 +507,7 @@ int arm_decode_except_gen(u32 instr, enum insn_type *type,
 #define INSN_SVC	0b00000001
 #define INSN_HVC	0b00000010
 #define INSN_SMC	0b00000011
+#define INSN_BRK	0b00100000
 
 	switch (decode_field) {
 	case INSN_SVC:
@@ -518,6 +519,38 @@ int arm_decode_except_gen(u32 instr, enum insn_type *type,
 		 */
 		*type = INSN_NOP;
 		return 0;
+	case INSN_BRK:
+		/* Based on arch/arm64/include/asm/brk-imm.h */
+		switch (imm16) {
+		case 0x004: /* KPROBES_BRK_IMM */
+		case 0x005: /* UPROBES_BRK_IMM */
+		case 0x400: /* KGDB_DYN_DBG_BRK_IMM */
+		case 0x401: /* KGDB_COMPILED_DBG_BRK_IMM */
+			*type = INSN_OTHER;
+			break;
+		case 0x800: /* BUG_BRK_IMM */
+			/*
+			 * brk #0x800 is generated by the BUG()/WARN() linux API
+			 * and is thus a particular case. Since those are not
+			 * necessarily compiled in, the surrounding code should
+			 * work properly without it. We thus consider it as a
+			 * nop.
+			 */
+			*type = INSN_NOP;
+			break;
+		case 0x3e8:
+			/*
+			 * Similar to the use of "ud2" on x86, GCC inserts
+			 * "brk #0x38e" instructions for certain divide-by-zero
+			 * cases.
+			 */
+			*type = INSN_BUG;
+			break;
+		default:
+			*type = INSN_CONTEXT_SWITCH;
+			break;
+		}
+		return 0;
 	default:
 		return arm_decode_unknown(instr, type, immediate, ops_list);
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
