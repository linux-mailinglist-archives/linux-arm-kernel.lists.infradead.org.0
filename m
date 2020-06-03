Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA451ECFAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f4hsZ18q6A20xTBkc9AkfhyiWMPAudRCgnBd+CwWScQ=; b=KvSLVOyTLvdg/MGTw5F3+3gis
	AY7rZK/C5STJavX3Kks99+KeYB3nTok+Abm7fxUV4qSzwPN1EIzPWw96faigKG7J03Hhzg2d+QOyk
	99wztSzhHbYDHHs9gX5QIYQpWl03RPV0uE21qA5ADfdBy9EMvJfh2szuX6Ir3cq8py4GaUZaTe5ya
	IjnxT9WGUNAjy6ueu4V+S86wuV29It7E6awA/Ss1pQHriCsxdR3Udx5FZ6YuOdJt40v7eetDe1pWR
	ESSmUCf7onNfzpMrorDKXWbidbmeEqZ84QhSEeNXNvSY7J6O1sEJreRAINyNsSLPJNDuq8dRDG3g7
	A66ZUec7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSP4-0006sn-Lr; Wed, 03 Jun 2020 12:21:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSOr-0006s0-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:21:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCEE531B;
 Wed,  3 Jun 2020 05:21:37 -0700 (PDT)
Received: from [10.57.0.45] (unknown [10.57.0.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A2F1A3F305;
 Wed,  3 Jun 2020 05:21:34 -0700 (PDT)
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15> <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
 <1549935cf69ac3a006f32eb278821027@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6c1a4fbd-98cb-a49c-0ced-1318d5d5e7c8@arm.com>
Date: Wed, 3 Jun 2020 13:21:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1549935cf69ac3a006f32eb278821027@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_052141_469463_1CD9C63E 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-03 13:00, Sai Prakash Ranjan wrote:
> Hi Robin, Mathieu
> 
> On 2020-06-03 17:07, Robin Murphy wrote:
>> On 2020-06-01 22:28, Mathieu Poirier wrote:
>>> That being said I'm sure that dependencies on an IOMMU isn't a 
>>> problem confined
>>> to coresight. I am adding Robin Murphy, who added this commit [1], to 
>>> the thread
>>> in the hope that he can provide guidance on the right way to do this.
>>
>> Right, it's not specific to CoreSight, and it's not even specific to
>> IOMMUs really. In short, blame kexec ;)
>>
> 
> Yes it is not specific to coresight, we are targeting this for all
> consumers/clients of SMMU(atleast on SC7180 SoC). We have display throwing
> NoC/interconnect errors[1] during reboot after SMMU is disabled.
> This is also not specific to kexec either as you explained here [2] about
> a case with display which is exacly what is happening in our system [1].

Sure, but those instances are begging the question of why the SMMU is 
disabled at reboot in the first place ;)

Robin.

> 
> [1] 
> https://lore.kernel.org/lkml/1591009402-681-1-git-send-email-mkrishn@codeaurora.org/ 
> 
> [2] 
> https://lore.kernel.org/lkml/5858bdac-b7f9-ac26-0c0d-c9653cef841d@arm.com/
> 
>> The fundamental thing is that devices should stop any DMA activity at
>> shutdown. For a normal poweroff you can typically get away without
>> doing so, but over kexec, ongoing DMA traffic may corrupt memory in
>> the new kernel (at worst, I think even DMA reads could potentially
>> cause unexpected cache behaviour that might lead to mishaps, given the
>> right combination of memory attributes).
>>
>> IOMMUs merely help to make the situation more serious. For similar
>> kexec reasons, they need to disable any existing translations at
>> shutdown (imagine if the second kernel didn't have an IOMMU driver).
>> And at that point, even the normal poweroff case becomes problematic,
>> because any device DMA that hasn't been shut down beforehand is now
>> not necessarily going benignly to memory as it would in the no-IOMMU
>> case above, but potentially to random physical addresses, with all the
>> hilarity ensuing that you would expect from that.
>>
> 
> Thanks,
> Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
