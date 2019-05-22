Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4ECB2670E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbIxL6xg65bbUe6VEfFulBh427ihsQCHE5VqnNeKEX4=; b=sWIbYGg9KJWWEs
	DR+0mxjp8q7FmynU0eQ3EKbwL08Qkil/M+Oh2uIRG3NUYIe8c3fcZEw6C/i5GZSd+fRThmsr2e0Z1
	zKWu5IV7aZdepWa2rsLs0rMCWX+aSoDvcT1168qFz8AOI9ERjj39H8YZHpi3aV4iEzWw0H9LYj0WL
	U74VIJVCb+1ki1zSV/fWRnqGZuvneUWBOypSVd3CTOiPZWDyGxy5alCxoJdKGcB++lG9+nZ358yDO
	T3RRHe2wJs9QVDnG4cFP5mhTTrp1WT1n5lrZxoZ5geOUsAdCkLXsXhYWKxpuat9dzxa60qVRhfEno
	0A/FdGj7N6KWzyvWbjeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTLS-0000lT-Ob; Wed, 22 May 2019 15:39:58 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTLM-0000lA-DH
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:39:53 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 06FE020609;
 Wed, 22 May 2019 17:39:51 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E3BAF20072;
 Wed, 22 May 2019 17:39:50 +0200 (CEST)
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom: msm8998: Add PSCI cpuidle low
 power states
To: Marc Zyngier <marc.zyngier@arm.com>, MSM <linux-arm-msm@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
 <49cf5d94beb9af9ef4e78d4c52f3b0ad20b7c63f.1558430617.git.amit.kucheria@linaro.org>
 <a7514c68-d2d3-ce9e-bc4b-f484bb5bf3cf@free.fr>
 <d1ca4d37-ce25-a285-a9ef-dfe831f3d1de@free.fr>
 <2f8db49a-759c-d560-70c1-d041beeea914@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <d94e33ed-f6f2-b39a-6360-2dd9112a1183@free.fr>
Date: Wed, 22 May 2019 17:39:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2f8db49a-759c-d560-70c1-d041beeea914@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed May 22 17:39:51 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_083952_609273_8489D0DA 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sibi Sankar <sibis@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/05/2019 11:35, Marc Zyngier wrote:

> On 22/05/2019 10:17, Marc Gonzalez wrote:
> 
>> The following dmesg log caught my eye, and might be relevant:
>>
>> 	ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
>>
>> Is that bad, doctor? I don't think it would explain the crash though...
> 
> It doesn't explain it.
> 
> It is bad though: your vendor doesn't tell the kernel about the HW being
> free of Spectre-v2, and doesn't provide a mitigation either. Hopefully,
> this is a responsible vendor that will provide you with a firmware
> update that fixes it.

# cd /sys/devices/system/cpu/vulnerabilities/
# grep "" *
l1tf:Not affected
mds:Not affected
meltdown:Mitigation: PTI
spec_store_bypass:Vulnerable
spectre_v1:Mitigation: __user pointer sanitization
spectre_v2:Vulnerable

OK, so there are apparently two unmitigated vulns, spec_store_bypass
and spectre_v2.

These vulns need to be mitigated in FW because otherwise some secure
property of the secure OS could be violated? Or because disabling the
faulty optimization requires secure privileges?


Some documentation, for my own reference:

https://elixir.bootlin.com/linux/latest/source/Documentation/ABI/testing/sysfs-devices-system-cpu
https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
