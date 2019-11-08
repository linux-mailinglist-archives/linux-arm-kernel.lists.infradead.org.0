Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CED1F51E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jUvEaafUgkrt4eF8jwPoMTsru3szRdhveZJITnw7ulM=; b=SRWUoBNZM+n+re
	iuxlPw/uMeXMVr6NZ2+wgmoNynRDU0RVc1GIhmV1vdhLiLMfmzWWs6PP2wjwLUwF8sGSUvL2QAXWi
	OOAKqoVpxhmH2Gq4M+wSozBXkGVwUuQRpWMGtOBFNFBrreBIF8O/2duszmfHOfbzsgiFs6S+lLP3+
	qhPvto0O/EJtBEGV6X4VoESM9DIuh/Fnd15q3aEYQOk7AFPGcfSdJWjqmUB51+CuH313wfzEkEX4F
	lDYQTftPr5MT35ygmGDSu0BOqV/LzUAEQnxvFSQe2RBGCjO6hAcAvKLT70iJtUmuCSCyaSY9VTK5g
	JR7+3nEuKu/B8JELOa3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7de-00060J-8d; Fri, 08 Nov 2019 17:01:34 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7dS-0005yg-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PA1Fnn1gQkXDlQI44Xvg49rpAfFaJPycRfR4MtxdH3Q=; b=TJTZnMJlEIrcYuODZBsvneZEQ
 Yd9quiRySD4x23fMRb8gpOinKn6HHR60Il0Zt1gpSncDX8QlAWZQqwyN1j1VcqG/PvDk2pXH1lsw6
 Ez3dyXg2vSOL9yomri/CrjMqsNS3JzKEBlvMFWDVHS5FrODMPC6qzPXV1+28qSUzMX8Tk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT7dP-0007jX-6H; Fri, 08 Nov 2019 17:01:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 472A62741460; Fri,  8 Nov 2019 17:01:18 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v8 0/4] E0PD support
Date: Fri,  8 Nov 2019 17:01:12 +0000
Message-Id: <20191108170116.32105-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_090122_829854_459E634D 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

v8: Keep the explicit MIDR check for TX1 so things work properly in
    early init and tweak comments.
v7: Move early initialization to the start of setup_arch()
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

 arch/arm64/Kconfig                     | 15 +++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/include/asm/mmu.h           | 48 ++--------------
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +
 arch/arm64/include/asm/pgtable-prot.h  |  4 +-
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 77 ++++++++++++++++++++++++--
 arch/arm64/kernel/setup.c              |  7 +++
 8 files changed, 106 insertions(+), 51 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
