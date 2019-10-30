Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542E1EA5CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 22:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OW53qH2NRJ9k0cqV7EYP9rzb5oefsE/u2va96UbCSxg=; b=rp1LqISK/WWljQZKOXvPO1ujsB
	/S1BzAfcM90+KLilcYq23ld9XTQ/+bvAi57mFIS4oQ5AD04mJrjf7Acgu28/1JHwB6Idl9DFsuSf7
	TrKHUGe6M2fyiRjM+cvzjkPY/5C9VA8hiTS4yCE4OddQerQpz50zznFQytWp7GHUf+8/35n6/qIbC
	ANvqQjQCAPIcs4QBEr5LOyYKN0dkTEUjhsoS45HWNcPJNqs4Eo305tQ6jWbWy0hgW4l8MsC4f2DLL
	fsNST6HJ25wlTVYJD7w/E1MQusFQ9/KN78Ywdmh1ZOw70VsHAFhRAQcGi/3BjqQZ2Q1j1D7oawnA9
	T4BXuP/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvvG-0006cW-Cs; Wed, 30 Oct 2019 21:54:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvv5-0006by-QQ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 21:54:25 +0000
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 468122087E;
 Wed, 30 Oct 2019 21:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572472463;
 bh=h3ycbU7rxpqME1LdoKXdrrW6QoIlfRkPaJCNCRJsl8E=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=yvCf2NNd05MjAZZYe2/k4lZR6fxFFUW3LM+M3veEyaPOUQkbnwfxVOODcDy8HliCf
 lGamm1KgTe45v+B15Kzlckzf2hkjBV3yKNeExIw2v0kINvWYTDAEXNgRsFZF9/lHRx
 10SVok2JyQUIPoMRTGGsHFK8bhWLSiujehlwZVf4=
Date: Wed, 30 Oct 2019 21:54:22 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
Subject: Re: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor/Kryo errata
 1003
In-Reply-To: <20191029171539.1374553-1-bjorn.andersson@linaro.org>
References: <20191029171539.1374553-1-bjorn.andersson@linaro.org>
Message-Id: <20191030215423.468122087E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_145423_897888_12A02089 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: , stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: cce360b54ce6c arm64: capabilities: Filter the entries based on a given mask.

The bot has tested the following trees: v5.3.8, v4.19.81, v4.14.151.

v5.3.8: Build OK!
v4.19.81: Failed to apply! Possible dependencies:
    1e013d06120cb ("arm64: cpufeature: Rework ptr auth hwcaps using multi_entry_cap_matches")
    396244692232f ("arm64: preempt: Provide our own implementation of asm/preempt.h")
    5ffdfaedfa0ab ("arm64: mm: Support Common Not Private translations")
    6984eb47d5c1a ("arm64/cpufeature: detect pointer authentication")
    7503197562567 ("arm64: add basic pointer authentication support")
    880f7cc47265e ("arm64: cpu_errata: Remove ARM64_MISMATCHED_CACHE_LINE_SIZE")
    95b861a4a6d94 ("arm64: arch_timer: Add workaround for ARM erratum 1188873")
    a3dcea2c85129 ("arm64: capabilities: Merge duplicate entries for Qualcomm erratum 1003")
    bc84a2d106bea ("Merge branch 'kvm/cortex-a76-erratum-1165522' into aarch64/for-next/core")
    bd4fb6d270bc4 ("arm64: Add support for SB barrier and patch in over DSB; ISB sequences")
    c9460dcb06ee6 ("arm64: capabilities: Merge entries for ARM64_WORKAROUND_CLEAN_CACHE")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")
    f58cdf7e3cab3 ("arm64: capabilities: Merge duplicate Cavium erratum entries")

v4.14.151: Failed to apply! Possible dependencies:
    05abb595bbacc ("arm64: Delay enabling hardware DBM feature")
    12eb369125abe ("arm64: cpufeature: Avoid warnings due to unused symbols")
    1e013d06120cb ("arm64: cpufeature: Rework ptr auth hwcaps using multi_entry_cap_matches")
    1fc5dce78ad15 ("arm64/sve: Low-level SVE architectural state manipulation functions")
    43994d824e844 ("arm64/sve: Detect SVE and activate runtime support")
    611a7bc74ed2d ("arm64: docs: describe ELF hwcaps")
    64c02720ea359 ("arm64: cpufeature: Detect CPU RAS Extentions")
    672365649ccac ("arm64/sve: System register and exception syndrome definitions")
    6ae4b6e057888 ("arm64: Add support for new control bits CTR_EL0.DIC and CTR_EL0.IDC")
    94ef7ecbdf6f7 ("arm64: fpsimd: Correctly annotate exception helpers called from asm")
    a257e02579e42 ("arm64/kernel: don't ban ADRP to work around Cortex-A53 erratum #843419")
    ba7d9233c2199 ("arm64: capabilities: Handle shared entries")
    bc0ee47603647 ("arm64/sve: Core task context handling")
    ca79acca27363 ("arm64/kernel: enable A53 erratum #8434319 handling at runtime")
    ddd25ad1fde84 ("arm64/sve: Kconfig update and conditional compilation support")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
