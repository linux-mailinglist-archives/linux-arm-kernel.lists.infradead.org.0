Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9844649D73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMekfPgfeNJSRyR5f6hCsR6GBPGWhdAd6ttYm+k52bw=; b=cJGs1mt896ICEj
	N8t/NlLJ99HjAC8XDF02KjjUImZt/SXMWpY/f8/9CB8MeNjKLiNd0k41KwAliT8vOuJIHkWo55E7N
	uMCay2U499OZHkof8DFneOw9E6GuKOODFzeYdK4rmLnk6taXFurQLQJ6tLFjTWTrMqDrm94F6XcLJ
	PXbrVZ1aYPAngim7D5J3Hd+8hMZV6dIw9//RfSAX4Nilg3djrw9G76wEomVolJ+Z8eEkry17dtYez
	6dzAqVhSaT3/uJOOKNtpg0hLUyIhKrMibpf9EnvivUhRNejJl0OKhYvhJGKoCga7lEh0sfwn5sm09
	YQ1RedjKtOPR2xURKClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAWE-0004gj-Tq; Tue, 18 Jun 2019 09:35:10 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAVz-0004g7-K0; Tue, 18 Jun 2019 09:34:55 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7B3AE20A410E1; Tue, 18 Jun 2019 11:34:53 +0200 (CEST)
Date: Tue, 18 Jun 2019 11:34:53 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH] sched/topology: remove unused sd param from
 arch_scale_cpu_capacity()
Message-ID: <20190618093453.GN3436@hirez.programming.kicks-ass.net>
References: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
 <c8030f30-0899-070b-df3c-3839ec7e1909@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8030f30-0899-070b-df3c-3839ec7e1909@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-pm@vger.kernel.org, gregkh@linuxfoundation.org, rafael@kernel.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, quentin.perret@arm.com,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:07:29PM +0100, Valentin Schneider wrote:
> Hi,
> 
> On 17/06/2019 16:00, Vincent Guittot wrote:
> > struct sched_domain *sd parameter is not used anymore in
> > arch_scale_cpu_capacity() so we can remove it.
> > 
> 
> I think it can't hurt to give a bit of background. The *sd parameter used
> to be there for smt_gain, which got snipped out by:
> 
>   765d0af19f5f ("sched/topology: Remove the ::smt_gain field from 'struct sched_domain'")
> 
> I'd appreciate having that commit mentioned in the log.
> 
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> 
> Other than that, the changes look fine to me.
> 
> Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

The commit log now reads:

---
The 'struct sched_domain *sd' argument to arch_scale_cpu_capacity() is
unused since commit:

  765d0af19f5f ("sched/topology: Remove the ::smt_gain field from 'struct sched_domain'")

remove it.
---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
