Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325EE1466DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KzdayEN9v1ydYT+dxvCb8PsUawqn9tov3rnUoRp/9A=; b=JRmodxqma1dtAE
	xIoANY1aFO4fZQOd/lxRbfwIp8VbCMgxt38Jk0pHmWiEn0kl3ACwY8KKp9tRIMM95NxYpr3julNvn
	nqsooa64MjpftQvugc4oVb4dBjj8LghrdoWHSXOQQwqVe7tW3wcmoKJ7W5OJZeJnKjRavKTjP02LZ
	pl++3AvuOhUt7ejoIQJ9jvVkpXkOfqgZDAXdKVDXoblx4Aet+kcxmLjqP8awHDXOs/RU/QZqLlrX3
	YACGx+vuTqhaa6rz2CD9oCqQMR+f7+Mw3XvzpbGyUEVWaVM54wC4yXipSyDEWYQc8bguthpNyvdFx
	XOYQZyp4DWaWuGbvUClw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuamN-0005rG-5S; Thu, 23 Jan 2020 11:36:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuamA-0005qa-Jy
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:35:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBD9224125;
 Thu, 23 Jan 2020 11:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579779354;
 bh=NgRc4r3/WU3L+AaQZpJg9EMLS9NAgkFiIf8N0LyNC+Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jjE8q2j+F9NR+6NUtDnw5ybuvoh3/gXOO538RDz1Cem8SjaEsHRMDFEkXXNJm+lm+
 fkLMODHS28CRnHPazsbkpUlIDTtq7FnPNF9s0Uch7YSSCvgesocygv7IoYAlNFTQaB
 dJDXbBQRVrNqvf5CCLb60sDENtvFOlIBGjPB4vRk=
Date: Thu, 23 Jan 2020 11:35:47 +0000
From: Will Deacon <will@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
Message-ID: <20200123113547.GD18991@willie-the-truck>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
 <4e15fa1d-9540-3274-502a-4195a0d46f63@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e15fa1d-9540-3274-502a-4195a0d46f63@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_033554_696159_D5D4F650 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, x86@kernel.org,
 arnd@arndb.de, peterz@infradead.org, dave.dice@oracle.com,
 jglauber@marvell.com, hpa@zytor.com, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, Lihao Liang <lihaoliang@google.com>,
 Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

(I think Lihao is travelling at the moment, so he may be delayed in his
replies)

On Wed, Jan 22, 2020 at 12:24:58PM -0500, Waiman Long wrote:
> On 1/22/20 6:45 AM, Lihao Liang wrote:
> > On Wed, Jan 22, 2020 at 10:28 AM Alex Kogan <alex.kogan@oracle.com> wrote:
> >> Summary
> >> -------
> >>
> >> Lock throughput can be increased by handing a lock to a waiter on the
> >> same NUMA node as the lock holder, provided care is taken to avoid
> >> starvation of waiters on other NUMA nodes. This patch introduces CNA
> >> (compact NUMA-aware lock) as the slow path for qspinlock. It is
> >> enabled through a configuration option (NUMA_AWARE_SPINLOCKS).
> >>
> > Thanks for your patches. The experimental results look promising!
> >
> > I understand that the new CNA qspinlock uses randomization to achieve
> > long-term fairness, and provides the numa_spinlock_threshold parameter
> > for users to tune. As Linux runs extremely diverse workloads, it is not
> > clear how randomization affects its fairness, and how users with
> > different requirements are supposed to tune this parameter.
> >
> > To this end, Will and I consider it beneficial to be able to answer the
> > following question:
> >
> > With different values of numa_spinlock_threshold and
> > SHUFFLE_REDUCTION_PROB_ARG, how long do threads running on different
> > sockets have to wait to acquire the lock? This is particularly relevant
> > in high contention situations when new threads keep arriving on the same
> > socket as the lock holder.
> >
> > In this email, I try to provide some formal analysis to address this
> > question. Let's assume the probability for the lock to stay on the
> > same socket is *at least* p, which corresponds to the probability for
> > the function probably(unsigned int num_bits) in the patch to return *false*,
> > where SHUFFLE_REDUCTION_PROB_ARG is passed as the value of num_bits to the
> > function.
> 
> That is not strictly true from my understanding of the code. The
> probably() function does not come into play if a secondary queue is
> present. Also calling cna_scan_main_queue() doesn't guarantee that a
> waiter in the same node can be found. So the simple mathematical
> analysis isn't that applicable in this case. One will have to do an
> actual simulation to find out what the actual behavior will be.

It's certainly true that the analysis is based on the worst-case scenario,
but I think it's still worth considering. For example, the secondary queue
does not exist initially so it seems a bit odd that we only instantiate it
with < 1% probability.

That said, my real concern with any of this is that it makes formal
modelling and analysis of the qspinlock considerably more challenging. I
would /really/ like to see an update to the TLA+ model we have of the
current implementation [1] and preferably also the userspace version I
hacked together [2] so that we can continue to test and validate changes
to the code outside of the usual kernel stress-testing.

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/cmarinas/kernel-tla.git/
[2] https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/spinbench/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
