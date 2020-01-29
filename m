Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5086914C476
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 02:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0nmVdUDz9h0pa3el3H8jfKZ+LzPkvARhNQbTC8hI1w=; b=LnPOQRily021Zq
	OFciWqw5AsY94IGDl39fdcIJVMefQu49JawT1WUapTc/Ls0Kdbowzb/hA2/OoGA6wCTE+TiuPIvlm
	h6CXuGPgemjuwF3MptT5fuCmhYWM1GxkTRkXqIzGj6rAkGt2l8uAFxnHSQIRHESqOLIcNZi8+xJ7/
	F0NAWdnDOcTbZPRcTvpoa5aUaZDMuGw6WhDvlPNJeDMlYiKzyANqlYvjifJz5d6UOAxib+Urjdi7C
	jlUeT5V+DGsQToF7y0m+DGwOywydmcPtw6+7klRf/3CDe9nvwo792UgCW/n0W+Z+DT5kc5hxWk0/W
	nTpU+gTYwXR2ATIXo/Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwcL3-00024N-5q; Wed, 29 Jan 2020 01:40:17 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwcKh-00023M-OP
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 01:39:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so12609326ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 17:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o4/ClYYJ+5YTTgIua33qLOnbZHxhbde9Yd+Epr2e4yE=;
 b=IT5+OqaWPelc9z2VULl83XxNj/7NowpOHZFU4nhYW8T24uKH/JOKHXgmjK3eGy1CKc
 1aNzJ0uf2K5syWkqTSVYUXMAzxQW/rli8DGH+ho4akKgsewUQ7Ctyzmu0I+MziI/Y0GO
 kiQh82G3dgvUsiGzEA3WNpJo8N++k1GDppFsx5RiXBFMBTVkrwqrwd5JrJQz4zVb11Cn
 5YhZigNsgW5uma91wXVJcN2/GG//BH3v0mCRmrOIH52SBCnqncxfYbNjvFilEhyMv6Zg
 aGDDoDADdLwTJ49rDhAG6W/nAGHZK36Xi/t6WB4p0O2qoK378FMwLwmgg26qsbKjulIn
 OABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o4/ClYYJ+5YTTgIua33qLOnbZHxhbde9Yd+Epr2e4yE=;
 b=OlCzS14O2+16hj3PiInhV18sf01MxL53bdl/SAMZFBDkygPxmSz8ObeWjIY96//PhH
 D1vJp8y93jH0HJwhRcXb8bQmKOIO1twGoj5nuF4wOtseV1HyDcyEQZAT/j3qtm5qBqHC
 s9o9W0uMqZZoykfztu4Y2eDwqPK3X0U9EXMGnTxO392WdWek1Z5yBV38n8TZk2fvBP/7
 zZWESAw/vj+/MPVe8KwldTcv2F7GjGrlxtJS9sfCXtyBS2T+oFiOnq8bRk+rReoTrbb+
 E7uAX9XE2Xl5JQH1oBncEVovQbysmNsx6FvdXE4VFncSzUhVeOoLF6x8U6tqwTGoMODf
 W3kQ==
X-Gm-Message-State: APjAAAXN44i9jeqg6EEK/AQumTCfyJsleQzQQZK2HO2/aVq6GOj3sliD
 mx47t7HavJePIUAVyFPFcRtQLzxUG0LKcftVqta6U6S5
X-Google-Smtp-Source: APXvYqzsDL/zXrUdChz0I/F5naUgMjYLewZ+cychLHXTiyPNiyUzUhcyRqmIiYs7ji2jAVA4/Wc9SdlBZMHyZjmL/yc=
X-Received: by 2002:a2e:3e0d:: with SMTP id l13mr10931600lja.70.1580261990708; 
 Tue, 28 Jan 2020 17:39:50 -0800 (PST)
MIME-Version: 1.0
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
 <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
 <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
 <CAC4j=Y--5UQR7Oc5n+sxAwLxd_PKi0Eb-7aiZjDTUW0FTJy8Tw@mail.gmail.com>
 <25401561-CD1F-4FDC-AED5-256EBE56B9F6@oracle.com>
