Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7CBD40AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIEZ/kNWoAYZftVgXUsWI+25C66+I0lc8CH0vAjUbgE=; b=u8n4zWlXXu1qWD
	j4PySi0g6IMupdZowId+y0F1aoLbC04yR3h8Nc3+JWU7elhC0+hlFq/rBntqumUxgcE7TRsgU6lUi
	4cm/Xx03m7JZzkKNSvGFrQ7Y+gyOeV02USqMts7oaCoZsvoqjoWUCUoWIhPPtdEbNTFiBqQERD86y
	ubip7ERW/DcLzCHLuoY8TSO5NJB9WtbI7AqgCXBq/q1s7AYMQFT6YOvWyDLwhI4HUuQJbKkIjSzOG
	XOuzCjQdia9CDlbSEEUTOtiD6DdyxuOzmGy1k6xX4lWvRYT9wF50ygjhiUqB/lXx7TzBfT/q3vGz5
	yVq/TStUb9tHfbGflX5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuhO-0003QX-Es; Fri, 11 Oct 2019 13:11:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuhG-0003Pr-H3
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:11:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DF4E28;
 Fri, 11 Oct 2019 06:11:05 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F2A93F6C4;
 Fri, 11 Oct 2019 06:11:04 -0700 (PDT)
Date: Fri, 11 Oct 2019 14:10:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: ARM Juno r1 + CONFIG_PROVE_LOCKING=y => boot failure
Message-ID: <20191011131058.GA26061@bogus>
References: <CGME20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b@eucas1p1.samsung.com>
 <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
 <20191011100521.GA5122@bogus>
 <7655fb41-cd13-0bc4-e656-040e0875bab8@arm.com>
 <2bf88cd2-9c4f-11dc-4b70-f717de891cff@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bf88cd2-9c4f-11dc-4b70-f717de891cff@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061106_606003_1AB1E9CA 
X-CRM114-Status: GOOD (  15.16  )
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

On Fri, Oct 11, 2019 at 03:02:42PM +0200, Marek Szyprowski wrote:
> Hi James,
>
> On 11.10.2019 12:38, James Morse wrote:
> > Hi guys,
> >
> > On 11/10/2019 11:05, Sudeep Holla wrote:
> >> On Fri, Oct 11, 2019 at 11:26:04AM +0200, Marek Szyprowski wrote:
> >>> Recently I've got access to ARM Juno R1 board and did some tests with
> >>> current mainline kernel on it. I'm a bit surprised that enabling
> >>> CONFIG_PROVE_LOCKING causes a boot failure on this board. After enabling
> >>> this Kconfig option, I get no single message from the kernel, although I
> >>> have earlycon enabled.
> >> I don't have Juno R1 but I tried defconfig + CONFIG_PROVE_LOCKING and
> >> it boots fine.
> > I just tried this on my r1, v5.4-rc1 with this configuration worked just fine.
> >
> > My cmdline is:
> > | root=/dev/sda6 loglevel=9 earlycon=pl011,0x7ff80000 hugepagesz=2M hugepages=512
> > | crashkernel=1G console=ttyAMA0 resume=/dev/sda2 no_console_suspend efi=debug
> >
> That is a bit strange. Here is a boot log from v5.4-rc1 with pure
> defconfig: https://paste.debian.net/1105851/
>

I see from the boot log that both Image.gz and dtb being loaded at the
same address 0x82000000, will u-boot uncompress it elsewhere after loading
it ? Just for my understanding.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
