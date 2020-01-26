Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14718149870
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 02:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSRhowTlOUzpW/lD0YN8xKQBj+jwGgbmmOPpAM9TuUk=; b=RXZ+kkraWzTLw5
	RN6fN+PNScw0uYzGzo5q7sDY/m7tlgZZVCr4lSlvihBWgaVVNy76z1vWJyii6CHRew0S8RZkAYWOV
	H2Tj02vJsez0/bDxYSipHaFgyJmp5A80jmmMKb4D7k/rKpjzPEKYe7IOnI7cmVg4VB7+7kS2uf250
	5JoMCKR2FnJF3Zn1N8F+zyibqJq54yVsBAXnSriVilWKM/QP8eOQzN6zBqvjsDP5o5jxQNhXR3t2Q
	Ne2CONcXRCp60qSR+0Xta8QgId17N0Vw1FpAbg/L8ZbM5pnpc9PxhmfMsDaeoQzNVNz0X6TnMNaRs
	iqP4tLNHM9yEvewMAnvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivXC3-0000sJ-SY; Sun, 26 Jan 2020 01:58:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivXBp-0000rq-UD
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 01:58:19 +0000
Received: by mail-lj1-x242.google.com with SMTP id x7so6958280ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 17:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sIfL/cJCzNWvLIipJX4iPUcP2Js+zrphpdXyW0xzwSw=;
 b=UdrE55xEvTNev5zrYEtR3f8tW3HAKw6Db5nfR2TQ4Q6bjf6z5CYi3/1LdCL8CzV1C+
 RzouEEDwaPbzn+0Atzdiim8UcKTDypaNQFYhAcuz60QLvK+ykNCvVlPZ10PlYUl/By7G
 ZQMWXRMW4fclA87jgfucL0scpDIGFUDG83n9uFIfG0g6RGtHL/tNveiwmbzJF1cyDFrJ
 ZKx0qnlAxb1nIn4RfOG7tOJlQ27Ty/hWwZhk7rW7hj9RdiFu56bUTEM5U4s8IlD7Wemv
 pONgJbxpv1TZ5CBcVYJ81Zpunc3riFTu1j+5VB6Z6aIsSulzlQfTuom8QPxXy05llS8E
 V4Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sIfL/cJCzNWvLIipJX4iPUcP2Js+zrphpdXyW0xzwSw=;
 b=csD/hdqH4g69LCdtz/1famZDyPt/1oQ4ifO5xTO5KJaVvwObe1TtRPYwQQnvLdzKXU
 Zxi63a+2sPmN2HKJgI52GCC5szMggQe1FC6nLfSXcnxBAp2IbWfvs3lC2nBgGcWh4gCE
 SE191QxILMr8sM5Z1S5D/jYnr6cBIi4bpIC5/3wfLTKQOlgxCGLSk5772jYfKxSuIAqy
 bNS8uvOwx8kB5AMGrQmEmYiPkxHOeR4tjkOC/oQs9mHdsRcucC+JbWtqfvRw1I+h4UOV
 VoFOOrP7GLCfpbKw/NxfznL308X0NY4gslCHogpegVa+IKWa+kfvowFcO6eM3C5md1Qk
 05bQ==
X-Gm-Message-State: APjAAAWz/cYn0tqSnvq7uyL6txjfZxwlp//v3uZ7S9BKw8zZP8siNUv1
 WKcKURw5TkOsUQrIA1K+YvThm8wYwO9LjjVS8Fjq6g==
X-Google-Smtp-Source: APXvYqxFMd6pxcgrWFRhWI+L7uUeLKJ1rNxrfoADDl5K+6rdgzxWCvh2VEWVZQCNsEYjOZcDWxr/xwN2zc3mAVXs5vA=
X-Received: by 2002:a2e:7009:: with SMTP id l9mr6119810ljc.96.1580003894105;
 Sat, 25 Jan 2020 17:58:14 -0800 (PST)
MIME-Version: 1.0
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
 <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
 <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
