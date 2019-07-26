Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E280676B54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=86lZGyiQp3JF09lsTB/qcjMWye54Y0lEBX0H/YZWlzU=; b=LSyLeAJPdN+NaOyfXYhs6KZu+A
	w0w2XGcckDBDg701abnfe7ELF5SCR070cC5QKceS9kW2ElsSpr8CzpjeL2cm0g/tqtO/NLFK/q3+B
	J+hFoIJ9NuORLqDxRYgkAnnnJjFJNn4l5m5etrQzZ/VLNTHepSV+EhpfWcudBYiCb/1kZoX273g7S
	ozONw2OkT0oJzy9ydVcSjJ8YMVjINwKjUHv7RQtHAVBaVsoUGQt98jOwQeivcZlxEORU9RvVBvkDY
	hDcGcQlj0pja72zD7EdNdepXoL1ta5EACOV6g6Xx3Fi6XG9eK2yprtF2i1Ek5G1LCndcx/ZP0VGlM
	SnZ+d80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr12X-0005T6-OY; Fri, 26 Jul 2019 14:17:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr126-0005Gq-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:17:20 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FD5021850;
 Fri, 26 Jul 2019 14:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564150634;
 bh=zRt1Vu26SAD3QWdxbJDS3dxVi1nMlLje/nCP+PaP0f8=;
 h=Date:From:To:To:To:Cc:Cc:Subject:In-Reply-To:References:From;
 b=NbWufiJQoxgCFA+Nis7ydIFg+yoxwHL8x08B5Y6Q5Jgm88re2yV5jVPeBr6ksrBZ+
 tTLIaUNCOKNwrBGKqNWhgiMK7cQ+qz91oIFTvcjOr019s3OSvqg76Ej+BYOszRxIrT
 9r0DLjHZCb91OlggGWeTo8VfFIjz90mWz/uPeHcE=
Date: Fri, 26 Jul 2019 14:17:13 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
To: will@kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
In-Reply-To: <20190726112716.19104-1-anders.roxell@linaro.org>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
Message-Id: <20190726141714.7FD5021850@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_071719_037555_77406F1D 
X-CRM114-Status: UNSURE (   7.30  )
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
fixing commit: 6ee33c2712fc ARM: hw_breakpoint: correct and simplify alignment fixup code.

The bot has tested the following trees: v5.2.2, v5.1.19, v4.19.60, v4.14.134, v4.9.186, v4.4.186.

v5.2.2: Build OK!
v5.1.19: Build OK!
v4.19.60: Build OK!
v4.14.134: Failed to apply! Possible dependencies:
    18ff57b22061 ("hw_breakpoint: Factor out __modify_user_hw_breakpoint() function")
    195bce73bd10 ("signal/sh: Use force_sig_fault in hw_breakpoint_handler")
    705feaf321c3 ("hw_breakpoint: Add perf_event_attr fields check in __modify_user_hw_breakpoint()")
    8c449753a681 ("perf/arch/arm64: Implement hw_breakpoint_arch_parse()")
    8e983ff9ac02 ("perf/hw_breakpoint: Pass arch breakpoint struct to arch_check_bp_in_kernelspace()")
    9a4903dde2c8 ("perf/hw_breakpoint: Split attribute parse and commit")
    ea6a9d530c17 ("hw_breakpoint: Add modify_bp_slot() function")

v4.9.186: Failed to apply! Possible dependencies:
    0ddb8e0b784b ("arm64: Allow hw watchpoint of length 3,5,6 and 7")
    18ff57b22061 ("hw_breakpoint: Factor out __modify_user_hw_breakpoint() function")
    195bce73bd10 ("signal/sh: Use force_sig_fault in hw_breakpoint_handler")
    705feaf321c3 ("hw_breakpoint: Add perf_event_attr fields check in __modify_user_hw_breakpoint()")
    8c449753a681 ("perf/arch/arm64: Implement hw_breakpoint_arch_parse()")
    8e983ff9ac02 ("perf/hw_breakpoint: Pass arch breakpoint struct to arch_check_bp_in_kernelspace()")
    9a4903dde2c8 ("perf/hw_breakpoint: Split attribute parse and commit")
    b08fb180bb88 ("arm64: Allow hw watchpoint at varied offset from base address")
    ea6a9d530c17 ("hw_breakpoint: Add modify_bp_slot() function")

v4.4.186: Failed to apply! Possible dependencies:
    0ddb8e0b784b ("arm64: Allow hw watchpoint of length 3,5,6 and 7")
    18ff57b22061 ("hw_breakpoint: Factor out __modify_user_hw_breakpoint() function")
    195bce73bd10 ("signal/sh: Use force_sig_fault in hw_breakpoint_handler")
    6ec7026ac01f ("xtensa: use context structure for debug exceptions")
    705feaf321c3 ("hw_breakpoint: Add perf_event_attr fields check in __modify_user_hw_breakpoint()")
    8c449753a681 ("perf/arch/arm64: Implement hw_breakpoint_arch_parse()")
    8e983ff9ac02 ("perf/hw_breakpoint: Pass arch breakpoint struct to arch_check_bp_in_kernelspace()")
    9a4903dde2c8 ("perf/hw_breakpoint: Split attribute parse and commit")
    b08fb180bb88 ("arm64: Allow hw watchpoint at varied offset from base address")
    c91e02bd9702 ("xtensa: support hardware breakpoints/watchpoints")
    ea6a9d530c17 ("hw_breakpoint: Add modify_bp_slot() function")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
