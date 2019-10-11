Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F973D432A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkvVrol0uxp7A78g7b2zhurXafwXIr2k96vqizEdgGw=; b=CufY6pZ007aqWu
	EJxCimK/xjEI8kqFJ+Dm8itk/k+AmH3MTztpf7B0Xqt+5tPvGvGAB2XrtiM746cw4mROsudRppIUO
	SxVO3P3dKB2MPiUkL8Xe0eLSa28nHnig4vIUX4Duyw1dn9ZIo6ZgV2xVtsWV/bbfU+OBZqjV4qpRo
	Bb5pN6kkyOoPNDStMYGXR3ykF07Lo6odiZEtkJQIay/FKMDMOwHpqTRSV0GBxvrvE/VaEmzfJeBbl
	BCBPiw+15VS/3H+MFHVDznUEUAPjTfaQVhtmAGPwqf5TghMKISHTnd8sCopjgIkb0uCmjJLrljO6+
	XxQ5sUzSivnI/0r6aZJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIw84-0007ES-AR; Fri, 11 Oct 2019 14:42:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIw7t-0007Di-NE
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:42:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DC51142F;
 Fri, 11 Oct 2019 07:42:40 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F2DC3F68E;
 Fri, 11 Oct 2019 07:42:39 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:42:33 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: ARM Juno r1 + CONFIG_PROVE_LOCKING=y => boot failure
Message-ID: <20191011144233.GA2438@bogus>
References: <CGME20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b@eucas1p1.samsung.com>
 <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
 <20191011100521.GA5122@bogus>
 <7655fb41-cd13-0bc4-e656-040e0875bab8@arm.com>
 <2bf88cd2-9c4f-11dc-4b70-f717de891cff@samsung.com>
 <20191011131058.GA26061@bogus>
 <0b02b15f-38be-7a63-14cc-eabd288782eb@samsung.com>
 <20191011134354.GA31516@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011134354.GA31516@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_074241_802962_3D233821 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 02:43:54PM +0100, Sudeep Holla wrote:
> On Fri, Oct 11, 2019 at 03:15:32PM +0200, Marek Szyprowski wrote:
> > Hi Sudeep
> >
> > On 11.10.2019 15:10, Sudeep Holla wrote:
> > > On Fri, Oct 11, 2019 at 03:02:42PM +0200, Marek Szyprowski wrote:
> > >> Hi James,
> > >>
> > >> On 11.10.2019 12:38, James Morse wrote:
> > >>> Hi guys,
> > >>>
> > >>> On 11/10/2019 11:05, Sudeep Holla wrote:
> > >>>> On Fri, Oct 11, 2019 at 11:26:04AM +0200, Marek Szyprowski wrote:
> > >>>>> Recently I've got access to ARM Juno R1 board and did some tests with
> > >>>>> current mainline kernel on it. I'm a bit surprised that enabling
> > >>>>> CONFIG_PROVE_LOCKING causes a boot failure on this board. After enabling
> > >>>>> this Kconfig option, I get no single message from the kernel, although I
> > >>>>> have earlycon enabled.
> > >>>> I don't have Juno R1 but I tried defconfig + CONFIG_PROVE_LOCKING and
> > >>>> it boots fine.
> > >>> I just tried this on my r1, v5.4-rc1 with this configuration worked just fine.
> > >>>
> > >>> My cmdline is:
> > >>> | root=/dev/sda6 loglevel=9 earlycon=pl011,0x7ff80000 hugepagesz=2M hugepages=512
> > >>> | crashkernel=1G console=ttyAMA0 resume=/dev/sda2 no_console_suspend efi=debug
> > >>>
> > >> That is a bit strange. Here is a boot log from v5.4-rc1 with pure
> > >> defconfig: https://paste.debian.net/1105851/
> > >>
> > > I see from the boot log that both Image.gz and dtb being loaded at the
> > > same address 0x82000000, will u-boot uncompress it elsewhere after loading
> > > it ? Just for my understanding.
> >
> > tftp downloads Image.gz to 0x82000000, then decompress it to
> > $kernel_addr to save transfer time
> >
> > my bootcmd is:
> >
> > tftp ${fdt_addr} juno/Image.gz; unzip ${fdt_addr} ${kernel_addr}; tftp
> > ${fdt_addr} juno/juno-r1.dtb; booti ${kernel_addr} - ${fdt_addr};
> >

If your ${kernel_addr}=0x80000000 or within first 32MB, then it will override
DTB with the image size I had(35MB). Even if kernel fits 32MB, there is a
chance that .bss lies beyond 32MB and it will be cleared during boot resulting
in DTB corruption(Andre P reminded me this)

Can you try setting $${fdt_addr} to 0x84000000 to begin with ?

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
