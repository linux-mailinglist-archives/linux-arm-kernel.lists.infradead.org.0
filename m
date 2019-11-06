Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20706F1852
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OKK1vcW+CN3xwP2zJJnDBZbx6KWmfHd12eKc0Qbbgks=; b=QtZ
	IPXQufoOaB//jxxcvFMcORjgvMJ2Jvmx0g2hY91lrUxd69y9AsYgnzzaaTgxSmYeF9krl+f6MOr34
	JzGjWZIvfSOwg2q0fQ0zK84v5kHXJD4+ZqegXh4lR/OYPB70ycoDpr+uK5oi32Q5/Mn4elKkBJ2/J
	fPg7KuDhE4OpAGxoIDX+ZohXjOYvc9L7sG5WCsFB4Ed29NHtMw//A98xMqCVwb3hwc+5auOO89ocf
	jDuiZNNvxXPtU27L3IDABF9Zub2G5rn+ecwYhJDLWFzCd4YGtNMs+uXxYU67PK8gSOQrqv3mJiJcJ
	gIy0HefB+GlRAwDn66/LaB3h7juLP1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMAT-0005l7-PF; Wed, 06 Nov 2019 14:20:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMAK-0005Gr-28
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:20:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so25986078wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8BtBfv1f64XM22OKVAWg9tny4DrS6nBkaS+49knlZDw=;
 b=E49WR0tTA98/K0BeZ6M0oSIbi9GQHW7rjF+kMCUVzHyozP3/lL7cYzcwBrpA9XyEN7
 Za8ZNFOuagrVowQJcxkXIb174OEEKzGEMlYh1vAU6ZQpP9WFv4ipin+8kjFmkoI9OtlN
 L8HWJ/fMxM2iqV68MOxGBgy2o36VGLuQNZ7SFboNd4lvUkF2k+7R3nBBhJwNcEUUpWu0
 qPwioeoDTWgZ27bIvd0MGoAhtZywFrEamwWtLJX2/0IlPNOKwfZM3+uMDAqpwkCH+DKM
 DhoNDWHLWzCoaGjQ6DNr5rJ1NZc602EiYesaOGDIrgNSGKw59hykiNkbrPCBZpc5jrGN
 VHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8BtBfv1f64XM22OKVAWg9tny4DrS6nBkaS+49knlZDw=;
 b=Grovf/CZH/ki08Sdf/MT6hBQ2huKE/RP2gQrEUHEx6Fj4bKc/tDxDmkumJxBcJTsjg
 bKMYqGBc7esZFsN3u8FjtWwNLspPrfOc4qB91DKsU3VM1iP7umQhgDiM7XiJaUrTgP8f
 1EF8J4+Rp20NY1q6pb3ZFshDFBsJeJD2mQjjCtptNvNja8NmKpofKjRYtxd+U4ud+eJn
 2eWiIct62JYvHUqr0y1kHtrlgRh9YP2svMsRMJseIgqZCk2noowqjRVsbHHKCfOY3TIU
 2MK8F9w2qakw4M7eiBxck0zO6DGWu5iF1gGoQMyWZnJveOjNsGaZl1X0UF7RQ0P5IPL/
 zyoA==
X-Gm-Message-State: APjAAAUZkCPTMtEQkhtrF4Jdk4zA1JaX6sB8GfOXGpLMXuH5Q7JPmEqQ
 i3PTojQ3XFcC8QJ1IvficB62DuPZub6FSg==
X-Google-Smtp-Source: APXvYqy6u8LC596fT4iTndVF5NRGlUkwmHxUF4f04mY1HYJ5KLMJh128KkcuYc/QCTLryNllGrpiYQ==
X-Received: by 2002:a5d:4803:: with SMTP id l3mr2913835wrq.381.1573050006556; 
 Wed, 06 Nov 2019 06:20:06 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id f13sm24004818wrq.96.2019.11.06.06.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:20:06 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Wed,  6 Nov 2019 15:19:53 +0100
Message-Id: <20191106141954.30657-1-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_062008_120141_B8D76F84 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, linux-crypto@vger.kernel.org,
 ard.biesheuvel@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARMv8.5-RNG extension adds a hardware random number generator.
The plumbing for this is already present in the kernel; we just
have to take advantage of that.

Changes since v2:
  * Keep arch_get_random{,_seed}_long in sync.
  * Use __cpus_have_const_cap before falling back to this_cpu_has_cap.

Changes since v1:
  * Use __mrs_s and fix missing cc clobber (Mark),
  * Log rng failures with pr_warn (Mark),
  * Use __must_check; put RNDR in arch_get_random_long and RNDRRS
    in arch_get_random_seed_long (Ard),
  * Use ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE, and check this_cpu_has_cap
    when reading random data.
  * Move everything out of line, now that there are 5 other function
    calls involved, and to unify the rate limiting on the pr_warn.

Tested with QEMU.  What's not tested is hot plugging cpus with differing
capabilities; QEMU would need some extension to allow that sort of thing.


r~


Richard Henderson (1):
  arm64: Implement archrandom.h for ARMv8.5-RNG

 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 35 ++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 +
 arch/arm64/kernel/cpufeature.c                | 13 +++
 arch/arm64/kernel/random.c                    | 79 +++++++++++++++++++
 arch/arm64/Kconfig                            | 12 +++
 arch/arm64/kernel/Makefile                    |  1 +
 drivers/char/Kconfig                          |  4 +-
 9 files changed, 150 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h
 create mode 100644 arch/arm64/kernel/random.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
