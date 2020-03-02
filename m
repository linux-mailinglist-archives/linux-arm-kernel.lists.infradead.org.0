Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC16175CE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 15:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo2HrBpTeM25ZeQmqUI0yxAcBFSJ2UMcrLUaoYRslXw=; b=eO0I7BrDUcJOwi
	xKCXqowKrA9uYxRm/kLZw0yaB0qsscPDkSYz5zSfym4GjhUvEQrGMsCYkwJ03rfjAqkh7GRMpVwsv
	ZE47TJgsHxxuerw2CHt8JQ0DbXqTCQJXWvjz25PEU7iiW8VjO7A6RcG2n9xpCqxHwLeOcdZjf3jDg
	AH2Hpeos3XcQnf/DYYbq3jXx/hG9fSrPYgiT8/MC2Bd8l6uf3gll703M5VU0J5ByspWnAkcSSCXdR
	doXX4Jo/nOGAW0Roam6bnqOfjsKajaBe/qvwlSquGiUKsqIKS1djXfs8Ar6ghn780Lv9k9hC+/3Lv
	9/t+Nzzj/VtbeydwPOSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lys-0002ZI-2m; Mon, 02 Mar 2020 14:23:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lyl-0002YO-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 14:23:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D20BE2F;
 Mon,  2 Mar 2020 06:23:27 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72AF63F534;
 Mon,  2 Mar 2020 06:23:27 -0800 (PST)
Date: Mon, 2 Mar 2020 14:23:26 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v5 1/7] arm64: add support for the AMU extension v1
Message-ID: <20200302142326.GA15709@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-2-ionela.voinescu@arm.com>
 <20200228103234.GA3904776@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228103234.GA3904776@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_062331_425865_7C6AE0F1 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 maz@kernel.org, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Friday 28 Feb 2020 at 10:32:34 (+0000), Catalin Marinas wrote:
> Hi Ionela,
> 
> On Wed, Feb 26, 2020 at 01:29:41PM +0000, Ionela Voinescu wrote:
> > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > index dbc22d684627..49f0c436928f 100644
> > --- a/Documentation/admin-guide/kernel-parameters.txt
> > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > @@ -318,6 +318,15 @@
> >  			Format: <a>,<b>
> >  			See also Documentation/input/joydev/joystick.rst
> >  
> > +	amu=		[ARM64]
> > +			Enables or disables detection, enablement and access to
> > +			counter registers of the Activity Monitors Unit (AMU).
> > +			Format: amu=[0/1/on/off/y/n]
> > +			amu=[0/off/n] ensures access to AMU's counter registers
> > +				      is not attempted.
> > +			amu=[1/on/y] (default) enables detection and access to
> > +				     AMU's counter registers.
> 
> Is the only reason for this parameter to be able to disable the feature
> if the firmware doesn't support it? According to the Kconfig entry, you
> may see weird behaviour, firmware lock-up. Is the user supposed to try
> again with amu=0?
> 
> I'm not particularly fond of adding kernel parameters to work around
> broken firmware. We have other architecture features (e.g. PtrAuth) that
> need enabling at EL3 but we don't have such parameters. If it's likely
> that we hit this issue in practice, I'd rather have the firmware
> describing the presence of AMU via some DT entry. But I'd rather not
> bother at all, just get the vendors to update their firmware.
> 

The firmware is supposed to do three actions for the kernel to be able
to use the counters: enable access to EL2/EL1, enable the counters and
save/restore the counters before/after core-off.

Improper firmware support can trigger different issues: kernel/firmware
lockup/panic, invalid counter values (0, non-monotonic). Some of them
might be less likely (firmware lockups), and some might just be due to
present but improper support(save/restore) and therefore more likely.

The users of the counters, for example frequency invariance [6/7], does
some validation for this, but unfortunately not all conditions can be
fully mitigated - validate and bail out if some condition is not
accomplished - for example the save and restore functionality. This
might result in improper scale values after idle.

Therefore, the amu kernel parameter is not only there if the firmware
does not support AMU, but it's also there if the firmware support is
broken/improper. The kernel parameter was added at Suzuki's
recommendation to be able to bypass its use in single kernels that are
meant to run on multiple platforms. I also believe this is nice to have
even for platforms that properly support AMU, but they might not want
the use of the feature in the kernel.

> If we drop this parameter, patch 1 would need to change. Otherwise the
> patches look fine.
> 

This being said, I agree this was added as a 'just in case' and not as
support for a likely scenario, therefore, I don't fully disagree to drop
it for now.

Let me know what you think. If you'd still rather I drop it, I can do that
and rebase on top of Marc's changes and push v6.

Thanks,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
