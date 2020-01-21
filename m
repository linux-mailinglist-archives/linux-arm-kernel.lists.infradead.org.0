Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345EF1440D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPbK/UkhcyvB/PQDfEqZoDZR56rjznfSumWZZ09IwMk=; b=n2THz0sTXZfVCK
	Kew67Tz9d6udhSpRnBCIjXSkMjPpjwgLvsq7VNKMNTzHQVtymYRgbzezW8TdvPL/25uVQ2SN9kaak
	c5ANljknWEifafzrtPJYhpF919KhuEsJCLQOpg4bfEe1edzRJHeAoeQn9ICjU//kw/tJ3890lXiPk
	5ZZ22GHftqglGAYek1DYs7a51yGFe9EcULfnFyEs5vNyO6AniK9HZcX7b1m++h8CUw5UbEVjuprIg
	dEvy3ib+ag9kiiLvXScaYtG9RFNVLTMaEyXnaEcX3xGekgQ+Z7h7kb2bjEN4MpwwoipPBC8iOdP1o
	GiFlND1IZbqJwmXjSeXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvjK-0004p1-Jv; Tue, 21 Jan 2020 15:46:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvj7-0004oC-Gt
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579621558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X4V9D6y2Lif4i/Bl6mgnfeFczMOxy2sAL0UfSmHDkVo=;
 b=OzeW8bYuAKEgom0xLx2Di74U+k1L95/BkI3zk37R8HXXAI6idL0uJOvxySUe0auygoTNK7
 YZ5/NGm0t879LGF5tfakM3umgrm1nt9MI95SxHiQUjZEVqIV7uEq2bb5uM396hqHLYiNHJ
 ijqFCKnZFkCYnKyNjNtoD/T6TPmU1IE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-6I1zfnugNnqKXYuU_fxsGg-1; Tue, 21 Jan 2020 10:45:54 -0500
X-MC-Unique: 6I1zfnugNnqKXYuU_fxsGg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 774E68045C0;
 Tue, 21 Jan 2020 15:45:51 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C488860F8;
 Tue, 21 Jan 2020 15:45:49 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Peter Zijlstra <peterz@infradead.org>, Alex Kogan <alex.kogan@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
Date: Tue, 21 Jan 2020 10:45:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200121132949.GL14914@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_074601_638692_367C63E6 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/21/20 8:29 AM, Peter Zijlstra wrote:
> On Mon, Dec 30, 2019 at 02:40:41PM -0500, Alex Kogan wrote:
>
>> +/*
>> + * Controls the threshold for the number of intra-node lock hand-offs before
>> + * the NUMA-aware variant of spinlock is forced to be passed to a thread on
>> + * another NUMA node. By default, the chosen value provides reasonable
>> + * long-term fairness without sacrificing performance compared to a lock
>> + * that does not have any fairness guarantees. The default setting can
>> + * be changed with the "numa_spinlock_threshold" boot option.
>> + */
>> +int intra_node_handoff_threshold __ro_after_init = 1 << 16;
> There is a distinct lack of quantitative data to back up that
> 'reasonable' claim there.
>
> Where is the table of inter-node latencies observed for the various
> values tested, and on what criteria is this number deemed reasonable?
>
> To me, 64k lock hold times seems like a giant number, entirely outside
> of reasonable.

I actually had similar question before, but having the capability of
changing the default with boot time parameter alleviate some of my
concern. I will certainly like to see actual data on how different
values will affect the performance of the code.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
