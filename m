Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0401F5074
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gsb1lABb6DEYBeCCQM2/R3hjwtK2dMAXUaM9qoncgZI=; b=cKtuyT+m0VucPM
	vKk0ZxMmDB5n7R0EB1fMDAkmTrJWDXpFwluWO1DoMyEX3Vf5oiyC+iw3QFXUZ07LZ0AcM/yTtImoT
	1uqtEiXdR0MGfLpWQDNlA01aGovg2AD9NAiseTUkP/IQ7qN26zGKruJ7EtxJj+4ot8xkx+Vfrfxfo
	hLZbKKqdbbHey98dagEuWf2La1XwenphPXtHAh3gTYyNg2dg4cVP+GY574Fj1zV9NaXeMDrPwyFK6
	Usznz8EuSwXbNyG4HezglVhR754DE2C0euhohIc+aPDk26Hv4SpmWg5YWBwmuAq5tzfmepDT+XeNH
	dqi8OtO11oL4CyvosERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwJT-0002Cf-IG; Wed, 10 Jun 2020 08:42:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwJK-0002Bp-H3
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:42:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9411E20734;
 Wed, 10 Jun 2020 08:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591778532;
 bh=7SMpwWFJtzuSVmrvo9RAnKTTB0pE14Hsv1bWQ+hQyJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RhcC2JmrTpkbJUCTpnvnQGqRbvOb2OcZy9AQyr6Qa9wded36lLQ4KFNXKPXVUote6
 fQ8lTVWhnt0nY4aOvfFkWErPWdGIBEGa0mGaCWnzeEuK8hp8knyNXht8nn6Tzm9kwe
 2nHq7zSOAK75VEhjH2byi1HaUpzwEiI67bhMHro8=
Date: Wed, 10 Jun 2020 09:42:08 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 1/2] efi/libstub/arm64: link stub lib.a conditionally
Message-ID: <20200610084206.GA17035@willie-the-truck>
References: <20200604022031.164207-1-masahiroy@kernel.org>
 <20200610075837.GD15939@willie-the-truck>
 <CAMj1kXES7MoxWDQeO=D-88fit4H_Qh9SEQmikcJA39d8czPCBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXES7MoxWDQeO=D-88fit4H_Qh9SEQmikcJA39d8czPCBQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_014214_589512_4A8CCD93 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Masahiro Yamada <masahiroy@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 10:00:19AM +0200, Ard Biesheuvel wrote:
> On Wed, 10 Jun 2020 at 09:58, Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, Jun 04, 2020 at 11:20:30AM +0900, Masahiro Yamada wrote:
> > > Since commit 799c43415442 ("kbuild: thin archives make default for
> > > all archs"), core-y is passed to the linker with --whole-archive.
> > > Hence, the whole of stub library is linked to vmlinux.
> > >
> > > Use libs-y so that lib.a is passed after --no-whole-archive for
> > > conditional linking.
> > >
> > > The unused drivers/firmware/efi/libstub/relocate.o will be dropped
> > > for ARCH=arm64.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > > This patch touches under arch/arm64/, but
> > > this is more related to efi.
> > > I am sending this to Ard.
> >
> > Ok, I'll ignore this then. Ard -- please yell if you want me to do anything
> > else with it.
> >
> 
> I am going to send a batch of EFI fixes early next week, so I can take
> this as well, or alternatively, you can apply it directly.

No, please take it. Just wanted to make sure it didn't slip through the
cracks, that's all.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
