Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B7EAD45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCNJ1mIMA2a3blZsekatzYQCHXiR63sSHEn/gPUlw7s=; b=kgsfUEv0gC//FG
	j9AwOUlx7ecWCmK1uHrFkvH9+WbU78j1G6usrw4AEyxZbuoyspOLSNwPjtTLLSildZ19yQcMxZG6n
	5UijP2fmHopwrXqyMKvcvnb1/4b6eogGuqhWxIXTQesNIRLUuhHyS4/z1n1+07yJDQEAc4dcSGkry
	auozsH6bxklUxrc4kkekVfxXCjRRK7YukcVlKa+D25UKV0dNUzONsMWJUJ68+94DXU3bviK4iol/B
	aSFV8ulN3zCfdV0BEMI8iZJotyPuQDZ/HzH0pT5zD/0+bItwahXJ0bam7WfMJaSnsG6qwQBBn0tpm
	XGeu41qoPB/28/BEZcMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7XC-0007Qj-T2; Thu, 31 Oct 2019 10:18:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7X5-0007QG-MZ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 10:18:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47A301F1;
 Thu, 31 Oct 2019 03:18:22 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B060F3F719; Thu, 31 Oct 2019 03:18:21 -0700 (PDT)
Date: Thu, 31 Oct 2019 10:18:19 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191031101819.GA39590@arrakis.emea.arm.com>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
 <20191030121307.GB10294@arrakis.emea.arm.com>
 <20191030124153.GB7218@sirena.co.uk>
 <20191030141732.GA13309@arrakis.emea.arm.com>
 <20191031081807.GO4568@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031081807.GO4568@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_031823_779441_B3E4E47E 
X-CRM114-Status: GOOD (  13.42  )
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

On Thu, Oct 31, 2019 at 09:18:07AM +0100, Mark Brown wrote:
> On Wed, Oct 30, 2019 at 02:17:32PM +0000, Catalin Marinas wrote:
> > On Wed, Oct 30, 2019 at 12:41:53PM +0000, Mark Brown wrote:
> > > BTW it'd be rather helpful to get patch 1 applied due to the constant
> > > conflicts in cpufeature.h, it's safe by itself.
> 
> > Since we moved to using topic for-next/* branches, usually based on
> > -rc3, I'd rather see patch series on top of the vanilla kernel. We can
> > handle the trivial conflicts.
> 
> > Of course, if there is functional dependency, we can discuss which
> > branch to base it on but I'd avoid for-next/core as a base as that's
> > rather volatile.
> 
> For my working branch I usually track -next since I've been
> burned repeatedly in the past by interactions with other work
> that's going on, both code conflicts and unfortunate runtime
> interactions.

I guess it's up to you, I personally find tracking -next during
development a lot more distracting.

Anyway, if you send patches to Will or me for upstream, please rebase
(and test) on top of the vanilla kernel, otherwise we may not be able to
apply them. You can (should) do a merge with -next and flag any
conflicts or run-time issues.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
