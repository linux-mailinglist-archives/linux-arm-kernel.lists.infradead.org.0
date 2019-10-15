Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D932D70D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4tYmvftwGULqhNF+cpLh+6XQRdr6mfV+VrlavP4yS+w=; b=hGswnGayhf/OcSTqeCR+d+jN9
	eijXH/Yur7AUNG0sv4+d6vw6X7wfkoQKzz2k9S+pMk9smz/lR63qhm73wb/UzNqmm0EYGlm6xV6Bk
	R53O+i42xswWl1QX7E0udZkw3LocDhqdTzDm1H6nEHCAP+yQPj8rF4RLw23aRI39cOtPk4pUz+XnL
	d49uUJEyEyKfNpHBSpL86yBjM9q7U/ku18P5o2E7DXFM6LiCuvsnkGWqaqO5td89YS6JU5Fac7Pwj
	11xPlPg04nW2J5xLqsRSNMCGzwBvT1nduYMhUEhW5DNEJJRrcqL31HYBYhYCBkoiMb9n9pvOml+5D
	ZAyPCkoqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKI0h-00080N-7f; Tue, 15 Oct 2019 08:16:51 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKI0X-0007yk-Mj
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:16:43 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 684F722A77D763E6CFE1;
 Tue, 15 Oct 2019 16:16:30 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 15 Oct 2019 16:16:22 +0800
Subject: Re: [PATCH for-stable-5.3 1/2] ACPI/PPTT: Add support for ACPI 6.3
 thread flag
To: Sasha Levin <sashal@kernel.org>
References: <1571054162-71090-1-git-send-email-john.garry@huawei.com>
 <1571054162-71090-2-git-send-email-john.garry@huawei.com>
 <20191014232958.GC31224@sasha-vm>
From: John Garry <john.garry@huawei.com>
Message-ID: <635a839b-bc1e-37ab-bd47-a554acc9b282@huawei.com>
Date: Tue, 15 Oct 2019 09:16:13 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20191014232958.GC31224@sasha-vm>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_011641_913708_0A27B2F0 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 15/10/2019 00:29, Sasha Levin wrote:
> On Mon, Oct 14, 2019 at 07:56:01PM +0800, John Garry wrote:
>> From: Jeremy Linton <jeremy.linton@arm.com>
>>
>> Commit bbd1b70639f785a970d998f35155c713f975e3ac upstream.
>>
>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>> the given PE is a thread. Add a function to return that
>> information for a given linux logical CPU.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>> Reviewed-by: Robert Richter <rrichter@marvell.com>
>> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>> Signed-off-by: Will Deacon <will@kernel.org>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>
> How far back should these patches be backported?
>

Hi Sasha,

This patchset is for 5.3, and I sent a separate patchset for 4.19, since 
the backport is a little different and required some hand modification - 
 
https://lore.kernel.org/linux-arm-kernel/1571046986-231263-1-git-send-email-john.garry@huawei.com/. 
4.19 is as far back as we want.

Please note that the patches in this 5.3 series are relevant for 5.2 
also, but since 5.2 is EOL, I didn't mention it. We did test 5.2, so you 
can add there also.

Please let me know if any more questions.

All the best,
John




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
