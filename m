Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555DD145402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 12:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fp9DIompjmo1433J2iisvMtj3621+22kzLt3anF1MsU=; b=mbVdG7RRAaMxkv
	jteeNi1ukQl/eKZm9AEpK9w7Vh3Hz5qOIow6hbJdkWUcN4NFSdaf0F5KIiyUuXxs7vtQ5pWOqZuTR
	2PaAqNALTdOnwWWVxImAxy5ByVbmdNvoXefsR9911DFwkS2Yd/dIToSxqRDZy4w0ZKGPWZXwRZbrt
	4Uw1qWY0sgmDRUJxcOOFKNWHTha6BaH95eE+ow+VzgDLSRk4Bc74ThbrptvJTQpcOBtKwW5dkiPce
	2L/lDpKFlnJMADrB32vJkjDhxF8Z1IdMvqbCh/4xevmmT2T+ap+6InMmj1RggivXeKHFcY0+6/o2N
	yqnOpNdcZgMJyTHAlXdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuESN-0004iP-2I; Wed, 22 Jan 2020 11:45:59 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuESD-0004gy-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 11:45:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id a13so6411693ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 03:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y5u9m/mXXv3qGtttJOr+ZQn1NxnHC+oWL5hWs/7rdpQ=;
 b=SUl/bopx2bJT7lmPLWd3o6amTlItaE15S5QUQfpwhG6UqVhYZ2Jg2lvsdxAxz/6qC9
 Ich5ivJBKveIjiwnfrUDkpXtD/imTj/icyVWY8pSc1Rwvly1XEFvO++i/UqDXwN+babS
 9RCM/fSTAK0LsLdHswNo3m4uFnjF9XLoLLIsbSAzdhZUylVamYpnfBh3vdMOyB70VR8Z
 Amw8oBRcU/K9bIdyzw97J0CAuwdFIA4Jzz1wejySdc+kLIhuwDoU04KPhg7MAdLmSvf2
 AFX8yOIOTYA3NR+XYKUSWizt04FzuJcoi1ZJeJwmg9i7GnHqYozyO3DA7e4xvN8DWcKB
 pvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y5u9m/mXXv3qGtttJOr+ZQn1NxnHC+oWL5hWs/7rdpQ=;
 b=uNB3kMV7ywfrmYS0wI8Ejcag5T0rAtl4ND37lLwEL35Z27DWkhxVMloI9BhnnnXlRG
 vgiAYJC9O92umg59/MXJWRih/L7wekHoxVtwQr33loSZHDAEUtp7r7b8BSdsB8AIZ5A8
 n9JFBovLGQgGYh8xhYcMEOnC2YDVCNQlMzrUvtnT7keOFjWEG4MMgcO7gFL+8GKxJi/h
 2GrY0FqtbaEITJs9/VqgMJ9rReEhku5D5oKgHGCwMgTOJ3xDe3thz8lLinS3lmMQXERL
 oyYqKJ84vMdiPeQmJ8IlMHxg4ZgdEt8RZ1Z45HJwCFHxR5Bt8LCQeMsuGzCxCYSKtB/O
 jNtw==
X-Gm-Message-State: APjAAAWu/QEyTA58/y2711bkvW3/+pkUCMIv/QCAHvMZRr/1aWSII4VH
 phzKGKzz6yg2jnHfpHq4dLGhTSNC4S2ildpPD/jwMA==
X-Google-Smtp-Source: APXvYqxepdt1nLuP0XWlvF18+vx5QEljXf8IakWWWuD2ONWwD2IDzKv7dxNfcNDOYiBfRJoQtOTepLrUdy4OOP5K0r0=
X-Received: by 2002:a2e:8698:: with SMTP id l24mr18861072lji.94.1579693541815; 
 Wed, 22 Jan 2020 03:45:41 -0800 (PST)
MIME-Version: 1.0
References: <20200115035920.54451-1-alex.kogan@oracle.com>
In-Reply-To: <20200115035920.54451-1-alex.kogan@oracle.com>
From: Lihao Liang <lihaoliang@google.com>
Date: Wed, 22 Jan 2020 11:45:30 +0000
Message-ID: <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_034549_136920_277FA5E7 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 peterz@infradead.org, dave.dice@oracle.com, jglauber@marvell.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 steven.sistare@oracle.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On Wed, Jan 22, 2020 at 10:28 AM Alex Kogan <alex.kogan@oracle.com> wrote:
>
> Summary
> -------
>
> Lock throughput can be increased by handing a lock to a waiter on the
> same NUMA node as the lock holder, provided care is taken to avoid
> starvation of waiters on other NUMA nodes. This patch introduces CNA
> (compact NUMA-aware lock) as the slow path for qspinlock. It is
> enabled through a configuration option (NUMA_AWARE_SPINLOCKS).
>

