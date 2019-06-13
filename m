Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873D344D0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oc0xFBhAqQlOkVafiKuiw9fxFnI+V00tfHIAT8KTG9k=; b=M9+EQ2DxIeTYXV
	96XRpK1q3zRfnvqboL9RjN3AcJlrhfw+cb8ONyNVHOm15+2HdUSyY2NMFHwKh7gCZVaZYBXMn0eA7
	OpTOITgS8s6EjdfKZtkxTwJ0UwduDbfZNlsJ7MoUxcZBKc0BVAicmMp/A1B/DS0K7t4rt9mNsU06I
	9pLLvQ2tmI+JJQEkFjEn5cMaGEE2KPuDba2H8EmhBqpsipS6k7TIXyPxp6PTzc5fphArihUn2rv0Z
	oolD+yChQXn2QA00VZVhaiVUkcfejXPcX1viR3kb1N9HYFe/ZOL/3BOufAs8XS5Fxw0ma1cD4iozI
	wVqsdPFUJ0GaBplOfFcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbW2b-00017u-VE; Thu, 13 Jun 2019 20:09:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbW2Q-00014A-Ld
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:09:35 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1654420B7C;
 Thu, 13 Jun 2019 20:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560456574;
 bh=eQj63h8OCCsmMvkjVVnO0QbXAh3YrpBesVcLGSyN+1Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JcfxDoqUPK3n5IVChceyR/hB3kr/taJFeMbOnBcOsBePn3MFgnepNEMUZAT6jYLQq
 +JiQAwbZMzg+ag4ZULmUXs2Na6deMkwfO9z9/7//Ny2fX39kYWm4b7zbmxNxOohV61
 j+B5Ew5pIVMqbVQDzvtbpjpfZnab3NfpBwUiINWY=
Date: Thu, 13 Jun 2019 15:09:32 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
Message-ID: <20190613200932.GJ13533@google.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
 <20190613023947.GD13533@google.com>
 <8ef228f8-97cb-e40e-ea6b-410b80a845cf@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ef228f8-97cb-e40e-ea6b-410b80a845cf@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_130934_718007_2152322D 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Jun 13, 2019 at 10:39:12AM +0100, John Garry wrote:
> On 13/06/2019 03:39, Bjorn Helgaas wrote:
> > I'm not sure it's even safe, because CONFIG_INDIRECT_PIO depends on
> > ARM64,  but PCI_IOBASE is defined on most arches via asm-generic/io.h,
> > so this potentially affects arches other than ARM64.
> 
> It would do. It would affect any arch which defines PCI_IOBASE and
> does not have arch-specific definition of inb et all.

What's the reason for testing PCI_IOBASE instead of
CONFIG_INDIRECT_PIO?  If there's a reason it's needed, that's fine,
but it does make this much more complicated to review.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
