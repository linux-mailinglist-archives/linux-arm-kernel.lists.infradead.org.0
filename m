Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2F3D77FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ao6HD9Hmga9I9NrASmoaWFQ5xA5I9r9cwSMUNbfVd3w=; b=t9EpwFxOKLAnxI
	0f4ZNEMWHmGzTOpR61HBleACePJUxq6xW8nFqrByFxt1kBbI5p6YCf9rTET3+npGatZdmwInDlaEE
	LsviZzGgS39/GpgGz+gYxVlSNavcfmYJUNKEbJLyPHQh/+OHcdmTS/NNobx/zD1Apx2YjdJDUfklH
	KOI4vThDlC2FppjUxkSdVburA9q5HY/J92ff8CpAqCXoCHeVOH8D9VbLvLq6Gbtv43FFT3wiNiH7v
	eiyhb42mubGJF2AJiDqMYojd/7A5ZcuPuR2LW8ZKMyVQaZLKtXFexlo5H6z4c44zHFgjE+NVJcaVk
	/WQ8dbjbJ31P7ZlzbYag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNSX-0007Ng-UE; Tue, 15 Oct 2019 14:05:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNSM-0007MN-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:05:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25D30337;
 Tue, 15 Oct 2019 07:05:45 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 237813F718;
 Tue, 15 Oct 2019 07:05:44 -0700 (PDT)
Date: Tue, 15 Oct 2019 15:05:42 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
Message-ID: <20191015140541.GW27757@arm.com>
References: <20191011113620.GG27757@arm.com>
 <4ba5c423-4e2a-d810-cd36-32a16ad42c91@arm.com>
 <20191011142137.GH27757@arm.com>
 <418b0c4b-cbcd-4263-276d-1e9edc5eee0b@arm.com>
 <20191014145204.GS27757@arm.com>
 <12e002e7-42e8-c205-e42c-3348359d2f98@arm.com>
 <20191014155009.GM24047@e103592.cambridge.arm.com>
 <CAKv+Gu83oa3+DKNFowVkE=mZfLorAvGQ3GVPiZtsXzQBcsMCWg@mail.gmail.com>
 <20191015102459.GV27757@arm.com>
 <CAKv+Gu_=jw94Hj5Vo=5w+hb5RcPR4SQvxOM02WQr9hDhyzE67g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_=jw94Hj5Vo=5w+hb5RcPR4SQvxOM02WQr9hDhyzE67g@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_070546_590965_1AEC07DA 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 12:30:15PM +0200, Ard Biesheuvel wrote:
> On Tue, 15 Oct 2019 at 12:25, Dave Martin <Dave.Martin@arm.com> wrote:
> >
> > On Mon, Oct 14, 2019 at 06:57:30PM +0200, Ard Biesheuvel wrote:

[...]

> > > All in-kernel NEON code checks whether the NEON is usable, so I'd
> > > expect that check to return 'false' if it is too early in the boot for
> > > the NEON to be used at all.
> >
> > My concern is that the check may be done once, at probe time, for crypto
> > drivers.  If probing happens before system_supports_fpsimd() has
> > stabilised, we may be stuck with the wrong probe decision.
> >
> > So: are crypto drivers and kernel_mode_neon() users definitely only
> > probed _after_ all early CPUs are up?
> >
> 
> Isn't SMP already up when initcalls are processed?

That was my original assumption when developing SVE.  I think I
convinced myself that it was valid, but it sounds worth reinvestigating.

Assuming the assumption _is_ valid, then dropping a suitable WARN() into
system_supports_fpsimd() or cpu_has_neon() or similar may be a good idea.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
