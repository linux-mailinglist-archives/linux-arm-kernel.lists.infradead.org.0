Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FFD13552B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXl/YdH3gXlGR7RmD0emZIbENJpfyEz8A8qLKokqBaU=; b=fXv7hUGfTVEUeO
	Qgfdz4y9JWyz4JSXxwJUnLyt7LxNsi69/3tmBaxvartIczH43S5OLcLjxGeV9SEzZYA/6el+HQJGQ
	ywqvkAAZza0LzeCNRPQNj06pcxFsVbkCK+KSyVi9cDWmGRuNEc55/PzZw/u/FmwnJJVtZBZ8c6Dus
	jTazUJYFe6VNTnF7ObI9J2kz+mC/+IWFz9kulH5/P1Hp9Z8H/z4u1XSzlnG/X1Ja6OJ4eIHIfHYII
	D4S6a0ME6LAiT4bRk3PxmHI2X0wmyQ4sz/XP3XKGBqEgO/LyfL0z/heMkb2PQLY3P2zUxfU7KSW/q
	VUSsabzLz55OYSahhNVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTn6-0003il-HS; Thu, 09 Jan 2020 09:07:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTmv-0003hA-9W
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:07:34 +0000
Received: from rapoport-lnx (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E1E920673;
 Thu,  9 Jan 2020 09:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578560852;
 bh=80VO7IRaadflRsWGeFaWpP4uMh6gHTYCmJeL67RjZyc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q5FmlW6oNXmmHi8t5SgWv6hqbdIOcUc7kC9MBmRyqClnLeB0DbMUArm6zNITYQbZM
 X3khTwxh8dUFqbTImNB9UVzgMvIDlRJW427ftIDOSroG+TSjzJJ7++lD9C0seZcwE+
 32RfwPZhjFiLV95ZOf0ynTo5+MVxORQ//gS9cugs=
Date: Thu, 9 Jan 2020 11:07:20 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 0/1] arm/arm64: add support for folded p4d page tables
Message-ID: <20200109090719.GA14426@rapoport-lnx>
References: <20191230082734.28954-1-rppt@kernel.org>
 <19fc0640-2b7e-a06f-a4c8-2736d54dd565@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19fc0640-2b7e-a06f-a4c8-2736d54dd565@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_010733_355326_B429712B 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 08:38:54AM +0530, Anshuman Khandual wrote:
> 
> 
> On 12/30/2019 01:57 PM, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > Hi,
> 
> Hello Mike,
> 
> > 
> > This is a part of clean up of the page table manipulation code that aims to
> > remove asm-generic/5level-fixup.h and asm-generic/pgtable-nop4d-hack.h
> > 
> > There is a single patch for both arm and arm64 because doing the conversion
> > separately would mean breaking the shared mmu bits in virt/kvm/arm.
> > 
> > The patch is build tested and boot tested on qemu-system-{arm,aarch64}.
> 
> There are lots of code changes here for a single patch but as you have
> mentioned shared KVM bits would have prevented splitting arm and arm64
> changes into separate patches. Just curious, are you planning to respin
> this patch sooner after fixing the reported build problems caused by
> missing p4d_offset_kimg() and p4d_sect() definitions ?

Well, I was waiting to see if there was some feedback except kbuild robot
response :)

I'm planning to send v2 soon, probably next week.
 
> - Anshuman

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
