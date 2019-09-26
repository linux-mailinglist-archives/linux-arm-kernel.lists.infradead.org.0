Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2DDBECB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 09:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Be90ZwW3XXPr6QyAmkwsVnL3KTamqwuRGaAFF28wqig=; b=g9E
	i2ozKl7UerxdVh9mMrXAYkvggdj5andhi+iKqmxr2zL995OWKLNuvtyHaGW8VO1pEdtFrs5lLwN4Q
	JEhLFHd6hjOdUI8KccJ5DYFeY6Hvq474V/jg8QzE2neVo2dyNBn8naAKCVEQw8FfIQEe/fzjO/FH3
	FONRxjFnVlDwFSy9JyuLjmdN3utCqzrGNPO5sRX4ATNCYqaf/dfRQWweUt4eRsSgZOOyeUMpGiG5R
	1bJY+C7hHwW8QHavtxWeyzQqod/ukRnm3UDTXqJsah2hd9P4DmTIFuUuMm6YR7CsMb627PWob6t/M
	+1vZHUOOVHJAtzX3NabHFdUcSX0IDKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDOOV-0000v2-Mq; Thu, 26 Sep 2019 07:40:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDONO-00086P-Pf
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 07:40:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id h195so1332994pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 00:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HzGUkaoGcW3mdUmJnqxtLb5+t2i8FwmzFVNwvPd0PPg=;
 b=m6Yje2WDv15asqStTscydbt0qRWRZ6Bd7CHEuPniujA0FAiEHBYuYu1baqtdLuM52t
 Xcm1dzwW/CRhroaEjMApnsvEKgF9nvYLIStzepqWGa8miuWs6aqvwBRgXw1Tz9OSHY2z
 10tjXskx5HzSkIAz82Wh9E20UXjc1+6Lla+vN//8rTwtQlfKovJYgtfVOY6RKf7+PNSD
 +8x9OtXOK+8Kx/cUTzZa7Vz1jqNZRv8pTBE42UvVl11TImOC8+lkfMFP9Oyt89gnsVrn
 w+ojblxcInKrM7ZqMYpUIL5QJsjIwyGPHw7h3HfmlXO1/kd6t5xq1ezLCWUhjfKLsfGu
 qENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HzGUkaoGcW3mdUmJnqxtLb5+t2i8FwmzFVNwvPd0PPg=;
 b=W1pgUY4xjhBGMi9XglMMB2/jpbUwRjLM8Eht3iYQWA4sikVNFViaAq9HznsWSKuZbE
 TZ3facLyNfMunBaFU1iXK1DpdalNDoFwZ/78Wh/8Kl5RAvTwqdRKZ4cbHU475tGNESNF
 cCfVecqcAStDFD4GbiaSP94D8gV+AZCN1keHbxFZAqVouiJaASufrKuh1ABtI7C50GmK
 JUlngqABqsSK0jA/PzWr9ATdBtSAG3M39ShCGQgh5FHwII/g8cr/ZDfhs/ShYnwqEN7r
 qbYRL+L4goINCxtU/ItLUF45MGV7uw/rEDuXez0GZ0LKNnlKmRvwu9LAIdkk/JX9dPuF
 n1Kg==
X-Gm-Message-State: APjAAAU4jNzsFq1tAMNm71MzhiJ9B4bhRqoG9V2KN8MY1Gokqn5mm76l
 VTU308PbuQKZknqW+1aJoCA2iPHI+xo=
X-Google-Smtp-Source: APXvYqxfyaPfSeYrkecMjySLxZ/eEs3VKQY0c+5Rbj9H35ViN9RC2gqgO5x/VsuVxvnW6VnFtFgMjw==
X-Received: by 2002:a65:6799:: with SMTP id e25mr2099914pgr.271.1569483583803; 
 Thu, 26 Sep 2019 00:39:43 -0700 (PDT)
Received: from bj04616pcu.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id a8sm2608699pfa.182.2019.09.26.00.39.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 26 Sep 2019 00:39:42 -0700 (PDT)
From: Candle Sun <candlesea@gmail.com>
To: will@kernel.org,
	mark.rutland@arm.com,
	linux@armlinux.org.uk
Subject: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
Date: Thu, 26 Sep 2019 15:38:28 +0800
Message-Id: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_003948_798988_065D3777 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (candlesea[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nianfu Bai <nianfu.bai@unisoc.com>, Candle Sun <candle.sun@unisoc.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Candle Sun <candle.sun@unisoc.com>

When ARMv8.1/ARMv8.2 cores are used in AArch32 mode,
arch_hw_breakpoint_init() in arch/arm/kernel/hw_breakpoint.c will be used.

From ARMv8 specification, different debug architecture versions defined:
* 0110 ARMv8, v8 Debug architecture.
* 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host Extensions.
* 1000 ARMv8.2, v8.2 Debug architecture.

So missing ARMv8.1/ARMv8.2 cases will cause enable_monitor_mode() function
returns -ENODEV, and arch_hw_breakpoint_init() will fail.

Signed-off-by: Candle Sun <candle.sun@unisoc.com>
Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
---
 arch/arm/include/asm/hw_breakpoint.h | 2 ++
 arch/arm/kernel/hw_breakpoint.c      | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/hw_breakpoint.h b/arch/arm/include/asm/hw_breakpoint.h
index ac54c06..9137ef6 100644
--- a/arch/arm/include/asm/hw_breakpoint.h
+++ b/arch/arm/include/asm/hw_breakpoint.h
@@ -53,6 +53,8 @@ static inline void decode_ctrl_reg(u32 reg,
 #define ARM_DEBUG_ARCH_V7_MM	4
 #define ARM_DEBUG_ARCH_V7_1	5
 #define ARM_DEBUG_ARCH_V8	6
+#define ARM_DEBUG_ARCH_V8_1	7
+#define ARM_DEBUG_ARCH_V8_2	8
 
 /* Breakpoint */
 #define ARM_BREAKPOINT_EXECUTE	0
diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
index b0c195e..cb99612 100644
--- a/arch/arm/kernel/hw_breakpoint.c
+++ b/arch/arm/kernel/hw_breakpoint.c
@@ -246,6 +246,8 @@ static int enable_monitor_mode(void)
 	case ARM_DEBUG_ARCH_V7_ECP14:
 	case ARM_DEBUG_ARCH_V7_1:
 	case ARM_DEBUG_ARCH_V8:
+	case ARM_DEBUG_ARCH_V8_1:
+	case ARM_DEBUG_ARCH_V8_2:
 		ARM_DBG_WRITE(c0, c2, 2, (dscr | ARM_DSCR_MDBGEN));
 		isb();
 		break;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
