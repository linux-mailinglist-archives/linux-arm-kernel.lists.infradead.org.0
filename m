Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0247DA28F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 02:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeUpDcXHn1CnayFXIzKinvXOQiLWb3tUmlJ8MNczHWs=; b=tscy7qNQ/ZFw4q
	dWRvtN+zKqCqRIzxzpkIWV3lxPPLbrGcVhYl8qKVKz8/9m7BpRXQNe2TGazYlO7KteYR8nJDdA4fO
	OW4M0b3CoTXhBlSzvVSIXBMqVbdJQ4zAJm6x+Wy/tTHXFZgHDCSJY0tUnLx7jeBQ1aFHXyDIqf5/v
	1lVsDnLsScnsTK9tyt8eiPLfSCBpJlxblS/aKUPvjhhBLPSypY3PzSq77+N8W0u3hyBADZ7eBduFH
	QDegGNjP8CzxJjR4BUyiX7D/gplbHsjTnLKjkZeC8GMkv0K0D0hr0kQ8UMnAymyuKdnqju0GL4YJu
	KD/lmLb8+3vuJ94E1NUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKtJj-0004zT-4o; Thu, 17 Oct 2019 00:06:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKtJZ-0004ys-Uu
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 00:06:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A08320872;
 Thu, 17 Oct 2019 00:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571270809;
 bh=DbAnuXxxI4ql/mIxS5Ri9OMBjzaKAjXqFG3gEGJ1gCQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xz1C1hik3XHTqGfPEVqTo9ImbCcmors0wQuV4afL0eLWgsqqfDHIPmcGMmrSHBA8w
 D/szxMBGp/eS2TcvxYEmlnspxC0QqMIUztNT+FdeFI1ZkBeNjiqYKemRCibMMVU95h
 b655V++6gZTcUWL8kQ1TVhzJVSSFEaazEnFKkxhA=
Date: Thu, 17 Oct 2019 01:06:45 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 0/3] arm64: Fix support for systems without FP/SIMD
Message-ID: <20191017000644.uudhadekbeei73uy@willie-the-truck>
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010171517.28782-1-suzuki.poulose@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_170650_018538_C9081A33 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 06:15:14PM +0100, Suzuki K Poulose wrote:
> This series fixes the original support for systems without FP/SIMD.
> We have three set of issues with the current code :
> 
> 1) We detect the absence of FP/SIMD after the SMP cpus are brought
> online (i.e, SYSTEM scope). This means, some of the early kernel threads
> could run with their TIF_FOREIGN_FPSTATE flag set which might be
> inherited by applications forked by them (e.g, modprobe from initramfs).
> 
> Also we allow a hotplugged CPU to boot successfully even if it doesn't
> have the FP/SIMD when we have decided otherwise at boot and have now
> advertised the ELF HWCAP for the userspace.
> Fix this by turning this to a BOOT_RESTRICTED_CPU_LOCAL feature to
> allow the detection of the feature the very moment a CPU turns up
> without FP/SIMD and also prevent a conflict after SMP boot.
> 
> 2) As mentioned above, some tasks could have the TIF flag set,
> which will never be cleared after we detect the capability.
> Thus they could get stuck indefinitely in do_notfiy_resume().
> Fix this by clearing the TIF flag for such tasks but continuing
> to avoid the save/restore of the FP state.
> 
> 3) The compat ELF_HWCAP bits are statically initialised to indicate
> that the FP/SIMD support is available. This must be updated dynamically
> to provide the correct flags to the userspace.
> 
> Tested with a 32bit Debian Jessie fs on Fast model (with and without
> FP support).
> 
> Suzuki K Poulose (3):
>   arm64: cpufeature: Fix the type of no FP/SIMD capability
>   arm64: nofpsmid: Clear TIF_FOREIGN_FPSTATE flag for early tasks
>   arm64: cpufeature: Set the FP/SIMD compat HWCAP bits properly

This looks alright apart from Dave's comments on patch 2. Do you plan to
address those at all? Some of it looks like scope for future work, but there
are also some questions about the mechanics of the patch.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
