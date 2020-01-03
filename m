Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A8512FEA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 23:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AaU/ly6im2MB9OAb45BBeVTLEopVisFDRo914iOi8Z0=; b=g5paKKnSUElOXQ
	gdyM48iWgs9BaAwOSWYuMBCOm2Edr71E9l9LJcck1M1Oz+CSwwBuLZ3mLqwcL3WVXHajEnWs3TCrD
	CNImm04wmNzegYUaVl5Fet+u1iju1Yv64tivPuF8ENG5xxy9sF0lgnsAF01YMNBo7HSdDhInu8/Zz
	L2hLrpTqYTWA/cfTV9VXnE1d/vSM8un3Y7ZoWBen0m6mzKDnuQIyplHDXlT3ZkaXCn5poOLHRdlLq
	WEUaqXGL8O/x9M308dCuO6Ncw8D89pfvYpsc+OdqDJpbaV2lYXtfEncInmnF/F4NThNunK78CtzXD
	u9dKohLGQB+yiegW+KaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inVDx-0004bs-3D; Fri, 03 Jan 2020 22:15:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inVDo-00044L-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 22:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578089706;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZPZhm/vIH+Q7uLs6GXhd/00uE+wGFl4irig6QN7h72k=;
 b=U9yeROV/DbfyaHlKstZyGFnOr4hhqWkwu9F/p6erqSrMSDluJ36kRNM4XxtV5j3Ou2KJoT
 G7RJi9jsPdL1R21HvC/RwSh9/1sl8si1v6h/TGmMccFTwH9Lo8IbocqwZC8R9erSQ2PpTI
 B29cME3RUTux4KvWY/yJFDP72ckvKTA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-s8l_3ktoP7i4XmtoQVfOvg-1; Fri, 03 Jan 2020 17:15:01 -0500
X-MC-Unique: s8l_3ktoP7i4XmtoQVfOvg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 322CD1801266;
 Fri,  3 Jan 2020 22:14:59 +0000 (UTC)
Received: from llong.remote.csb (ovpn-122-142.rdu2.redhat.com [10.10.122.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 43F1F84673;
 Fri,  3 Jan 2020 22:14:56 +0000 (UTC)
Subject: Re: [PATCH v8 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-4-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <fcba7eee-b98f-5381-ea33-6fd94a9e66a6@redhat.com>
Date: Fri, 3 Jan 2020 17:14:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191230194042.67789-4-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_141508_804127_CF612840 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: dave.dice@oracle.com, steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/30/19 2:40 PM, Alex Kogan wrote:
> +/*
> + * cna_scan_main_queue - scan the main waiting queue looking for the first
> + * thread running on the same NUMA node as the lock holder. If found (call it
> + * thread T), move all threads in the main queue between the lock holder and
> + * T to the end of the secondary queue and return 0
> + * (=SUCCESSOR_FROM_SAME_NUMA_NODE_FOUND); otherwise, return the encoded
Are you talking about LOCAL_WAITER_FOUND?
> + * pointer of the last scanned node in the primary queue (so a subsequent scan
> + * can be resumed from that node).
> + *
> + * Schematically, this may look like the following (nn stands for numa_node and
> + * et stands for encoded_tail).
> + *
> + *   when cna_scan_main_queue() is called (the secondary queue is empty):
> + *
> + *  A+------------+   B+--------+   C+--------+   T+--------+
> + *   |mcs:next    | -> |mcs:next| -> |mcs:next| -> |mcs:next| -> NULL
> + *   |mcs:locked=1|    |cna:nn=0|    |cna:nn=2|    |cna:nn=1|
> + *   |cna:nn=1    |    +--------+    +--------+    +--------+
> + *   +----------- +
> + *
> + *   when cna_scan_main_queue() returns (the secondary queue contains B and C):
> + *
> + *  A+----------------+    T+--------+
> + *   |mcs:next        | ->  |mcs:next| -> NULL
> + *   |mcs:locked=C.et | -+  |cna:nn=1|
> + *   |cna:nn=1        |  |  +--------+
> + *   +--------------- +  +-----+
> + *                             \/
> + *          B+--------+   C+--------+
> + *           |mcs:next| -> |mcs:next| -+
> + *           |cna:nn=0|    |cna:nn=2|  |
> + *           +--------+    +--------+  |
> + *               ^                     |
> + *               +---------------------+
> + *
> + * The worst case complexity of the scan is O(n), where n is the number
> + * of current waiters. However, the amortized complexity is close to O(1),
> + * as the immediate successor is likely to be running on the same node once
> + * threads from other nodes are moved to the secondary queue.
> + *
> + * @node      : Pointer to the MCS node of the lock holder
> + * @pred_start: Pointer to the MCS node of the waiter whose successor should be
> + *              the first node in the scan
> + * Return     : LOCAL_WAITER_FOUND or encoded tail of the last scanned waiter
> + */
> +static u32 cna_scan_main_queue(struct mcs_spinlock *node,
> +			       struct mcs_spinlock *pred_start)
> +{
> +	struct cna_node *cn = (struct cna_node *)node;
> +	struct cna_node *cni = (struct cna_node *)READ_ONCE(pred_start->next);
> +	struct cna_node *last;
> +	int my_numa_node = cn->numa_node;
> +
> +	/* find any next waiter on 'our' NUMA node */
> +	for (last = cn;
> +	     cni && cni->numa_node != my_numa_node;
> +	     last = cni, cni = (struct cna_node *)READ_ONCE(cni->mcs.next))
> +		;
> +
> +	/* if found, splice any skipped waiters onto the secondary queue */
> +	if (cni) {
> +		if (last != cn)	/* did we skip any waiters? */
> +			cna_splice_tail(node, node->next,
> +					(struct mcs_spinlock *)last);
> +		return LOCAL_WAITER_FOUND;
> +	}
> +
> +	return last->encoded_tail;
> +}
> +
>
> +/*
> + * Switch to the NUMA-friendly slow path for spinlocks when we have
> + * multiple NUMA nodes in native environment, unless the user has
> + * overridden this default behavior by setting the numa_spinlock flag.
> + */
> +void cna_configure_spin_lock_slowpath(void)
Nit: There should be a __init.
> +{
> +	if ((numa_spinlock_flag == 1) ||
> +	    (numa_spinlock_flag == 0 && nr_node_ids > 1 &&
> +		    pv_ops.lock.queued_spin_lock_slowpath ==
> +			native_queued_spin_lock_slowpath)) {
> +		pv_ops.lock.queued_spin_lock_slowpath =
> +		    __cna_queued_spin_lock_slowpath;
> +
> +		pr_info("Enabling CNA spinlock\n");
> +	}
> +}

Other than these two minor nits, the rests looks good to me.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
