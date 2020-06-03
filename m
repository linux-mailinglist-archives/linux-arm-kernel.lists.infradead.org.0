Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D321ECF3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=enAUz/i3qHFmcAGzZlYCkrNAJuz8xbQVFRrwssDkhgc=; b=ezCKZ/a+lQzyxuup6ZRPCSHfP
	BC1JO8A3kIdWDIWpgKv8SEVSC7CexWCdSwrn/erXlRZrj+0boIzPMeyuGl0xnPwDj4woA0lmrH2Ds
	nK7BK/ddPxFHfYh6MN9JX/rxbqDnHtLAg49xwouXVyG/HwEhHjvQytH+Jt2+ddQBDiP2RJXp9NPzt
	jC5Fp4aJGzJMVOqF62IgGI2e+9sHYIfv/rLpJ055lSTz363EFSFPMmDLX+u5oaBSH9yC8lRWYA7nB
	6JpKvPbogDFNZLyU0ETayBqVLwz/iYffqcH3/J3gyrsfj8e7KsHPhxRUeaAzFPs52NFsb2VGQOBQf
	uwBJ6T6cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgS6L-00030Q-G1; Wed, 03 Jun 2020 12:02:33 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgS61-0002pj-19
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:02:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591185737; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=SeSF64gWAAvQHU3nZPOI+yYNnSV/P3R4z/7sHFFTb98=;
 b=AlofzthnhbB57bzHn+Cx+bRkiXdJ/rLdJNrFy+eojMJWMmBohl67g+cXOMiI8dNdugbWBs0H
 45PnxPKJV7YFc7RFRENbXb6H5VpruQ2g5g4FJoJB1E2ma3l+d1SAeS+nTn2gnVgdoWAwd6mM
 LwxRocW8WCpnPiHXtZMi+bAf5is=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5ed790f944a25e005274ed8a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 12:00:57
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 424DAC43395; Wed,  3 Jun 2020 12:00:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 94B2FC433CA;
 Wed,  3 Jun 2020 12:00:55 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 17:30:55 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
Message-ID: <1549935cf69ac3a006f32eb278821027@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_050217_143349_FA2E2864 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Hi Robin, Mathieu

On 2020-06-03 17:07, Robin Murphy wrote:
> On 2020-06-01 22:28, Mathieu Poirier wrote:
>> That being said I'm sure that dependencies on an IOMMU isn't a problem 
>> confined
>> to coresight. I am adding Robin Murphy, who added this commit [1], to 
>> the thread
>> in the hope that he can provide guidance on the right way to do this.
> 
> Right, it's not specific to CoreSight, and it's not even specific to
> IOMMUs really. In short, blame kexec ;)
> 

Yes it is not specific to coresight, we are targeting this for all
consumers/clients of SMMU(atleast on SC7180 SoC). We have display 
throwing
NoC/interconnect errors[1] during reboot after SMMU is disabled.
This is also not specific to kexec either as you explained here [2] 
about
a case with display which is exacly what is happening in our system [1].

[1] 
https://lore.kernel.org/lkml/1591009402-681-1-git-send-email-mkrishn@codeaurora.org/
[2] 
https://lore.kernel.org/lkml/5858bdac-b7f9-ac26-0c0d-c9653cef841d@arm.com/

> The fundamental thing is that devices should stop any DMA activity at
> shutdown. For a normal poweroff you can typically get away without
> doing so, but over kexec, ongoing DMA traffic may corrupt memory in
> the new kernel (at worst, I think even DMA reads could potentially
> cause unexpected cache behaviour that might lead to mishaps, given the
> right combination of memory attributes).
> 
> IOMMUs merely help to make the situation more serious. For similar
> kexec reasons, they need to disable any existing translations at
> shutdown (imagine if the second kernel didn't have an IOMMU driver).
> And at that point, even the normal poweroff case becomes problematic,
> because any device DMA that hasn't been shut down beforehand is now
> not necessarily going benignly to memory as it would in the no-IOMMU
> case above, but potentially to random physical addresses, with all the
> hilarity ensuing that you would expect from that.
> 

Thanks,
Sai
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
