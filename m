Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A802F11DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LxiE7nTrheIZ3bwlMvPGeXMjasIbB9N1y0OM4PTQoI=; b=mW5oMhJEM+vmdj
	0FKBZAP9iJmv6V/CvpZcsa54pZyVBfqeP3pZECBMi++45Rul9Rs/oqLR59hL/5gf0vKfw3a0/B9+A
	dphVhT2Ejhqvk6r6nSMNinDfbnxEwT3tanMcSYjDlhon+8WfeJYFpCGBUV0V0RPE6DbsVoT6pRVgD
	mm4Yrb7O+6U1s15xDfQ+xV5YM+IHcRkv3qMl5Hk78IXb6pUNV66l4Suvy3P/u27J9LpFUSucBE3zD
	mrJVhpXumqbjPcZY/MpBLKlsUjqr9nSSm/JIjRSH9vtI72ObV7glsm2Ew3BTPVcyNX0A4fyGQdD3+
	uGUeeQYPtp21YT5A3tcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHNX-0007eq-RX; Wed, 06 Nov 2019 09:13:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHNQ-0007dw-So
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:13:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FA9030E;
 Wed,  6 Nov 2019 01:13:19 -0800 (PST)
Received: from arrakis.emea.arm.com (unknown [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A25B93F71A;
 Wed,  6 Nov 2019 01:13:18 -0800 (PST)
Date: Wed, 6 Nov 2019 09:13:16 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v5 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191106091316.GD21133@arrakis.emea.arm.com>
References: <20191104191524.10596-1-broonie@kernel.org>
 <20191104191524.10596-5-broonie@kernel.org>
 <20191105173005.GE22987@arrakis.emea.arm.com>
 <20191105174445.GD4500@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105174445.GD4500@sirena.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_011320_978764_AF763F7C 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 05:44:45PM +0000, Mark Brown wrote:
> On Tue, Nov 05, 2019 at 05:30:06PM +0000, Catalin Marinas wrote:
> > On Mon, Nov 04, 2019 at 07:15:24PM +0000, Mark Brown wrote:
> 
> > > +	/*
> > > +	 * If know now we are going to need KPTI then use non-global
> > > +	 * mappings from the start, avoiding the cost of rewriting
> > > +	 * everything later.
> > > +	 */
> > > +	arm64_use_ng_mappings = kaslr_requires_kpti();
> > >  }
> 
> > I think we need this even earlier in paging_init() before we start
> > creating the kernel mappings.
> 
> OK, I'll move it.  I didn't see any global mappings getting created with
> the current code but better safe than sorry.

I gave these patches a try under kvm/qemu on TX2 and most of the linear
map turns out global in ptdump.

I'll try your other series.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
