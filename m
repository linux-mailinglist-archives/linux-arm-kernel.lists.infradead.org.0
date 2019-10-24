Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B0BE2BB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gN4WxWyTpzPUTRnMuM5QUOjr/1skeYAIehQIhe4fXac=; b=itW
	W5tOGfuIFfJ5P86t1mWQ+BMEMI4R6I27USQDn87NNoftDcIEghLCxxSQCVY3KMer8Xc3UAquj2TFG
	0WVuYAlxap6tcTccceMeuuhUgC/zb47Hzf1dJtBWyw9nTed4L2wO3WHGZ9ZfhBSY1Q+4z0We8mztG
	yfUerXAPl45HrAk8oxllCxI26b2zt9dkoWN8lRk3YtkzztlRQxUuZnx4W4lkLGaCzEbjWC1uPrC2x
	jNLBLodf/1m22U7G5ScYMMGaCRABK/v7vo+xHXy3fy1lcYz5KryMH8vIJ8D7KjHNLHwXfxA9DPmtU
	TS9qY5M3lTcs7rnfoDbpLN5S47ZjzmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNY8S-0005d6-PK; Thu, 24 Oct 2019 08:06:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNY8J-0005WZ-QY
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:06:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so3423163pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 01:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NFoNoda1L6TcjGEZkH600gLw7do0fH+cm0nMeiwx1No=;
 b=pIb7uaZbCqnCujproV7m9tVwv0YdwyYx1TFg7DVfK66jZ9OYBo/jGT0v/rEFbtiqxC
 9QhGcprVfN7oqUdF1Lb6oy5u9yeLb0XqfNzFBPguhnGo13YyMCFvmvmpWbcK733KMzHS
 hRql/h3l82wAwKR2UDCvTVdUzZi1YBi26EZpePSYfbEC1MpVTvQJxQeyrBCLCTLswfXz
 PQwZV+6EgX5NkqmAjLGidZOBYGWVGLtfnXKjfeyizGeamapHVSt/n2QQb6uAJ7KX67Ic
 uRwfcdgQmsHK7DXE2zQPN33XTjBL+vQjYZLTzkZe1sdjLB3buRZmH8Qm5l03J/bDUmcD
 P4xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NFoNoda1L6TcjGEZkH600gLw7do0fH+cm0nMeiwx1No=;
 b=izgT7Biq2U/7Ac02DmGSj8KQceHgqIrktLysmqFHxor7JepZA4GjdTwDmAzQBXN16q
 X2EotiFcOWxV48Yanl1NIIP5zqkF34L6CvK86XWx0qexVD8+EEoE8cYkjJXo1Szf/fLg
 EVvfZ58v4LI2VflOzd5XUJc9BAekHcaCXllHHt7F4OAIBAz3i3Sa81sooc1uaRY5i698
 WYJ0ZcO7k6lo+aCXZH00da1DjWP1rl6rptiPZDkerYoTera3CX3zrn1r+XlMpPdUTjhS
 qcnOpQ5JauxdpIU8WrVfyh9FQAG8jKVZIEtPMkuW/1KQSUzJpaHuScAR46n3JHi2Wpr/
 kIFg==
X-Gm-Message-State: APjAAAWfSOdtphjg641OQwbaUeIvm9eYzeEM5e4ypk8XnnGqK9J+AHtT
 t//qSaaiQK0beM4nRYSDAAo=
X-Google-Smtp-Source: APXvYqw7UO8GUnj1b4b6XfcSX4TDykES9o8aKOfMTBGvKR2D5ewQd2I6zEpaFZqx9OkuUskfTsrGCA==
X-Received: by 2002:a63:3104:: with SMTP id x4mr14846008pgx.135.1571904370642; 
 Thu, 24 Oct 2019 01:06:10 -0700 (PDT)
Received: from bj04616pcu.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id m22sm25659959pgj.29.2019.10.24.01.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 01:06:09 -0700 (PDT)
From: Candle Sun <candlesea@gmail.com>
To: will@kernel.org,
	mark.rutland@arm.com,
	linux@armlinux.org.uk
Subject: [PATCH v2] ARM/hw_breakpoint: add more ARMv8 debug architecture
 versions support
Date: Thu, 24 Oct 2019 16:05:39 +0800
Message-Id: <20191024080539.9187-1-candlesea@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_010611_889514_2C8EC0BC 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (candlesea[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nianfu Bai <nianfu.bai@unisoc.com>, Candle Sun <candle.sun@unisoc.com>,
 orson.zhai@unisoc.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Candle Sun <candle.sun@unisoc.com>

When ARMv8 cores are used in AArch32 mode, arch_hw_breakpoint_init()
in arch/arm/kernel/hw_breakpoint.c will be used.

From ARMv8 specification, v8 debug architecture versions defined:
* 0110 ARMv8, v8 Debug architecture.
* 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host
  Extensions.
* 1000 ARMv8.2, v8.2 Debug architecture.
* 1001 ARMv8.4, v8.4 Debug architecture.

So missing ARMv8.1/ARMv8.2/ARMv8.4 cases will cause
enable_monitor_mode() returns -ENODEV,and eventually
arch_hw_breakpoint_init() will fail.

Signed-off-by: Candle Sun <candle.sun@unisoc.com>
Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
---
Changes in v2:
- Add ARMv8.4 debug architecture case
- Update patch description
---
 arch/arm/include/asm/hw_breakpoint.h | 3 +++
 arch/arm/kernel/hw_breakpoint.c      | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/include/asm/hw_breakpoint.h b/arch/arm/include/asm/hw_breakpoint.h
index ac54c06764e6..62358d3ca0a8 100644
--- a/arch/arm/include/asm/hw_breakpoint.h
+++ b/arch/arm/include/asm/hw_breakpoint.h
@@ -53,6 +53,9 @@ static inline void decode_ctrl_reg(u32 reg,
 #define ARM_DEBUG_ARCH_V7_MM	4
 #define ARM_DEBUG_ARCH_V7_1	5
 #define ARM_DEBUG_ARCH_V8	6
+#define ARM_DEBUG_ARCH_V8_1	7
+#define ARM_DEBUG_ARCH_V8_2	8
+#define ARM_DEBUG_ARCH_V8_4	9
 
 /* Breakpoint */
 #define ARM_BREAKPOINT_EXECUTE	0
diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
index b0c195e3a06d..02ca7adf5375 100644
--- a/arch/arm/kernel/hw_breakpoint.c
+++ b/arch/arm/kernel/hw_breakpoint.c
@@ -246,6 +246,9 @@ static int enable_monitor_mode(void)
 	case ARM_DEBUG_ARCH_V7_ECP14:
 	case ARM_DEBUG_ARCH_V7_1:
 	case ARM_DEBUG_ARCH_V8:
+	case ARM_DEBUG_ARCH_V8_1:
+	case ARM_DEBUG_ARCH_V8_2:
+	case ARM_DEBUG_ARCH_V8_4:
 		ARM_DBG_WRITE(c0, c2, 2, (dscr | ARM_DSCR_MDBGEN));
 		isb();
 		break;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
