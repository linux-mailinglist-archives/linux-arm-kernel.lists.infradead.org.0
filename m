Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6733C1AB951
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EMA/2nAmyi5gRaMtfxNFH0fAteAvRSKdIysanMdeNso=; b=q5r2ZcRw3AQ+GHzL5UD99fx9m
	CH35ZxWRt6H6xlFxzXk7fxY9rSpwpYeDtoyzHoZxFlSJyYWq1LTk/BOSFyBXfkJXk95wv5eAuO9qK
	xLwX3mbTruvpG3y8eWdXLKMsYLQJs5RYrGzLisUselnIGarptWymSJyWlD+GcyyW7kBvhvyLRj9EX
	73lQkIjyzQHHVvOP958orARJbK2Vs3KXrxQcpCjdpJbUeVKqpCO2KMr57WZHepHSH/OxKf6KO1LUg
	R/7OtpbAs/lNj1K1pqLzV0sjw6p5ueu8FzvB7oVLBdcE5hQKUWMaLpxlsj4O30EouH/9lXkyNLiNg
	T8y/7Ag0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOybZ-0003fk-5I; Thu, 16 Apr 2020 07:06:33 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOybN-0003f3-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:06:22 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e9803af0000>; Thu, 16 Apr 2020 00:05:19 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 16 Apr 2020 00:06:18 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 16 Apr 2020 00:06:18 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 16 Apr
 2020 07:06:18 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 16 Apr
 2020 07:06:14 +0000
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
 <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
 <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
 <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
 <20200413062141.a6hmwipexhv3sctq@vireshk-i7>
 <64b609f1-efb1-425f-a91a-27a492bd3ec4@nvidia.com>
 <20200414054504.e3qn2cnxqur4sclw@vireshk-i7>
 <d6e0eed6-4267-fca9-59e1-02d16e17ff34@nvidia.com>
 <20200416033715.hscztwkxie2o5i3r@vireshk-i7>
From: Sumit Gupta <sumitg@nvidia.com>
Message-ID: <8ea80551-b47c-3dd5-4efa-6befecc279e1@nvidia.com>
Date: Thu, 16 Apr 2020 12:36:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200416033715.hscztwkxie2o5i3r@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1587020719; bh=MEcFP8G3VxgwBAt3A1oRVQWL07CnwPJfWLc3Wywyjpg=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Ym1Zof5kV4ZzNBXuhXOY6pCMuNXLHXbISr+b04QIKvNWYzdvddezwVuXMpid2BF5/
 dPfkdQNOTOxwvEjv0+wd7hCnNKkb8FlFD8nTuS66Zsv/E+tYrpbTFQtsnTyCM0IHed
 QJxsYrwBMxHjeNsU7m177c0g4VNPYU5YLdeyBsjHvmbkdksZ0xTbWVzZeIvZXdJgj7
 qnnuPfvuQoOA+S/MvnDcKQZN5bkim4KueK5S7THIGk9WB1KWKuJPst/htuBdxTdd78
 SsokaJxGXH+ZdN77GNGGGQ9I3cwDBWGmBrY6dMiePRVUIu9mpDj4o3swCIo5ZHNWFH
 nsLq+/ogcmUUg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_000621_583635_5E1E9E05 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 Sumit Gupta <sumitg@nvidia.com>, mperttunen@nvidia.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 16/04/20 9:07 AM, Viresh Kumar wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 15-04-20, 16:55, Sumit Gupta wrote:
>>
>>
>> On 14/04/20 11:15 AM, Viresh Kumar wrote:
>>> External email: Use caution opening links or attachments
>>>
>>>
>>> On 13-04-20, 17:50, Sumit Gupta wrote:
>>>> This was done considering long delay value as explained previously.
>>>> Do you think that smp_call_function_single() would be better than work queue
>>>> here?
>>>
>>> Don't work with assumptions, you should test both and see which one
>>> works better. Workqueue should never be faster than
>>> smp_call_function_single() with my understanding.
>> Checked the time taken and its almost same in both cases.
>> Earlier we used smp_call_function_single(), but delay time period was small
>> in that SOC. In T194, the time period was more. So, this is an optimization
>> done because using work queue has advantage as interrupts will not be
>> disabled for that period.
> 
> Hmm, okay, keep the workqueue and mention the required details in a
> comment for everyone to understand why the implementation is done that
> way.
> 

sure, thank you!

> --
> viresh
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
