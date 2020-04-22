Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1B61B4921
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cbMQtSnfnZmY2aPkUenCR6KPDF9IFDuJgUiQMPPMK/k=; b=fUAm0EgXusx18BaeAqian8ia6
	hcIeS4IVjqffAWReZnhYJJvRz+fPkyKSOj+dgqkEkFl2+8FfXyJHxXJTO1daMRxfrX/p/Caz3LeXM
	pmFr9uNV5O/DANB//K+kpa0+iS3lKFH74ffR8SDt7LUbh/hQkV6IOrb7wyIVzwmDyGbuxBNDasF1L
	G7CJhWQPJhOPkjHRVO18EGXUkt4+1I2MsA1eGZNwe/wr4MIEj+hSsZRKFfhE9v0y/eAkJzHi8MZm8
	Mb5GvN6fWB0uax2VFkLaSb4O8Xxlb3efZf7aCpmV85hjliqg+nY5dQlhdS4CZswByEXXdfV8LdZ3o
	nLSgaCAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHeT-0000FN-Ti; Wed, 22 Apr 2020 15:51:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHeK-0000ER-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:50:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA32220767;
 Wed, 22 Apr 2020 15:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587570656;
 bh=16hEh7COz5X6gcSR+cor8Xs6XMhtSt7DiaO+McpA8Xw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rMHmyc73fzTojqpjdwKu0r3nS1CE3k+rX6IVaJiJbUiZ+TXDsCzHKILep59dff0sg
 SvWFQdEHeBMdmlppWgVvZ/GyPw4mATcgm+0+MxEBoaZB7sFTnyw+l4zidFrBws1vmV
 f5iORe/ZCTL9Kpe/+OHiTnCc1xLGdFlO9M+lTXiI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRHeI-005YGi-Am; Wed, 22 Apr 2020 16:50:54 +0100
MIME-Version: 1.0
Date: Wed, 22 Apr 2020 16:50:54 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64/kvm: Fix duplicate tracepoint definitions after KVM
 consolidation
In-Reply-To: <20200422152249.GE676@willie-the-truck>
References: <20200421091707.16743-1-will@kernel.org>
 <20200422152249.GE676@willie-the-truck>
Message-ID: <f353b0115e16914b0f91d74246c277d1@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_085056_421840_E29C9D05 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-22 16:22, Will Deacon wrote:
> On Tue, Apr 21, 2020 at 10:17:07AM +0100, Will Deacon wrote:
>> Both kvm/{arm,handle_exit}.c include trace.h and attempt to 
>> instantiate
>> the same tracepoints, resulting in failures at link-time:
>> 
>>   | aarch64-linux-gnu-ld: 
>> arch/arm64/kvm/handle_exit.o:(__tracepoints+0x30):
>>   |   multiple definition of `__tracepoint_kvm_wfx_arm64';
>>   |   arch/arm64/kvm/arm.o:(__tracepoints+0x510): first defined here
>>   | ...
>> 
>> Split trace.h into two files so that the tracepoints are only created
>> in the C files that use them.
>> 
>> Cc: Marc Zyngier <maz@kernel.org>
>> Signed-off-by: Will Deacon <will@kernel.org>
>> ---
>> 
>> Applies against kvm-arm64/welcome-home. Probably worth just folding in
>> to the only commit on that branch.
> 
> I also just noticed that you forgot to update MAINTAINERS after the 
> move,
> so you can fold in the diff below as well.

All applied, squashed and pushed out.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
