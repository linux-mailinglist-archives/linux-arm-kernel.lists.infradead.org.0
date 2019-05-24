Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A33C29DEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8I5Pe9lhGnW3Gcmg0hummorDgncy7+YhPL/7+BUTog=; b=PIQWjSmW/1OSv1
	aDWdh3oYYsIRMP+adD4IK9Vzx06GEwnlPFSMrJP+NgfQS3zANJdUoAQpxEFCJ4NebuliZnAMNY66N
	9qrkh8dfChqgEpaCVr5SOyK7tKZKg3RsRuXBxDhU2vDn30db91yqgUtwaXipB3D3Ju95QurYOaG+J
	hV6VcPA/XStwwkH0sBYc211sW2DSzzxoDKSWVm3c45n9f+9bD59esPPGlzFzfLxTXEgD9r6GeoJzT
	4VOHfvfYX30ESri3fBh/n7wVGB0VyCfCCP6sALQc4HCqylRKYqb9M6JkeBwWqhTN+rhZLpaPsAivM
	pis4hQMqojMwqC5FSIsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEmg-0003Uf-7k; Fri, 24 May 2019 18:19:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEmZ-0003UI-72
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:19:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9A97A78;
 Fri, 24 May 2019 11:19:06 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D81AF3F703;
 Fri, 24 May 2019 11:19:05 -0700 (PDT)
Date: Fri, 24 May 2019 19:19:03 +0100
From: Will Deacon <will.deacon@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] arm64: Second round of fixes for -rc2
Message-ID: <20190524181903.GB9697@fuggles.cambridge.arm.com>
References: <20190524174357.GC9120@fuggles.cambridge.arm.com>
 <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_111907_256945_32E2A0BF 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 11:14:02AM -0700, Linus Torvalds wrote:
> Only tangentially relevant to this pull request:
> 
> On Fri, May 24, 2019 at 10:44 AM Will Deacon <will.deacon@arm.com> wrote:
> >
> > - Add workaround for Cortex-A76 CPU erratum #1463225
> > - Handle Cortex-A76/Neoverse-N1 erratum #1418040 w/ existing workaround
> 
> could you perhaps talk to somebody inside ARM about making the errata
> documentation publicly available?
> 
> I'm not sure why it seems to want an account at arm.com, and as a
> result some pretty fundamental development tools ("let me google
> that") don't work.

We recently removed a whole bunch of click-through/registration things
for our documentation, so I'm surprised that it's still the case for
the errata document (but it does appear to be).

I'll see if this can be fixed. After all, we end up descibing the thing
in the Kconfig text anyway...

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
