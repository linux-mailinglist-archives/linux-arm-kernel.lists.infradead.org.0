Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C141155AFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 16:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGCxAlttRlG4XryaQtP4yrchwaAvbk2LRMJXXL1CiYw=; b=fsBQv3LKfeBpek
	GKUe16WPmqcUZ28e2X0fKhf7Tti1va2kdPACAFoCk3N1BlyxXCH8L9Wqsazpf4vqzxkY2tIRwlFrF
	ra21a0HQGevCHCrUQ1qppviu/P7Fe6DuanwG+pwDm+2c2uFAO4x6OQONVFgwpXmWSOdI5adN+3/+A
	bxSHXAergA48kl2xVSQvZpN821iinWhMNDy5yyF3UiBD7F+vx7uue6eKbJkIZwU7M42oiqhoJB4DE
	4zGTP4ECwV5ACFp542qPqWuCRxGM7ebPdHFxYqLpD0WaRsa3KOzgqLhio5MR6VJqW8J2Q5rNWa0ac
	TZ9vqfJikhdn8ZmAI7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05sW-0008Kw-Ut; Fri, 07 Feb 2020 15:49:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05sO-0008KD-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 15:49:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1967F1FB;
 Fri,  7 Feb 2020 07:49:03 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 337343F68E;
 Fri,  7 Feb 2020 07:49:02 -0800 (PST)
Date: Fri, 7 Feb 2020 15:48:55 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] drivers base/arch_topology: Remove 'struct sched_domain'
 forward declaration
Message-ID: <20200207154855.GA5529@bogus>
References: <20200207114913.3052-1-dietmar.eggemann@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207114913.3052-1-dietmar.eggemann@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_074904_615543_F4324274 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 12:49:13PM +0100, Dietmar Eggemann wrote:
> The sched domain pointer argument from topology_get_freq_scale() and
> topology_get_cpu_scale() got removed by commit 7673c8a4c75d
> ("sched/cpufreq: Remove arch_scale_freq_capacity()'s 'sd' parameter")
> and commit 8ec59c0f5f49 ("sched/topology: Remove unused 'sd' parameter
> from arch_scale_cpu_capacity()").
>
> So the 'struct sched_domain' forward declaration is no longer needed.
> Remove it.
>
> W/o the sched domain pointer argument the storage class and inline
> definition as well as the return type, function name and parameter list
> fit all into one line.

Looks simple and good to me. I don't want to ask you split the patch as
$subject indicates only one of the 2 changes in the patch. I am fine with
it as it but if anyone else shout for that, go for the split.

Either way,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

You have not added Greg who generally picks up the patch. Can you repost
with him in cc and my reviewed-by so that he can pick it up.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
