Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF86CFAE3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9DjBb+L/MH1VcbKQDS1y4S7DTAR0NAex09/PvyROPmE=; b=czc
	rAx1SrQmzARV5Mu1SWeaJByhyPpYBD33RAXQqQFtWtHGQjCJfM8w3r1X3wh1rU7SHOc6izfkxcABh
	Ns9RNCLklVwvL2XVh6767k+NV58cRk+aVAntE4bXMgCnQbe4xCrPNxGuFs/zXwVBm5jhspKgxYmUB
	9OoJyr+xKzUx6nqWz22U5ypNqhrRev+wyICnyIhgUr/W/PnuNPxL4iJwilXNVQ+Xq/wCrtypAnyYJ
	ISnNJNym8PYlXLQ9dFvojhtxJ/BYqqM5KCykZrubS3MrzF6VTIAVNRVwllP6eMCTxSkGYH+ixazjh
	90RREcXRmlID8rAa58//o2+9vq2efXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpdP-0007DU-RJ; Wed, 13 Nov 2019 10:12:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpdB-0007BO-Ux
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:12:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id q70so1338402wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 02:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qfsOH+V+FFt5Iv+QrGgZE8TPXjX+qzSLSAGyJ3kwIrE=;
 b=tWbstU+FDUA1HwWfrqONQYhJnptM18pTgDImtEgJRnYbe6cRnq9xn2sqaZoCEupOh3
 d2ttQcZQStn7nW+BP6Ns7HpLcqO6w9QNq5/KHknjlPqTu2/bc2Wsy1tmmPVC18xkq6EE
 2cxG7T1z0gZPO1SniOavy3d0gSW+Qj+nUrRYJJ/tw+G9BAeoN6q46DEnTug+BlCxMYjW
 k6hty9B65FK6crBvzXrWZ6YMdUwaW3Hv9fL5O68URS+kD/IuXdeJrx/ggnWc1o4GLGmp
 m4rZTZQGX02OCafVBuExt12p6K4AAGiIJs9fa/uQxNvUxSs70602RA/zVB34rI9KNLzD
 Z+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qfsOH+V+FFt5Iv+QrGgZE8TPXjX+qzSLSAGyJ3kwIrE=;
 b=XLDL+jLqi3qLWgvCXtHFdBd5rT1WVsHU/IG9VeWiBEtMF0+xsNAOpoK9VPyV35LYhh
 pSWqY5LwMGwHAGR5OR1+OMEXd/t+WAxbQiOqLT+z0jlYBytKD6SoXTdEJx+mOB2/RrO0
 23Q+8vsZAzNGZz/YG2Rh8zQWoXlu/nRDys5ljwUrFhieDGWFuCgtkvp0YRipAcdq39P+
 061YRwxg4Q6cQcEV2VPKR8Y5B8wPIJAqMrR8srAUIu2SBIqLc44c2/tKoTnUdjSq2s1V
 qJxIcbvKH2SreSRr4ZeLDhsP5WT3f7mKSElwhyjCpcgRPQYQqvzrOKwtFWp46PLuUg9Z
 fPQA==
X-Gm-Message-State: APjAAAVtXJdIsET/1f4rzkc7mFn/ShWuysKS595sqSETk6jVEw5/kZFi
 RCvvUqjH6DDgdzZpt7c42Kzeu+cd5P6NSw==
X-Google-Smtp-Source: APXvYqxkzPwvpRNUgA8FlpHiQFDd/vZ51nEYdopSz5ykNVi0JX6FBUKuZB3kbQlmjO9NLh+/PsLYAA==
X-Received: by 2002:a7b:c055:: with SMTP id u21mr2046674wmc.55.1573639926058; 
 Wed, 13 Nov 2019 02:12:06 -0800 (PST)
Received: from localhost.localdomain
 (219.red-37-158-56.dynamicip.rima-tde.net. [37.158.56.219])
 by smtp.gmail.com with ESMTPSA id j66sm1488993wma.19.2019.11.13.02.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 02:12:05 -0800 (PST)
From: richard.henderson@linaro.org
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 0/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Wed, 13 Nov 2019 11:11:50 +0100
Message-Id: <20191113101151.13389-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_021210_074815_7D40F7D3 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Richard Henderson <richard.henderson@linaro.org>,
 linux-crypto@vger.kernel.org, ard.biesheuvel@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <richard.henderson@linaro.org>

Here's v6.  I believe I've collected all of the comments
from both Ard and Mark across v4 and v5, as well as from
the cafe in Lyon.

I had thought about using a simple function pointer for
arch_get_random_seed_long, but didn't see a good place
where I could update that at the end of boot.

Which lead me to ALTERNATIVE_CB, which is way overkill,
but is already part of the update infrastructure.

Tested with qemu -cpu {max,cortex-a57}, which covers both
sides of the alternative.  GDB breakpoints confirm that
boot_get_random_seed_long is what is called from rand_initialize,
and that this_cpu_has_cap returns the correct result.


r~


 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 55 +++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  4 ++
 arch/arm64/kernel/cpufeature.c                | 13 ++++
 arch/arm64/kernel/random.c                    | 67 +++++++++++++++++++
 arch/arm64/Kconfig                            | 12 ++++
 arch/arm64/kernel/Makefile                    |  1 +
 drivers/char/Kconfig                          |  4 +-
 9 files changed, 158 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h
 create mode 100644 arch/arm64/kernel/random.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
