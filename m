Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44844D3CF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFedLyl6SkSIVU6tnR3GM1q4arF2RLGRQwPZZ7j0qx0=; b=GS/ubSMy3TZfYw
	ObD2MaDP2tBXd1Onvpd+VfHRSHg6E3x0bXJmYlZ99kmmmtCxnMYcUNNuVCAUqOLkF9nYmJJwd1r67
	CTYMOIHXhOeAL7NNZFhdevsG7XEm8Zki+6F5Q5jiDsEJVYRN4Auu0cyYFclJ/vQrdO7jfMwoyATAz
	vCTV8G3d38FQvqImedXvG9KLuIXiFwGkciDtrXtYiK3Tu96EuMG1yh6PP2CWIAjxzAYrbvesEHKJE
	mMbqtFng3iKHPgKqH/sP6NtpfqDFX5BHH9cGrqq8IjCdSoqoFlv2vCrlL+vQNKETm4jw5AfQoPNQl
	ixT6U+C4kVhW3p8EaWow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIro1-0007E4-CR; Fri, 11 Oct 2019 10:05:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrnt-0007DE-Kz
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:05:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4EAF337;
 Fri, 11 Oct 2019 03:05:41 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B43803F703;
 Fri, 11 Oct 2019 03:05:40 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:05:31 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: ARM Juno r1 + CONFIG_PROVE_LOCKING=y => boot failure
Message-ID: <20191011100521.GA5122@bogus>
References: <CGME20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b@eucas1p1.samsung.com>
 <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_030545_731918_6B61D024 
X-CRM114-Status: GOOD (  15.04  )
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
 LKML <linux-kernel@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Fri, Oct 11, 2019 at 11:26:04AM +0200, Marek Szyprowski wrote:
> Hi
>
> Recently I've got access to ARM Juno R1 board and did some tests with
> current mainline kernel on it. I'm a bit surprised that enabling
> CONFIG_PROVE_LOCKING causes a boot failure on this board. After enabling
> this Kconfig option, I get no single message from the kernel, although I
> have earlycon enabled.
>

I don't have Juno R1 but I tried defconfig + CONFIG_PROVE_LOCKING and
it boots fine.

So if you disable CONFIG_PROVE_LOCKING(i.e. defconfig) boots fine ?
Are you using DTB from the mainline ?

> I've did my test with default defconfig and current linux-next,
> v5.4-rc1, v5.3 and v4.19. In all cases the result is the same. I'm
> booting kernel using a precompiled uboot from Linaro release and TFTP
> download.
>

OK, I use UEFI+GRUB but I don't think that should cause any issue.

> Is this a known issue? Other ARM64 boards I have access to (Samsung TM2e
> and RaspberryPi3) boots fine with the same kernel image.
>

Not that I am aware of. If you could send me the bootlog with defconfig
I can take a look and see if I get any clue.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
