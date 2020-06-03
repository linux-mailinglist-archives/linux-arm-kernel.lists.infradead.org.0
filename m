Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7801ECE82
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yGLShgxFS10lrNJRbBZxOWBqhQegRKVnz+r8xq5NF5s=; b=Hsf4pZYFXR62nwS0eEKFU8W1Z
	CX1gtf5FLgaajJwCeZfscddhh9JwyS1kLUmW9wRr1afPjM+eZAV6D4R3lLBRpyCmNUJDveLRvFv7G
	AxyclFlYJuScIdT7K7g3zdUirQSaDN2JYiD5Hf9RSS9V1xxBXrZeTUM74jF6hg6mBZIyY15B1BDDj
	sjO4ShDsaHPUUapfw29JFWOZuzeJMLtcuU80vD4cgXeoWuGGIKODRjr+jX4AtA9O0QMn9X4QJA3Tb
	QcqekW1q7N3w/PJdmZ74o+JJQWJc8/2BGEJhct13i0JqjETgq38H/KDzVhfUDRvtbmJPYeh+ys86v
	EGnuY8wCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRi2-00021r-0Q; Wed, 03 Jun 2020 11:37:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRhu-00021X-AI
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:37:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1859631B;
 Wed,  3 Jun 2020 04:37:17 -0700 (PDT)
Received: from [10.57.0.45] (unknown [10.57.0.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E3693F305;
 Wed,  3 Jun 2020 04:37:15 -0700 (PDT)
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
Date: Wed, 3 Jun 2020 12:37:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200601212858.GB24287@xps15>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_043718_399023_E52DA27D 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-01 22:28, Mathieu Poirier wrote:
> That being said I'm sure that dependencies on an IOMMU isn't a problem confined
> to coresight. I am adding Robin Murphy, who added this commit [1], to the thread
> in the hope that he can provide guidance on the right way to do this.

Right, it's not specific to CoreSight, and it's not even specific to 
IOMMUs really. In short, blame kexec ;)

The fundamental thing is that devices should stop any DMA activity at 
shutdown. For a normal poweroff you can typically get away without doing 
so, but over kexec, ongoing DMA traffic may corrupt memory in the new 
kernel (at worst, I think even DMA reads could potentially cause 
unexpected cache behaviour that might lead to mishaps, given the right 
combination of memory attributes).

IOMMUs merely help to make the situation more serious. For similar kexec 
reasons, they need to disable any existing translations at shutdown 
(imagine if the second kernel didn't have an IOMMU driver). And at that 
point, even the normal poweroff case becomes problematic, because any 
device DMA that hasn't been shut down beforehand is now not necessarily 
going benignly to memory as it would in the no-IOMMU case above, but 
potentially to random physical addresses, with all the hilarity ensuing 
that you would expect from that.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
