Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22601C393D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLlcFIodhmDCgEnxoV65X3Lmwq2tSAZ2O4cLVQ16VkA=; b=eAoEkwwXP0EJWM
	ors1WMhEVXZlG3T1+67OQWqrJYDqvMIRGworshZaPbGGsaWYABZL5UFIlgYGbLj/OOJDIFKA79RTb
	GpQ93gyTXSz9Ehfzw1vS5sPlz6dCfCAL/IIZm7uABeXmaeP70rIRvl11zoJE/seiBrKvyAKTVXP9B
	Ps8IBGVx2LgiqxvJjUkLE0MGA09jS+o3dzgdyF0buwC9Fr9DYDHiZuav49+tTQyvfwTv0ducPcIJE
	PflAM+Xuq336NSpMpR4t2kq4Lyux+Pwx67x+Z4Ovrk5oMGj28RkMjziNy8IzhW+7hzTB1a37xIvss
	TEjca0tbqkdekPucfvDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVa5N-0004ob-DI; Mon, 04 May 2020 12:20:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVa5G-0004nx-L8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:20:32 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74C43206C0;
 Mon,  4 May 2020 12:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588594830;
 bh=6Yrhcox0OBjsJdntgkvQexaOzFu6FD3E83WslvZcULM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hLID4XbvJX8x8/DmVLpQNaJFcPZIFvyUtB2qUYd+1UjlmAhS/+UjUSD3iW6ZCcnfo
 +Iy+IT93x4oBaV1lJx78s5gvl7Goj3xiU0a8WK+viJ6RksXE7VAGSI8HX+fUnyNSgU
 M0TjROe8QXJu33anQigk3Ylps2tUWLMIDjJjowVk=
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 0/3] arm64: Finish up assembler annotation modernisation
Date: Mon,  4 May 2020 13:20:17 +0100
Message-Id: <158859276538.229487.1303449384443089144.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501115430.37315-1-broonie@kernel.org>
References: <20200501115430.37315-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_052030_711543_31BA4A26 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 12:54:27 +0100, Mark Brown wrote:
> This series finishes up the conversion of arm64 to use modern assembler
> annotations.  The second patch selects a symbol added by
> 2ce0d7f9766f0e49b (x86/asm: Provide a Kconfig symbol for disabling old
> assembly annotations) in -next to ensure that we don't regress and start
> using old annotations again.
> 
> This will be needed for BTI kernel support so it'd be good if they could
> end up on that branch, either through merging a topic branch or
> otherwise.  The patches are generated against a merge of v5.7-rc3 and
> for-next/bti-user in the arm64 tree.
> 
> [...]

Applied to arm64 (for-next/asm), thanks!

[1/3] arm64: entry: Refactor and modernise annotation for ret_to_user
      https://git.kernel.org/arm64/c/06607c7e93f2
[2/3] arm64: kernel: Convert to modern annotations for assembly functions
      https://git.kernel.org/arm64/c/0343a7e46362
[3/3] arm64: Disable old style assembly annotations
      https://git.kernel.org/arm64/c/50479d58eaa3

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
