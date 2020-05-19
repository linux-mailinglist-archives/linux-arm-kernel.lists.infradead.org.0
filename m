Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798B41D9A73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eKPVu0kDdqI//hPlYOWc7BOHNQpcyVCTZc55yk982Q=; b=KXUXzMFm+Ou6tF
	3Eo+bAA0nS1DhObqWeHFZDS+xBfRJcRCmeEXeAAVtjrS7jyZ/0WY0PDf29Rapy+IaXeQS9cIdMqX3
	zTN2BmJEApW4Sg6FeGZJNH51DVbfwrw9oWoQNbHz7vch+6rE2bb73RTPTMrwPRGHKn4kpQDw/hT8/
	ghkmK7E3ksnt9GxZ+5WJyJ31499kIRHvkK5mamcKa1UF1CEM3YhPYP8rfZWgaZ4NocT+WBu2/GRVY
	9xtuvJ23+Mlt717Qzwdx2x1x7zKYCLl4hf1XeMJcD1JX4rFVYbQN4Nl8OblwNhvDETmudh7pMEmWt
	qgoMCb4ScylBSh0YiCdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3eT-00067N-Ih; Tue, 19 May 2020 14:55:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3eJ-00065h-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:55:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0413C31B;
 Tue, 19 May 2020 07:55:18 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F5373F305;
 Tue, 19 May 2020 07:55:17 -0700 (PDT)
Date: Tue, 19 May 2020 15:55:15 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519145514.GH5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
 <20200519132538.GE5031@arm.com>
 <20200519143500.GK4611@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519143500.GK4611@sirena.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_075520_742592_169B129A 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Will Deacon <will@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 03:35:00PM +0100, Mark Brown wrote:
> On Tue, May 19, 2020 at 02:25:38PM +0100, Dave Martin wrote:
> 
> > Rather, the "ret lr" that jumps here is supposed to be authenticated via
> > pointer auth in the caller.
> 
> In which case there was an issue anyway...

What issue?

> > If BTI {nothing} allows this while disallowing all BR/BLR then we could
> > use that (I can't remember what BTI {nothing} is useful for, if anything).
> 
> > Otherwise, it's less clear what we should have here.
> 
> I can't remember anything that distinguishes it from an explicit NOP.

I think it rejects everything other then fallthrough execution
(BTYPE==0, which includes RET).  I might have misunderstood something
somewhere, but sort of feels like the right thing here.  I never put a
lot of effort into trying to understand BTI {nothing} though.  It
seemed a weird, possibly useless special case.


Of course, if gdb's unwinder does rely on recognising magic instruction
sequences in the sigreturn trampoline even when the vdso has valid
unwind information, we're probably doomed to stick for the current code
forever.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
