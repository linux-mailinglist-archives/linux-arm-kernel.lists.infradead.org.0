Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8675E173560
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7qzcUckeiPHRKJmygooeZqoCo//n6IqIEVYvUIJgrA=; b=Hbs772BDGPpEEq
	BFZZGZ9gfQqJHnGrSy+/g/5A1WUJycG4RzJjP4vjzSNrUu3HzwHcc7EVGDxbc+9VF8Qw44HdshcVZ
	5bDXkOxYvAl0zhLICtIzXl+aB42JwHv6wJId9TaASgDYLrAH01c66vm2rPI179U9ux+FiwihXac3m
	vwqXf66u4bkX+bApQzFHz+L5WrszU+p5HKCkXJ2mCtjmF5ium19fhfcpYyrfnZq5Q07M31nG+rE/z
	7q9D4HnRfKQq7QKeJjf5PZJTovwbUpBh5Yy3Wc98s30bWxuyhmCrLJ9RYmEE8CnMRhJd/NAY+iRNS
	dGQjCd6Z9MnN2lk2EOHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cwt-0007jf-AO; Fri, 28 Feb 2020 10:32:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cwi-0007iV-Pq
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:32:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E58D4B2;
 Fri, 28 Feb 2020 02:32:38 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 23C973F73B; Fri, 28 Feb 2020 02:32:36 -0800 (PST)
Date: Fri, 28 Feb 2020 10:32:34 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v5 1/7] arm64: add support for the AMU extension v1
Message-ID: <20200228103234.GA3904776@arrakis.emea.arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-2-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226132947.29738-2-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_023240_885476_9E204DDD 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

Hi Ionela,

On Wed, Feb 26, 2020 at 01:29:41PM +0000, Ionela Voinescu wrote:
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index dbc22d684627..49f0c436928f 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -318,6 +318,15 @@
>  			Format: <a>,<b>
>  			See also Documentation/input/joydev/joystick.rst
>  
> +	amu=		[ARM64]
> +			Enables or disables detection, enablement and access to
> +			counter registers of the Activity Monitors Unit (AMU).
> +			Format: amu=[0/1/on/off/y/n]
> +			amu=[0/off/n] ensures access to AMU's counter registers
> +				      is not attempted.
> +			amu=[1/on/y] (default) enables detection and access to
> +				     AMU's counter registers.

Is the only reason for this parameter to be able to disable the feature
if the firmware doesn't support it? According to the Kconfig entry, you
may see weird behaviour, firmware lock-up. Is the user supposed to try
again with amu=0?

I'm not particularly fond of adding kernel parameters to work around
broken firmware. We have other architecture features (e.g. PtrAuth) that
need enabling at EL3 but we don't have such parameters. If it's likely
that we hit this issue in practice, I'd rather have the firmware
describing the presence of AMU via some DT entry. But I'd rather not
bother at all, just get the vendors to update their firmware.

If we drop this parameter, patch 1 would need to change. Otherwise the
patches look fine.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
