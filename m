Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3121314DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 16:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpVhxnVrlOIIjOGqQcfCCOHvatMaFNRXV1wu7/36FcA=; b=VarSzNo+OGuxme
	Hxl1N/C/WO3bLpDdVvT4T0M/Cm2yPrnUqs8Cacm4o0/ti4az0q0388X1Fcu2jgXXEY3N5XPMlk5aC
	gxEZbHB9MOWvDdgJ/PWAoizAsv+bdUrgmONaw8VsR4Um2JSgmN9bhJgq5ZDA4hGLhFjMis0qOm0nn
	aYWk0n/fbFMD3c2y1q23VxqNWlSJEXlSOEwlMSzy2Fun9Pyu2HB3QmcxvGSjfEIk3CnY/PLw1/4JT
	eQr13pX1d0edCon6970MsYnFBRBkCHLw0gsC3SfH8JcdT9pUnwqsNcW1HbGxdV8EoFtrxr7hkdep/
	vOS4Ho3XC79ZpNChS5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioUO2-0002ay-TB; Mon, 06 Jan 2020 15:33:46 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioUNv-0002aY-2m
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 15:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578324816;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WMyCQTp0fB4Db18PuYA/44oZs6gxi7/BoRwlS9h67Ow=;
 b=iTudxLPJifjMuy9Qprah7FZYcuulXAKgX+UEyW7w1Wt7HId1lMbT65E4H4DMjiAKy8/8Pg
 3WHbXy2tmLXG326EmMYzcO5QugFdW9/Z7vOPHXzt/1fb+lbg+zKGlPYLs4bQsAQhta9Yj3
 Vd4agzLavFsa0r+4+r+QgHrdqgBk8og=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-Zo8vYXixMtWEGYG8rFdCOw-1; Mon, 06 Jan 2020 10:33:33 -0500
X-MC-Unique: Zo8vYXixMtWEGYG8rFdCOw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 021331005502;
 Mon,  6 Jan 2020 15:33:30 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B852108131B;
 Mon,  6 Jan 2020 15:33:27 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <53b08fc3-f29f-65ec-f2e9-0f469cd79744@redhat.com>
Date: Mon, 6 Jan 2020 10:33:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191230194042.67789-5-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_073339_200086_2EBA7202 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dave.dice@oracle.com, steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/30/19 2:40 PM, Alex Kogan wrote:
> Keep track of the number of intra-node lock handoffs, and force
> inter-node handoff once this number reaches a preset threshold.
> The default value for the threshold can be overridden with
> the new kernel boot command-line option "numa_spinlock_threshold".
>
> Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
> Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
> ---
>  .../admin-guide/kernel-parameters.txt         |  8 ++++
>  kernel/locking/qspinlock.c                    |  3 ++
>  kernel/locking/qspinlock_cna.h                | 41 ++++++++++++++++++-
>  3 files changed, 51 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index b68cb80e477f..30d79819a3b0 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -3200,6 +3200,14 @@
>  			Not specifying this option is equivalent to
>  			numa_spinlock=auto.
>  
> +	numa_spinlock_threshold=	[NUMA, PV_OPS]
> +			Set the threshold for the number of intra-node
> +			lock hand-offs before the NUMA-aware spinlock
> +			is forced to be passed to a thread on another NUMA node.
> +			Valid values are in the [0..31] range. Smaller values
> +			result in a more fair, but less performant spinlock, and
> +			vice versa. The default value is 16.
> +
>  	cpu0_hotplug	[X86] Turn on CPU0 hotplug feature when
>  			CONFIG_BOOTPARAM_HOTPLUG_CPU0 is off.
>  			Some features depend on CPU0. Known dependencies are:
> diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
> index 609980a53841..e382d8946ccc 100644
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
> index 3c99a4a6184b..30feff02865d 100644
> --- a/kernel/locking/qspinlock_cna.h
> +++ b/kernel/locking/qspinlock_cna.h
> @@ -51,13 +51,25 @@ struct cna_node {
>  	int			numa_node;
>  	u32			encoded_tail;
>  	u32			pre_scan_result; /* encoded tail or enum val */
> +	u32			intra_count;
>  };
>  
>  enum {
>  	LOCAL_WAITER_FOUND = 2,	/* 0 and 1 are reserved for @locked */
> +	FLUSH_SECONDARY_QUEUE = 3,
>  	MIN_ENCODED_TAIL
>  };
>  
> +/*
> + * Controls the threshold for the number of intra-node lock hand-offs before
> + * the NUMA-aware variant of spinlock is forced to be passed to a thread on
> + * another NUMA node. By default, the chosen value provides reasonable
> + * long-term fairness without sacrificing performance compared to a lock
> + * that does not have any fairness guarantees. The default setting can
> + * be changed with the "numa_spinlock_threshold" boot option.
> + */
> +int intra_node_handoff_threshold __ro_after_init = 1 << 16;

Another minor nit. (1 << 31) is negative for an int value. I will
suggest that you either make intra_node_handoff_threshold an unsigned
int or limit the upper bound to 30.

Cheers,
Longman



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
