Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D465ED3D55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9vgmV5SFgg7jS19JvU31ZB3qC6J0PixtxTMm7vVO6Y=; b=fTUtIPHMYZKoYv
	ZmitucoWYOu6d+iPCXRPElI3VhOcpvDu2A6DJLBGXZThsIzfR+Z6ok0EzlAVAGMO0IpRQFkCXVceQ
	puDnixANdDflY6/SaVTljuRdv1PdwhnVpu2DUFBls2blbZXT+EZEmuzSUvBPtIkZQG5xW8WE9xeoy
	IbgGlN1LbSzrPtTBJl5jioFkNSNWqvU3olUAf335wc4oQwCGyzcMQ+kSEnh3WB9iCXUKQsndDc2eB
	KPM6uDz3D3m9+StSZt8JtTqKlfWU7AoXxbwXMmv+Ne4p1FK0GZqKMo+NpiK56d180eABPLp5MaKew
	Z7qckFpsz1jI0/6qtwvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIs9S-0007EH-Oo; Fri, 11 Oct 2019 10:28:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIs9J-0007Dl-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:27:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 417E6206A1;
 Fri, 11 Oct 2019 10:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570789672;
 bh=NQlnfIHW0EyL5zquV/IDum9zTq17av5hd0+OwZ2iZ3g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T3ay+jtbVCRXmgIEMybB6E5txuRy3CnRaUOe0Vo51V06zC2zzDwIz9EGM4i+qVdZR
 mSKxOv597APEHVo9GByDJaYZZwLvXPZ5kBVvqHDZock28bMWjQGMtph23aBanY0xkz
 VT5Ov8XezzwDotIsBuP6VqpkkBeEoI4p0IvmPfSY=
Date: Fri, 11 Oct 2019 11:27:48 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
Message-ID: <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_032753_435329_B584C0AA 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 12:25:29PM +0200, Arnd Bergmann wrote:
> On Thu, Oct 3, 2019 at 1:15 PM John Garry <john.garry@huawei.com> wrote:
> > On 03/10/2019 08:40, Anders Roxell wrote:
> > > On Tue, 1 Oct 2019 at 16:04, John Garry <john.garry@huawei.com> wrote:
> > >> On 26/09/2019 20:30, Anders Roxell wrote:
> > >>> it doesn't get enabled when building allmodconfig kernels. When doing a
> > >>> 'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be dropped.
> > >>
> > >> So without having to pass KCONFIG_ALLCONFIG or do anything else, what
> > >> about a config for CONFIG_CPU_LITTLE_ENDIAN instead? I'm not sure if
> > >> that was omitted for a specific reason.
> > >
> > > Oh, I tried to elaborate on the idea in the cover letter, that using
> > > the defconfig
> > > as base and then configure the rest as modules is to get a bootable kernel
> > > that have as many features turned on as possible. That will make it possible
> > > to run as wide a range of testsuites as possible on a single kernel.
> > >
> > > Does that make it clearer ?
> >
> > Hi Anders,
> >
> > Yeah, I got the idea.
> >
> > So when you say "'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be
> > dropped", I don't know what the rules are in terms of resyncing the
> > common defconfig (I was under the impression that it's done per release
> > cycle by the arm soc maintainers, but can't find evidence as such), but
> > your change may be easily lost in this way.
> 
> We don't do it every release, but occasionally someone sends a patch
> with a refresh, and this might easily get missed.
> 
> We could force the allmodconfig kernel to be little-endian by default,
> using a choice statement to pick endianess like arch/mips and arch/sh
> do, the effect would be that an allmodconfig kernel gains a few more
> options that depend on !BIG_ENDIAN, but we would no longer catch
> a class of endianess bugs in drivers that we otherwise get warnings
> for. No idea what is better here.

Does anybody use BIG_ENDIAN? If we're not even building it then maybe we
should get rid of it altogether on arm64. I don't know of any supported
userspace that supports it or any CPUs that are unable to run little-endian
binaries.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
