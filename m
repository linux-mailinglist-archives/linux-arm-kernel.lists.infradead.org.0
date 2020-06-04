Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ED51EE6CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efGEmuPQI79W2y8r01MnU3fr9wBLuRofSVbvHwxYEhw=; b=RewikjI2HozEzx
	tvrsYFYblBiiH/5glrP5MZODBxoNXVo4efawafFl9tQ5taT/mLf+4R96+SCvIEjCtg4wSrHL3PSsb
	XJAYu31sFTfoCRjwWfhGsOVmpsW+EGRct1dq6xEORQqZlkcICBozuXvYi2Y2z736mZ1vLWkE1G+GO
	g3gUX+drtLeP2JohO4IftFgGnttfHxD5NH6Ghm+GGmIyNB+DQUS6oOC2kYadvi6ioA6djYBd5ci8V
	maFqmJ0H67wQKBFxkG2lBthPvkhvHZP66WNdjZkt2I+yQa/HbcxCcgmZMFr7na0N7Q+i5CEM1BWH0
	LsxLQjdipCG5hoEiRg0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgr44-0000Bh-A7; Thu, 04 Jun 2020 14:41:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgr3x-0000Ax-Eo
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 14:41:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3A7D206E6;
 Thu,  4 Jun 2020 14:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591281704;
 bh=5hDYkKSC1Dy4kl2pO+GirYzLkfIGnDa23RePysKSeNY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RiaCgBEdlSCP9Apnmmd8MYJrcFYJBy/Vb3nvk6FRBfEMY4RTcTStGBSCtWIlY/Vmz
 VuHdq26O2pMms4OyF645+qmkMJ5MnER5CuEfqu275CjyhWMmeonMfI/fKv5uFlsn0R
 5H08lNRgXUf8aEQPS3UhSNhx3CfgLPJO8JvTo7L4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgr3v-000GzT-2y; Thu, 04 Jun 2020 15:41:43 +0100
Date: Thu, 4 Jun 2020 15:41:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for
 removing it entirely
Message-ID: <20200604154141.4983aeaa@why>
In-Reply-To: <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
References: <20200415082922.32709-1-ardb@kernel.org>
 <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, james.morse@arm.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_074145_511892_F6DB475D 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Tue, 28 Apr 2020 15:49:35 +0100
Will Deacon <will@kernel.org> wrote:

> On Wed, 15 Apr 2020 10:29:22 +0200, Ard Biesheuvel wrote:
> > TEXT_OFFSET on arm64 is a historical artifact from the early days of
> > the arm64 port where the boot protocol was basically 'copy this image
> > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> > to put the swapper page tables. When the arm64 port was merged for
> > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> > to allow the bootloader to discover it dynamically rather than hardcode
> > it to 512 KB.
> > 
> > [...]  
> 
> Applied to arm64 (for-next/misc), thanks!
> 
> [1/1] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it entirely
>       https://git.kernel.org/arm64/c/cfa7ede20f13

This breaks a guest kernel booted with kvmtool (tested on my d05).
Reverting it on top of 6929f71e46bd makes it work again. I haven't yet
investigated what is happening here though.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
