Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB3468A3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrHj1JPn37+QFoyXQZKW6Xtk0WnLIWAZ7A2tZXvCgOI=; b=tvLvy+EXSuP7UC
	NZdzsDHY9S1PrvwLVX1t5Mnop8whMmj6Ood2fU7dTIl5CiABalOh2lw3OLVW28BuGT7bogWU63AgM
	9OaGQBqOyfpbbsPrnI409d0ZwzY3DHKdwtk3Qod36dRrtG6ouQ7iAYSfDoT/vXBCGbghWncK1KWKs
	35ckRfsapTxsXs9meVi8FCTJQ9s6oWseA7TwKWIvdM7KBAuMXPrSoBkX22PFiAgsbyjIYO/AeT2Zb
	qa/5K8WcMuhPDGMR1dKh1F6saxscn17hszOGwaxD360sX/GkY401deQmVnA5TOYvVbGHJhjdDYLVs
	PafMMzUUD5QIjGVQ6exA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0js-0001Eb-N5; Mon, 15 Jul 2019 13:09:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0jf-0001Du-UY
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 13:09:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 025CF28;
 Mon, 15 Jul 2019 06:09:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0E623F71F;
 Mon, 15 Jul 2019 06:09:38 -0700 (PDT)
Date: Mon, 15 Jul 2019 14:09:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 00/43] V4.4 backport of arm64 Spectre patches
Message-ID: <20190715130936.GH56232@lakrids.cambridge.arm.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_060944_026522_B6342670 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 10:57:48AM +0530, Viresh Kumar wrote:
> Hello,
> 
> This series backports arm64 spectre patches to v4.4 stable kernel. I
> have started this backport with Mark Rutland's backport of Spectre to
> 4.9 [1] and tried applying the upstream version of them over 4.4 and
> resolved conflicts by checking how they have been resolved in 4.9.
> 
> The KVM changes are mostly dropped as the KVM code in v4.4 is quite
> different and it makes backport more complex. This was suggested by the
> ARM team.

> I also had to drop few patches as they weren't getting applied properly
> due to missing files/features or they were KVM related:

>   arm/arm64: KVM: Implement PSCI 1.0 support
 
> I have dropped arch/arm64/crypto/sha256-core.S and sha512-core.S files
> as they weren't part of the upstream commit. Not sure why it was
> included by Mark as the commit log doesn't provide any reasoning for it.

It looks like I messed up spectacularly when backporting that commit;
those files should not have been added. I must have had those lying
around from a rebase or similar.

I'll spin a patch for v4.9.y to drop the bits I added erroneously.

It is somewhat concerning that no-one spotted that (myself included)
when the v4.9.y backport was originally made. :/

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
