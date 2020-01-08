Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A030E134A33
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NBqUpysTjQLsj+13isiqIqn0UUPoViC5xm1HbXZtIts=; b=o29V3UJv99WOHK1mT9R0S1Hdg
	qQrkOdE5bC5CclXqYmpUaCacnqAKWUGSrNmCiz0Bo+piSGxo0G/To3+KBA51h0Nz4d2/TWVeBS4tz
	FcovBzS3+Bk6njI4O1D5tLBtvwMlNp0UIU7r8VjAZBI5BliWOH+MZkAf2VrL10Z/GtMPt8qFq2Owu
	ENqi0zLJnmBj8NmtxGXLpW6W8k0zpYpODINfbi2pkHd1hxMDUr3a0AzsIobBsaUxJcz5qBCX31eBa
	sa2h2bJl/u/3mAo1l4ctCyb3hoUnLDD+9Hwj0tBZZLYsN/RtfL5BOIdtxocHmoM0tDXysZyN83sSQ
	EyRGk45+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFku-0001Ul-3a; Wed, 08 Jan 2020 18:08:32 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFkl-0001UO-VZ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:08:25 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id E337E1C0917;
 Wed,  8 Jan 2020 11:08:21 -0700 (MST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at avon.wwwdotorg.org
Subject: Re: "arm64: alternatives: use tpidr_el2 on VHE hosts" v4.9 backport
 missing edits to proc.S
From: Stephen Warren <swarren@wwwdotorg.org>
To: James Morse <james.morse@arm.com>
References: <a1cb6ca5-4806-0813-3aad-1246e65162a6@wwwdotorg.org>
Message-ID: <aa09fae4-5b73-22d6-b3e8-91ff8d61d623@wwwdotorg.org>
Date: Wed, 8 Jan 2020 11:08:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a1cb6ca5-4806-0813-3aad-1246e65162a6@wwwdotorg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_100824_055333_77201BC6 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stable <stable@vger.kernel.org>,
 ARM kernel mailing list <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/7/20 6:09 PM, Stephen Warren wrote:
> James,
> 
> I'm looking at commit 6d99b68933fbcf51f84fcbba49246ce1209ec193 ("arm64: 
> alternatives: use tpidr_el2 on VHE hosts"). When it was back-ported to 
> v4.9.x as eea59020a7f2993018ccde317387031c04c62036, the changes to 
> arch/arm64/mm/proc.S weren't included. I assume this was just an 
> accident, or was there some specific reason for this? Either way, I do 
> find that I need those changes for system suspend/resume to work in my 
> downstream vendor fork of v4.9 if I enable KVM support in .config. I'm 
> happy to send a patch for v4.9.x to add those changes back if that's the 
> way to go. v4.14.x and later don't have this issue.

Upon further investigation of git history, here's what happened:

When When 6d99b68933fb was back-ported to upstream v4.9.x as 
eea59020a7f2, proc.S didn't save/restore tpidr_el1 at all, so that's why 
the edits to proc.S were dropped as part of the backport.

Separately, in android-4.9, 0ec37136b90e ("UPSTREAM: arm64: move sp_el0 
and tpidr_el1 into cpu_suspend_ctx") modified proc.S to save/restore 
tpidir_el1. When those two commits were later merged together in 
android-4.9, the modifications to proc.S to alternate between 
tpidr_el1/2 should have been added back in, but weren't.

Since our downstream 4.9 fork is based on android-4.9 after that merge, 
it picked up this issue and needs to be patched for it. Anyone else 
using android-4.9 would need this fix too. However, upstream 4.9.x 
stable doesn't have an issue.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
