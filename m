Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74221DCD05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 14:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmkNEc/lGLV577ZIZwPugeVesvVTP0yrzteKKLjOlqc=; b=r6Y9g+Vw8qLP7D
	c9+Q9iV4Zls4d55VyuvUw+egO4Q0YeOe3Lg8RSrFdg1XwquzborPnFShye8eo5tHK/MEIwlkbQ9S3
	1SDJoWC5jEa4c1I/krvKL9Z7YUDxKLH0PX0bDKng5f7ap27gdWzJRuCbjPEMcqF+vQulcQ5Gu5fli
	Cbh0YiZOGqC+FfX+XDhHp1u/HfwU45CuK2K0rgRQ8Y0uy//6IyR4UMOX3iOZw2CANP3xj7oXmTzFc
	qZKuEKsaf3RGNWSWyjqy1AySh7gtEjkBgAbtFoVBECZLfsJ9Hj7ILUbPSgSwNRGH0h46b4/4hMk55
	l0V683eGfnL1R58kQUjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkQU-000812-1l; Thu, 21 May 2020 12:35:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkQH-0007zq-0E; Thu, 21 May 2020 12:35:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 929EF30E;
 Thu, 21 May 2020 05:35:36 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3591B3F305;
 Thu, 21 May 2020 05:35:34 -0700 (PDT)
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
To: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>,
 Mark Rutland <mark.rutland@arm.com>, Lecopzer Chen <lecopzer@gmail.com>
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
 <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
 <20200518104524.GA1224@C02TD0UTHF1T.local>
 <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
 <8a1022c0-da2b-c83d-81cd-44b11149496b@arm.com>
 <B926444035E5E2439431908E3842AFD24B2728@DGGEMI525-MBS.china.huawei.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <1d615c32-89f0-d9ba-43db-3d90c7d53e15@arm.com>
Date: Thu, 21 May 2020 13:36:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <B926444035E5E2439431908E3842AFD24B2728@DGGEMI525-MBS.china.huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_053541_130364_775F1002 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sumit Garg <sumit.garg@linaro.org>,
 Jian-Lin Chen <lecopzer.chen@mediatek.com>, Will Deacon <will@kernel.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "yj.chiang@mediatek.com" <yj.chiang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "acme@kernel.org" <acme@kernel.org>, Linuxarm <linuxarm@huawei.com>,
 Peter Zijlstra <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/21/20 4:00 AM, Song Bao Hua (Barry Song) wrote:

>
>> -----Original Message-----
>> From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org]
>> On Behalf Of Alexandru Elisei
>> Sent: Wednesday, May 20, 2020 10:31 PM> 
>> Hi,
>>
>> On 5/18/20 12:17 PM, Alexandru Elisei wrote:
>>> Hi,
>>>
>>> On 5/18/20 11:45 AM, Mark Rutland wrote:
>>>> Hi all,
>>>>
>>>> On Mon, May 18, 2020 at 02:26:00PM +0800, Lecopzer Chen wrote:
>>>>> HI Sumit,
>>>>>
>>>>> Thanks for your information.
>>>>>
>>>>> I've already implemented IPI (same as you did [1], little difference
>>>>> in detail), hardlockup detector and perf in last year(2019) for
>>>>> debuggability.
>>>>> And now we tend to upstream to reduce kernel maintaining effort.
>>>>> I'm glad if someone in ARM can do this work :)
>>>>>
>>>>> Hi Julien,
>>>>>
>>>>> Does any Arm maintainers can proceed this action?
>>>> Alexandru (Cc'd) has been rebasing and reworking Julien's patches,
>>>> which is my preferred approach.
>>>>
>>>> I understand that's not quite ready for posting since he's
>>>> investigating some of the nastier subtleties (e.g. mutual exclusion
>>>> with the NMI), but maybe we can put the work-in-progress patches
>>>> somewhere in the mean time.
>>>>
>>>> Alexandru, do you have an idea of what needs to be done, and/or when
>>>> you expect you could post that?
>>> I'm currently working on rebasing the patches on top of 5.7-rc5, when
>>> I have something usable I'll post a link (should be a couple of days).
>>> After that I will address the review comments, and I plan to do a
>>> thorough testing because I'm not 100% confident that some of the
>>> assumptions around the locks that were removed are correct. My guess is
>> this will take a few weeks.
>>
>> Pushed a WIP branch on linux-arm.org [1]:
>>
>> git clone -b WIP-pmu-nmi git://linux-arm.org/linux-ae
>>
>> Practically untested, I only did perf record on a defconfig kernel running on the
>> model.
>>
>> [1]
>> http://www.linux-arm.org/git?p=linux-ae.git;a=shortlog;h=refs/heads/WIP-pm
>> u-nmi
> Fortunately, it does work. I used this tree to perf annotate arm_smmu_cmdq_issue_cmdlist() which
> is completely disabling IRQ. Luckily, it reports correct data. Before that, it reported all time was spent by
> the code which enabled IRQ .

That's good news that it works for you, thanks for letting me know.

Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
