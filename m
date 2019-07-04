Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D235F66D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTb7jsvKDRdj1U8yZsu2y76XmxLqzA6/Iuo4bEp5tgA=; b=TAxiKv9rc35VEt
	ayV5I8MsQ00ohV6w2DGJBCqo2qH0FSsBy8n7TOsqzZMspjSKWYCV4NaMXU9ezW591RP+eerWfZxko
	J0suHOoZOO7afy1HgjQc0oSsnWdkU67q19kHL5jP5RxZrifS6pvvgv8eRDNG5MuUOuZlzg7MNssky
	fgVOuThUdWgG6ZIiwB97kTm8HwbXDA/VPp3CkrfpMcDj4vYfKynpyC40iNqS+1iPF/TvB3B4n01pI
	rSB6EjLoIhIYDD7pl1hDInIQ2Hp2orG5+qxnMwfl1oe6ZBY3qf6E+Id0Fe/UgIYQlDSN9GOtzMwSr
	6j3ifDCZ7fNLwA67Y+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiymg-0008S7-6V; Thu, 04 Jul 2019 10:16:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiymR-0008Rq-Eo
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:15:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87480344;
 Thu,  4 Jul 2019 03:15:54 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 165E53F703;
 Thu,  4 Jul 2019 03:15:52 -0700 (PDT)
Date: Thu, 4 Jul 2019 11:15:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Zhang, Lei" <zhang.lei@jp.fujitsu.com>
Subject: Re: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
Message-ID: <20190704101550.GA2790@e103592.cambridge.arm.com>
References: <1562175770-10952-1-git-send-email-Dave.Martin@arm.com>
 <20190704030252.4gzvoh4rxdmmddu5@vireshk-i7>
 <20190704083459.GY2790@e103592.cambridge.arm.com>
 <8898674D84E3B24BA3A2D289B872026A78BAAE43@G01JPEXMBKW03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8898674D84E3B24BA3A2D289B872026A78BAAE43@G01JPEXMBKW03>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_031555_538114_0DD0979D 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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
Cc: "Okamoto, Takayuki" <tokamoto@jp.fujitsu.com>,
 Christoffer Dall <cdall@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, Julien Grall <julien.grall@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:04:08AM +0000, Zhang, Lei wrote:
> Hi guys,
> 
> I have started up KVM guest os successfully with SVE feature with Dave' patch.
> 
> Tested-by: Zhang Lei <zhang.lei@jp.fujitsu.com >

Thanks for verifying.

It's really your fix, I only wrote a commit message for it :)

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
