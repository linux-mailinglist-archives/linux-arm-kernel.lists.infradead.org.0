Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4796117A232
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 10:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1m4uTAnjs13VxNZ6ymlRCVVCMDNwLEpMFsYedYhWEc=; b=dF0AqHkNYDXBFz
	h8blYiXJMpL0MLE0NJQlWjsl59N0TO+MK7hxMalTI1pNcRE9Lh/tDcxanSqAC4U+VhAdda11bABC5
	vQyWlnTPlMlgAOMBAMGOfs6vpxCsK+un2mn/g2Rt5LpK8XeSYIBztRcXO4TGCUFvRs2Ms/Cy3nIlw
	jAQiShdNUD0eYdseEGe21JTiaYw47PG3VXxzwDrzp2tPi2bhmhMNMvdrjPa+8mKZUSMqV/doXmddq
	+9Uyy1RrFV1rE1gv0/7Ni/aFK6SX0YldF7uqgJn3bM49M6SqGD6ILFLY3Q5KqdLA0BKJ/NO5RNOlB
	BfeFwK+oaOK45/YF2OrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mje-0005Ph-V9; Thu, 05 Mar 2020 09:24:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mjX-0005PG-Jy
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 09:24:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A12E020870;
 Thu,  5 Mar 2020 09:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583400238;
 bh=eoEr7SnICgY9vQtczQ0hjQjveEOnUGgwk64GNX82cNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S+IBg4+4MI828Dqk2CXdDmaAcm2RlNfZyYf8i+rYBAaYAyX9Wbh4/C6+YcVn8EET7
 EgqZHAj6T+5Mf4THOlCPC/nxysPBpIRer2r8dva3PawVC22/Ax36IO0AiuGPCg+Lln
 44DCRBGxjxA7QMdPS2PVUYZv/wMzxPqA0V548NMo=
Date: Thu, 5 Mar 2020 09:23:54 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: reduce trampoline data alignment
Message-ID: <20200305092353.GC19208@willie-the-truck>
References: <20200304093621.191138-1-remi@remlab.net>
 <20200304142951.GC3575@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304142951.GC3575@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_012359_686638_C1DF1861 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org,
 =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 02:29:51PM +0000, Mark Rutland wrote:
> [adding arm64 folk]
> =

> On Wed, Mar 04, 2020 at 11:36:21AM +0200, R=E9mi Denis-Courmont wrote:
> > From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
> > =

> > The trampoline data, currently consisting of two relocated pointers,
> > must be within a single page. However, there are no needs for it to
> > start a page.
> > =

> > This reduces the alignment to 16 bytes, which ensures that the 16 bytes
> > of data are in the same page.

I don't follow this bit: it's one 8 byte pointer.

> > This patch assumes that the page alignment was just a quick and dirty
> > trick to not worry about fixmap. If however the page alignment was
> > meant to present a data page with no other data than the trampoline's,
> > then both the current code and this patch are wrong.
> =

> I think that aligning it to a page was a simplification overall, not
> just for the fixmap. However, I do agree that as the page isn't mapped
> during EL0 execution, it's fine for other bits of .rodata to share the
> page.
> =

> I also think that it's a bit scary that we rely on nothing being placed
> in .rodata between __entry_tramp_data_start and
> __sdei_asm_trampoline_next_handler, since macros could easily place
> something between the two. Luckily NOKPROBE() adds stuff to .init.data,
> but I had to check.
> =

> I think it would be better to add a new .entry.tramp.data section to
> ensure that, which we can align appropriately in the linker script.

Remi's patch looks fine though, no? (modulo the confusing commit message)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
