Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3795DE7A20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=STENEj/22nMHD/tZFgPFVfMKlcs4hxXbw3F35r/QW+U=; b=ZT+
	Yz6MSvfnY7idGlbGzD0zM3JTmHOKmj+rSF2sZOqnG6c54EKAEnhdU1KDWhLG6xSQopi6qU/6qZx8c
	UgkCZKJCtowjs6nY6qv8yNBLz2z9SQSoJSB/Ga54xwYjmPMcbyiE6KIci8WLCPXwWSau3pIo1WpfX
	/MpGSeQtrCtLcfpRyD5KE/Q20IlFVwrOuh/fLfPsswR3De9Ip4dksuBF3f8gpwN7q0+XdIojmPV92
	QpUtX00iUJi71OSG1qx22ROZljaiL8jzUa5BagrT1WqHNmeMjng+xfzltAeyloBKT3qCzJqC/mkqL
	HqzjXh8JqcDPAooCEsVQCQsvfupgnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBhN-0001mp-C9; Mon, 28 Oct 2019 20:33:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBhD-0001ln-Qv
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:33:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so307777wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 13:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=y4EUhsOM5hSQLRpeshpyDAq+iJB0OfhKCO0yxAAKOe4=;
 b=Z8eNxH6WsuheYqo/vZnrHazR6/lM9U/nvVmHe8YO3jbCharUCNjeF+ZjgtzfO+zSyg
 oggI2Z4KPkwVHHI02pKw9iEtvl/stHYRd0QhZVMds9kpxwyrO0sZgeMcpOvHAe1RwPiz
 Q9JLJUaVKiGvBa2FpCLamKg96iwEdfUAs0xbDo37b/k7FScicyT+FX2nXeRzr6OvE7dT
 yiXUhbhlbiaLoWZoB86O8euwhPLThUw8Df+hydyDmAxH7KMchEzfIflsWzwRp9sJu09p
 Ov0+szgl5IgUd2gaK19J1ibb6kcVtNz8yiJLn5t6xsQnq79vKMenTZz7zFJRKjvnmBZR
 NQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=y4EUhsOM5hSQLRpeshpyDAq+iJB0OfhKCO0yxAAKOe4=;
 b=ZkJHYK7avunRKn3ftJSs+G9UbJeG+bCWVyVyn0IUg8WWgxSVOoOjjw5B6KR1q2kHR6
 bHQi+OuH1R/QSv6iT8SiJvVW5KgvPPYpj2DP/WdtPs/H5n9Yl5qF9GFGUPLmX/5uKs16
 +VWAnXE2jbjsKjaShd78hfXtoFH3gVTueP1bCbZEaeLGRmJscU4EfJCAcgXVMGOfAGoq
 lTy9gYXo65VqJf2qJRl6VI6xhP0EZvXzuJXxRGOAP6po2NWjDh9kyk3qRlaXhWbGvc7s
 /WuBD8YiRMJqMolKfTxDEldwmWplPOLUjFUaQh/zFnEDvlaj/ohYEyPcKvypfAT6uzhB
 jl0A==
X-Gm-Message-State: APjAAAVnIbZGY9zpo1+xz31R43h0Acs1DOONYebHoeNa21CDEFOcNAUd
 pkTs9TacwGm+1ic2Lmxxt1KeuVXCXLyNYg==
X-Google-Smtp-Source: APXvYqzLsiJ5xm1lZ2yj8onrwprZ+84mNuI8jwYKwGHQ1E8hknH1Z4Pmg7lRD9IWG7ET6ILcZCe28A==
X-Received: by 2002:a05:600c:2247:: with SMTP id
 a7mr1000824wmm.19.1572294776077; 
 Mon, 28 Oct 2019 13:32:56 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id q15sm7227992wrr.82.2019.10.28.13.32.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 13:32:55 -0700 (PDT)
From: richard.henderson@linaro.org
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Mon, 28 Oct 2019 21:32:53 +0100
Message-Id: <20191028203254.7152-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_133259_877683_435CBA5A 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, Richard Henderson <richard.henderson@linaro.org>,
 will@kernel.org, Dave.Martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <richard.henderson@linaro.org>

The ARMv8.5-RNG extension adds a hardware random number generator.
The plumbing for this is already present in the kernel; we just
have to take advantage of that.

Changes since v1:
  * Use __mrs_s and fix missing cc clobber (Mark),
  * Log rng failures with pr_warn (Mark),
  * Use __must_check; put RNDR in arch_get_random_long and RNDRRS
    in arch_get_random_seed_long (Ard),
  * Use ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE, and check this_cpu_has_cap
    when reading random data.
  * Move everything out of line, now that there are 5 other function
    calls involved, and to unify the rate limiting on the pr_warn.

I have a separate patch set to add __must_check to the other
architectures.  But it doesn't affect this.

Tested with QEMU.


r~


Richard Henderson (1):
  arm64: Implement archrandom.h for ARMv8.5-RNG

 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 32 +++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 +
 arch/arm64/kernel/cpufeature.c                | 13 +++
 arch/arm64/kernel/random.c                    | 95 +++++++++++++++++++
 arch/arm64/Kconfig                            | 12 +++
 arch/arm64/kernel/Makefile                    |  1 +
 drivers/char/Kconfig                          |  4 +-
 9 files changed, 163 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h
 create mode 100644 arch/arm64/kernel/random.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
