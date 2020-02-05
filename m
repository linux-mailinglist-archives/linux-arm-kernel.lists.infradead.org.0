Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365131533AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 16:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QLAVVciW61Ahjglvc8eJludTifJHj/9epkHuHpVB3i8=; b=ZpnEdEe86XFlTcgvtfC8gqRSs
	OOxiQGTxnEDDMHrXCWY/8joEOWPJ3JmznBMN/ooCdXiWN7+K+6yDlF3znKMUQMZt5e7xCjTMQZd2a
	olqG4geenEK5cmVoaf+A+On7x3Knmu1bxKz5u1LWMeC48s5xSH4ACBs9+tLXnOCioF6655RubwFFO
	lPwK5magepZtOS6+UoSSdMy5iGrhXNYSPJ6iS5YzQB8K21T2WXogjTU0gVw7J1idmJgl1T9wMUUdO
	RfZay4qiDwHSjWxYP6XRKzKcMhKU+2T48wgtctpiWRAvnHUnqgoG+RLfXKpDDyaqi1LyprcHLMSng
	LhQfM2UCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMRS-0001dJ-UT; Wed, 05 Feb 2020 15:18:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMRM-0001cs-0x
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 15:18:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DEF921927;
 Wed,  5 Feb 2020 15:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580915887;
 bh=NjMtCH7e1lEgkw+UMOfnxM45wLLuwDnPbf87CRI+yiM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pk1qMj98DbqsrY9zinX98tPIosYlQDmFJUfNGjO3f6+6PUDmBrZ3KqEah87F3scC0
 A1zO+7lBUSwfFGjGeEKJJwsFgqbdslcWmf+Hb9mMb3wLN0DG1KOztvq+G+MxaIkyjZ
 LVqEpHPTFP1i9aw0NG1O15O7yOs2MJCHGlvPwQ8o=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izMRJ-0039cd-Dy; Wed, 05 Feb 2020 15:18:05 +0000
MIME-Version: 1.0
Date: Wed, 05 Feb 2020 15:18:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: Jeremy Cline <jcline@redhat.com>
Subject: Re: [PATCH] KVM: arm/arm64: Fix up includes for trace.h
In-Reply-To: <20200205134146.82678-1-jcline@redhat.com>
References: <20200205134146.82678-1-jcline@redhat.com>
Message-ID: <e3446187abb20eb2a95eae1f51b36ca1@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: jcline@redhat.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_071808_087234_77D358B7 
X-CRM114-Status: GOOD (  14.07  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-05 13:41, Jeremy Cline wrote:
> Fedora kernel builds on armv7hl began failing recently because
> kvm_arm_exception_type and kvm_arm_exception_class were undeclared in
> trace.h. Add the missing include.
> 
> Signed-off-by: Jeremy Cline <jcline@redhat.com>
> ---
> 
> I've not dug very deeply into what exactly changed between commit
> b3a608222336 (the last build that succeeded) and commit 14cd0bd04907,
> but my guess was commit 0e20f5e25556 ("KVM: arm/arm64: Cleanup MMIO
> handling").
> 
> Fedora's build config is available at
> https://src.fedoraproject.org/rpms/kernel/blob/master/f/kernel-armv7hl-fedora.config

This config doesn't have KVM enabled.

> 
>  virt/kvm/arm/trace.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
> index 204d210d01c2..cc94ccc68821 100644
> --- a/virt/kvm/arm/trace.h
> +++ b/virt/kvm/arm/trace.h
> @@ -4,6 +4,7 @@
> 
>  #include <kvm/arm_arch_timer.h>
>  #include <linux/tracepoint.h>
> +#include <asm/kvm_arm.h>
> 
>  #undef TRACE_SYSTEM
>  #define TRACE_SYSTEM kvm

After enabling KVM in the above config (which requires LPAE), I've 
managed to reproduce
the problem.

Fix now queued, thanks.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
