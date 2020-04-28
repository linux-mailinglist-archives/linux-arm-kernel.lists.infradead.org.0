Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616831BBB66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdssJbSDkCj0j/6zGTpcoc6wWQbbDbBzorneQZLw+nk=; b=abBmGJZrqSFFaI
	sU6lbMmI99YyhuRax/rx7P/9KNEwOqiRmtnhHG6srpCzlVqodZ6/sWwn/duKGaCyaFxpgBGhP/jIl
	uBTkh8xwOT/2QhVMGf2Nd0s7H7g7lpWv/3LqJfYJb34pIjHUQOpqJDa+JMRwHqML/EcqHUKLPOZOI
	Ai2qDdtddo5FPnkJJCnPGR5RGUDrDeWlxyB73hG0J4JpqUaS52mIVL/fyBo0wdGI1hO7vXerPOL8/
	SvP9vtkZpgkjJ/GCl2nWPHxaGz8YuOptQs/QYlmpFvLVmxJUXyqA6NX9y5snSBYBw7h/zgo6S5dpg
	pkYc6slFiTMm7iarKZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNiA-0003En-7T; Tue, 28 Apr 2020 10:43:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNhw-0003Di-Bh
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:43:21 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BEAE206D9;
 Tue, 28 Apr 2020 10:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588070599;
 bh=GvZw02cDp/CB7bcGKkjmCqmDGDrOeQgcQkmxq9uAkNw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R7EDXT/qG39tLOu7cRfMhq1+dsHmUmxnrYlp5b0go0iiuTKsBX3eTlwjUUCtUBwnE
 c9OVr9dQZ+Qid/9sQkqFxJiqAxA3dqbHGnMC3pJWF94DULpDwePDoPEq5HbTvQWt8a
 jwZUxaPOogBbcLxfXMVWebTm6PlE2QMvyZcDvkcQ=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/2] arm64: pointer authentication initialization cleanup
Date: Tue, 28 Apr 2020 11:43:13 +0100
Message-Id: <158806940157.152989.16762478723906705606.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423101606.37601-1-mark.rutland@arm.com>
References: <20200423101606.37601-1-mark.rutland@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_034320_423519_C0B2F8DF 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: amit.kachhap@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>, james.morse@arm.com, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Apr 2020 11:16:04 +0100, Mark Rutland wrote:
> These patches refactor the pointer authentication initialization code to make
> it easier to reason about and to reduce duplication of code.
> 
> The big wins are:
> 
> * Moving the initialization after the MMU has been enabled. This means we can
>   initialize the keys using the same helpers as context switch, and don't need
>   to temporarily duplicate them in secondary_data.
> 
> [...]

Applied to arm64 (for-next/ptr-auth), thanks!

[1/2] arm64: remove ptrauth_keys_install_kernel sync arg
      https://git.kernel.org/arm64/c/d0055da5266a
[2/2] arm64: simplify ptrauth initialization
      https://git.kernel.org/arm64/c/62a679cb2825

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
