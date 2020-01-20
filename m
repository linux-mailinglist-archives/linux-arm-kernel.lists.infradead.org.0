Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C799C14277D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 10:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CmXbE6wvD93jaFxyhwNH6RbWttGuAeVHw78nmfg1pmM=; b=lWrZhFnSxXrBDHGsGmWpPf4j2
	v/ZBBHeDUlEd513DD9g8M6s6ZyCwRD+Ng+BWpx5zefd9kjra9rsD/XEqj7clcrAvJ/6mXR6p5v84T
	i/YTU4J6SY2ze+bonil0owDtK/STD4LAFbnHpeKNNHgDo67ZCT/PIIkJ/m8ufi/KPTVXyxeCK/FUE
	/LKmgfKMntFzipAFzRDxWOCsmgjcovtBRF3OGmmGfbSHrbLM7j2raZWuyQuJ9PpW57UKpIsGC+sBj
	R9SxLCH3uQ87ggrbEdUzCJh36OQew2spLxhhnokP8IU/sbkCsD1MoRJ45XFojDBiZtBmo79nlvuxr
	5xelUIzDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTZX-0006Ol-Nb; Mon, 20 Jan 2020 09:42:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTZK-0006OK-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 09:42:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CA8F207E0;
 Mon, 20 Jan 2020 09:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579513321;
 bh=NL+jWrz2kmdaOfiDcTAo2c2l6MRY04yThDjnVS/6tSI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zrwVMlIQSMOiJ+5pq3cBQpJwEKc6MfoE49dC0kiB+fsjDwwMlf0jzXBc9LK7wc8y/
 rp4qID1pHewANcrIwBtaGJRNnQ2ODBpdkaUy6vhm4B4DVuZVOdWARepUOJqvIMHWBJ
 kK1F7L0IvJLxRAPwZvQ056N0Q7YEz5R83z92LoA4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itTZH-000EA4-Ew; Mon, 20 Jan 2020 09:41:59 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 10:41:59 +0100
From: Marc Zyngier <maz@kernel.org>
To: Steven Miao <Steven.Miao@arm.com>, Tao Zeng <prime.zeng@hisilicon.com>
Subject: Re: Questions about /proc/cpuinfo for arch-ARM  - CAS-149046-Y1H3T8
In-Reply-To: <VE1PR08MB4749DEED78C7EABF519650B7F0320@VE1PR08MB4749.eurprd08.prod.outlook.com>
References: <FFCDED37A161475FA3F5B19E21DECA0D1D5CF72567E6@SUPPORT-SOFTWARE.ARM.COM>
 <VE1PR08MB47490C13405F61B3599D1314F0320@VE1PR08MB4749.eurprd08.prod.outlook.com>
 <VE1PR08MB4749DEED78C7EABF519650B7F0320@VE1PR08MB4749.eurprd08.prod.outlook.com>
Message-ID: <22d48abd5ab2813b18e952b5d911152c@misterjones.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Steven.Miao@arm.com, prime.zeng@hisilicon.com,
 support-software@arm.com, Mark.Rutland@arm.com, Robin.Murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_014202_991264_C9C98527 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Robin Murphy <Robin.Murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Support-Software <support-software@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

On 2020-01-20 10:24, Steven Miao wrote:
> CC arm mailing list. Someone know the whole history may have a better 
> answer.
> 
> Thanks,
> Steven
> 
> From: Support-Software <mailto:support-software@arm.com>
> Sent: Monday, January 20, 2020 5:17 PM
> To: Tao Zeng <mailto:prime.zeng@hisilicon.com>
> Cc: Mark Rutland <mailto:Mark.Rutland@arm.com>
> Subject: Re: Questions about /proc/cpuinfo for arch-ARM - 
> CAS-149046-Y1H3T8
> 
> From Steven Miao - Arm Partner Enablement Group
> Please quote case reference number
> https://support.developer.arm.com/case-details/?id=f9beb263-333b-ea11-a813-000d3ab4f2f3
> in any further emails to us on this subject.
> 
> Hi Tao,
>> 1. Since /proc/cpuinfo is treated as ABI, so where can I find the 
>> specification? Or is there any docs
>> to describe the details? Or it is just some applications who have 
>> already token it?
>  I think it is just de-facto ABI legacy application are relying on,
> there's no such specification.
>> You know that, in x86, /proc/cpuinfo provide really good user 
>> experience,
>> what we want to do is providing the same or even better user 
>> experience.

Tao: And by "better user experience", you mean breaking existing 
software?
I'm sure users will enjoy the "improvement".

> We should add new stuff to /sys/, don't add new things to /proc. On
> x86 these strings are acquired from the CPU itself, via CPUID
> instructions, which means that it works for future CPUs. For ARM
> systems, we have no consistent way of acquiring a model name from a
> CPU itself. If users who want to decode MIDRs are going to have to use
> userspace tools.
> Changing current cpuinfo:
> - it breaks existing applications
> - it is unmaintainable in the long run
> - we can already get cpu information by dmidecode, lscpu, lshw...

Exactly. The subject has been rehashed to death, and is not up for
discussion anymore. /proc/cpuinfo is ABI, which means its format is
forever immutable. Userspace has all the required tools at its disposal.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
