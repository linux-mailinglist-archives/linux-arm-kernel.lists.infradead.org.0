Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DF7186383
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0fwk6ZZ68uTxtqLDCqKflexoJdVU9DfPpTGWPDN7sIM=; b=hSA4u9npcLNeD+ksmsDUx2VMP
	BIzXu0w3aHNPgvApcw0/Mo8ETe0eI/sPuX3GjO2bBtzczqqp4s7PYNgjJgROJ5PbkXRTbeR80w5Xz
	5AN8B006rswIu5R5dxOaJ1og4/NA4mjFjjQ+NenXQq9mziy5zBRksQ9twbmpSUV0vtE1KlDdKpWZP
	n5MWN2PSXpaZSFYJY6DGOAn8Zm1SXlmTkiVcqMOq7t99nv7l6EcJ8vjS2feKcBi7B4Jk3MAnj5E1V
	Iq483YklCcXM+Z58IfXYXi8dxkpVlHBVBQZXZC9u/UK61O2bxfXpuL5fiyETRNFlYiHy+B9YHtUS3
	NAgUlzACg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDg53-00022P-85; Mon, 16 Mar 2020 03:06:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDg4u-00021p-AN
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584327965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cRe0n9uTUdcs+5vKlF9yzTNZHiGdbrQsJ8ExOP8Clms=;
 b=dqt8u35/TpXnSpK84LO9KrrU6VTmHBnnEueSIOCOc1zuTSNT6qR3P2QuuBT7hVhnD16Reu
 Shhizm8Vl3BmZ2xP3fQ/PwlEdbzoZ0+0T+zpC8CSZq79xEHS+X87HLWORx5MSxNrzNWh6e
 sutC1ZK25ERdGCV+YGdv/dtBe5353HM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-408-wI6lf9GhNDmhcPQbbR-vQQ-1; Sun, 15 Mar 2020 23:05:57 -0400
X-MC-Unique: wI6lf9GhNDmhcPQbbR-vQQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B5A5800D53;
 Mon, 16 Mar 2020 03:05:56 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-129.bne.redhat.com
 [10.64.54.129])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EA398B756;
 Mon, 16 Mar 2020 03:05:53 +0000 (UTC)
Subject: Re: [PATCH v4 0/5] arm64: Dereference CPU operations indirectly
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
References: <20200226002356.86986-1-gshan@redhat.com>
Message-ID: <6811c40d-7bb3-bcd2-d229-135878621077@redhat.com>
Date: Mon, 16 Mar 2020 14:05:49 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200226002356.86986-1-gshan@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_200608_436636_6D6F4739 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 11:23 AM, Gavin Shan wrote:
> The subject perhaps can't precisely indicate what this series does, but
> keep it same as before for consistency.
> 
> In current implementation, an array (@cpu_ops[NR_CPUS]) is maintained
> to dereference the CPU operations. 2KB memory are consumed when NR_CPUS
> is configured to 256. It's too much than what I expected. This series
> reworks the implementation to dereference the CPU operations by using
> a CPU operations pointer with assumption - all CPUs should have unified
> CPU operations. With this, 8-bytes memory will be used for same purpose.
> 
> PATCH[1/5] isn't too much relevant, to declare ACPI parking protocol only
> when CONFIG_ARM64_ACPI_PARKING_PROTOCOL has been enabled. PATCH[2/5]
> renames cpu_read_ops() to init_cpu_ops(), which is obviously more precise
> because it's initializing the CPU operations. PATCH[3/5] introduces
> get_cpu_ops(), preparing for droping the array of CPU operations.
> PATCH[4/5] removes the CPU operations deferencing array and replaces it
> with a pointer with the assumption: all CPUs should have same enablement
> method. PATCH[5/5] removes the cpu argument of get_cpu_ops() as it's not
> used any more.
> 

Lorenzo, kindly ping...

> Changelog
> =========
> v4:
>     * Rebase to 5.6.rc3 and retest                        (Gavin Shan)
>     * Improved commit log for PATCH[4/5] with link tag    (Lorenzo Pieralisi)
>     * Using pointer instead of index to dereference the
>       unified CPU operations                              (Lorenzo Pieralisi)
>     * Merge logic of cpu_get_ops() to get_cpu_method()    (Gavin Shan)
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
> Gavin Shan (5):
>    arm64: Declare ACPI parking protocol CPU operation if needed
>    arm64: Rename cpu_read_ops() to init_cpu_ops()
>    arm64: Introduce get_cpu_ops() helper function
>    arm64: Remove CPU operations dereferencing array
>    arm64: Remove argument @cpu of get_cpu_ops()
> 
>   arch/arm64/include/asm/cpu_ops.h |  8 ++--
>   arch/arm64/kernel/cpu_ops.c      | 77 ++++++++++++++++----------------
>   arch/arm64/kernel/cpuidle.c      | 10 ++---
>   arch/arm64/kernel/setup.c        |  8 ++--
>   arch/arm64/kernel/smp.c          | 60 ++++++++++++++++---------
>   5 files changed, 93 insertions(+), 70 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
