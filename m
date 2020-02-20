Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521EE166A0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5nF5JwCP/k+V3/LtrPClzg5+HDwxwpO+JF9KEXnrxaY=; b=TtOoTUqu+Avr9T8qh7UjvcjeC
	6ulu3SySlOKITfnFLbw1kfSnVUuWu/zji7uXB0CJklIPJ90na/TY7N+XqGFsRjigVtBzP5aupx5mC
	QMoD63VAEDF0LjgPD504+aTKiUpYB5NmYP6HZBbDshrr98riKrTzBs3nwvebYkmM9Gaq33Hn0a47q
	dgRagthuWJKujfoUyG+074y/rzJEWePbzifzXBzK9gZI4FVBoGNWLPeKuX4iHvCgqd0Zv7XahklVQ
	8RkB5Zv8fhSCb8mIFczOQ2vBeNMDX7b1Q8EaWJiGOfDuaS1iIvTclpsXeHPgSo23cauW7DkzQnloF
	lqKG0+iWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tf0-0002yB-Rf; Thu, 20 Feb 2020 21:47:06 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ter-0002xY-EB
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:46:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582235214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cA8D9S3iE9WBuUouNPmnzZcWve2t0WLC+auArgsFui8=;
 b=Wy7vKHRMwLnVKDmvWog3pQqKqG+dHR27bwHNK5Yz1cq2Iq8sI9Cos3A8sEdP1AOOhutWGP
 1/P2FF5r8aGdU5/CoXOMNllts0QIw8rq1OjIfUSDXKTVQ6vo9zrONLc2ZHUwMBqayikN48
 GWayeWaP+g/T5lAHuluwO39CiBWnIqY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-9w9AxXF9Muuxzv5nQ0qc2Q-1; Thu, 20 Feb 2020 16:46:52 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E59E419057A4;
 Thu, 20 Feb 2020 21:46:50 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-80.bne.redhat.com [10.64.54.80])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 420206E3EE;
 Thu, 20 Feb 2020 21:46:47 +0000 (UTC)
Subject: Re: [PATCH v3 0/5] arm64: Dereference CPU operations indirectly
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
References: <20200212004351.66576-1-gshan@redhat.com>
Message-ID: <29d934fd-befc-5479-8abf-85dd02f7bfca@redhat.com>
Date: Fri, 21 Feb 2020 08:46:45 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200212004351.66576-1-gshan@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: 9w9AxXF9Muuxzv5nQ0qc2Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_134657_555976_0532A782 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 robin.murphy@arm.com, sudeep.holla@arm.com, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/12/20 11:43 AM, Gavin Shan wrote:
> The subject perhaps can't precisely indicate what this series does, but
> keep it same as before for consistency.
> 
> In current implementation, an array (@cpu_ops[NR_CPUS]) is maintained
> to dereference the CPU operations. 2KB memory are consumed when NR_CPUS
> is configured to 256. It's too much than what I expected. This series
> reworks the implementation to dereference the CPU operations indirectly
> by using the index to the CPU operations array, so that less memory (4
> bytes) will be consumed for the same purpose. The optimization bases on
> the assumption: these CPU operations aren't dereferenced in hot path.
> Also, we have only one valid CPU enablement method for all CPUs.
> 
> PATCH[1/5] isn't too much relevant, to declare ACPI parking protocol only
> when CONFIG_ARM64_ACPI_PARKING_PROTOCOL has been enabled. PATCH[2/5]
> renames cpu_read_ops() to init_cpu_ops(), which is obviously more precise
> because it's initializing the CPU operations. PATCH[3/5] introduces
> get_cpu_ops(), preparing for dereferencing CPU operations indirectly.
> PATCH[4/5] removes the CPU operations deferencing array and replaces it
> with an 4-bytes variable with the assumption: all CPUs should have same
> enablement method. PATCH[5/5] removes the argument of get_cpu_ops() as
> it's useless.
> 
> Changelog
> =========
> v3:
>     * Assume all CPUs have same enablement method. With this, the used
>       memory is further squeezed from 64 bytes to 4 bytes (Lorenzo Pieralisi)
>     * Add PATCH[5/5] to remove argument of get_cpu_ops()  (Gavin Shan)
> v2:
>     * Pack 4 CPUs' indexes into one byte. 64 bytes are consumed in order
>       to get the CPU operations                            (Robin Murphy)
>     * Use ARRAY_SIZE() to iterate @cpu_ops[]               (Robin Murphy)
>     * Make index-0 valid                                   (Robin Murphy)
> 

Lorenzo/Robin, could you please give it quick scan when you have time?
Please let me know if you have more comments :)

Thanks,
Gavin

> Gavin Shan (5):
>    arm64: Declare ACPI parking protocol CPU operation if needed
>    arm64: Rename cpu_read_ops() to init_cpu_ops()
>    arm64: Introduce get_cpu_ops() helper function
>    arm64: Remove CPU operations dereferencing array
>    arm64: Remove argument @cpu of get_cpu_ops()
> 
>   arch/arm64/include/asm/cpu_ops.h |  8 ++--
>   arch/arm64/kernel/cpu_ops.c      | 69 +++++++++++++++++++-------------
>   arch/arm64/kernel/cpuidle.c      | 10 ++---
>   arch/arm64/kernel/setup.c        |  8 ++--
>   arch/arm64/kernel/smp.c          | 60 ++++++++++++++++++---------
>   5 files changed, 95 insertions(+), 60 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