In-Reply-To: <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
From: Lihao Liang <lihaoliang@google.com>
Date: Sun, 26 Jan 2020 01:58:02 +0000
Message-ID: <CAC4j=Y--5UQR7Oc5n+sxAwLxd_PKi0Eb-7aiZjDTUW0FTJy8Tw@mail.gmail.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_175818_000449_878C3143 
X-CRM114-Status: GOOD (  28.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, longman@redhat.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 26, 2020 at 12:32 AM Lihao Liang <lihaoliang@google.com> wrote:
>
> Hi Alex and Waiman,
>
> Thanks a lot for your swift response and clarification.
>
> On Wed, Jan 22, 2020 at 7:30 PM Alex Kogan <alex.kogan@oracle.com> wrote:
> >
> > Hi, Lihao.
> >
> > > On Jan 22, 2020, at 6:45 AM, Lihao Liang <lihaoliang@google.com> wrote:
> > >
> > > Hi Alex,
> > >
> > > On Wed, Jan 22, 2020 at 10:28 AM Alex Kogan <alex.kogan@oracle.com> wrote:
> > >>
> > >> Summary
> > >> -------
> > >>
> > >> Lock throughput can be increased by handing a lock to a waiter on the
> > >> same NUMA node as the lock holder, provided care is taken to avoid
> > >> starvation of waiters on other NUMA nodes. This patch introduces CNA
> > >> (compact NUMA-aware lock) as the slow path for qspinlock. It is
> > >> enabled through a configuration option (NUMA_AWARE_SPINLOCKS).
> > >>
> > >
> > > Thanks for your patches. The experimental results look promising!
> > >
> > > I understand that the new CNA qspinlock uses randomization to achieve
> > > long-term fairness, and provides the numa_spinlock_threshold parameter
> > > for users to tune.
> > This has been the case in the first versions of the series, but is not true anymore.
> > That is, the long-term fairness is achieved deterministically (and you are correct
> > that it is done through the numa_spinlock_threshold parameter).
> >
> > > As Linux runs extremely diverse workloads, it is not
> > > clear how randomization affects its fairness, and how users with
> > > different requirements are supposed to tune this parameter.
> > >
> > > To this end, Will and I consider it beneficial to be able to answer the
> > > following question:
> > >
> > > With different values of numa_spinlock_threshold and
> > > SHUFFLE_REDUCTION_PROB_ARG, how long do threads running on different
> > > sockets have to wait to acquire the lock?
> > The SHUFFLE_REDUCTION_PROB_ARG parameter is intended for performance
> > optimization only, and *does not* affect the long-term fairness (or, at the
> > very least, does not make it any worse). As Longman correctly pointed out in
> > his response to this email, the shuffle reduction optimization is relevant only
> > when the secondary queue is empty. In that case, CNA hands-off the lock
> > exactly as MCS does, i.e., in the FIFO order. Note that when the secondary
> > queue is not empty, we do not call probably().
> >
> > > This is particularly relevant
> > > in high contention situations when new threads keep arriving on the same
> > > socket as the lock holder.
> > In this case, the lock will stay on the same NUMA node/socket for
> > 2^numa_spinlock_threshold times, which is the worst case scenario if we
> > consider the long-term fairness. And if we have multiple nodes, it will take
> > up to 2^numa_spinlock_threshold X (nr_nodes - 1) + nr_cpus_per_node
> > lock transitions until any given thread will acquire the lock
> > (assuming 2^numa_spinlock_threshold > nr_cpus_per_node).
> >
>
> You're right that the latest version of the patch handles long-term fairness
> deterministically.
>
> As I understand it, the n-th thread in the main queue is guaranteed to
> acquire the lock after N lock handovers, where N is bounded by
>
> n - 1 + 2^numa_spinlock_threshold * (nr_nodes - 1)
>
> I'm not sure what role the variable nr_cpus_per_node plays in your analysis.
>
> Do I miss anything?
>

If I understand correctly, there are two phases in the algorithm:

MCS phase: when the secondary queue is empty, as explained in your emails,
the algorithm hands the lock to threads in the main queue in an FIFO order.
When probably(SHUFFLE_REDUCTION_PROB_ARG) returns false (with default
probability 1%), if the algorithm finds the first thread running on the same
socket as the lock holder in cna_scan_main_queue(), it enters the following
CNA phase.

CNA phase: when the secondary queue is not empty, the algorithm keeps
handing the lock to threads in the main queue that run on the same socket as
the lock holder. When 2^numa_spinlock_threshold is reached, it splices
the secondary queue to the front of the main queue. And we are back to the
MCS phase above.

For the n-th thread T in the main queue, the MCS phase handles threads that
arrived in the main queue before T. In high contention situations, the CNA
phase handles two kinds of threads:

1. Threads ahead of T that run on the same socket as the lock holder when
a transition from the MCS to CNA phase was made. Assume there are m such
threads.

2. Threads that keep arriving on the same socket as the lock holder. There
are at most 2^numa_spinlock_threshold of them.

Then the number of lock handovers in the CNA phase is max(m,
2^numa_spinlock_threshold). So the total number of lock handovers before T
acquires the lock is at most

n - 1 + 2^numa_spinlock_threshold * (nr_nodes - 1)

Please let me know if I misunderstand anything.

Many thanks,
Lihao.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
