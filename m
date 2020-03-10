Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A79180C4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 00:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZmEOxdFDF3ALOVxuiy9yIvXwDZR5Ybjq0n5t4HyZ+k=; b=gYHJviXa98N5Mg
	2HCeEuKhGlhb8hSLq+aqq1hjKztTnkzXSR5dgTzNGx9TW9R1C4GCYqjS/1jxfirZKp3E2f/s3Urzm
	7Y+ONgK1/fPi80uJEC6V+s4pkNqTsR0wNsAUC0GW03YtfiEeTCHJIbVY4mfXGrtLyf1xar/W33XUq
	KT/Okdm6NEnw7umwQR4FPhzEwVScv5jsjjHicgub4OlWT3gnHvCEupMYYi+dTtn39FzDKbtcS/7jH
	RZMSwXZTPusYYOji15shBJynHNNd4QxrlpMSjLs3gy/DCZ1HoTU4X+gP1IetiMXVro5hG0lznC6NN
	ALOUo8upZjoK70P/VrZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBoGI-00080t-E6; Tue, 10 Mar 2020 23:26:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBoGB-000807-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 23:26:04 +0000
Received: by mail-ot1-x341.google.com with SMTP id j14so80792otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 16:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iFjDio0RBC9Ro+1dWHvbTXYCexYzMv87LgebC+GcvxM=;
 b=KWoXpiInXMXxU2hznUDQ66l76Y1c0uRm/xCWDHAIJhqvrOgFAMrJmjLcHl9olgPeJ9
 C5mMBOjfrzXloXCHduMqiqxzkjpSQj7gsDpO2XoS+w0OvOzTkExvCDyiwHoF7pB/MReB
 vlejKbURCY3Xto9ud26A9HUFAStx240xyRJ6mn8YHeh6abLOp4zJF2hs69K0OGCVuSnM
 q4kZ23Vsdh3WEO4Xi2Czt+ose2Dx/IbIoUblALBUMYhYDXOxMBSdqxziTX2O0CF4F3HO
 /1Uq/7dmEbqDi1K8uzlraB2UC3P12m9mAhJoJhW8cTLmN5O8897dV4mF5scmrJM0+lzf
 J26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iFjDio0RBC9Ro+1dWHvbTXYCexYzMv87LgebC+GcvxM=;
 b=SdTGrohBL6aeGzXe7P8D98Q9sfp0nn3/yMebyQB/C1SAwHC+/DRCBq59ryLFEbSKpa
 2QDRKkAnLJZZ3Nqvmfq0f5/3HNSQMEZwbX7+MPOFUZMff2AI/HqROaSjYcXkS+m7glKR
 exe0RllPteWAnZ0T/4mh2H3mYojbQVb/hm1rIm2/uquf4XZxiRNMqkehclmEkr9hPQfq
 8j21MOQLGqHIHsj2cf3swztuk6D5E2VmtIgmk+Ey3eJzp/5POJ2XJYto1N1vgfB9Jfeu
 3p8FYeqV0Cr4e5VnWC+6PZ/FmttsioCH0MB2AI2cguQDSG2B5L/hrgbUuIHIS4586g1K
 AiNQ==
X-Gm-Message-State: ANhLgQ3kS/6tEA9ZnQHF3tleLimqp4EDePd8sMC4dOzdVfx2779HPI+j
 h2zkN4JeYDhaM+7s2fLQOds=
X-Google-Smtp-Source: ADFU+vsSsYsONyl0ITi9npDiUJlPy79ZrwMI5OA30Cy9VpdQ9cwFR6ANQkJvfAf9BAEpb2z73KgTOA==
X-Received: by 2002:a9d:5e82:: with SMTP id f2mr146921otl.240.1583882757608;
 Tue, 10 Mar 2020 16:25:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id s2sm9187966otp.35.2020.03.10.16.25.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 16:25:57 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Mark call_smc_arch_workaround_1 as __maybe_unused
Date: Tue, 10 Mar 2020 16:25:44 -0700
Message-Id: <20200310232544.8792-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_162603_350993_B438F85E 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building allnoconfig:

arch/arm64/kernel/cpu_errata.c:174:13: warning: unused function
'call_smc_arch_workaround_1' [-Wunused-function]
static void call_smc_arch_workaround_1(void)
            ^
1 warning generated.

Follow arch/arm and mark this function as __maybe_unused.

Fixes: 4db61fef16a1 ("arm64: kvm: Modernize __smccc_workaround_1_smc_start annotations")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/kernel/cpu_errata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6a2ca339741c..df56d2295d16 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -171,7 +171,7 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 
 #include <linux/arm-smccc.h>
 
-static void call_smc_arch_workaround_1(void)
+static void __maybe_unused call_smc_arch_workaround_1(void)
 {
 	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
 }
-- 
2.26.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
