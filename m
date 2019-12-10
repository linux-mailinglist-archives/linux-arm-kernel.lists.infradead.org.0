Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F4A118B70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJYs/4KT/junH2M64eDoscxiZfW3T7xE8MX/sMphZtU=; b=uUkltvZLI1g6Ki
	qYZSBNPikrlRgCqtDMp87p+o4fWoLQiHA1xqG75a/bCt+Ut31pcPvB0J8JKka2X0Eumte9qEe1WjY
	npkmQP10kBjlSd04eLbJIce3GuqawJRcQ/YhglOBydRyk7cN76Ox3EABfCQoe5yOmoiH8XwuXK+O2
	QUpHBbXQEJ7J8zy+FEDMvYoFOxFkrNaGAFPS4+rqWr/kPnoX4Yvg+1qUuUB5Z0wJgtQk0DLCOyBhj
	x3ay6zLmsjq/DnNTpUgJZHPlNwX3L//nxt/WvXZs/UBHg578/tRaTVlqsUuM00xwMEQBlS0ZJsCjh
	Vlp8JI6/mK5cDNu5y7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegnl-0002PK-Sf; Tue, 10 Dec 2019 14:47:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegnc-0002Om-Au
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:47:41 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3581120637;
 Tue, 10 Dec 2019 14:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575989259;
 bh=t9mW6I2dr+Dg2/7uKgcBKKAq/tKRT4xQ0h18PE3NDVU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kb15QnBe5+/0sGZPyfGV8xt6u5BKJLLdRfMUCmYQcSGRu4ORb3O4vWwvAc/HQNWMy
 c13OUy+ybJRy5GsVg1p/JFFwTSvpcNhidAzGa0Nbd8uHjkaH89Td880BBGrk8Vj1j3
 E5rdW5bkfTd3idM8bNpf5rTqvLYbpcqxcWg68C3s=
Date: Tue, 10 Dec 2019 15:47:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Message-ID: <20191210144737.GB3975980@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <25032400.G9DUGnJgnc@skinner.arch.suse.de>
 <20191209173804.GD7489@willie-the-truck>
 <11195456.EmMzWPVPDU@skinner.arch.suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11195456.EmMzWPVPDU@skinner.arch.suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_064740_397120_1E91C6BC 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 02:33:07PM +0100, Thomas Renninger wrote:
> On Monday, December 9, 2019 6:38:05 PM CET Will Deacon wrote:
> > On Mon, Dec 09, 2019 at 12:28:44PM +0100, Thomas Renninger wrote:
> > > On Monday, December 9, 2019 11:31:11 AM CET Will Deacon wrote:
> > > > On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> > > > > From: Felix Schnizlein <fschnizlein@suse.de>
> > > > > 
> > > > > Export all information from /proc/cpuinfo to sysfs:
> > > > > implementer, architecture, variant, part, revision,
> > > > > bogomips and flags are exported.
> > > > > 
> > > > > Example:
> > > > > /sys/devices/system/cpu/cpu1/info/:[0]# head *
> > > 
> > > ...
> > > 
> > > > > ==> flags <==
> > > > > fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> > > 
> > > ...
> > > 
> > > > I don't understand why we need this on arm64
> 
> Again: proc is moving to sys.

No.  New stuff is to be added to /sys/, don't add new things to /proc
unless it deals with processes.

There is no mass-migration of existing /proc files to sysfs for no good
reason.

> You probably export feature flags in /proc/cpuinfo for a good reason.
> So where in sysfs should this show up?

Why does it have to live in sysfs if it is already in /proc and parsed
properly by tools?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
