Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6198FF08AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:49:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QVK4zrsQIno1oMVWENP2lcHkTIoQ1GN3/+mEpaduMig=; b=OSTEC3QWRF9J8y
	UvDnY37ZKaJwEtzIL0EEITlCFOH6VLC55/Q+JAIYoJ7PM+IspcenmkzBZFBbqgOTd/W2VDkw4P9de
	pqp2CniH65rrMPep2YUGAKn4ImKvlrAghC1MZAToyt61GldE6YuK4LM5NfLrIx07HRPwn9L4aEp1J
	1g06ZMLQFlfu0Aucyt3xnIpug6fkduPL4NI9LhWWia6ZYX8223J7FPyCSt6g4lL3MnQEZQNssVDDx
	OfXemKGVXPDJ3PLIUDzUv7RXCJ6KIzji1RQh5G7jquSX/aN8Vvj2hUwvX1Wa9fvMvl62HqToAe+ZQ
	cwtSV6fGL1FGlqiTzzIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6hf-0007hW-QZ; Tue, 05 Nov 2019 21:49:31 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6h9-0007Fz-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:49:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cN+UEcdm9nnrYAV0E5v9Fz2VrOEf/XMgM7a+kgPaLDw=; b=t9Qk45Kv6oD999VhVJxbq3uys
 Z/LYvIhjQHO4WFRkviLBEU6tWTZFc+qmGF2cq0DR9SYyNmgAKNYS/htRkYMXednK04Tug8IzYq/eh
 pfAFbdZdYMAb8a2OmoY60hs5bHopFeypg4ArJxeHQEulpCTx5yNiRbobhV51KjeSIwgCE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iS6h6-0007oL-9A; Tue, 05 Nov 2019 21:48:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5FF3C274301E; Tue,  5 Nov 2019 21:48:55 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v6 0/4] E0PD support
Date: Tue,  5 Nov 2019 21:48:50 +0000
Message-Id: <20191105214854.30725-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_134859_860315_0036CF85 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for E0PD. We enable E0PD unconditionally where
present on systems where all the CPUs in the system support E0PD and
change to not enabling KPTI by default on systems where we have enabled
E0PD. It also converts the runtime checks for use of non-global mappings
into a variable.

v6: Move early initialization earlier.
v5: Rebase on v5.4-rc3 (there will be conflicts in cpucaps.h) and add
    code in patch 4 to start making non-global mappings from boot if we
    know then that we will need KPTI, preserving an existing performance
    improvement.
v4: Use a variable to store our decision about using non-global mappings
    rather than rechecking constantly at runtime. I've added this as a
    separate patch mainly for bisection.
v3: Make E0PD a system wide feature.

Mark Brown (4):
  arm64: Add initial support for E0PD
  arm64: Factor out checks for KASLR in KPTI code into separate function
  arm64: Don't use KPTI where we have E0PD
  arm64: Use a variable to store non-global mappings decision

 arch/arm64/Kconfig                     | 15 ++++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/include/asm/mmu.h           | 48 ++----------------
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +
 arch/arm64/include/asm/pgtable-prot.h  |  4 +-
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 70 ++++++++++++++++++++++++--
 arch/arm64/mm/mmu.c                    |  7 +++
 8 files changed, 99 insertions(+), 51 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
