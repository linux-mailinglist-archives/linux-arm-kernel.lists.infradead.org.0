Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477B8965F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ael3nEGovz9E40hCXIs6H6KZ63KQ+tfaGD+cw41HvNY=; b=ZUiOiJkd2aifse
	z4AA0dzVhlCtfpI2OafpBTzpqrfo+q0n9XAqPl0DE+aG8cpE58ezs2/ZqE7Grhn7GaEgBhZ0J4UHU
	Ups45Ew1RtsVFpwkTJnpCM1Osl5IHE1l87fnTH4AE3nArRSegMz/Ie2m8LmKigB/qZLiqlSwcGVKk
	Qs+u2BXNkWnA9Bm7yocasz+G/WELu6qUHvgvp0x3ZqgDevu+ntYhqaDTXfPNlDjysUsrRXlmcS1k9
	aTPXv2TdX8WuoNRkx+ksjMeHXd3N4xxNfq+UZIlxd6Yn4ddFgfxu7mjwihqexqtee4ZDkgtT4v8tF
	nSz5UKGTn/2dQgPx+y9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06jh-0006c1-W2; Tue, 20 Aug 2019 16:11:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06jY-0006bj-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:11:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89E0F2087E;
 Tue, 20 Aug 2019 16:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566317504;
 bh=f2XP5Rom/M/LRlxMiW6d/h0nQTI1cIy/myOvGg1QlW8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tfYzVVKeU57Kj0re5ESECR2Dr+GY9nCaFU4yIYJePzHxKVZwsT7ZUEduC/ojmItKa
 2I6yPHKvw64qmSuMPA9kLdXetQOaBeYWxln2B5h/qPHL8J0VxiWjrEUbox4AJ1YPQz
 ONfCTHlOFNhMXZJA/6/vJgNbZbSbeXDmLAIhLqVM=
Date: Tue, 20 Aug 2019 17:11:39 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: perf_event: Add missing header needed for
 smp_processor_id()
Message-ID: <20190820161139.c64thty545i6xa2c@willie-the-truck>
References: <20190820155745.20593-1-raphael.gault@arm.com>
 <20190820160629.GD43412@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820160629.GD43412@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_091144_621564_09F8D4CA 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 05:06:29PM +0100, Mark Rutland wrote:
> On Tue, Aug 20, 2019 at 04:57:45PM +0100, Raphael Gault wrote:
> 
> It would be worth having a body for the commit message like:
> 
> | in perf_event.c we use smp_processor_id(), but we haven't included 
> | <linux/smp.h> where it is defined, and rely on this being pulled in 
> | via a transitive include. Let's make this more robust by including
> | <linux.smp.h> explciitly.
> 
> ... and with that, my Acked-by stands.

Queued for 5.4. with typo fixed above.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
