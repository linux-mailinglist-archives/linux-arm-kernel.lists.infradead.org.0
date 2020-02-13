Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDEE15C14C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQmRrCM0o58/Q8jcKliOjOcGA0HgJfMyTsryCz7Fr5k=; b=NRiRD5g5X375RP
	knYOuN1xJZN7Zgr4B9rJQZyWtGswJif8SQxvy2BhVNlcdvtL9j1NwtQJtxBB8Kt3NGmUgtf5eWBxe
	KZpAjiMHkH7qdBtSfeh3CGKkj5fjkDJ0WiWCG1RYzWmGp+yLokkHZXsL5xIwPcEZdZVeoC6Evm0wU
	xUIiWJGdI94wDcoOJKKW0fJai3Bw0MFy80WiEcmzriccjn8yR1QMxCjashRosHxmfGxnLzIDFWWXa
	Ft6RhPJwBZ/HHcxPzQtBuPN072NGjzVZd8NLcdjVTtAsSZ5g/IpIDEFY+tVUVmr1ggXXOLC2nV+Ti
	PmFqMdfaX+sivzIsFhvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GJu-0002cs-8i; Thu, 13 Feb 2020 15:22:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GJn-0002bO-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:22:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 663CD328;
 Thu, 13 Feb 2020 07:22:14 -0800 (PST)
Received: from [10.1.195.59] (ifrit.cambridge.arm.com [10.1.195.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FE623F68E;
 Thu, 13 Feb 2020 07:22:12 -0800 (PST)
Subject: Re: [PATCH v3 5/7] cpufreq: add function to get the hardware max
 frequency
To: Ionela Voinescu <ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-6-ionela.voinescu@arm.com>
 <b63a4a47-99e5-9c71-73be-740aedde4714@arm.com>
 <20200213125918.GA2397@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <cf821516-e66b-94d4-ee63-5f94602a7cff@arm.com>
Date: Thu, 13 Feb 2020 15:22:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200213125918.GA2397@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_072219_914214_A314D964 
X-CRM114-Status: GOOD (  11.47  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/13/20 12:59 PM, Ionela Voinescu wrote:
>> What about intel_pstate / turbo stuff? IIRC one of Giovanni's issues was that
>> turbo freq is not always reported as the max freq. Dunno if we can do
>> anything about it; at the very least maybe document the caveat?
>>
> 
> Okay, I can add details in the description in regards to potential
> reasons to overwrite this function. But basically this is one of the
> reasons for making this a weak function. The best information we can
> generically get for maximum hardware frequency is cpuinfo.max_freq.
> But if platforms have the possibility to obtain this differently from
> either hardware or firmware they can overwrite this.
> 

Right, that would be handled by a different implementation of
that function, so this wasn't too relevant of a comment. Sorry!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
