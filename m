Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CD41BBABA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaSp3mvKMdnse2L23n0lnaB+HlLj2M+kVEmGlDCGE2E=; b=iQrILrKXesZuhu
	ccPp9jA8QuYKq0Jr0gRYQM7dXOwnpQlnV6+xLqcV6f2qPWhYshMJSPuOPjM9lgGNPISfz1rR9JOa4
	cPXzH1FGWYz2KyGuzR9xaXwhdFwJkCef79Ct0r1lVbLzbTfyhCab20gyxYrzeliq4VwAHWOMzMo2A
	rU60n2QV7T4HtvcekmG/heluM/w+kv7DyK+v39J4lE5OuEchDEXVZIJv+WKhp90FNSSz7/Yx74bwK
	Hjo6+7X2vy3NGFD/B+HawOgPhtftNuEA8HlCtcdcSVjQPn4691KaejHjaTeZWqRzEHZSmKjwiK3AW
	p4DxyAhMFsw0lBJ1gIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN9B-0002x9-DC; Tue, 28 Apr 2020 10:07:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN93-0002vP-Pd; Tue, 28 Apr 2020 10:07:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D080830E;
 Tue, 28 Apr 2020 03:07:14 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 870FF3F305;
 Tue, 28 Apr 2020 03:07:13 -0700 (PDT)
Date: Tue, 28 Apr 2020 11:07:11 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
Message-ID: <20200428100710.GD3868@gaia>
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
 <20200408104655.GA92698@C02TD0UTHF1T.local>
 <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030717_874017_B87C0F94 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, arm@kernel.org,
 James Morse <james.morse@arm.com>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 01:55:58PM +0530, Bhupesh Sharma wrote:
> On Wed, Apr 8, 2020 at 4:17 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> > >  arch/arm64/configs/defconfig | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > index 24e534d85045..fa122f4341a2 100644
> > > --- a/arch/arm64/configs/defconfig
> > > +++ b/arch/arm64/configs/defconfig
> > > @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
> > >  CONFIG_NUMA=y
> > >  CONFIG_SECCOMP=y
> > >  CONFIG_KEXEC=y
> > > +CONFIG_KEXEC_FILE=y
> > >  CONFIG_CRASH_DUMP=y
> > >  CONFIG_XEN=y
> > >  CONFIG_COMPAT=y
> > > --
> > > 2.7.4
> 
> Thanks a lot  Mark.
> 
> Hi Catalin, Will,
> 
> Can you please help pick this patch in the arm tree. We have an
> increasing number of user-cases from distro users
> who want to use kexec_file_load() as the default interface for
> kexec/kdump on arm64.

We could pick it up if it doesn't conflict with the arm-soc tree. They
tend to pick most of the defconfig changes these days (and could as well
pick this one).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
