Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E0C13BC35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6s56OXb1Bm1LpIytYW3KeKE/2V9xmk/mQssWfZPYIQ=; b=frJqtwnqAix7N0
	FTdCW14GSkLHkYCq9S7GOYO01sTcIsoHm3A77rfjR0nRcV/mB1E0QxYAgLhxURtavr7BAU29ftCQt
	mKpWuKqLVi090Up6t9M7E8NErAKD4VppxTuUPWfq3CuObnR0YVL6daZK2ZUAHLtjOjPQ8gGdDp5Z+
	9k28tfqq0pnr0TPNk5t8i3w62lyhuZ3tlvrFnB6yhK1nk88eQBloKqDOzGYh1+P8uSDacpHxr0ZJq
	9QX8JC2T+FbT2Y4ihtZ3zD1DCbYg98xqqSvOjXSt14a5wmZ8dSIQhPiGxIcFX1Pp7b6MCNNSUZtnn
	zrvHSpNCdOsK5Lv6ZoVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iremw-0002VS-TF; Wed, 15 Jan 2020 09:16:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iremi-0002Ut-Su
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:16:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66F412081E;
 Wed, 15 Jan 2020 09:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579079780;
 bh=kcJDlaPpWouyHV8AgG7O+oO5lQc8Hu15HbF+Q1786RM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CNQytM71xMAm2y5TPnTp7W+HpJbjBHYl7AhCQK0HQWQlAt8lW3/upHsgNXB5vUhi8
 w50YekGKEXdQJiksvxdl52sVRJ6gbgVJ+lNUZLIOWNh4aptl8kmbXOJ4NEg9dgWOLG
 +f8nMns4B1nFvUZecPW3RIHBA5PRmi05N0oJS0cw=
Date: Wed, 15 Jan 2020 09:16:16 +0000
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115091615.GA21692@willie-the-truck>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_011620_955267_5CE9BF53 
X-CRM114-Status: GOOD (  21.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 08:48:46AM +0100, Ard Biesheuvel wrote:
> On Fri, 10 Jan 2020 at 13:23, Mark Brown <broonie@kernel.org> wrote:
> >
> > Since the arm64 ARCH_RANDOM implementation is not available until
> > cpufeature has determined the system capabilities it can't be used by
> > the generic random code to initialize the entropy pool for early use.
> > Instead explicitly add some data to the pool from setup_arch() if the
> > boot CPU supports v8.5-RNG, this is the point recommended by the generic
> > code.
> >
> > Note that we are only adding data here, it will be mixed into the pool
> > but won't be credited as entropy. There are currently no suitable
> > interfaces for that at present - extending the random code to provide
> > those will be done as a future step. Providing data is better than not
> > doing so as it will still provide an increase in variation in the output
> > from the random code and there will be no impact on the rate at which
> > entropy is credited compared to what we have without this patch.
> >
> 
> This is slightly unfortunate, as this way, we lose the ability to use
> random.trust_cpu=1 to get the entropy credited and initialize CRNG
> early.

Agreed. Do you think we should wait for that support before merging the
series? Given that I don't know of any CPUs implementing this extension,
we can probably afford not to rush this in.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
