Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F4810442C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EaoZoBStSPImIGJWWlf+x2LeplBpkzoVARRX23+yGg=; b=kFfXi19lKPP6gd
	K89ehxVWwfYsPdECPuMIKIIrZwlnbnPxmx8hCsH7UaEmn76l8y9n705CFW2Hv+/pXDbS4Wx4e+Djf
	CDHZXmUhoaHpJm8goe8vzqz//YwuRGE+tuJsu19RU3/ABfFQWusotOwZcHiDtHHPGedWuLl7BJurF
	CLU1APpo2WAZifbL8SHnDMso7P5H9oTez/ZthlPuBMqBjJgoAPHp0GD7wJQnVsm/2f8908Q9vEgxq
	BcTczNxb+YVL07vOnr3ZozEyxNm+DPVb1G/YfUEn2m8zBfNPQxaM2To+Plb9jlaEp27HRkYPCfVSl
	HpJ87ya6znMtd0yz6dog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVVa-000750-4b; Wed, 20 Nov 2019 19:19:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVVD-0006tf-VH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:19:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 419D020855;
 Wed, 20 Nov 2019 19:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574277539;
 bh=XasgMmL+6L+gCEnWMimC+DM0YA+gD8SLj+MyqPAl1K8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OKhlFyx2VvlREMPb1ZKfmeG5RHQrELs31dNJfOKV4NNq2nx3T7VQjH242byza8B5/
 YaSezsM0ViEcpq5/JbfHTrjsbftz7m/yFldaxBpcXgUubgpHGuTJ3c7Pd3VRD7n7ZT
 HaUT9c2RRMRbS4nxlz9hnPtl8GzIckRNMPTaRJKw=
Date: Wed, 20 Nov 2019 19:18:55 +0000
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 0/5] arm64: Add workaround for Cortex-A77 erratum 1542418
Message-ID: <20191120191854.GG4799@willie-the-truck>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
 <20191114163948.GA5158@willie-the-truck>
 <14773d6b-96d5-b894-7fc4-17c54f15ee30@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14773d6b-96d5-b894-7fc4-17c54f15ee30@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_111900_061577_A484295B 
X-CRM114-Status: GOOD (  20.81  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 01:14:07AM +0000, Suzuki K Poulose wrote:
> On 11/14/2019 04:39 PM, Will Deacon wrote:
> > On Thu, Nov 14, 2019 at 02:59:13PM +0000, Suzuki K Poulose wrote:
> > > This series adds workaround for Arm erratum 1542418 which affects
> > > Cortex-A77 cores (r0p0 - r1p0). Affected cores may execute stale
> > > instructions from the L0 macro-op cache violating the
> > > prefetch-speculation-protection guaranteed by the architecture.
> > > This happens when the when the branch predictor bases its predictions
> > > on a branch at this address on the stale history due to ASID or VMID
> > > reuse.
> > 
> > Two immediate questions:
> > 
> >   1. Can we disable the L0 MOP cache?
> Yes, but it hurts performance.
> 
> >   2. Can we invalidate the branch predictor? If Spectre-v2 taught us
> >      anything it's that removing those instructions was a mistake!
> 
> The workaround suggested is actually invalidating the branch history
> but in a costly way. I am unaware of any.
> > Moving on...
> > 
> > Have you reproduced this at top-level? If I recall the
> > prefetch-speculation-protection, it's designed to protect against the
> > case where you have a direct branch:
> 
> No, see below.
> 
> > 
> > addr:	B	foo
> > 
> > and another CPU writes out a new function:
> > 
> > bar:
> > 	insn0
> > 	...
> > 	insnN
> > 
> > before doing any necessary maintenance and then patches the original
> > branch to:
> > 
> > addr:	B	bar
> > 
> > The idea is that a concurrently executing CPU could mispredict the original
> > branch to point at 'bar', fetch the instructions before they've been written
> > out and then confirm the prediction by looking at the newly written branch
> > instruction. Even without the prefetch-speculation-protection, that's
> > fairly difficult to achieve in practice: you'd need to be doing something
> > like reusing memory to hold the instructions so that the initial
> > misprediction occurs.
> > 
> > How does A77 stop this from occurring when the ASID is not reallocated (e.g.
> > the example above)? Is the MOP cache flushed somehow?
> 
> IIUC, The MOP cache is flushed on I-cache invalidate, thus it is fine.	

Hmm, so this is interesting. Does that mean we could do a local I-cache
invalidation in check_and_switch_context() at the same as doing the local
TLBI after a rollover?

I still don't grok the failure case, though, because assuming A77 has IDC=0,
then won't you see the I-cache maintenance from userspace anyway?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
