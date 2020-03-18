Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 499A318A77A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 22:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fa6SC1F1gN8ykhsb+UJTttw4LOc6ZHBZR0vtfVHB6iE=; b=bCwcLd/d5qs1yy
	3njRnZFCYpWhYjPPWVY6liKrJ8l/PvBznEcvHdqer6XZ+bAeQbTcu2AtuWlTGP2RuCLdnaIVD+vZK
	FKG4CNVCOeADy8bGFWACH42qAUBnc5TvKPHQA6VYZc9zWHdBS1RFtgsYu31J8MfnqiKUOw8ZSLD6h
	MlW9QdNXhw9082UNnIb1UGPBsx6ARcvYeVOz5E8ILGVU34qvMXO6L8zrHsX+KR6s/vyRtZcG0Of/V
	OdtVXN5gY9AwwxsyK5ptugiIJJjc53HR0J0kPXAO3vWKSGGNwvMa1hVkYYsqNq8wwrLzOK+UPN9MI
	fjg9IuZJKhetimGHQuJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgiK-0001CD-PM; Wed, 18 Mar 2020 21:59:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgiC-0001Bi-Kn
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 21:58:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EADC32076C;
 Wed, 18 Mar 2020 21:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584568732;
 bh=fwb6/1fl+qNWmdBmMiFQ8pSoakKvLGgyes9mRnF7u2c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iXspVkpnNVO09YFjhzaEWdYDvt1usZAPfrJ2RQL2f3zpxwByHpOjc+QPpyTTvVNJk
 fRhTMX4fIg5OHKVaB9/BPg0aRQySOWuEoOw7OAhLKWd5kSRxpBkRoywrWBYZu7OK+B
 PAINfI9FfrQ0FVsS9z4hGvsl96KHzUXa3BOIlzVk=
Date: Wed, 18 Mar 2020 21:58:47 +0000
From: Will Deacon <will@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3] Add emulation for CFI compatible flash memory
Message-ID: <20200318215847.GC8477@willie-the-truck>
References: <20200221165532.90618-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221165532.90618-1-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_145852_705630_77B47E0E 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Raphael Gault <raphael.gault@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Sami Mujawar <sami.mujawar@arm.com>,
 Alexandru Elisei <Alexandru.Elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 04:55:32PM +0000, Andre Przywara wrote:
> From: Raphael Gault <raphael.gault@arm.com>
> 
> The EDK II UEFI firmware implementation requires some storage for the EFI
> variables, which is typically some flash storage.
> Since this is already supported on the EDK II side, we add a CFI flash
> emulation to kvmtool.
> This is backed by a file, specified via the --flash or -F command line
> option. Any flash writes done by the guest will immediately be reflected
> into this file (kvmtool mmap's the file).
> The flash will be limited to the nearest power-of-2 size, so only the
> first 2 MB of a 3 MB file will be used.
> 
> This implements a CFI flash using the "Intel/Sharp extended command
> set", as specified in:
> - JEDEC JESD68.01
> - JEDEC JEP137B
> - Intel Application Note 646
> Some gaps in those specs have been filled by looking at real devices and
> other implementations (QEMU, Linux kernel driver).
> 
> At the moment this relies on DT to advertise the base address of the
> flash memory (mapped into the MMIO address space) and is only enabled
> for ARM/ARM64. The emulation itself is architecture agnostic, though.
> 
> This is one missing piece toward a working UEFI boot with kvmtool on
> ARM guests, the other is to provide writable PCI BARs, which is WIP.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> [Andre: rewriting and fixing]
> Signed-off-by: Andre Przywra <andre.przywara@arm.com>
> ---
> Hi,
> 
> an update fixing Alexandru's review comments (many thanks for those!)
> The biggest change code-wise is the split of the MMIO handler into three
> different functions. Another significant change is the rounding *down* of
> the present flash file size to the nearest power-of-two, to match flash
> hardware chips and Linux' expectations.

Alexandru -- are you happy with this now?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
