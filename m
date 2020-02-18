Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEFC162D4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0Qn0zk7O0VvYc+Y/lHjTaDTtSrGhwWCvGwHvSivmDo=; b=OtdzbzMwmzNPIk
	+IqK8fYhMXWj5bz6Vj8kyjtKkK18CBshIaR+Kbd1RcWQIcN75mgcdhz2ZYjGVEIMV9yoWx97CC2+/
	o1yFelGYCghUeIKMw1pVZGHjNlKdduIn0TItQ51K/iSnoOq7X+xn1hA7NP9+Qn0QuaKtsn2wgFK6j
	7lg6DqsPMVHdxc53K8k86SHdxbiRa7sI7r2oXV+TXToN0CLkt4HgS9wHI7y/O+T+UZz8g0u2jlZ8Z
	/lVRl3fJnkeDfqGT2M3DsDuQqVntR12VsYdBdwZBB3SoKM+3ZJRCZvYOJl4IafcUzyJwOJE7dXP67
	xp9a1tN5dxl88yp1GGPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46w1-0003sD-AP; Tue, 18 Feb 2020 17:45:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46vs-0003rT-Rk
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:45:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BDEF31B;
 Tue, 18 Feb 2020 09:45:16 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7102C3F703;
 Tue, 18 Feb 2020 09:45:15 -0800 (PST)
Subject: Re: [PATCH 4/5] KVM: arm64: Limit the debug architecture to ARMv8.0
To: Marc Zyngier <maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-5-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <37f71ccb-2c3c-5c7c-ef26-0dfdaf4e52a3@arm.com>
Date: Tue, 18 Feb 2020 17:45:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200216185324.32596-5-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_094516_948397_00EABC47 
X-CRM114-Status: GOOD (  10.99  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 16/02/2020 18:53, Marc Zyngier wrote:
> Let's not pretend we support anything but ARMv8.0 as far as the
> debug architecture is concerned.

(what happens for features that disappeared?)

For v8.0 the 'OS Double Lock' was mandatory. With v8.2 it became optional, and
not-implemented with v8.3.

The guest can see whether its implemented in ID_AA64DFR0_EL1. (and its 32bit friends)
Previously these values would have at least matched, even though KVM implements it as
RAZ/WI (which is the not-implemented behaviour).


Would anyone care that these are inconsistent?
(I've never had a solid grasp of how these debug 'lock' registers are supposed to be used).


Thanks,

James


> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 06b2d0dc6c73..43087b50a211 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1094,6 +1094,9 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
>  				 FEATURE(ID_AA64ISAR1_GPI));
>  		break;
>  	case SYS_ID_AA64DFR0_EL1:
> +		/* Limit debug to ARMv8.0 */
> +		val &= ~FEATURE(ID_AA64DFR0_DEBUGVER);
> +		val |= FIELD_PREP(FEATURE(ID_AA64DFR0_DEBUGVER), 6);
>  		/* Limit PMU to ARMv8.1 */
>  		val &= ~FEATURE(ID_AA64DFR0_PMUVER);
>  		val |= FIELD_PREP(FEATURE(ID_AA64DFR0_PMUVER), 4);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
