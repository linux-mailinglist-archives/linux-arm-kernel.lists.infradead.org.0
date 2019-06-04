Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE6034586
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywdY1JOdLAymoMmfagWQgR7OOocNzpSycGvc/v5Bzt4=; b=VdwyKFRCYO+tXp
	JbZ6pwSC7tXhHqrceg1llhwyBbNYt//Xxepvv7FdvMTPgJ7/JrvkxX/ZBv/EttJtsDEqd0kb6/ERm
	6KZf6OPhnqd28vrcgvgmldDdWpKfPTtBzssZhAf13HjFE5HNJXvJ+3rgwwKPro3lkdjGyv8OwHHqQ
	hlV6QmXSSkg42P6NoA7W1iqebxrKg8FDrH8Wxhc56Z7+dXEf01uk59ItsIB8lesH7mZiPk9E+lFAU
	cf2X57KZ2YFddvOOlpDMBHflYeVGrksXf2LgKAASux2hjKj9ATLCahFDcTHneiVbJ3F7ehnqYqUmy
	j4nIvc6B837vKmtSRxOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7ip-0002JP-3u; Tue, 04 Jun 2019 11:35:19 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7ii-0002Il-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:35:14 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf6576e0000>; Tue, 04 Jun 2019 04:35:10 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 04 Jun 2019 04:35:11 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 04 Jun 2019 04:35:11 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Jun
 2019 11:35:11 +0000
Received: from [10.26.11.158] (172.20.13.39) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Jun 2019
 11:35:08 +0000
Subject: Re: [PATCH 07/26] iommu/dma: move the arm64 wrappers to common code
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-8-hch@lst.de>
 <06b331f0-7df7-a6cd-954c-789f89a0836d@arm.com>
 <acb46c7f-0855-de30-485f-a6242968f947@nvidia.com>
 <20190604060554.GA14536@lst.de>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <5e119919-bbfd-14a4-0258-93e8249d11c4@nvidia.com>
Date: Tue, 4 Jun 2019 12:35:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604060554.GA14536@lst.de>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559648110; bh=VdqCX9RhIKbSosQO8ZrtJXPmMRZiVMAZh+LN9yQt9Zk=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=emCZJ7it6lQS53IGu3TzNnekDYJaA//l1h7EaXgGok72LlXH4v9jhBAOGQz59yBV4
 uYLIm9wA8pSFenLXo9wX7QKjEjv1kcJRtovDerKh6hs3he51kpHfqrKB19qfA8gG2N
 Y37awIOpATCkodK1yiiLnWKsYxhHzIPMofESI5qT+J2Pu+7R+6uDdYfIRE3tHij3LC
 wuYTsm1vWBrKeeJ3WgBQkWNLGs1mOxBO/NnkHfhYBVTqVNVhwNh3Eg49AVRVUD9SIR
 Uzr4wK1ElNJox0xa4xVXPelS4UcglZJJ7ebbiM61sRgdQ84RBEMjJqexYIaLMth4JY
 Lh71EqBvSMgrw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_043512_792936_AFFE9C62 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-tegra <linux-tegra@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 04/06/2019 07:05, Christoph Hellwig wrote:
> On Mon, Jun 03, 2019 at 08:47:57PM +0100, Jon Hunter wrote:
>> Since next-20190529 one of our tests for MMC has started failing, where
>> the symptom is that the data written to the MMC does not match the
>> source. Bisecting this is pointing to this commit. Unfortunately, I am
>> not able to cleanly revert this on top of -next, but wanted to report
>> this if case you have any ideas.
> 
> Does this fix your problem?
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git/commit/?h=generic-dma-ops&id=1b961423158caaae49d3900b7c9c37477bbfa9b3

Yes I can confirm with this patch on today's -next the issue is no
longer seen, and reverting this patch on top of today's -next causes the
problem to occur again. So yes this fixes my problem.

Thanks!
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
