Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 613CE15BCF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vn4L3HpAEptTQrL0hwcFMtUpQVyLjH7fpwAUVbTqi5Q=; b=Z4DRAHzMZsSVJhO/kg/QWoW83
	tuuvrr53f7QMs9nmwIQe3F4q0RT2oKYulXSnc00fMQFgVhMnLkXV2qgx2HtsJwvAo7H5wwCoVwO2B
	CBwVo0Fqx5431iJb/xXgOWVcbTBPmMnHDm01GrqGHEyQsPT8tQNzGyWM9z9AZmu1KfjeFwcQR3nV8
	hhR8qCxSKwxK1Orzyq6SNHXConl1TNNvK2atbXkFi9SZFwrRLPG5EZI4zeP4JUXINAYJMsIFigvOL
	Us3DhSTNm3rOgpKtLv1RI8yB2BghzUvwtuh6T4XA0UDVHhbx5AdwPqT7nhVLgZPecJR7B1PPQR6Wf
	LAevWmWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BvF-00078A-66; Thu, 13 Feb 2020 10:40:41 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Bv4-00077f-Oz
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:40:32 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48JChP5r4pz9vCQf;
 Thu, 13 Feb 2020 11:40:21 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=sZorrvgN; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id eq5fshwkQBVW; Thu, 13 Feb 2020 11:40:21 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48JChP4myJz9vCQZ;
 Thu, 13 Feb 2020 11:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581590421; bh=KX/Bf+44urcJ+M7SRbj0cLc9DnYSDfuYYz2j2RUtDIo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=sZorrvgNZs/DTsuS53wt8WvSgGCpj97AGtw1XpGSHVpVxMGjMzmpEBKxu2D4v07OX
 zVfw60DRealJF3FMpiR4gDj5eDvU9Yi8ivuXuDeG1IU4FxoIfg9u+TgmmioEpVIhge
 IF44jXccQd+bLWpv4KaEi9/5sZa7uw9YEFMscOZA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C9EA58B83E;
 Thu, 13 Feb 2020 11:40:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id N2rjANNu6E0L; Thu, 13 Feb 2020 11:40:22 +0100 (CET)
Received: from pc16570vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 369BF8B835;
 Thu, 13 Feb 2020 11:40:22 +0100 (CET)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang
 <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
 <f67f7566-24f2-9c71-36be-2e55ec436097@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <f68d7a21-63b6-07a1-09de-5e66f422dcae@c-s.fr>
Date: Thu, 13 Feb 2020 10:40:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <f67f7566-24f2-9c71-36be-2e55ec436097@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_024031_107061_1E53FBFB 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/13/2020 07:45 AM, Rasmus Villemoes wrote:
> On 12/02/2020 15.24, Christophe Leroy wrote:
>> Hi Rasmus,
>>
>> Kernel 5.6-rc1 silently fails on boot.
>>
>> I bisected the problem to commit b6231ea2b3c6 ("soc: fsl: qe: drop
>> broken lazy call of cpm_muram_init()")
>>
>> I get a bad_page_fault() for an access at address 8 in
>> cpm_muram_alloc_common(), called from cpm_uart_console_setup() via
>> cpm_uart_allocbuf()
> 
> Sorry about that. But I'm afraid I don't see what I could have done
> differently - the patch series, including b6231ea2b3c6, has been in
> -next since 20191210, both you and ppc-dev were cc'ed on the entire
> series (last revision sent November 28). And I've been dogfooding the
> patches on both arm- and ppc-derived boards ever since (but obviously
> only for a few cpus).

Yes, this patch series should have ringed a bell in my head, looks like 
I'm the one who introduced this 4 years ago through commit 4d486e008379 
("soc/fsl/qe: fix Oops on CPM1 (and likely CPM2)")

But I had completely forgotten that patch until I did some git blame 
this morning on this lazy call.


> 
>> Reverting the guilty commit on top of 5.6-rc1 is not trivial.
>>
>> In your commit text you explain that cpm_muram_init() is called via
>> subsys_initcall. But console init is done before that, so it cannot work.
> 
> No, but neither did the code I removed seem to work - how does doing
> spin_lock_init on a held spinlock, and then unlocking it, work? Is
> everything-spinlock always a no-op in your configuration? And even so,
> I'd think a GFP_KERNEL allocation under spin_lock_irqsave() would
> trigger some splat somewhere?
> 
> Please note I'm not claiming my patch is not at fault, it clearly is, I
> just want to try to understand how I could have been wrong about the
> "nobody can have been relying on it" part.
> 

It seems spin_lock_init() does just nothing.
spin_lock_irqsave() just disable IRQs and increases preempt_count.
spin_lock_irqrestore() restore IRQ state, decreace preempt_count and 
call preempt_schedule if preempt_count reaches 0.

Maybe with some debugging options like DEBUG_ATOMIC_SLEEP could detect it ?

>> Do you have a fix for that ?
> 
> Not right now, but I'll have a look. It's true that the patch probably
> doesn't revert cleanly, but it shouldn't be hard to add back those few
> lines in the appropriate spot, with a big fat comment that this does
> something very fishy (at least as a temporary measure if we don't find a
> proper solution soonish).
> 

Thanks
Christophe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
