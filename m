Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641828F117
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 18:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOT7Bg2TD2+dEzeBFxamsosA1WfG1K/Gm3Y3ivpCoJs=; b=rv7TkNo8tTR/2k
	pD0pZco3C+1zg0vETN9kIVGzvois2g5l7UmfcNnA5S0EZMweJsL5Yp2yP5+kG0B5D2TiD5F8IuHc2
	+T53KwzyzyKF2WwutkhRg2EccXY9jPr+q+bPVRw9D1fUfEh35DawGq209PdlaAd0/5XwmpwEDGN50
	mg3iKJqxhGhrecaAluVCQXm2As+iGeQtcckNQaHKSaQtus0B5hjfEePY3+Cp42v9ZnyAYa30Km5lS
	ZWo3e6e7osVb4YcXhFxbqtYY6q/CnuZZBPzgWm74JbAMlma+PlE6zCBeJ90WNbbOBBOStMw7/79JQ
	RxQ/3pakCPV8oBeoyG1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyIqA-000879-NN; Thu, 15 Aug 2019 16:43:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIpt-00086l-6r
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 16:42:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 334C320578;
 Thu, 15 Aug 2019 16:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565887368;
 bh=lJCSEpemCXYmezfTiJSeFRryIbklhWwdBEzpEIXqQ9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pXKhtqlDdFd9y3dUpB51RCna5UYbMCphyrQWqmx5SJvGikNN8Yz+H39Gxu2KvZzMM
 Z7fNx7P1pkN6H7sLjdHle0h8YAAFBK47qaeQR3ShrxBIgyHW3bDW0yHo9c8r4DG8oK
 Ib2LJ+7EPa/dH6kq9YrJMzqle1ugkEEJ4EudXJQU=
Date: Thu, 15 Aug 2019 17:42:44 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv3 6/6] smccc: make 1.1 macros value-returning
Message-ID: <20190815164243.2hzydvjly6iwr3jf@willie-the-truck>
References: <20190809132245.43505-1-mark.rutland@arm.com>
 <20190809132245.43505-7-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809132245.43505-7-mark.rutland@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_094249_267694_7681984F 
X-CRM114-Status: UNSURE (   8.89  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 james.morse@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 02:22:45PM +0100, Mark Rutland wrote:
> The arm_smccc_1_1_{smc,hvc}() macros for inline invocation take a res
> pointer as their final argument, matching the out-of-line SMCCC
> invocation functions.
> 
> However, the inline invocation macros are variadic, so it's easy to mess
> up passsing the correct parameters.

passing

> Instead, let's make them value-returning, which is less confusing.

I'm not completely sure I agree with you here because, as far as I can
tell, it means that we have a different calling convention for 1.0 (i.e.
arm_smccc_smc()) and 1.1 (i.e. arm_smccc_1_1_smc).

Can we do the same for 1.0 as well or am I missing something?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
