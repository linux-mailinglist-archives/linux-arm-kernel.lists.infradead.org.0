Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A41135DE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjQKkAZeLZ5QVfwOmef7hmqp3IVCx5w3L2TZZcwGWSw=; b=WUE4t35UrUR0Ft
	VFiaEu1fRmH9K1iJ8BbYQSqUf383szbaC2gC1g9ebq0Lj4RoHgrnl8JdnsMjNLi2AZypnADB/as8T
	x8gqzzXB8G4hUDWOdFR9dCL3870YcUjwQpwUYoTopGCobLsTpUfeApmv8EPzL8B1cW/FePrttSaIE
	GlYbxJaYZVKMdbrcpStGTrN9SgVLbOjGLXEpndk3uHqGXQrtLB4B0cVVN3XsHua0aZvvQts3J3C9F
	4rKHEfSc3X//Sdrqi1fcJYqqJgtbz7zFfTR2/qewkN81q3y7OzqRON9942QuVfU7+wxrsz8fhsa+u
	i/xxxElpV8PwFZpOoTSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaS0-0007wF-Ks; Thu, 09 Jan 2020 16:14:24 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKw-0000A2-3e
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586023;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=buj5zxwQmq+EgC9+pqBGy/R4fCPRVRg23/mLLDHCY/0=;
 b=c1mS/1/UIuRzSYMHWM1bzqO/KbgiSxNlvh+0IjthwSekfddNFXKm1dWL2jVJGuwuSY1zot
 JFZCnneAtMHKXlbRoNfLkHHj9Zwv4zkJVS2K0px6XK983OrDD8cUPBRXbeQk5NM53Wq7LM
 Rj7ZXvFY+er9vTKDBtgIkhaW8on/68Y=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-O3H-sbF5MyGkaWslaHvolA-1; Thu, 09 Jan 2020 11:07:01 -0500
Received: by mail-wm1-f70.google.com with SMTP id l11so888458wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:07:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C242X53zcOHATp6nW8wanAXybHBsTs8xiHcl5AgRRKM=;
 b=LdrJCEovz2F3sgiH00AvD73167YhInHooKV1ECeuzDFpicNPdSJCzhBad8Iw7xN3jO
 qMPquEgNhHRYk6/N0gea2aFOLvWGpWUNiWFvb9t0u9YFoFL52aYEFwXYxOx+iwKVULO1
 kg6dwlKVVSl9Ulm99yN9ujS9ydyeUOhLhyhjtXPLuyjcvuE0ovsigHyVHW0lTpRgs+Gg
 zbaR8yBC7DBQDLHmh/47ItudjcyAbV0FPNe9+bcDR2ar9ue6kVLiCi2yE8vwIIQGOKog
 AfXTJ+HZolnO1QZ924rqN1se1yakHqQ2kgnZcSSrOZQt4BGGmFflGj/42+BauhHt6TlU
 MuKA==
X-Gm-Message-State: APjAAAWzXAlOoDOpJnk6eEBYaeIuzaS7QbLs4VE5dRh2T+qMDYwD4BW+
 q9pFHqz9sxqSCYunDrIpdifJTRCX4NRuYOWiIdQ+ElNc8vF1Rxne5aO0EfOiPYvbm04baFBrjOg
 ks5rdZhOVYJJtXfrTmDf+NDE8OG90z7FV48s=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr5945679wmk.68.1578586020594; 
 Thu, 09 Jan 2020 08:07:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxHOfR4JB2i4uBDVB7MQ9mxgnZen75IkCm90k8Leliq2qj5mXFDzoMI/euFvStxlxW9fbs8Jw==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr5945652wmk.68.1578586020371; 
 Thu, 09 Jan 2020 08:07:00 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id q3sm9123252wrn.33.2020.01.09.08.06.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:06:59 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 31/57] objtool: arm64: Decode load/store with register offset
Date: Thu,  9 Jan 2020 16:02:34 +0000
Message-Id: <20200109160300.26150-32-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: O3H-sbF5MyGkaWslaHvolA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080706_280434_E230C457 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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

Decode load/store instruction using the value of a register as offset
for the target address.

Since objtool can't keep track of the possible values of this offset, it
is not possible to take this instructions into account for stack frame
validation. Luckily, the compiler does not tend to generate these
instructions for stack/frame pointer manipulation.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 34 +++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |  3 ++
 2 files changed, 37 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 7064302416f4..00d5d627af08 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -830,6 +830,11 @@ static struct aarch64_insn_decoder ld_st_decoder[] = {
 		.value = 0b001100000000011,
 		.decode_func = arm_decode_ld_st_imm_pre,
 	},
+	{
+		.mask = 0b001101010000011,
+		.value = 0b001100010000010,
+		.decode_func = arm_decode_ld_st_regs_off,
+	},
 	{
 		.mask = 0b001101000000000,
 		.value = 0b001101000000000,
@@ -1200,3 +1205,32 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
 	}
 	return 0;
 }
+
+int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
+			      unsigned long *immediate,
+			      struct list_head *ops_list)
+{
+	unsigned char size = 0, V = 0, opc = 0, option = 0;
+	unsigned char decode_field = 0;
+
+	size = (instr >> 30) & ONES(2);
+	V = EXTRACT_BIT(instr, 26);
+	opc = (instr >> 22) & ONES(2);
+	option = (instr >> 13) & ONES(3);
+
+#define LD_ROFF_UNALLOC_1	0b01110
+#define LD_ROFF_UNALLOC_2	0b10110
+#define LD_ROFF_UNALLOC_3	0b10011
+	decode_field = (size << 3) | (V << 2) | opc;
+	if (!EXTRACT_BIT(option, 1) ||
+	    (decode_field & LD_ROFF_UNALLOC_1) == LD_ROFF_UNALLOC_1 ||
+	    (decode_field & LD_ROFF_UNALLOC_2) == LD_ROFF_UNALLOC_2 ||
+	    (decode_field & 0b10111) == LD_ROFF_UNALLOC_3) {
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+	}
+#undef LD_ROFF_UNALLOC_1
+#undef LD_ROFF_UNALLOC_2
+#undef LD_ROFF_UNALLOC_3
+
+	return 0;
+}
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index 1e031b12cf69..9043ca6f6708 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -106,6 +106,9 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
 int arm_decode_ld_st_imm_pre(u32 instr, enum insn_type *type,
 			     unsigned long *immediate,
 			     struct list_head *ops_list);
+int arm_decode_ld_st_regs_off(u32 instr, enum insn_type *type,
+			      unsigned long *immediate,
+			      struct list_head *ops_list);
 int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
 				   unsigned long *immediate,
 				   struct list_head *ops_list);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
