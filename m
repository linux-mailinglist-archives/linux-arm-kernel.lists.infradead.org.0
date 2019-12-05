Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9821311427C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KYTuQ8Kpzj4TEjUsMFI+SrMCYwsAMyrNyyT0y1aHBpU=; b=j2T7CmP8WkwWwMPjxF3FSDUlN
	mMOSk3hJ/HI72FpfjyRZ/IkSnRjBNP/Xjw1zn0N4MNOZKWDArAL6p8kjxABdGulwutmn0zhR2f6jG
	OhhaJWOGpj3Cj6JCumz3H1Eyqp920cg9k5yjtWtvCz9B9+Kp0WwNMfViMoZfy1YWlIiMSQ/NHJj8h
	4lptEiPEeLNwW9d4+57W619NLtdp2zAX8sU74kgJ2va2B/jj4rINc/cAanUsmk2oepUiYNvVeDnNi
	Tryx/ZT1YUgnN02SfCfTYerSbqpaCMRgmFIGo+YU4JNx+2fN8PQ1Zai6iIm09jN213GinEEaQtG1p
	RddQlnRwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ics1O-0001ut-Vp; Thu, 05 Dec 2019 14:22:22 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ics1A-0001tl-Nl
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:22:10 +0000
Received: from lhreml705-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id C59871AB2E16D2498875;
 Thu,  5 Dec 2019 14:22:03 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml705-cah.china.huawei.com (10.201.108.46) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 5 Dec 2019 14:22:03 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 5 Dec 2019
 14:22:03 +0000
Subject: Re: PSCI checker query
To: Sudeep Holla <sudeep.holla@arm.com>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
 <20191205133020.GA20398@bogus>
From: John Garry <john.garry@huawei.com>
Message-ID: <dadb80f1-53ec-0344-cdce-d8b36372dfbe@huawei.com>
Date: Thu, 5 Dec 2019 14:22:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191205133020.GA20398@bogus>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml702-chm.china.huawei.com (10.201.108.51) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_062208_923059_755FF6F0 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Huangming \(Mark\)" <huangming23@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 wanghuiqiang <wanghuiqiang@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> D06:
>>
>> root@(none)$ dmesg | grep -i psci
>> [    0.000000] psci: probing for conduit method from ACPI.
>> [    0.000000] psci: PSCIv1.1 detected in firmware.
>> [    0.000000] psci: Using standard PSCI v0.2 function IDs
>> [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
>> [    0.000000] psci: SMC Calling Convention v1.1
>> [   24.252657] psci_checker: PSCI checker started using 96 CPUs
>> [   24.258305] psci_checker: Starting hotplug tests
>> [   24.262914] psci_checker: Trying to turn off and on again all CPUs
>> [   24.277545] psci: CPU0 killed.
>> [   24.298682] psci: CPU1 killed.
>> [   24.318704] psci: CPU2 killed.
>> [   24.343580] psci: CPU3 killed.
>>
>> [snip]
>>
>> [   46.053433] psci_checker: cpuidle not available on CPU 92, ignoring
>> [   46.059690] psci_checker: cpuidle not available on CPU 93, ignoring
>> [   46.065946] psci_checker: cpuidle not available on CPU 94, ignoring
>> [   46.072203] psci_checker: cpuidle not available on CPU 95, ignoring
>> [   46.078465] psci_checker: Could not start suspend tests on any CPU
>> [   46.084635] psci_checker: PSCI checker completed
>> root@(none)$
>>
>> Is there anything we can check to know what's going wrong?
>>
> 

Hi Sudeep,

> Both use the same firmware(or at-least the baseline) ? 

Well from the kernel logs provided we have for D05:
psci: PSCIv1.0 detected in firmware.

and for the D06 board:
psci: PSCIv1.1 detected in firmware.

Both seem to be using v1.4 ATF also from the bios logs (they don't tell 
much else).

Are there any
> significant hardware or firmware changes around CPU power-off sequence ?

Not that I know about specifically. I've cc'ed some of our firmware 
guys, who may know more details.

> If you are running same kernel image on both, firmware becomes easy
> target to start with.

Yes, same kernel build. That's v5.4 with some unrelated changes.

  Have you run some tests on PSCI firmware ?

Again, I'll have to refer to our firmware guys. BTW, I'll say now that 
this D05 board is legacy...

Thanks,
John



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
