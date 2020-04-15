Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07771A9A37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeLZLYuDy7LWf52krEx70NQVDzcgdu7XHvdxpvpkq/s=; b=hBxMvWJEFQ0Omv
	4kg1EzRynzakOea3yD32Fz5iR9fnJxGH1oKAInH9uocXprCWSVMdLTXBVAcQYKfrX2c8+W5MuWjW3
	N22hqjAMkrLxvCp2SMZBCuqGt9S7x0yPWFZ5KNNnBuU5tuSTvUKlE9wwrC4fPr/niLChUbJch4ng4
	7m44m1IZtYvZZLp+SmTB5rfBJykXqGpSba6e1VzDJxhbvLLJ9TwP/PV2BkpEp1hpSxDnDWU9KCgkP
	HifquLp4D4VPjrSMgG/Edn/0H7gE/Z7Nvhjl0kRhrl8I5HvpfxpsfC5AI8OwURa9c+rdFRPfKYc/8
	H4BETCI9jsxRYGxBjzrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf4V-00032r-Ma; Wed, 15 Apr 2020 10:15:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf4E-0002xP-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:14:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6205720775;
 Wed, 15 Apr 2020 10:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586945690;
 bh=Ewe88LkPUS4nDP5Snumb3J4za5bNTQxjgtEZIyIztSo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kkl3LAbhH971rT3Xs2uaG7Qc+MzCHl/Er5SfyO2GRjpi48vKSiZYzeVByfeEmfaQi
 sldSSCkeeqEbyKQbDyhJ/fqSzw51uj802Xt9qlxBt7KgIeNTyL1vaXj9HEkBPzk92R
 HvSpTRRNTIh7aeiIK8grfDhBjW97uTkH90J1t0cA=
Date: Wed, 15 Apr 2020 11:14:44 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 3/8] arm64: cpufeature: Add CPU capability for AArch32
 EL1 support
Message-ID: <20200415101444.GC12621@willie-the-truck>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-4-will@kernel.org>
 <a83a19eb-9051-0a43-0bac-353f67d93d79@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a83a19eb-9051-0a43-0bac-353f67d93d79@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031450_728865_A0F15D63 
X-CRM114-Status: GOOD (  11.84  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:13:54AM +0100, Suzuki K Poulose wrote:
> On 04/14/2020 10:31 PM, Will Deacon wrote:
> > Although we emit a "SANITY CHECK" warning and taint the kernel if we
> > detect a CPU mismatch for AArch32 support at EL1, we still online the
> > CPU with disastrous consequences for any running 32-bit VMs.
> > 
> > Introduce a capability for AArch32 support at EL1 so that late onlining
> > of incompatible CPUs is forbidden.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> One of the other important missing sanity check for KVM is the VMID width
> check. I will code something up.

Cheers! Do we handle things like the IPA size already?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
