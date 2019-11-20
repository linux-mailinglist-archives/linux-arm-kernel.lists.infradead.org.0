Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC244103A10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvSmDFZGnTC8Zfq09AOIiljD9XHATEz+Mnb+9LOMGlk=; b=c0ShZ3PTm805kn
	ARuoWQ2Nax8xtBxoSKYS06rOEFWljfPK1rWWSjML+XC2cMaQywNl0OiS86DGjXZUzJases/kMHRI7
	YecjgktHNjJTHBmvpR3TMr5C8zllePyJ+atlPmbnr7jrJHpEtKcZW8GDzv2cHDJ1Gvz/ztSwEaD5g
	VxmZAuVEMxuzyLu6RMzjIu4Y97Xijvb+VMzpQXFM8todVRaYlY6nOJegYhbn9skT70KxS6NPkGKfC
	O5YpL0phk6kVZDb6vbuSEhdlec+4incz5yQl5oHGoMhZRHEoC2ATs7SFtIEOZiyiw4K5K8MaXBaOS
	j71w0QYnSSOGhKFp3w2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXP7m-0001N0-QR; Wed, 20 Nov 2019 12:30:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXP7e-0001MG-SU
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:30:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04206328;
 Wed, 20 Nov 2019 04:30:14 -0800 (PST)
Received: from [10.1.194.51] (macbook.cambridge.arm.com [10.1.194.51])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12C113F703;
 Wed, 20 Nov 2019 04:30:12 -0800 (PST)
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
 <20191120110911.GA31600@bogus>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <b5f99e82-0640-72e6-2499-16e99b1aeae0@arm.com>
Date: Wed, 20 Nov 2019 12:30:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120110911.GA31600@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_043014_965738_2AB36F05 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.11.19 11:09, Sudeep Holla wrote:
> Hi Dietmar, Lukasz,
> 
> Thanks for digging this bug and fixing it.
> 
> On Wed, Nov 20, 2019 at 10:42:12AM +0000, Dietmar Eggemann wrote:

[...]

>> @@ -231,14 +230,14 @@ void store_cpu_topology(unsigned int cpuid)
>>  		cpuid_topo->package_id = -1;
>>  	}
>>
>> -	update_siblings_masks(cpuid);
>> -
>>  	update_cpu_capacity(cpuid);
>>
>>  	pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
>> -		cpuid, cpu_topology[cpuid].thread_id,
>> -		cpu_topology[cpuid].core_id,
>> -		cpu_topology[cpuid].package_id, mpidr);
>> +		cpuid, cpuid_topo->thread_id, cpuid_topo->core_id,
>> +		cpuid_topo->package_id, mpidr);
>> +
> 
> [nit] The above is a clearly cosmetic cleanup and shouldn't be part of
> this fix as they will be backported automatically. So I prefer to drop
> this or make it separate patch if required.

I can get rid of this cleanup in v2. Thanks for the review!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
