Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483FD89EFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLbhFMDgbJGIc6h113mD4144+iHrSrt1d1sX4GdL1+U=; b=mGdbjN2QwS08Q7
	5aPJidWqkiuoF5ZSjfyagOpDFEsL/dVKqH4z9rcBc4g9B0gjqpST0MB+vDs30dVk+SR9tw2Nh2P29
	tu/9lrcgnRcv4QLAytkXICbAJE96q+YX/vCXgOGun6+rEUxuMQGC+PsqA9nGyZZ2EU3dqL1E7u8LE
	TbJQH5SqZp4Empj1aBVTvSsbgKxn6FvhU9IsZFGFMDr86sauiosjQqS/IHwvphADJwycY6lzxm1Rc
	TSgJJzZUpaaILMBnFKhi/8wehePByKuD4CSirBSQb/pebiuUo9LvxyM7Qrc2hT0y4qvi4CkHNkbOB
	4bCflU6cjagQd0hQ6lFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9tl-0003qv-77; Mon, 12 Aug 2019 12:58:05 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9tX-0003py-Oa
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:57:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=syq/tRXIIEB0wZzSMh7clGQmwOfVvN7VI6QsS+KZuyg=; b=fTLzkfE6CAY/HPeRLewEiHPUy
 O0zXCe225OY7C683jRvnZ8s3z7WvP3MprXPwFFmMmnrLLnUeLvofbDdGnq9bV/5C9YAu11jghu0eH
 HHrGk0iKOBSdIqlZ5/swQVUeEiASnQtoN6IKJN3Svgl/k4eeu19FQqSheeRabNsjTolyc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hx9tU-0001Jb-Ek; Mon, 12 Aug 2019 12:57:48 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 613C32740CB7; Mon, 12 Aug 2019 13:57:47 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [0/2] arm64: E0PD support
Date: Mon, 12 Aug 2019 13:57:36 +0100
Message-Id: <20190812125738.17388-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_055751_798740_B32C0641 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for E0PD. We enable E0PD unconditionally where
present and on systems where all the CPUs in the system support E0PD we
will not automatically enable KPTI for KASLR. The integration with KPTI
is safe but not optimal for big.LITTLE systems where only some CPUs
support E0PD since for them it will still use KPTI even on the CPUs that
have E0PD, I've not yet come up with something I like for integrating
support for them with the command line overrides.

	arm64: Add initial support for E0PD
	arm64: Don't use KPTI where we have E0PD

 arch/arm64/Kconfig                     | 14 ++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 29 ++++++++++++++++++++++++++++-
 5 files changed, 47 insertions(+), 2 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
