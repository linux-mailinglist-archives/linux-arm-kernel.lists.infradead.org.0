Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFD056D22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7mRkC78dDtkvU4M1jTBQ93H5Bpp4L5IqXUBKei9GmE=; b=bsfcjm+RnI34yC
	fHs+cez6KFLocbt6+6p5a/Gqb92mFe4oSY53O7YfZ3i0GzOCR/xfXdGlAl416Ddrxf6zQGZbrEynQ
	lPBLJeFxHKN3z7AMihYCHFieeQNvWQh9vVDsjKX0X91V+uARO4mCBD+SX/0LdwtOne8jhzhfIqGcx
	zELQbHjkdyRpUsBDayo1bFz/6vxAnnzd2+ZHb3/GAEcdV4CU1uekbOIahrBAQBM7moi4FQ5m99j0h
	rCCTF8YYWsG9pdyUMkaMBs/uC9LgwMc15Ftu38+z4TkXi3mqD9qM/eHuvp1JIFc4rP0uAvj+5ddgi
	sUUjiu4GwpDi+rHeSx3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9TD-00019q-Tm; Wed, 26 Jun 2019 15:04:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Sy-00019U-BJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 15:04:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06DF120645;
 Wed, 26 Jun 2019 15:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561561447;
 bh=LWIrJoi9FpDvIqnXKvGGPKczwxn7uLV0yj/Ttwn3mOk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=InO5IrPf6XdGB8HYH9z8CS7SSDWLK1S3gFuvX9Vr49/DM6orHwwvPur+SoLN9TI1D
 FDUGCG2ofvxvVsNWkvAuJPkMi/V0niYPEXluT50eXA67O54pka4qkuq/61j3sx1aAy
 HNJxmZ6IGJC7zeKKIU5rqZu9cE1CJdFNGZP//nyw=
Date: Wed, 26 Jun 2019 16:04:04 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: Add support for E0PD
Message-ID: <20190626150403.dekq5l5rpmgzknfr@willie-the-truck>
References: <20190626144535.27680-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626144535.27680-1-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_080408_407494_27B0AF23 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Wed, Jun 26, 2019 at 03:45:35PM +0100, Mark Brown wrote:
> Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
> based security issues by ensuring that the kernel is not mapped when
> userspace is running but this approach is expensive and is incompatible
> with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
> alternative to this which ensures that accesses from userspace to the
> kernel's half of the memory map to always fault with constant time,
> preventing timing attacks without requiring constant unmapping and
> remapping or preventing legitimate accesses.
> 
> To simplify integration with KPTI we initially enable the feature system
> wide, doing so unconditionally since it has no meaningful overhead.

I think you're missing one small thing here: all v8.5 CPUs will have
hardware mitigations for meltdown as advertised in the ID registers.
However, we still force KPTI on for those CPUs if KASLR is enabled to avoid
it being trivially bypassed by looking at fault timings. As you point out,
there are two issues with that: (1) the performance impact of KPTI and (2)
the incompatibility with statistical profiling. It is these issues which
E0PD attempts to address, so whilst I'm ok with enabling it unconditionally
as you propose, we should go one step further and avoid enabling KPTI on
CPUs with E0PD even if KASLR is enabled.

We probably also need to consider the unfortunate situations where E0PD
is not supported by all of the CPUs in the system.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
