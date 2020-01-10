Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F4136B66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SZjgLOYPQb90cgacpifGUvA16YzmZEW9VTar1TIJ1Rg=; b=deWrpV+WFXSowrOfH7HeAsh43
	im+tnM1Udsc2sUmjp4jUODSRPFjecACl6SmL8T2527bsFm3B9hKx4p4zYow0JIaq4nHQ2iiwCWfph
	EzF2ZRXX5QDtUFWrIJ+YofB62O9w/ZGJWePQHZlQqb+2Wy1MkTjO7xUNGu50wvOXGdgVlIcozYlGz
	DBaHx9XzRtyiMUmgAQsH2PQ2M1tNMgLmiaTzxWxOkl+lMcvXwS94PfAKALwOF1rIw/0BcpGLuJv7b
	dpULA8f9GcZQL3KbzjlbAn3DEZzX3pe5hspe2wHzgVGdntZIxhTQpQVYIf5VmgdHPQfNt7SrztjsP
	jeUZWCYeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprt1-0001AV-If; Fri, 10 Jan 2020 10:51:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprss-00019t-3T
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:51:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9262B328;
 Fri, 10 Jan 2020 02:51:16 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43BDA3F703;
 Fri, 10 Jan 2020 02:51:15 -0800 (PST)
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: Hanjun Guo <guohanjun@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
 <20200109160220.GA27079@e121166-lin.cambridge.arm.com>
 <4cee4a91-6459-819b-d4d4-f5e8899103b9@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1649ca0b-27c5-7365-2184-7ef95f210561@arm.com>
Date: Fri, 10 Jan 2020 10:51:12 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <4cee4a91-6459-819b-d4d4-f5e8899103b9@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_025118_188262_4DC9F042 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-10 6:22 am, Hanjun Guo wrote:
> On 2020/1/10 0:02, Lorenzo Pieralisi wrote:
>> On Mon, Jan 06, 2020 at 05:19:32PM +0000, Robin Murphy wrote:
>>> On 30/12/2019 12:27 pm, Hanjun Guo wrote:
>>>> The IORT spec [0] says Number of IDs = The number of IDs in the range minus
>>>> one, it is confusing but it was written down in the first version of the
>>
>> Why is it confusing ? Because we botched the kernel code :) ?
> 
> I think 'minus one' is not bringing any benefit :)

Well, in order to describe a 1:1 mapping of the entire possible ID 
space, the alternative would have to be to overload the 
otherwise-nonsensical value of 0 to mean 2^32, which I would argue is an 
even more non-obvious inconsistency. Encoding strictly positive values 
as 'value - 1' is a relatively common thing (at least in hardware design).

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
