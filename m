Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10D862572
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuoZyzAt6QnPC0FSfkd86qygjNGhabtdOcvFs4TF17Y=; b=mG5ukaFNXgU2x4
	sT9gt25CZ+slZH3i5ywCj8APPToTqjIGU69dOKwXi8Ky83MPVlJgVUk6Nlacq/Dlb5cEsdIqD4irT
	ubxgf23nawCw5O/bcp3BUCZmmdi/V91aveb0QvjlNjXdwKjEVIO5ItMhWhfGJkHvlxOJId99H9B0n
	Ye9IWU+R/8UuyBfG51K043xMrTHd10ZYRbDreAyvXZBfUSN9pdu7xfkctFCaTizUC+K8oLJBK3s7l
	Wz7Bbpft4/L5H7EqszqPjlmq1Hox5z8juXAEJ2Sa1xY2rOf2QaQ5pWOO3/QFrIMyZV7utjW8rkitB
	0YoNba8IWevrtHVoSBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkW0r-0002C2-BR; Mon, 08 Jul 2019 15:57:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkW0d-00027g-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:56:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CED82360;
 Mon,  8 Jul 2019 08:56:54 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AE913F59C;
 Mon,  8 Jul 2019 08:56:53 -0700 (PDT)
Subject: Re: kprobes sanity test fails on next-20190708
To: Anders Roxell <anders.roxell@linaro.org>
References: <20190708141136.GA3239@localhost.localdomain>
From: James Morse <james.morse@arm.com>
Message-ID: <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
Date: Mon, 8 Jul 2019 16:56:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190708141136.GA3239@localhost.localdomain>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_085655_379403_EA8DA22A 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, anil.s.keshavamurthy@intel.com,
 mhiramat@kernel.org, naveen.n.rao@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/07/2019 15:11, Anders Roxell wrote:
> argh... resending, with plaintext... Sorry =/
> 
> I tried to build a next-201908 defconfig + CONFIG_KPROBES=y and
> CONFIG_KPROBES_SANITY_TEST=y
> 
> I get the following Call trace, any ideas?
> I've tried tags back to next-20190525 and they also failes... I haven't
> found a commit that works yet.
> 
> [    0.098694] Kprobe smoke test: started
> [    0.102001] audit: type=2000 audit(0.088:1): state=initialized
> audit_enabled=0 res=1
> [    0.104753] Internal error: aarch64 BRK: f2000004 [#1] PREEMPT SMP

This sounds like the issue Mark reported:
https://lore.kernel.org/r/20190702165008.GC34718@lakrids.cambridge.arm.com

It doesn't look like Steve's patch has percolated into next yet:
https://lore.kernel.org/lkml/20190703103715.32579c25@gandalf.local.home/

Could you give that a try to see if this is a new issue?


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
