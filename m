Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4E3D671C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdP3m1Av7gYNojV0SHoatXaHBRyWHv2iHJHUolMOC7A=; b=S8p7+PAL7vfFBB
	OUU/h3WSYKFInns+LSKusCmtdj1NmlXdR0PqF/IrEKOQmIvhx2+paTJyVDmPuSrzOwaQiXe7imWn/
	p2aOc/a5j5zPjnkRmCVxDugdKujwOcxPeUHDONJXimQd10fN8+V0edd8B991zu16cZbNn43nY2Cca
	gVOvg+45TsZDjRKczoem21642vm/LdlRVQ9owuMWjSdMYBEW6GRVG3SSD5ovz2yRjXrTOlA28hFpn
	h0fJqzaeeI8pYac4fQF59OevjCtNd0OKCMWoNqEN8uNu1PQGY6Kkpe4tP5/2m3rmp7ujcYr9UiDSb
	OvzJoDNaAne+UhlAJf6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK35S-0004nm-5o; Mon, 14 Oct 2019 16:20:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK35G-0004nC-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:20:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 011522133F;
 Mon, 14 Oct 2019 16:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571070033;
 bh=oZaj+ScZ6I1k6tX7lCFyDcuNyxoMhfnp8ALm8sIP41Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mf39s8I0HuBnOrqaQwqxpXSJtLitEorvrbW7QyKsEExq5XMosHsONryJU3khI7odT
 Nl53TdSUelOxp03w2YWpW8c1aYJyiXdvhIWR8Boi/Uw/HkVPhrPKNV9bToaQU/m5bc
 QdbAAGbVyfW1QxTKBrVX0O1ICYlJ4dh6bIfpVa/g=
Date: Mon, 14 Oct 2019 17:20:29 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
Message-ID: <20191014162028.eixypo7vlsb3pdgn@willie-the-truck>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <73701e9f-bee1-7ae8-2277-7a3576171cd4@huawei.com>
 <CAK8P3a1C8cFB6DS9eVXTEiTQu1kPzy65JvL=BxqEe5MTkds8sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1C8cFB6DS9eVXTEiTQu1kPzy65JvL=BxqEe5MTkds8sQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_092034_591232_40B4EDEA 
X-CRM114-Status: GOOD (  15.42  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 04:05:57PM +0200, Arnd Bergmann wrote:
> On Sat, Oct 12, 2019 at 9:33 AM Hanjun Guo <guohanjun@huawei.com> wrote:
> >
> > On 2019/10/11 18:27, Will Deacon wrote:
> > [...]
> > >
> > > Does anybody use BIG_ENDIAN? If we're not even building it then maybe we
> > > should get rid of it altogether on arm64. I don't know of any supported
> > > userspace that supports it or any CPUs that are unable to run little-endian
> > > binaries.
> >
> > FWIW, massive telecommunication products (based on ARM64) form Huawei are using
> > BIG_ENDIAN, and will use BIG_ENDIAN in the near future as well.
> 
> Ok, thanks for the information -- that definitely makes it clear that
> it cannot go
> away anytime soon (though it doesn't stop us from change the
> allmodconfig default
> if we decide that's a good idea).

Agreed on both counts.

> Do you know if there are currently any patches against mainline to
> make big-endian
> work in products, or is everything working out of the box?

I suspect "everything" is probably much narrower in scope than for
little-endian configurations simply because of the lack of distribution
support and associated testing. If the companies using it are willing
to contribute back fixes as they run into problems, then that's probably
the best we can hope for.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