In-Reply-To: <25401561-CD1F-4FDC-AED5-256EBE56B9F6@oracle.com>
From: Lihao Liang <lihaoliang@google.com>
Date: Wed, 29 Jan 2020 01:39:38 +0000
Message-ID: <CAC4j=Y8ZiCeZdj2CFVoBMH2j-Nen5f5PM0nwg+MR5OgDk7Hybw@mail.gmail.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, longman@redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_173955_824538_35C98602 
X-CRM114-Status: GOOD (  20.47  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 Lihao Liang <lihao.liang@gmail.com>, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, steven.sistare@oracle.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex and Waiman,

On Mon, Jan 27, 2020 at 4:02 PM Alex Kogan <alex.kogan@oracle.com> wrote:
>
> Hi, Lihao.
>
> >>>
> >>>> This is particularly relevant
> >>>> in high contention situations when new threads keep arriving on the same
> >>>> socket as the lock holder.
> >>> In this case, the lock will stay on the same NUMA node/socket for
> >>> 2^numa_spinlock_threshold times, which is the worst case scenario if we
> >>> consider the long-term fairness. And if we have multiple nodes, it will take
> >>> up to 2^numa_spinlock_threshold X (nr_nodes - 1) + nr_cpus_per_node
> >>> lock transitions until any given thread will acquire the lock
> >>> (assuming 2^numa_spinlock_threshold > nr_cpus_per_node).
> >>>
> >>
> >> You're right that the latest version of the patch handles long-term fairness
> >> deterministically.
> >>
> >> As I understand it, the n-th thread in the main queue is guaranteed to
> >> acquire the lock after N lock handovers, where N is bounded by
> >>
> >> n - 1 + 2^numa_spinlock_threshold * (nr_nodes - 1)
> >>
> >> I'm not sure what role the variable nr_cpus_per_node plays in your analysis.
> >>
> >> Do I miss anything?
> >>
> >
> > If I understand correctly, there are two phases in the algorithm:
> >
> > MCS phase: when the secondary queue is empty, as explained in your emails,
> > the algorithm hands the lock to threads in the main queue in an FIFO order.
> > When probably(SHUFFLE_REDUCTION_PROB_ARG) returns false (with default
> > probability 1%), if the algorithm finds the first thread running on the same
> > socket as the lock holder in cna_scan_main_queue(), it enters the following
> > CNA phase
> Yep. When probably() returns false, we scan the main queue. If as the result of
> this scan the secondary queue becomes not empty, we enter what you call
> the CNA phase.
>

As I understand it, the probability of making a transition from the
MCS to CNA phase
in less than N lock handovers is 1 - p^N, where p is the probability
that probably()
returns true (default 99%). So in high contention situations where N can become
quite large in a relatively short period of time, the probability of
getting into the CNA
phase is high, e.g. 95% when N = 300.

I was wondering whether it would be possible to detect contention and make a
phase transition deterministically, maybe by reusing the intra_count
variable to keep
track of the processing rate in the MCS phase?

As Will pointed out earlier, this would make formal analysis and
verification of the
CNA qspinlock much more feasible.

> > .
> >
> > CNA phase: when the secondary queue is not empty, the algorithm keeps
> > handing the lock to threads in the main queue that run on the same socket as
> > the lock holder. When 2^numa_spinlock_threshold is reached, it splices
> > the secondary queue to the front of the main queue. And we are back to the
> > MCS phase above.
> Correct.
>
> > For the n-th thread T in the main queue, the MCS phase handles threads that
> > arrived in the main queue before T. In high contention situations, the CNA
> > phase handles two kinds of threads:
> >
> > 1. Threads ahead of T that run on the same socket as the lock holder when
> > a transition from the MCS to CNA phase was made. Assume there are m such
> > threads.
> >
> > 2. Threads that keep arriving on the same socket as the lock holder. There
> > are at most 2^numa_spinlock_threshold of them.
> >
> > Then the number of lock handovers in the CNA phase is max(m,
> > 2^numa_spinlock_threshold). So the total number of lock handovers before T
> > acquires the lock is at most
> >
> > n - 1 + 2^numa_spinlock_threshold * (nr_nodes - 1)
> >
> > Please let me know if I misunderstand anything.
> I think you got it right (modulo nr_cpus_per_node instead of n, as mentioned in
> my other response).
>

Make sense. Thanks a lot for the clarification :)

Best,
Lihao.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
