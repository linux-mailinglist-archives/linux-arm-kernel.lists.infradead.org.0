Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E983F15FE89
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 14:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCPSHgy7EUpMHKpXs0dRL7+TNKC4krnSea813jiNteo=; b=M/ebVq/rFdaOA0
	gqMwsXB2VEF+JCNZiCx85BMiwZYItu+y/TX2WBOKuP5LMGpPOgDTorVxeV/64UWvQujfnvtK0otoT
	emcVma2bfYyObollMQL189J0/DSXgIJHdtFMDrQ/6WhLO+d8Y1of2hUinAmrROIPNwhSeoVnprWiw
	/FhOmaPasFihOBTWF4MKhzmodLRZQBHFIhPgAdCWsuWup5NGj6eAlHcCg5HXBJxF62oTc8VDLB1dg
	Gd83aCovg+5cP4q1xnA+uimUc9AcnQs4EUjy+EW9x580UK0L/3jUfzgeMiy07TFvaAX+SpjDigN5m
	y1nrSDwpVnaMoI94VuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2x4E-00079y-JW; Sat, 15 Feb 2020 13:01:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2x48-00079H-Db
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 13:01:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DDB12083B;
 Sat, 15 Feb 2020 13:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581771658;
 bh=IlVg+7WZjLz8i78gKlPFmvAGVxAOutix+9XWCG/zJNU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OpqoOBzxtuhp34xWuSv1WvEvv+xj2BGRWrM9Oxrh4jTTuI7hPgtj60P1aF16NwBMA
 j8zwqPSkJSmIGMnY2aG5hU4Whc47ARjBQqr+XDDWVmfV/OnvA10nrt+WqSSlo0EUDQ
 hCEhxaaeR+IouzIhP5EaIGOv8YIsjwrsvR2M5xBg=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2x44-005RoV-HQ; Sat, 15 Feb 2020 13:00:56 +0000
Date: Sat, 15 Feb 2020 13:00:55 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: Re: [PATCH 0/2] KVM: arm64: Filtering PMU events
Message-ID: <20200215130055.0995efe7@why>
In-Reply-To: <20200214183615.25498-1-maz@kernel.org>
References: <20200214183615.25498-1-maz@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, Robin.Murphy@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_050100_482082_89BEE37F 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Robin Murphy <Robin.Murphy@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Feb 2020 18:36:13 +0000
Marc Zyngier <maz@kernel.org> wrote:

> It is at times necessary to prevent a guest from being able to sample
> certain events if multiple CPUs share resources such as a cache level.
> In this case, it would be interesting if the VMM could simply prevent
> certain events from being counted instead of simply not exposing a PMU.
> 
> Given that most events are not architected, there is no easy way
> to designate which events shouldn't be counted other than specifying
> the raw event number.
> 
> Since I have no idea whether it is better to use an event whitelist
> or blacklist, the proposed API takes a cue from the x86 version and
> allows either allowing or denying counting of ranges of events.
> The event space being pretty large (16bits on ARMv8.1), the default
> policy is set by the first filter that gets installed (default deny if
> we first allow, default allow if we first deny).
> 
> The filter state is global to the guest, despite the PMU being per
> CPU. I'm not sure whether it would be worth it making it CPU-private.
> 
> Anyway, I'd be interesting in comments on how people would use this.
> I'll try to push a patch against kvmtool that implement this shortly
> (what I have currently is a harcoded set of hacks).

I now have a small extension to kvmtool allowing a --pmu-filter option
to be passed on the command line (see [1]).

I've also pushed out an update[2] to the kernel side of things, making
the filtering of the cycle counter consistent and documenting that
neither SW_INCR nor CHAIN could be filtered with this mechanism (but
this is of course up for discussion).

Thanks,

	M.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/maz/kvmtool.git/commit/?h=pmu-filter
[2] https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=kvm-arm64/pmu-event-filter

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
