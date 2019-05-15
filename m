Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356811EACF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4YcU8KJPJ4xQh0G4aBr35Ut/9a76JGjc4rDrNqlQWE=; b=kNuyivBu8GURGO
	NbnlALKGKEdeVIm55IixnTG3GMlJ76VucQRIsCHfBcMkoDGhbdPNjr2p7b9lfKEdjYEMPXmXcoxXZ
	R1Zg8i0VKUprCtIAxt/7bw0rMePfTtjcyTkbJqCrX7BjeabuwfrkZJIRvSmypPgISDmmg54DWqnJ9
	WLFuQANFVdlmUEFQqtKKti6Q2AFM3lxnzSIwXQ6RkuVfFIJNpRjhje5gCeYp8q0G0W5ypqGDR/4W3
	GYpssoRTM5sRCpID39TW79rRzbxadTHSBUAEBuCl/Ty414L/hPhkh4OvFQu3NBy6/gBdBNXrV96US
	9309Ya7D1Z/CbNzHQzCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQq2F-0006WK-Gt; Wed, 15 May 2019 09:17:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQq26-0006VG-Da
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:17:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B06D341;
 Wed, 15 May 2019 02:17:05 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA3A53F703;
 Wed, 15 May 2019 02:17:02 -0700 (PDT)
Date: Wed, 15 May 2019 10:17:01 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
Message-ID: <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_021706_462250_63E9F22A 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Wednesday 15 May 2019 at 11:06:18 (+0200), Daniel Lezcano wrote:
> On 15/05/2019 10:23, Quentin Perret wrote:
> > In the current state, the perf_domain struct is fully defined only when
> > CONFIG_ENERGY_MODEL=y. Since we need to write code that compiles both
> > with or without that option in the thermal framework, make sure to
> > actually define the struct regardless of the config option. That allows
> > to avoid using stubbed accessor functions all the time in code paths
> > that use the EM.
> > 
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > Signed-off-by: Quentin Perret <quentin.perret@arm.com>
> 
> This patch implies the cpu cooling device can be set without the energy
> model.
> 
> Isn't it possible to make a strong dependency for the cpu cooling device
> on the energy model option, add the energy model as default on arm arch
> and drop this patch?

Right, that should work too.

> After all, the cpu cooling is using the em framework.

The reason I did it that way is simply to keep things flexible. If you
don't compile in THERMAL_GOV_POWER_ALLOCATOR, you will never use the EM
for CPU thermal. So I thought it would be good to not mandate compiling
in ENERGY_MODEL in this case -- that should save a bit of space.

But TBH I don't have a strong opinion on this one, so if everybody
agrees it's fine to just make CPU_THERMAL depend on ENERGY_MODEL, I'm
happy to drop this patch and fix patch 3/3. That would indeed simplify
things a bit.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
