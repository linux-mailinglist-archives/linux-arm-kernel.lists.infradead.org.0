Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C8BD38D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 07:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IFDxL8hsEL2Q3Pv2J4ovM5nTybjVfZQQVIbnPPJsVCg=; b=YOknzg+PpwfGN7DKfEnlFzhUjS
	e3HcABAmNNuhEzXg/HG9KTaoUrgYwHWThHL2MZZiWF646qTxUe/StzWwNo7pzT+cjcTIBIlIp2/8u
	e1zVr+CLbHEYCJukCZB157Zmrzhyfr3jkVy64Yh4gbKtXG8pej8J33bi5pMsdlOrjLWqqjbRePsi7
	2v74rzQw+S9BWFMfhAve9vrWWg1Z2ZXzx3/hc9Nk8jcAd+w5ccfeZJQwqKdu2AhHjiGGc/i6ecKe/
	yNvttu/wiaNGnailHFHmXo7V+V1AVdQZNdqbYGkDzTDr5jiZezZfCf2C+gYM84yGmj7uFL//hOdRu
	6P5CdCjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iInnY-0003r3-Kx; Fri, 11 Oct 2019 05:49:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iInnS-0003qk-42
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 05:49:03 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5E358602F2; Fri, 11 Oct 2019 05:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570772941;
 bh=5u+b9wTcZ53qKjgXGaaFghTi4tqrQQDXP/d0qOytXyw=;
 h=Date:From:To:Cc:Subject:From;
 b=ip6g+bb44kV8/QZB3f17uTQQB7HfysqodP5cwuiXWAyVmH3RSlP8vo4g17DFCNRes
 WnakODF1W5OmaX+bbj+qv8j2LXzyrb1J/8S/PMvgqcMdfbPkxedwXU9x33RBoPXfu+
 c9Gza0gQE5hUbeHTCV9OeJTh8rQo1LP+AdRRaZYQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 2402360AA3;
 Fri, 11 Oct 2019 05:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570772940;
 bh=5u+b9wTcZ53qKjgXGaaFghTi4tqrQQDXP/d0qOytXyw=;
 h=Date:From:To:Cc:Subject:From;
 b=dUfyufk25HRoo0/W7C/wC2shC9KnamRqyhTHpicmv50qUBoF6ECs+lgx10OOQlldV
 aiJhXuZQ66X5KbBNneXi5SiST0eVWe+eJsEmoBVnzwSIL8jPB1YuqYR+jEuIda3t/G
 SnzVKog9ayiZCS4MQ8diQSFVML3k9HhasCOazw6o=
MIME-Version: 1.0
Date: Fri, 11 Oct 2019 11:19:00 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: suzuki.poulose@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, Dave.Martin@arm.com, andrew.murray@arm.com,
 jeremy.linton@arm.com
Subject: Relax CPU features sanity checking on heterogeneous architectures
Message-ID: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_224902_208281_AC06F9C5 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, saiprakash.ranjan@codeaurora.org,
 rnayak@codeaurora.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below 
warnings are observed during bootup of big cpu cores.

SM8150:

[    0.271177] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112
[    0.271184] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU4: 0x00000000010142
[    0.271189] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU4: 0x00000010010000
[    0.271192] CPU features: Unsupported CPU feature variation detected.
[    0.271208] GICv3: CPU4: found redistributor 400 region 
0:0x0000000017ae0000
[    0.271237] CPU4: Booted secondary processor 0x0000000004 
[0x51df804e]
[    0.302919] Detected PIPT I-cache on CPU5
[    0.302930] CPU features: SANITY         CHECK: Unexpected variation 
in SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU5: 
0x00000011111112
[    0.302936] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU5: 0x00000000010142
[    0.302941] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU5: 0x00000010010000
[    0.302957] GICv3: CPU5: found redistributor 500 region 
0:0x0000000017b00000
[    0.302987] CPU5: Booted secondary processor 0x0000000005 
[0x51df804e]
[    0.335066] Detected PIPT I-cache on CPU6
[    0.335076] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU6: 0x00000011111112
[    0.335082] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU6: 0x00000000010142
[    0.335087] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU6: 0x00000010010000
[    0.335104] GICv3: CPU6: found redistributor 600 region 
0:0x0000000017b20000
[    0.335135] CPU6: Booted secondary processor 0x0000000006 
[0x51df804e]
[    0.367597] Detected PIPT I-cache on CPU7
[    0.367605] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU7: 0x00000011111112
[    0.367610] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU7: 0x00000000010142
[    0.367615] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU7: 0x00000010010000
[    0.367632] GICv3: CPU7: found redistributor 700 region 
0:0x0000000017b40000
[    0.367661] CPU7: Booted secondary processor 0x0000000007 
[0x51df804e]

