Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72B1DCA61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6S1JrdjYtwLYm/ku6V3t3zHaNR16JslLblRfPE8N8Sg=; b=bowJeeuo0gmFt8
	xeULw1FWfH5i9OOCmp3sYGJua89EyAGgbbJdUHbQ6Mt2J3Ey7EPbOh5GkkMIJwdDuAyoRxgTqa/mh
	P3/3pxD7qeAM8Tt/53/l83sTp5u4VAYvEp7OQZ3ra4FS+3W0YE5Up+vVar3h8DF9XXwKOoAypqdVt
	a71IQ+ap0CAxBpQP2LW1MNDIPa4TRbwQLu8fx+79I/e/ZEhRDp6eTnoMKv4h6lDeVBmH2n843SQnh
	g8NehOShjj94YS2pwL9mEAQNxYpNbic4O0NDSs4hYn8gVv1BkEWCX9wbm0BKXVGIiu/Gnl3JuGJLu
	mL1DuCEvFL8uOIgiUJhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUp6-0008EB-By; Fri, 18 Oct 2019 16:09:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUol-00088I-VS
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:09:33 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6547FC02E628;
 Fri, 18 Oct 2019 16:09:31 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8F99C5C1B5;
 Fri, 18 Oct 2019 16:09:29 +0000 (UTC)
Subject: Re: [PATCH v5 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191016042903.61081-1-alex.kogan@oracle.com>
 <20191016042903.61081-5-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <e83bfc8c-1c5b-572f-ef3a-a85e114f2677@redhat.com>
Date: Fri, 18 Oct 2019 12:09:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191016042903.61081-5-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 18 Oct 2019 16:09:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090932_175205_CF38494C 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: rahul.x.yadav@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/16/19 12:29 AM, Alex Kogan wrote:
> Keep track of the number of intra-node lock handoffs, and force
> inter-node handoff once this number reaches a preset threshold.
>
> Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
> Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
> ---
>  kernel/locking/qspinlock.c     |  3 +++
>  kernel/locking/qspinlock_cna.h | 30 +++++++++++++++++++++++++++---
>  2 files changed, 30 insertions(+), 3 deletions(-)
>
> diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
> index 6d8c4a52e44e..1d0d884308ef 100644
> --- a/kernel/locking/qspinlock.c
> +++ b/kernel/locking/qspinlock.c
> @@ -597,6 +597,9 @@ EXPORT_SYMBOL(queued_spin_lock_slowpath);
>  #if !defined(_GEN_CNA_LOCK_SLOWPATH) && defined(CONFIG_NUMA_AWARE_SPINLOCKS)
>  #define _GEN_CNA_LOCK_SLOWPATH
>  
> +#undef pv_init_node
> +#define pv_init_node			cna_init_node
> +
>  #undef pv_wait_head_or_lock
>  #define pv_wait_head_or_lock		cna_pre_scan
>  
> diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
> index 4d095f742d31..b92a6f9a19db 100644
> --- a/kernel/locking/qspinlock_cna.h
> +++ b/kernel/locking/qspinlock_cna.h
> @@ -50,9 +50,19 @@ struct cna_node {
>  	struct mcs_spinlock	mcs;
>  	int			numa_node;
>  	u32			encoded_tail;
> -	u32			pre_scan_result; /* 0 or an encoded tail */
> +	u32			pre_scan_result; /* 0, 1 or an encoded tail */
> +	u32			intra_count;
>  };
>  
> +/*
> + * Controls the threshold for the number of intra-node lock hand-offs. It can
> + * be tuned and depend, e.g., on the number of CPUs per node. For now,
> + * choose a value that provides reasonable long-term fairness without
> + * sacrificing performance compared to a version that does not have any
> + * fairness guarantees.
> + */
> +#define INTRA_NODE_HANDOFF_THRESHOLD (1 << 16)

I think 64k is too high. I will be more comfortable with a number like
(1 << 8). The worst case latency for a lock waiter from the other node
is just not acceptable.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
