Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057A845BB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDlXTGqxbVsbV1dQAQZqKzaXsoNYlcsnFvBbKRXsgvU=; b=Ff2M//K82jI8j1
	dcYQPuQtJ+aR9Hkfb+jnf5MJWOogTCgpgZfCGl6MXLe1LK2brAeoqVEQGbNJegTiaabI1vvYEMyij
	GAvz7OKBpE6fe83IuoMprTRTmX0XjndxS3oZW56mMkah1yEtYuYOsHGgF2kCVPcj46wPuEbwIaHaU
	f8a0ZjAhgKo9rZvd/Ta5Je6Ivvnp/Bq0zqGbS4eYryCJaR9z+J6G4gxsz0mJ26JjLr/CjC+OUz73B
	DD9S+A7DWRAVqA5i7hhTN4Xts95a3BVj5XFTWRaZjqmWNbPyvXvp6oNJndBBWExwGOqeTD7z5ZuJX
	pQHPfgA90ZZ31ENP8Qlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkjd-0001eB-U5; Fri, 14 Jun 2019 11:51:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkjT-0001dW-Ak
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:51:00 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B5F32168B;
 Fri, 14 Jun 2019 11:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560513058;
 bh=uMLCxfgCikGdC+QC7VrDvh04xE8Slxir3W8oO9YHF+A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCk2pYF4Yk+dVb3EOoGZy1Nzord7PDDyF8WuKXGqkFjwO7KYjTDQGUyKUVhj6Lzri
 C3/zEhik78cxTA7iaBE8s7ThRfSUtdxaZZaz9FnUwjhYC0ivWoL1zDXlWtdFKJsoMG
 u3tGG3e6A7cxIZ+5Gp9hiEBJpTV+KaTaMAofQUuU=
Date: Fri, 14 Jun 2019 06:50:56 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
Message-ID: <20190614115056.GP13533@google.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
 <20190613023947.GD13533@google.com>
 <8ef228f8-97cb-e40e-ea6b-410b80a845cf@huawei.com>
 <20190613200932.GJ13533@google.com>
 <7495dcab-f293-4b2a-4740-2249f61351f7@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7495dcab-f293-4b2a-4740-2249f61351f7@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_045059_392017_353DBD80 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 10:02:52AM +0100, John Garry wrote:
> On 13/06/2019 21:09, Bjorn Helgaas wrote:
> > On Thu, Jun 13, 2019 at 10:39:12AM +0100, John Garry wrote:
> > > On 13/06/2019 03:39, Bjorn Helgaas wrote:
> > > > I'm not sure it's even safe, because CONFIG_INDIRECT_PIO depends on
> > > > ARM64,  but PCI_IOBASE is defined on most arches via asm-generic/io.h,
> > > > so this potentially affects arches other than ARM64.
> > > 
> > > It would do. It would affect any arch which defines PCI_IOBASE and
> > > does not have arch-specific definition of inb et all.
> 
> > What's the reason for testing PCI_IOBASE instead of
> > CONFIG_INDIRECT_PIO?  If there's a reason it's needed, that's fine,
> > but it does make this much more complicated to review.
> 
> For ARM64, we have PCI_IOBASE defined but may not have
> CONFIG_INDIRECT_PIO defined. Currently CONFIG_INDIRECT_PIO is only
> selected by CONFIG_HISILICON_LPC.
> 
> As such, we should make this change also for when
> CONFIG_INDIRECT_PIO is not defined.

OK.  This is all very important for the commit log -- we need to
understand what arches are affected and the reason they need it.

Since the goal of this series is to fix an ARM64-specific issue, and
the typical port I/O model is for each arch to #define its own inb(),
maybe it would make sense to move the "#define inb logic_inb" from
linux/logic_pio.h to arm64/include/asm/io.h?

The "#ifndef inb" arrangement gets pretty complicated when it occurs
more than one place (asm-generic/io.h and logic_pio.h) and we have to
start worrying about the ordering of #includes.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