Thanks for your patches. The experimental results look promising!

I understand that the new CNA qspinlock uses randomization to achieve
long-term fairness, and provides the numa_spinlock_threshold parameter
for users to tune. As Linux runs extremely diverse workloads, it is not
clear how randomization affects its fairness, and how users with
different requirements are supposed to tune this parameter.

To this end, Will and I consider it beneficial to be able to answer the
following question:

With different values of numa_spinlock_threshold and
SHUFFLE_REDUCTION_PROB_ARG, how long do threads running on different
sockets have to wait to acquire the lock? This is particularly relevant
in high contention situations when new threads keep arriving on the same
socket as the lock holder.

In this email, I try to provide some formal analysis to address this
question. Let's assume the probability for the lock to stay on the
same socket is *at least* p, which corresponds to the probability for
the function probably(unsigned int num_bits) in the patch to return *false*,
where SHUFFLE_REDUCTION_PROB_ARG is passed as the value of num_bits to the
function.

I noticed that the default value of p in the patch is 1/2^7 = 0.01, which is
somewhat counter-intuitive to me. If we switch sockets 99 times out of 100,
then fairness should be obvious. What I expected is a (much) higher value of
p, which would likely result in better performance, while having some degree
of fairness guarantee. Have you run some experiments by setting a lower
SHUFFLE_REDUCTION_PROB_ARG instead of the default value 7? It would be very
helpful to know the performance numbers.

Now let's do some analysis:

1. What is the probability P for the first thread on a different socket to
acquire the lock after *at most* N consecutive local lock handovers?

Note: N corresponds to the variable intra_node_handoff_threshold in the
patch, which is set to value 1 << numa_spinlock_threshold. Default value
is 1 << 16 = 64K.

Assuming mutual independence [1], we have P is equal to 1 - p^N, where p^N is
the probability of N consecutive threads running on the socket where the lock
was most recently acquired.

If p is 0.99, the probabilities of switching to a different socket after
N local lock handovers are as follows:

63.4% (N = 100)
86.6% (N = 200)
99.3% (N = 500)
99.996% (N = 1000)
99.99999999999933% (N =  64K)

2. We can ask the same question as above for the k-th thread on a different
socket from the lock holder. That is, what is the probability P for the k-th
thread on a different socket to acquire the lock after *at most* N
consecutive local lock handovers, assuming all these k threads in the queue
are running on different sockets (the worst case scenario). The analysis is
as follows (the case when k = 1 reduces to Question 1 above):

The total probability P is the sum of Pi for i = 0, 1, ..., N, where Pi is
the probability of having i *total* local lock handovers before the k-th
thread on a different socket can acquire the lock.

Pi can be calculated using formula Pi =  B_i_k * (p^i) * (1 - p)^k, where

-- B_i_k is the number of ways to put i balls into k buckets, representing
all possible ways the i local handovers occurred in k different sockets.
B_i_k is a multiset number and equal to (i + k - 1)! / (i! * (k-1)!) [2]

-- p^i is the probability of i local lock handovers

-- (1 - p)^k is the probability of k socket switchings

I've written a simple Python script to calculate the value of P.
Let's look at some concrete examples and numbers.

When p = 0.99, k = 3 (e.g. a 4-socket system), P is equal to:

8.5%   (N = 100)
33.2% (N = 200)
87.9% (N = 500)
99.7% (N = 1000)
99.99999999999937% (N = 64K)

When p = 0.99, k = 7 (e.g. an 8-socket system), the values of P are:

0.01% (N = 100)
0.52% (N = 200)
24.7% (N = 500)
87.5% (N = 1000)
99.3% (N = 1500)
99.99999999999871% (N = 64K)

I think this mathematical analysis would help users better understand the
fairness property of the CNA qspinlock. One can use it to plot a graph with
different values of p and N to tune the qspinlock for different platforms
and workloads.

Based on the analysis above, it may be useful to have
SHUFFLE_REDUCTION_PROB_ARG as a tunable parameter as well. Setting
SHUFFLE_REDUCTION_PROB_ARG to a lower value results in a higher value of p,
which would likely increase the performance. Then we can set
intra_node_handoff_threshold to have a bounded degree of fairness.
For instance, a user may want P to be around 90% for N = 100 on a 8-core
system. So they can set p = 0.9 and intra_node_handoff_threshold = ~150,
based on our analysis that P =  91.9% for N = 100, and 99.99% for N = 200,
when k = 7.

I hope this helps and please let me know if you have any comments or
if you spot any mistakes in our analysis.

Best,
Lihao.

References:
[1] https://en.wikipedia.org/wiki/Independence_(probability_theory)#More_than_two_events
[2] Theorem 2, https://en.wikipedia.org/wiki/Stars_and_bars_(combinatorics)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
