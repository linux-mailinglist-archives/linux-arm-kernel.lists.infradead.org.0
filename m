Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9B2D8337
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aJgZ0gg0S9rBZu1Jeh6UoGl2D1IUDy8nRi3DTuAT+Z8=; b=Ul+lTzJm4J3w6ha2tyiz3DSIn
	6iwIZnnEDdz9ICLRTokufBIy878zrKIaOAe2/VAz7n1pnRsrP/3mlGArV88u/lkYDgpm0Lqdt7tgW
	eiEsha14bB319I7KAu3gMSoo9xzMftLuU4z+3RXkgdOoUi1TDRXWHBFgP98VEp8R5kV/dxF+EzoZ1
	mSJoGOmC/DtyH4ljfhN+os41GLjka1KboDfIA+pN+lBYpayoYa7kPrLv1i7k5T+PkUyFWAj5GnSH3
	8YBSTtDpNo5uWILIMbXUs9KUg+jmFbq0XKt1EJaubyPRNJd5aKAo1kubo6aC5ECVo4Z+5VPwt5R4O
	G1lvz4KFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUwH-0002mH-F4; Tue, 15 Oct 2019 22:05:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUvo-0002d1-QU
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:04:42 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32B3F21A49;
 Tue, 15 Oct 2019 22:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571177080;
 bh=bEz6VCO4JTI+Xylf3IoX+njYEaKlxKQAsOEkVTvjUNE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e1xOJVfWV9ix0vZr4g+UcrmKP4/FNC6MKcH8FDdA/I5R3HIFxIYH2YeuXEgpaxUkC
 uaRVTzg8A/NYCb+zGNG1CgFiD6dzRlLj9y7QwNE++a3RWzzsXIZZq7hDJEXkQ1wJ1O
 mHHnBfUhy9zlgXC0SbhsSnKToKFyJAWmOPnAit4c=
Date: Tue, 15 Oct 2019 18:04:39 -0400
From: Sasha Levin <sashal@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH for-stable-5.3 1/2] ACPI/PPTT: Add support for ACPI 6.3
 thread flag
Message-ID: <20191015220439.GQ31224@sasha-vm>
References: <1571054162-71090-1-git-send-email-john.garry@huawei.com>
 <1571054162-71090-2-git-send-email-john.garry@huawei.com>
 <20191014232958.GC31224@sasha-vm>
 <635a839b-bc1e-37ab-bd47-a554acc9b282@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <635a839b-bc1e-37ab-bd47-a554acc9b282@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_150440_902767_4F9A4E8B 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wanghuiqiang@huawei.com, gregkh@linuxfoundation.org,
 catalin.marinas@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, rrichter@marvell.com, jeremy.linton@arm.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 09:16:13AM +0100, John Garry wrote:
>On 15/10/2019 00:29, Sasha Levin wrote:
>>On Mon, Oct 14, 2019 at 07:56:01PM +0800, John Garry wrote:
>>>From: Jeremy Linton <jeremy.linton@arm.com>
>>>
>>>Commit bbd1b70639f785a970d998f35155c713f975e3ac upstream.
>>>
>>>ACPI 6.3 adds a flag to the CPU node to indicate whether
>>>the given PE is a thread. Add a function to return that
>>>information for a given linux logical CPU.
>>>
>>>Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>>Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>>>Reviewed-by: Robert Richter <rrichter@marvell.com>
>>>Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>>Signed-off-by: Will Deacon <will@kernel.org>
>>>Signed-off-by: John Garry <john.garry@huawei.com>
>>
>>How far back should these patches be backported?
>>
>
>Hi Sasha,
>
>This patchset is for 5.3, and I sent a separate patchset for 4.19, 
>since the backport is a little different and required some hand 
>modification -
>
>https://lore.kernel.org/linux-arm-kernel/1571046986-231263-1-git-send-email-john.garry@huawei.com/. 
>4.19 is as far back as we want.
>
>Please note that the patches in this 5.3 series are relevant for 5.2 
>also, but since 5.2 is EOL, I didn't mention it. We did test 5.2, so 
>you can add there also.
>
>Please let me know if any more questions.

I've queued this and the 4.19 patches, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
