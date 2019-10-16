Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EF8D9533
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D0Mcs58XKtwT2nWqbTydOwmBrvEqXPHSzyB+IrQSb/U=; b=B320HXD6kyKVif
	KKJwI5cIJKAUKmNEKAEwN2zEZCyeVuYSlvVRlj+YIQd2HF/q4TDqaqJEg1wIJnmxq8H1Y10oTX6Tp
	JL9JVXta4RVNslkEr2Exf2G20XTNNKuuA7EatF5+mSZM0OmT25abzQwcoA5loba8uwyuX4OXpH619
	yBAj5/r+f0gIUM09lsxBNNeeZWNwDkL2sWIdbQjd98/oMfZTzjKzbfXXD/to1U9wHhcsFV4I0hhvO
	p8DSUVOVByRyjMdUDBr0WFwpPKjfSgFXjRqoFv+AwPPNGVSRrzbovluTMSO/DX+evYUKlDa6ocx0F
	rKRR/Gb3MFJEiAoEwMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKl0c-0001rx-Iu; Wed, 16 Oct 2019 15:14:42 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKl0O-0001rI-PN
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rNDz6lBl54oAMAl4PoUh87ZZXiXfc3HUNKtTz7Vb+bY=; b=rikSPSIpC/ighuL1VSVcnJBIv
 y0hDlNzJ0B28jW/q4J+lBZc1xot0E8tzFPsrr791atMr9lf+o979CCdCvPIgGrtCVNT57P3PraYRe
 /PerpqLx8LphSG2MJou5kFo3fWLMxpo6j9jbk6Z/GH0SHbYIfjWcEWmriV39p7D3iBjUU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKl0I-0005gI-9X; Wed, 16 Oct 2019 15:14:22 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7BF7D2741FD5; Wed, 16 Oct 2019 16:14:21 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 0/3] arm64: E0PD support
Date: Wed, 16 Oct 2019 16:14:18 +0100
Message-Id: <20191016151421.27708-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_081428_845143_55C249F4 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for E0PD. We enable E0PD unconditionally where
present on systems where all the CPUs in the system support E0PD and
change to not enabling KPTI by default on systems where we have enabled
E0PD.

v3: Make E0PD a system wide feature.

Mark Brown (3):
      arm64: Factor out checks for KASLR in KPTI code into separate function
      arm64: Add initial support for E0PD
      arm64: Don't use KPTI where we have E0PD

 arch/arm64/Kconfig                     | 15 ++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/include/asm/mmu.h           | 64 +++++++++++++++++++++++++---------
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 29 ++++++++++++++-
 6 files changed, 95 insertions(+), 19 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
