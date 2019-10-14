Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B0D6740
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJqXptmjfos+Je0VBO+/EEwYDFHJSLXyGJ3BbOXMJs0=; b=bh6iIcgaxcLY0H
	53hjUP9+QZp/JwtuV9NmmE+wILECoVCJ+s25NatLMMcg8Kax7/Au3PH1Ju/x79W6prNeW6CXB25NF
	imc4F38X17yr2DuYUaViwsj7xa+gThALPrP/e5WJYaHAoH/Z+QJVjtarZVWJkpdcLQun6PRWVMdbX
	d3zcmzk3+3It0zTeoV4XXUzZ0Ce4bpJYrPWWeM2Yr6M6N6A0QjVC9lhcv3TS7W1fOFIG6eAMly4kc
	dBes3BNAVVbLGJm4bmq15gjfga/QegnU+grKL7qy/DQbWdyHrhW3F61jrd/Pagj+QdmxLd/kiGlw6
	TEMBZy+BaoT6KY+a2kdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK39E-0005tB-0I; Mon, 14 Oct 2019 16:24:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK38w-0005s0-8q
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:24:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FB882133F;
 Mon, 14 Oct 2019 16:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571070261;
 bh=c8QyGqChONq6g32PggqpJBFivCcUNWeRCnyGPEMWtEM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rw0ERafuM08i/sIP4JH+O3mMpkfOwb9ZRg2ZrAg7qwIU6zAFYUfRS5GSso0ExPLKF
 slQVqtdfdCAKGvRJ6NYEGYyT6L6gRKFBmk25iyP+3rqW8lOYqke85GkZm0D7NNJncs
 hvOjkGcOqb3KsMOgwtuPFCmcZjjDr9/oklvOcEXg=
Date: Mon, 14 Oct 2019 17:24:17 +0100
From: Will Deacon <will@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
Message-ID: <20191014162416.uz33olqhgvzioqdk@willie-the-truck>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <20191011103342.GL25745@shell.armlinux.org.uk>
 <CAK8P3a1ADTc0woWWNjpeqYEtgb=snj264P4QNWOj7ZRMDv8WNg@mail.gmail.com>
 <20191012145055.GO25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012145055.GO25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_092422_335738_E13F8ED1 
X-CRM114-Status: GOOD (  16.30  )
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunrong Guo <chunrong.guo@nxp.com>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 03:50:55PM +0100, Russell King - ARM Linux admin wrote:
> On Sat, Oct 12, 2019 at 12:47:45AM +0200, Arnd Bergmann wrote:
> > On Fri, Oct 11, 2019 at 12:33 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > 32-bit ARM experience is that telco class users really like big
> > > endian.
> > 
> > Right, basically anyone with a large code base migrated over from a
> > big-endian MIPS or PowerPC legacy that found it cheaper to change
> > the rest of the world than to fix their own code.
> 
> I think you need to step off your soap box!  Big endian isn't going
> away, and it likely has nothing to do with code bases.  Just look at
> networking and telco protocols.  Everything in that world tends to
> be big endian.  BE is what is understood in that world, and there's
> little we can do to change it.
> 
> Demanding that they switch to LE is tantamount to you demanding that
> their entire world change - it ain't going to happen.

Oh, I wasn't demanding anything! Just interested to know if big-endian is
actually being used because it's not something that I'm able to test
sensibly and I haven't see anywhere near the amount of (public) effort to
keep it supported as for little-endian. However, having asked the question,
it's clear that it does have some users so we'll keep maintaining it on a
best-effort basis and rely on those users to let us know if anything breaks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
