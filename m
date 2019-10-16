Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C366D8DDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmdyBjfoSL5urkpzlqciVClz0EKEv8V0fcGdfb6lFNg=; b=HC0vi1CEj/Dc7x
	bbptM0ew8e3eT+ay7s826qnVhixb8iH2O6vO0ARDkDRwpJmMJkX5GwZEsnhVsLNX7a4QmOSysh7Eg
	rDD5KiIYxEZWyI+XeTj/YUlwPNBJMnd5YDkfU+e36lykunb56L02TG2uTx8GeA14pEojsgvGw4NAH
	GWIcCkpNmfWeMm2vOcovf98ddFohkiXrx2VZBb70UfeCOTBDFXLC1ayJ1eW+oDNv/Z5lRuMaJ6s6O
	pYGoDci8TzY4wLPUnlg61Algc6+N1cE7NwnyOfA9JLYpNzQ6FzHeitj0+CGt1H0dFjBAPvW3iWpdE
	6LpFOXyOc6CaLxqyHvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgVN-0000wQ-Sw; Wed, 16 Oct 2019 10:26:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgVA-0000vb-PY
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:25:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA6CB28;
 Wed, 16 Oct 2019 03:25:52 -0700 (PDT)
Received: from bogus (unknown [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D936C3F6C4;
 Wed, 16 Oct 2019 03:25:50 -0700 (PDT)
Date: Wed, 16 Oct 2019 11:25:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Message-ID: <20191016102545.GA11386@bogus>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
 <ab42357e-f4f9-9019-e8d9-7e9bfe106e9e@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab42357e-f4f9-9019-e8d9-7e9bfe106e9e@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_032556_875364_01E91F79 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, hushiyuan@huawei.com,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 11:22:23AM +0800, Yunfeng Ye wrote:
>
>
> On 2019/10/16 0:23, Will Deacon wrote:
> > Hi,
> >
> > On Sat, Sep 21, 2019 at 07:21:17PM +0800, Yunfeng Ye wrote:
> >> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
> >> take so long in the right case. Use usleep_range() instead of msleep(),
> >> reduce the waiting time, and give a chance to busy wait before sleep.
> >
> > Can you elaborate on "the right case" please? It's not clear to me
> > exactly what problem you're solving here.
> >
> The situation is that when the power is off, we have a battery to save some
> information, but the battery power is limited, so we reduce the power consumption
> by turning off the cores, and need fastly to complete the core shutdown. However, the
> time of cpu_psci_cpu_kill() will take 10ms. We have tested the time that it does not
> need 10ms, and most case is about 50us-500us. if we reduce the time of cpu_psci_cpu_kill(),
> we can reduce 10% - 30% of the total time.
>

Have you checked why PSCI AFFINITY_INFO not returning LEVEL_OFF quickly
then ? We wait for upto 5s in cpu_wait_death(worst case) before cpu_kill
is called from __cpu_die.

Moreover I don't understand the argument here. The cpu being killed
will be OFF, as soon as it can and firmware controls that and this
change is not related to CPU_OFF. And this CPU calling cpu_kill can
sleep and 10ms is good to enter idle states if it's idle saving power,
so I fail to map the power saving you mention above.

> So change msleep (10) to usleep_range() to reduce the waiting time. In addition,
> we don't want to be scheduled during the sleeping time, some threads may take a
> long time and don't give up the CPU, which affects the time of core shutdown,
> Therefore, we add a chance to busy-wait max 1ms.
>

On the other hand, usleep_range reduces the timer interval and hence
increases the chance of the callee CPU not to enter deeper idle states.

What am I missing here ? What's the use case or power off situation
you are talking about above ?

>
> > I've also added Sudeep to the thread, since I'd like his ack on the change.
> >

Thanks Will.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
