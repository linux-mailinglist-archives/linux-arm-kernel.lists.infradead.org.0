Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0491BB233
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxEK2nZ2ZWTS3cRp1XCWQsrCeQ3Vav9iX94z8EB4bJ0=; b=u9ntGhBtpI1VyV
	4bRiOwb7FWk4jnIoH5e9uucsxx7iBrrHVfCX1rnlGwz+FR814FFDltySljml2utjc17jcualCbsND
	CaJGxUKBKxreVun2KGY2LyNkAKak/lMjDpSnoDUwPuxbeVz8DtsiCZIYRFFOp1T15hLm6tvrTcB5r
	gBL9xum6MUdc97h9o4XfMKB6FG75ZTkqjZjJqsuE1NZ5rk5mnnswxpu2u/b1xl2FXmCcwYVprVHnP
	/3ToW8eQa1hoEG4NZ5QC9HMpraL3YPs5PeDCyUz0k5lyD9Eg1HRdCrIVCtZscMvOkqlCP/m3siQ+Q
	z32zNych2BoRdC2jMnbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDZT-0005GV-P8; Mon, 27 Apr 2020 23:53:55 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDZK-0005Fc-IX
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 23:53:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588031625;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vCpLh05vrSFnAMWAQ3GvOGITpQiy3hkoT81RPE/4NEg=;
 b=LdOLkfEWU/7/sXlaJDfj3UepJqIxh1GKLegLqgTc+09lodqxhy8VFynhzuXDzdVuj2V1B7
 4Q/dbVz2CG3ZK95mfm0DU5draZwR7X/jopA72zCtssF1/rU8Z/nSA2cLtmLuJXHtspxnQr
 bBzXNkuB2is8BYRL9kAhzDny3Ps0TC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-xs_S9lOGM3a0v-IsKUqYAA-1; Mon, 27 Apr 2020 19:53:41 -0400
X-MC-Unique: xs_S9lOGM3a0v-IsKUqYAA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FE2F1005510;
 Mon, 27 Apr 2020 23:53:39 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B965910013D9;
 Mon, 27 Apr 2020 23:53:36 +0000 (UTC)
Subject: Re: [PATCH] arm64/kernel: Fix range on invalidating dcache for boot
 page tables
To: Mark Rutland <mark.rutland@arm.com>
References: <20200424050230.16720-1-gshan@redhat.com>
 <20200424100131.GB1167@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <f62c7189-27e5-d820-fdd2-72ec5936aa68@redhat.com>
Date: Tue, 28 Apr 2020 09:53:34 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200424100131.GB1167@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165346_685936_2C2547DF 
X-CRM114-Status: GOOD (  30.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: steve.capper@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 broonie@kernel.org, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 4/24/20 8:01 PM, Mark Rutland wrote:
> Hi Gavin,
> 
> On Fri, Apr 24, 2020 at 03:02:30PM +1000, Gavin Shan wrote:
>> The MMU is disabled when __create_page_tables() is called. The data
>> cache corresponding to these two page tables, which are tracked by
>> @idmap_pg_dir and @init_pg_dir, is invalidated after the page tables
>> are populated. However, the wrong or inappropriate size have been used
>> and more data cache are invalidated than it need.
>>
>> This fixes the issue by invalidating the data cache for these two
>> page tables separately as they aren't necessarily physically adjacent.
> 
> Thanks for this!
> 
> I think the commit message needs to explain the issue more explicitly,
> e.g.
> 
> | Prior to commit:
> |
> |   8eb7e28d4c642c31i ("arm64/mm: move runtime pgds to rodata")
> |
> | ... idmap_pgd_dir, tramp_pg_dir, reserved_ttbr0, swapper_pg_dir, and
> | init_pg_dir were contiguous at the end of the kernel image. The
> | maintenance at the end of __create_page_tables assumed these were
> | contiguous, and affected everything from the start of idmap_pg_dir to
> | the end of init_pg_dir.
> |
> | That commit moved all but init_pg_dir into the .rodata section, with
> | other data placed between idmap_pg_dir and init_pg_dir, but did not
> | update the maintenance. Hence the maintenance is performed on much
> | more data than necessary (but as the bootloader previously made this
> | clean to the PoC there is no functional problem).
> |
> | As we only alter idmap_pg_dir, and init_pg_dir, we only need to
> | perform maintenance for these. As the other dirs are in .rodata, the
> | bootloader will have initialised them as expected and cleaned them to
> | the PoC. The kernel will initialize them as necessary after enabling
> | the MMU.
> |
> | This patch reworks the maintenance to only cover the idmap_pg_dir and
> | init_pg_dir to avoid this unnecessary work.
> 

Thanks for detailed changelog. I will use yours in v2, which will be posted
shortly. A nit is the correct commit ID would be 8eb7e28d4c642c31 instead
of 8eb7e28d4c642c31i :)

>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/kernel/head.S | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
>> index 57a91032b4c2..66947873c9e7 100644
>> --- a/arch/arm64/kernel/head.S
>> +++ b/arch/arm64/kernel/head.S
>> @@ -398,6 +398,10 @@ SYM_FUNC_START_LOCAL(__create_page_tables)
>>   	 * tables again to remove any speculatively loaded cache lines.
>>   	 */
> 
> The comment above has been stale for a while, since it says:
> 
> | 	/*
> | 	 * Since the page tables have been populated with non-cacheable
> | 	 * accesses (MMU disabled), invalidate the idmap and swapper page
> | 	 * tables again to remove any speculatively loaded cache lines.
> | 	 */
> 
> ... can we please update that at the same time? We can avoid mention of
> the specific tables and say:
> 
> | 	/*
> | 	 * Since the page tables have been populated with non-cacheable
> | 	 * accesses (MMU disabled), invalidate those tables again to
> | 	 * remove any speculatively loaded cache lines.
> | 	 */
> 

Sure, It will be included in v2.

>>   	adrp	x0, idmap_pg_dir
>> +	mov	x1, #IDMAP_DIR_SIZE
>> +	dmb	sy
>> +	bl	__inval_dcache_area
>> +	adrp	x0, init_pg_dir
>>   	adrp	x1, init_pg_end
>>   	sub	x1, x1, x0
>>   	dmb	sy
> 
> The existing DMB is to order prior non-cacheable accesses against cache
> maintenance, so we only need one of those at the start of the sequence.
> For consistency, we should use the same idiom to generate the size of
> both dirs. Given we use ADRP+ADRP+SUB here and elsewhere in head.S, I
> think that's preferable for now.
> 
> So I reckon this should be:
> 
> |	dmb	sy
> |
> |	adrp	x0, idmap_pg_dir
> |	adrp	x1, idmap_pg_end
> |	sub	x1, x1, x0
> |	bl	__inval_dcache_area
> |
> |	adrp	x0, init_pg_dir
> |	adrp	x1, init_pg_end
> |	sub	x1, x1, x0
> |	bl	__inval_dcache_area
> 
> ... with those line gaps to make the distinct blocks clearer.
> 

Yep, I'll change the code accordingly in v2. Also, symbol @idmap_pg_end
will be added to vmlinux.lds.S as it's not existing.

> Thanks,
> Mark.
> 

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
