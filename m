Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56473C030E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6OVtF7kYPzhcAcr8NgiuX9BFdo1T7uQgsvmzsWFlbrY=; b=bXx3C9pCkBjatAtx8k1I94C03
	2Ig4Ti332GJgL4dibM7QHGs1p7D6xev/UuYVx1Wddpfg1GHtmM0HAk507JSSVQUDQoqvDeKHiOL+b
	nFmFwNO8KxG4gCpO06qaHmL9Jg/Mqjzf6hG6AAtNoi+X8aJglcAXdwPZaB6lLBqJwcju1TyxVr8y/
	MmMwfcuNtc7BqNxpJuJJZLXLgecg5BknQxWrWYssQdtCJV2PyOdrEJt9jwbsQIuphnBwUardkO24y
	Z+K5lqqhN4R8TPuU8Ry++CnHsxTUcbN8j3/gO54mzoN8oOS8arKiEGAgn8Y27vLDobB6GjQkyJD/8
	d5IBNI4Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnF1-0002lK-4q; Fri, 27 Sep 2019 10:12:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnEN-0002LH-Im
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:12:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF75F28;
 Fri, 27 Sep 2019 03:12:06 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72FE73F534;
 Fri, 27 Sep 2019 03:12:04 -0700 (PDT)
Subject: Re: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>
References: <20190926114212.5322-1-jianyong.wu@arm.com>
 <20190926114212.5322-3-jianyong.wu@arm.com>
 <2f338b57-b0b2-e439-6089-72e5f5e4f017@arm.com>
 <HE1PR0801MB167630F7B983A7F9DBB473DFF4810@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4337dcf0-bd60-4db8-6c9f-cd718b89d2a4@arm.com>
Date: Fri, 27 Sep 2019 11:12:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB167630F7B983A7F9DBB473DFF4810@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_031207_764813_00273FDC 
X-CRM114-Status: GOOD (  16.57  )
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/09/2019 11:10, Jianyong Wu (Arm Technology China) wrote:
> Hi Suzuki,
> 
>> -----Original Message-----
>> From: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Sent: Thursday, September 26, 2019 9:06 PM
>> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
>> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
>> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
>> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
>> <Mark.Rutland@arm.com>; Will Deacon <Will.Deacon@arm.com>
>> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
>> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
>> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
>> <Justin.He@arm.com>; nd <nd@arm.com>
>> Subject: Re: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
>> arch-independent.
>>
>> Hi Jianyong,
>>
>> On 26/09/2019 12:42, Jianyong Wu wrote:
>>> Currently, ptp_kvm modules implementation is only for x86 which
>>> includs large part of arch-specific code.  This patch move all of
>>> those code into new arch related file in the same directory.
>>>
>>> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
>>> ---
>>>    drivers/ptp/Makefile                 |  1 +
>>>    drivers/ptp/{ptp_kvm.c => kvm_ptp.c} | 77 ++++++------------------
>>>    drivers/ptp/ptp_kvm_x86.c            | 87
>> ++++++++++++++++++++++++++++
>>>    include/asm-generic/ptp_kvm.h        | 12 ++++
>>>    4 files changed, 118 insertions(+), 59 deletions(-)
>>>    rename drivers/ptp/{ptp_kvm.c => kvm_ptp.c} (63%)
>>
>> minor nit: Could we not skip renaming the file ? Given you are following the
>> ptp_kvm_* for the arch specific files and the header files, wouldn't it be
>> good to keep ptp_kvm.c ?
>>
> If the module name ptp_kvm.ko is the same with its dependent object file ptp_kvm.o, warning will be given by compiler,
> So I change the ptp_kvm.c to kvm_ptp.c to avoid that conflict.

Hmm, ok. How about ptp_kvm_common.c instead of kvm_ptp.c ?

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
