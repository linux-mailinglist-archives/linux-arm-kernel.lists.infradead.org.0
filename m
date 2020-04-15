Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C981AA3D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y8NC5SBO7GTeiue5IO5a43bIiSpDtUp0fuXXu4FhDY=; b=t9gtXbBEtksmBK
	jyp8eao+HG9LfCnx4x0uydMBNM4hRguHutpy6GHExaZS08J+PF80sxwd1K5y4W6BOi3tLstl1WDR6
	zFYPGyNHhJPGZ/Y63rXKfWNxQTKfoc4jZnYsgQAiu7hMaMlpnNTi02XNq+UwJBZp6KglnGcj4Ebuf
	QmNNIdaEhxM9h74dDJ7/NcQkZvQ92tMeSzktn20ASFeF7vy5QdXDn2BDwetEAvdm++MNXHD9Ufbz2
	SbUYjDOKxu//tTrzOq/jS/HPtr1QSIIkUCiQi2QVBdBMndS+VDU7SqhdW6lScNIO+qX4amxBn30iV
	36qd0n+GMJANRt1WZiIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOi09-0002BG-AX; Wed, 15 Apr 2020 13:22:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOi01-0002Aa-QX
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:22:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 044662074F;
 Wed, 15 Apr 2020 13:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956961;
 bh=OGayslbKapewkz6Bc/D54llvfloiJR74nivh6TEICRI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vWzSb68xwI0CVPV2HbKsVakamCAe0aYTaQk3f9Bd14jLx9xVSI5wY/PSKQg033/D1
 Syn57itZL+GUSzKjCjZA/qhALbKdusg/OVryuLj7PyY4VLJT3nL+W1XLMwwhNZ8eAC
 mIx0zlZq4xY2rpZXbHdJhktAh1vwHXBt+rt5MbdM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jOhzz-003XXy-2k; Wed, 15 Apr 2020 14:22:39 +0100
Date: Wed, 15 Apr 2020 14:22:37 +0100
From: Marc Zyngier <maz@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 3/8] arm64: cpufeature: Add CPU capability for AArch32
 EL1 support
Message-ID: <20200415142237.651114f7@why>
In-Reply-To: <7978a5a9-463e-5e96-7ea9-d8472b7b051c@arm.com>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-4-will@kernel.org>
 <a83a19eb-9051-0a43-0bac-353f67d93d79@arm.com>
 <20200415101444.GC12621@willie-the-truck>
 <7978a5a9-463e-5e96-7ea9-d8472b7b051c@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: suzuki.poulose@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, saiprakash.ranjan@codeaurora.org,
 dianders@chromium.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_062241_889828_4F7D5A9F 
X-CRM114-Status: GOOD (  15.46  )
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
 kernel-team@android.com, anshuman.khandual@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, dianders@chromium.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 14:15:51 +0100
Suzuki K Poulose <suzuki.poulose@arm.com> wrote:

> On 04/15/2020 11:14 AM, Will Deacon wrote:
> > On Wed, Apr 15, 2020 at 11:13:54AM +0100, Suzuki K Poulose wrote:  
> >> On 04/14/2020 10:31 PM, Will Deacon wrote:  
> >>> Although we emit a "SANITY CHECK" warning and taint the kernel if we
> >>> detect a CPU mismatch for AArch32 support at EL1, we still online the
> >>> CPU with disastrous consequences for any running 32-bit VMs.
> >>>
> >>> Introduce a capability for AArch32 support at EL1 so that late onlining
> >>> of incompatible CPUs is forbidden.
> >>>
> >>> Signed-off-by: Will Deacon <will@kernel.org>  
> >>
> >> One of the other important missing sanity check for KVM is the VMID width
> >> check. I will code something up.  
> > 
> > Cheers! Do we handle things like the IPA size already?  
> 
> Good point. No, we don't. I will include this too.

There is also the question of the ARMv8.5-GTG extension. I have a patch
that treats it as non-strict, but that approach would fail with KVM if
we online a late CPU without support for the right page size at S2.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
