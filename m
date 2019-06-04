Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C88434391
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzkyPG2Si0rEZZqxeZeNIJyl1bGU32j2Y/FGacfFQU8=; b=n3czJDoS5rpAtv
	d6SkyIlYU0NSnBtUEgd6SBCcgvkHcbz8FcUH7qmSnOcjxuXIyofep2f9h+e/XlACkB+1UPwrm7/OQ
	+oUER+q7GluvTA5KBP9mdxTqGGiTmnKffwy74rs5wzJdIKw1E8PRlq/YZl5NChTXDgdfaT6qgWAza
	S/k0/xukVX+KBBg6/1yDvdBvGjmxJtVcvjDCAsXo/ccpaxI7TF0+im/5NWYbKxeoKsYwNaLCiX0nQ
	PVhiupPFUSh5IH+aoXb1RkXdSmLrhzEQSHGAuw+MJdcTz41bfR3aD7+32uDaEuhZBH88bFtgUnUjJ
	CHTZlHGYkVb1KN+Py7lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6CD-00089x-0x; Tue, 04 Jun 2019 09:57:33 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6By-00089V-Gb
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:57:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAB0B80D;
 Tue,  4 Jun 2019 02:57:17 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EFFB3F246;
 Tue,  4 Jun 2019 02:57:16 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:57:14 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190604095713.GV28398@e103592.cambridge.arm.com>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <20190604084349.prnnvjvjaeuhsmgs@mbp>
 <20190604085545.hsmxfqkpt2cbrhtw@vireshk-i7>
 <20190604092639.GS28398@e103592.cambridge.arm.com>
 <20190604093153.2pzv55knl6axugrv@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604093153.2pzv55knl6axugrv@vireshk-i7>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_025718_614351_1C5594A6 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 03:01:53PM +0530, Viresh Kumar wrote:
> On 04-06-19, 10:26, Dave Martin wrote:
> > I'm in two minds about whether this is worth fixing, but if you want to
> > post a patch to remove the extra const (or convert vq_present() to a
> > macro), I'll take a look at it.
> 
> This patch already does what you are asking for (remove the extra
> const), isn't it ?

Yes, sorry -- I didn't scroll back far enough.

> I looked at my textbook (The C programming Language, By Brian W.
> Kernighan and Dennis M. Ritchie.) and it says:
> 
> "
> The const declaration can also be used with array arguments, to
> indicate that the function does not change that array:
> 
> int strlen(const char[]);
> "
> 
> and so this patch isn't necessary for sure.

This is an array to which a pointer argument points, not an array
argument.  I think that's how we hit the constified double-indirection
problem.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
