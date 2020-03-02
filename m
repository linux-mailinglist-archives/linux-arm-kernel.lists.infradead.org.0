Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1E91761BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sTssYocp0XpDme3+t2lN2EE9IBdoRnQbYOF4aq8Stnc=; b=EtiKBQfeBOb9j32QnmhhUm8JX
	7xE1RPl3V7JLm6hhJeFwlRqHSo626AeCWUnQ0NfR7GD9Al3eyhvTrP5MWgXXtIYu3dOZdMUzd9OWW
	RF6zoGQ0QjYA3UJxMDdDVc0hsEJ7Um8vxOHwNjl0uIBejc8i8OoMvqz48DTZTsNm7HkF5KeWFkzv+
	U6JUtKv2udCeWN21prDYR9qi5hMcCsA+BnAYb5nEYxRQh8UsuOtBPs0cgtTQBPCKfwdKojeGGuR+O
	NjsyhzmuLMUJCaN+WA+vmb6noby66DNJPov+sQHvo1A2td9lpiu4+Sxt9FWULNnhxKj0TloqmjLcK
	aiSihdW9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pMg-00085j-Oz; Mon, 02 Mar 2020 18:00:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pMY-00084z-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 18:00:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4343D2F;
 Mon,  2 Mar 2020 10:00:16 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 768873F6C4;
 Mon,  2 Mar 2020 10:00:12 -0800 (PST)
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
To: Daniel Jordan <daniel.m.jordan@oracle.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
 <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e7c92da2-42c0-a97d-7427-6fdc769b41b9@arm.com>
Date: Mon, 2 Mar 2020 18:00:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100019_558845_709B83EB 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, tj@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/03/2020 5:25 pm, Daniel Jordan wrote:
> On Sun, Mar 01, 2020 at 06:53:51PM +0100, Corentin Labbe wrote:
>> I tried to bisect this problem, but the result is:
> ...
>> # first bad commit: [81ff5d2cba4f86cd850b9ee4a530cd221ee45aa3] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
>>
>> The only interesting thing I see in this MR is: "Add fuzz testing to testmgr"
>>
>> But this wont help.
> 
> Hm, that merge commit has only a couple lines of powerpc build change, so maybe
> there's something nondeterministic going on.

Something smelled familiar about this discussion, and sure enough that 
merge contains c4741b230597 ("crypto: run initcalls for generic 
implementations earlier"), which has raised its head before[1].

> Does this fix it?  I can't verify but figure it's worth trying the simplest
> explanation first, which is that the work isn't initialized by the time it's
> queued.

The relative initcall levels would appear to explain the symptom - I 
guess the question is whether this represents a bug in a particular 
test/algorithm (as with the unaligned accesses) or a fundamental problem 
in the infrastructure now being able to poke the module loader too early.

Robin.

[1] 
https://lore.kernel.org/linux-arm-kernel/20190530170737.GB70051@gmail.com/

> thanks,
> daniel
> 
> ---8<---
> 
> Subject: [PATCH] module: statically initialize init section freeing data
> 
> Signed-off-by: Daniel Jordan <daniel.m.jordan@oracle.com>
> ---
>   kernel/module.c | 13 +++----------
>   1 file changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/kernel/module.c b/kernel/module.c
> index 33569a01d6e1..db0cda206167 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -88,8 +88,9 @@ EXPORT_SYMBOL_GPL(module_mutex);
>   static LIST_HEAD(modules);
>   
>   /* Work queue for freeing init sections in success case */
> -static struct work_struct init_free_wq;
> -static struct llist_head init_free_list;
> +static void do_free_init(struct work_struct *w);
> +static DECLARE_WORK(init_free_wq, do_free_init);
> +static LLIST_HEAD(init_free_list);
>   
>   #ifdef CONFIG_MODULES_TREE_LOOKUP
>   
> @@ -3501,14 +3502,6 @@ static void do_free_init(struct work_struct *w)
>   	}
>   }
>   
> -static int __init modules_wq_init(void)
> -{
> -	INIT_WORK(&init_free_wq, do_free_init);
> -	init_llist_head(&init_free_list);
> -	return 0;
> -}
> -module_init(modules_wq_init);
> -
>   /*
>    * This is where the real work happens.
>    *
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
