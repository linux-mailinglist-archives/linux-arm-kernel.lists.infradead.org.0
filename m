Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592881F755C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTPurL+eY2bURHJmu+2VlVGKiz5+MxH9+LR0vB62Dak=; b=lhL6lx+7Go9VVn
	z4AlLoMOXsJA5o2y8Jep+xyCIPH2d82P2qffD+7J5yXzLcI6r3DCt/V50d62oBAaDH4LFqJ+hmohK
	t9udrLStULb+zxH5iwpi3jNRs/7fWQnjPtC0i9P97zMWe8262JFgxA5yCsdsL4XbsYlB05HmcuSQj
	wYLDnKrFjdEUowPgC9NgKVEKqi3YJeX/9+W/NwB4hO3CMv6S7cafOI7xDgBmpVN+ImLx9cl2OFrjc
	BEPgrj5vWnw23toX5/SHrJuRzUfRVbpGXwMx0N+f0qQUxkaU+gPIoCxFtWf37Ns9BszH+morU4O6b
	m+HEMMai9dhw68CrRWzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjf9o-00008x-8a; Fri, 12 Jun 2020 08:35:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjf9h-00008G-L4
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s5CyZqxyUSKzVuGcQHMpOJ2NKF07NBK2ViI2M1PMZpg=; b=tuldhl7N3+wkH8oA5Yws2t715
 iqbXiWZCXnWZ2V/rKvpArM66ua8yWZnlI7QYPvLO3xJo3VzKQnhGTgCUqUsqh8doT6VJLPpTivpLr
 6S0Od7SNzzRaWbci9q9MoiNr3dQBzqNGsYMqvDfNF2nrnB0/kPhk8iseT0ehfEMFsjM6WI71DXvpw
 jE4I54pbZDjmRfLsV2DsySZa6D7eldA4n/KrzvqQABpnVKG/uSpLsWY/r5Jo/YfOiHp/OSLjmZC0l
 zi0jOGTxOaJPu1axb21FxHHjmFBPgS7jWajP1vTeTX8JCYO6B/2ULudEno+/nQrVIwOXqZbOjiCFx
 RosF7tXnw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44540)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjf9b-0002OC-MK; Fri, 12 Jun 2020 09:35:11 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjf9a-00066D-TL; Fri, 12 Jun 2020 09:35:10 +0100
Date: Fri, 12 Jun 2020 09:35:10 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
Message-ID: <20200612083510.GB1551@shell.armlinux.org.uk>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
 <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_013517_689496_4502F7A8 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 10:22:17AM +0200, Arnd Bergmann wrote:
> On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
> >
> > Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
> > order to be able to use other size of page than 4K, use PAGE_SIZE
> > instead of the hardcoded value.
> >
> > The use of PAGE_SIZE will be also aligned with what we find in other
> > architectures such as arm64.
> >
> > This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
> > 4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
> > sizes") from
> > https://github.com/MarvellEmbeddedProcessors/linux-marvell.git
> >
> > Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> 
> IIRC using page sizes above 16KB here also requires using a
> non-ancient linker in user space that places sections on
> ELF_EXEC_PAGESIZE boundaries, right?

Doesn't that mean that this change breaks all existing userspace when
ELF_EXEC_PAGESIZE is not 4k?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