SC7180:

[    0.812770] CPU features: SANITY CHECK: Unexpected variation in 
SYS_CTR_EL0. Boot CPU: 0x00000084448004, CPU6: 0x0000009444c004
[    0.812838] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64MMFR2_EL1. Boot CPU: 0x00000000001011, CPU6: 0x00000000000011
[    0.812876] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU6: 
0x1100000011111112
[    0.812924] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU6: 0x00000000010142
[    0.812950] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR0_EL1. Boot CPU: 0x00000010000131, CPU6: 0x00000010010131
[    0.812977] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU6: 0x00000010010000
[    0.813018] CPU features: Unsupported CPU feature variation detected.
[    0.813447] GICv3: CPU6: found redistributor 600 region 
0:0x0000000017b20000
[    0.814144] CPU6: Booted secondary processor 0x0000000600 
[0x51ff804f]
[    0.902441] Detected PIPT I-cache on CPU7
[    0.902528] CPU features: SANITY CHECK: Unexpected variation in 
SYS_CTR_EL0. Boot CPU: 0x00000084448004, CPU7: 0x0000009444c004
[    0.902591] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64MMFR2_EL1. Boot CPU: 0x00000000001011, CPU7: 0x00000000000011
[    0.902610] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU7: 
0x1100000011111112
[    0.902659] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU7: 0x00000000010142
[    0.902695] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR0_EL1. Boot CPU: 0x00000010000131, CPU7: 0x00000010010131
[    0.902713] CPU features: SANITY CHECK: Unexpected variation in 
SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU7: 0x00000010010000
[    0.903217] GICv3: CPU7: found redistributor 700 region 
0:0x0000000017b40000
[    0.903965] CPU7: Booted secondary processor 0x0000000700 
[0x51ff804f]


Can we relax some sanity checking for these by making it FTR_NONSTRICT 
or by some other means? I just tried below roughly for SM8150 but I 
guess this is not correct,
maybe for ftr_generic_32bits we should be checking bootcpu and nonboot 
cpu partnum(to identify big.LITTLE) and then make it nonstrict?
These are all my wild assumptions, please correct me if I am wrong.

diff --git a/arch/arm64/kernel/cpufeature.c 
b/arch/arm64/kernel/cpufeature.c
index cabebf1a7976..207197692caa 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -164,8 +164,8 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] 
= {
         S_ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_FP_SHIFT, 4, ID_AA64PFR0_FP_NI),
         /* Linux doesn't care about the EL3 */
         ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_EL3_SHIFT, 4, 0),
-       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_EL2_SHIFT, 4, 0),
-       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
+       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_EL2_SHIFT, 4, 0),
+       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 
ID_AA64PFR0_EL0_SHIFT, 4, ID_AA64PFR0_EL0_64BIT_ONLY),
         ARM64_FTR_END,
  };
@@ -345,10 +345,10 @@ static const struct arm64_ftr_bits 
ftr_generic_32bits[] = {
         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 24, 4, 
0),
         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 20, 4, 
0),
         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 16, 4, 
0),
-       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 12, 4, 
0),
+       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 12, 4, 
0),
         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 8, 4, 0),
-       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),
-       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 0, 4, 0),
+       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 4, 4, 
0),
+       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 0, 4, 
0),
         ARM64_FTR_END,
  };


Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
