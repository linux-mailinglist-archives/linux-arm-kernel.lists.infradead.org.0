Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BA26BB97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocfYcw5+EcYjFGUClIpST2KtbMHrMjaOPQlY94JM7MY=; b=gi2DUD+E+WFRWq
	466dErnM43Thp3Crh6rZlgDdO0AAt6ohereofxpSW3t0JRvf5vpqV3Er/uZtKFrZCWJv/0y6u4ULO
	3DTRo3tT8u3VvzuVeHa4A9ljBKH5AWNXPpuLpqlMyThg8kZLzOXU3Gk2rqHOxJqKC5MBMba21Va9a
	I9pR8tLZmgd4dxHAlAVswVnrKaqtWGtDEGOcf3U1mPW8JOSWGTg/XRSHmTfzF1BnCFE+XhJmPnwEn
	8K/YZQQcCdj3yUMLy02pkV3X42lCsK1fnI5xJcew1W9/rptZ77CxR6fZkWqUQBGLIG/2tenckSU8E
	3WXllyudrAp699YjUOjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniFu-0007NG-86; Wed, 17 Jul 2019 11:37:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniFm-0007Mk-EP
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:37:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83C0321743;
 Wed, 17 Jul 2019 11:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563363466;
 bh=tq+6xuI8SQMUzIcpH5lQylstA6fY9G03SjvpF49Mn2E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LyYLGrvDiM18pUehSMqkl7EfV7nTxu+TP8iz9zuDkbtis9IhHbLdioUOrimvCYnj5
 fBlgIMDcyBjdbOcwuu8f3bV3+ZlarDx4fL9xPPmh0krBOFae8O3tRwJKqorg0FEC2r
 gLsjYOdU7afjfIpVmRacn61BGofcHdODOgtn5qGk=
Date: Wed, 17 Jul 2019 12:37:40 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] MAINTAINERS: Update my email address to @kernel.org
Message-ID: <20190717113739.ffw43htk5vtt5bfr@willie-the-truck>
References: <20190716174308.17147-1-marc.zyngier@arm.com>
 <20190717064315.tn26dss343iv33oj@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717064315.tn26dss343iv33oj@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_043746_502482_2AE9B374 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@arm.linux.org.uk>, James Morse <james.morse@arm.com>,
 maz@kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 07:43:15AM +0100, Will Deacon wrote:
> On Tue, Jul 16, 2019 at 06:43:08PM +0100, Marc Zyngier wrote:
> > I will soon lose access to my @arm.com email address, so let's
> > update the MAINTAINERS file to point to my @kernel.org address,
> > as well as .mailmap for good measure.
> > 
> > Note that my @arm.com address will still work, but someone else
> > will be reading whatever is sent there. Don't say you didn't know!
> > 
> > Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> > ---
> > 
> > Notes:
> >     Yes, I'm sending this from my ARM address. That's intentional.
> >     I'll probably send it as part of a pull request later in the
> >     cycle, but that's just so that people know what is coming.
> > 
> >  .mailmap    | 1 +
> >  MAINTAINERS | 8 ++++----
> >  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> Let's see if you manage a better job of getting people to use your new
> address than I have:
> 
> Acked-by: Will Deacon <will@kernel.org>

Actually, since there's another change from Julien, I'll just pick both of
these up via the arm64 tree for -rc2 along with the vdso fixes we've got
kicking around.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
