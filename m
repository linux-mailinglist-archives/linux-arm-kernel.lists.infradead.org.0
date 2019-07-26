Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6B276B53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9uwniN7WL2CeuNJoTpk691jt02jsDol5zzWgS/Pe9TQ=; b=WK9nB3Z8LZo664AJaHk93DcWwY
	kTMRXv1ZYNlQsRS9pAGHKE8gNF02wQIzZZwyxclZyWfUwzpdbHj1e/RbyGNxiiqpf0AGxzQC+XlQf
	ql7MHO+O8A7Y1mGzF9CvZsrFvucviOTlzzyUT1b3J1/1bIBB8U8Q+BXmk5dXBF3An/prJksMnIG25
	wUbjOef3IPVPmuaYd3da4+FATc5IZ9O9wazex+wf9sFurkWQZe6KK0/OqCSfaSMKXdqiHcPCB+CIn
	3YV5RRZ9TrV+22qVub3I13ZJ0RTQDOP6sJ31MDnH4P5D+5PmH4uKh5OLIrbQLBH4sDD4xmmpVIL/H
	jsQXE7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr12J-0005I7-4Q; Fri, 26 Jul 2019 14:17:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr126-0005HR-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:17:20 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC75E229F9;
 Fri, 26 Jul 2019 14:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564150637;
 bh=7vvR0BPXIOyC4A1NG2CnAxtG+FxJl2p9/zLtQ0tDJjg=;
 h=Date:From:To:To:To:Cc:Cc:Subject:In-Reply-To:References:From;
 b=Q1RDkCJU70Z/xZBGobrvvAdrIS+2oiiAuLkUCcDFE60oBdiXbjbfmzT+y6IVzb/3y
 w+4GiyLDpAI9q40n2jReHXlX1dyW0aQMU0wqMxT7yJSvhXb82rykozXdoTr1NIDnqy
 VA7y7l79oD4JUHoRkTB8IhjOeX8F7LX8Ln4AnpbQ=
Date: Fri, 26 Jul 2019 14:17:16 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
To: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org
Subject: Re: [PATCH 1/2] arm64: KVM: regmap: Mark expected switch fall-through
In-Reply-To: <20190726112705.19000-1-anders.roxell@linaro.org>
References: <20190726112705.19000-1-anders.roxell@linaro.org>
Message-Id: <20190726141716.CC75E229F9@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_071719_037560_7B28783B 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: , stable@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: a892819560c4 KVM: arm64: Prepare to handle deferred save/restore of 32-bit registers.

The bot has tested the following trees: v5.2.2, v5.1.19, v4.19.60.

v5.2.2: Failed to apply! Possible dependencies:
    fdec2a9ef853 ("KVM: arm64: Migrate _elx sysreg accessors to msr_s/mrs_s")

v5.1.19: Failed to apply! Possible dependencies:
    73433762fcae ("KVM: arm64/sve: System register context switch and access support")
    be604c616ca7 ("arm64: sysreg: Make mrs_s and msr_s macros work with Clang and LTO")
    fdec2a9ef853 ("KVM: arm64: Migrate _elx sysreg accessors to msr_s/mrs_s")

v4.19.60: Failed to apply! Possible dependencies:
    84135d3d18da ("KVM: arm/arm64: consolidate arch timer trap handlers")
    8a411b060f82 ("KVM: arm/arm64: Remove arch timer workqueue")
    9e01dc76be6a ("KVM: arm/arm64: arch_timer: Assign the phys timer on VHE systems")
    accb99bcd0ca ("KVM: arm/arm64: Simplify bg_timer programming")
    bd7d95cafb49 ("arm64: KVM: Consistently advance singlestep when emulating instructions")
    e604dd5d45c7 ("KVM: arm/arm64: timer: Rework data structures for multiple timers")
    fdec2a9ef853 ("KVM: arm64: Migrate _elx sysreg accessors to msr_s/mrs_s")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
