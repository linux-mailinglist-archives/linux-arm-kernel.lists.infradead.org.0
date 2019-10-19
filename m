Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043D7DD628
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 04:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n8kT5IvooMsgV8+mdwoxkeLF3PWmU1L9+58vvmG/16o=; b=IoK
	ImEj1PqjhafTQJsRQ4CFNWLQ10FSZNR+E8HJub0hb/YuTkNHiBsQ1moxOgUZcljMVQkGVXGYYTiGc
	Ulk4K0R//a69pWWvWR3VMtNhplSVaIM+dAR13GGi+UW+krUfm1AiREIfpnMHRHylcIG3fqgVbXPso
	ojvj0a8mTYX+OjlJGqFTiLzl9/15AMUAXoDP74vlcKtcAjksWEcreV9tPnue4fk8nI/gyx74y7tnG
	77Ow+KpSX5TGIeTaMqXSuMwUnWGLJyHOYfI+T0/hDLnui7F+hN1Sf+9abLCXWW94pLxo5emgoN/M+
	RhYGLAwPZ5XRjke/jpWwaFub6xxVfGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLeMZ-0006cR-N7; Sat, 19 Oct 2019 02:21:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLeMP-0006bY-Vf
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 02:20:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id r1so4303789pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 19:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=OZxB3yUZwqmkE8nLK0z7B1QOB/S9NBhwSOUrUzW9bzE=;
 b=Ph7M/rPNYPADQmJaP49bXc0xz4mq6WHHW5zTvjajYV2BoL+iLcPY25tzrl1YhrFp8X
 xxFObrvyMJXmUB3IlfeHJBOw6oVl45vEq/IHgpGO5mg9QFKzgT6at3FZqIjBiupOb9XX
 Vs9Q3GNfBNJoX77w3ZYaOVYkkmYWft/zv6KJ/rHG3IHs6MRYcC0hOzMGpLt+qbic+qbX
 +3Okt15ibCSrAQM6khnnZnAgfnCoD9WlKfppm+8Pt17EEyOz05nFUwZi3P4ak+Qz4Bwg
 LVuycSLJvIi/3y+Icjo9PFu81ihbxLXLbILVOfUOl94R8vjwVfBqWherraEqPsJwtClp
 ymlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OZxB3yUZwqmkE8nLK0z7B1QOB/S9NBhwSOUrUzW9bzE=;
 b=mxqaoR6SFwwIt4fRS+IKy43P+Y1UFJWunE3cmsd1MANaghjiiKet38r7w/wpwYRYrG
 cf5ZwQkeVgjbm9riSYn4rWWx+bLgfWzXv69SJUJRoYV2WKIiuQVQO+3CCD/hAEhUd7Jl
 rWEwnzvU0LRvZG6f1hwYVFYd/OPqxpYS5H/hrgU02IXul52gdEIjTfEOAIKBWzaf1Mt5
 ZD4zeqf001IK1e0S2hplcsW3Ev/xH6GI451h2gYsn5emyHGqnqIacJPNC6sgwMxKM9pp
 QyilNx+NDKenesc3gbhseaEOqVmCXsIBa89bXTAgpshqwjtGa5UFD1udMavMuaMgmQfz
 mSHQ==
X-Gm-Message-State: APjAAAVRVTnec/00HJ+Y4IfNBMEws7G8IZKATfQoQogU9zKl/aY7dP8E
 +fkmm3bFTMmXOUdPwCVgag7uvCsmr4g=
X-Google-Smtp-Source: APXvYqz38lTUQmrPoILgjPmnL2NLsievHn6HKcnthBzPOb1nk5ouaMoUhSqGykRB4C29lhrEG+AoUQ==
X-Received: by 2002:a63:2348:: with SMTP id u8mr13305452pgm.422.1571451651538; 
 Fri, 18 Oct 2019 19:20:51 -0700 (PDT)
Received: from localhost.localdomain (97-113-7-119.tukw.qwest.net.
 [97.113.7.119])
 by smtp.gmail.com with ESMTPSA id l22sm6635148pgj.4.2019.10.18.19.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 19:20:50 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/1] arm64: Implement archrandom.h for ARMv8.5-RNG
Date: Fri, 18 Oct 2019 19:20:47 -0700
Message-Id: <20191019022048.28065-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_192054_051254_41A217E5 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 Dave.Martin@arm.com, Richard Henderson <rth@twiddle.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <rth@twiddle.net>

The ARMv8.5-RNG extension adds a hardware random number generator.
The plumbing for this is already present in the kernel; we just
have to take advantage of that.

Possible issues:

When should we use RNDRRS?  For now I use it at boot, when validating
that the implementation can produce a random number, much like other
architectures validate before enabling.  I also use it if RNDR fails.
I don't know if that's a reasonable thing to do; the generic architecture
docs are too vague about what's going on behind the scenes.

I mark ARM64_HAS_RNG as ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE so that
it is detected early, because crng_initialize() is called early.
I don't know if this is quite the right thing if some hypothetial
big.LITTLE only has the RNG on the big cpus.

Tested with QEMU.


r~


Richard Henderson (1):
  arm64: Implement archrandom.h for ARMv8.5-RNG

 Documentation/arm64/cpu-feature-registers.rst |  2 +
 arch/arm64/include/asm/archrandom.h           | 76 +++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h              |  3 +-
 arch/arm64/include/asm/sysreg.h               |  1 +
 arch/arm64/kernel/cpufeature.c                | 34 +++++++++
 arch/arm64/Kconfig                            | 12 +++
 drivers/char/Kconfig                          |  4 +-
 7 files changed, 129 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/include/asm/archrandom.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
