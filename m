Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A18B17235A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaLH+eOfB2NFuH4Po1HQfBZecNnEfaev2ETlPMzQjL8=; b=pNcC7c5HluR5R3
	JtFgVR96gyqCf74ldvTWNCB4FcFggXwK2NiuVaB0TO6y+YG7O/vOlpxTg77cQI4u3Ichw5GIIWvCN
	vPM67JuIRROpZ0+rhP0dnKSq6nRK0G7gxvf/o3KRrsdM43PJ8QtbxryVRKYnzxNcbbcSV8MgNFkWa
	MdF963IK9lfsN7llCpKMqOECoul+s0/lnbXCsIgIRXzXsB3cEoxoQNOGMt5M0TiCkfuXP+F2ay8JC
	48HIhV43KS5da9Re6nSMrm/Tvv3DFkifJl2QH6ieAO9JxALz1UWWoK+QLyLVnU7vRxVlLj1Wqz8O2
	hD103RpbPhNwMm+9JNGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7M1P-0006v5-5Y; Thu, 27 Feb 2020 16:28:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7M19-0006tl-2g
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:28:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4559E30E;
 Thu, 27 Feb 2020 08:28:06 -0800 (PST)
Received: from [10.0.8.126] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D99023F7B4;
 Thu, 27 Feb 2020 08:28:04 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: defconfig: enable CONFIG_SCHED_SMT
To: Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200226164118.6405-1-valentin.schneider@arm.com>
 <20200226164118.6405-3-valentin.schneider@arm.com>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <7f647316-00a7-69cb-5d40-733ab8c6796d@arm.com>
Date: Thu, 27 Feb 2020 16:28:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200226164118.6405-3-valentin.schneider@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082807_170474_373D6D78 
X-CRM114-Status: GOOD (  14.17  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26.02.20 16:41, Valentin Schneider wrote:
> The (CFS) scheduler has some extra logic catering to systems with SMT, but
> that logic won't be compiled in unless the above config is set.
> 
> Note that the SMT-centric codepaths are gated by the sched_smt_present
> static key, and the SMT sched_domains will only survive if the platform has
> SMT. As such, the only impact on !SMT platforms should be a slightly
> bigger kernel - no behavioural change.
> 
> Distro kernels already enable it, which makes sense since there already are
> things like ThunderX2 out in the wild. Enable it for the defconfig.

[...]

> 
> As for the sched_domains, this is on a hikey960:
> 
> before:
>   $ cat /proc/sys/kernel/sched_domain/cpu*/domain*/name | sort | uniq
>   DIE
>   MC
> 
> after:
>   $ cat /proc/sys/kernel/sched_domain/cpu*/domain*/name | sort | uniq
>   DIE
>   MC

Have you tested that EAS still comes up ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
