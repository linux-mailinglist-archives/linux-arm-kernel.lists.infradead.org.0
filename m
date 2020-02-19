Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6504E1642CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdQlTFydDQy9gnIJaKQWDeoqjc4pj9NgnEmpvoqiAOQ=; b=Xlwmtb3x+QS8Id
	WEBCnikICJu87U0bbOVQ4YjBaq3pyrPK/hlOEsrPVkG3p+ddOLeiHo/aG31bsnZmHHxJ4mU0pjPto
	nKKzxtlSgVmeHNwb5flllesB2bI2jnnKn1cTrdP/StvEM319js5kzO9Lx1khpWD4zvGjwPtNx1Cqx
	M/M4LZLjwRiRNnQ/HkQDqUltSkXh8XafQwxvHdZRbP1iX1wjK0LyN66Jxvzn3R96bXa3DvSt9NIh4
	0m8+NbOKzodpflp2nown26bYRyGe3lEZh1lmtbI4XjPvkLrB7biD4IeqjpkUfc6wcCRkziZuD3+Wn
	PV9rbLnc9ANDrk30rUJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4N6D-0007w3-5T; Wed, 19 Feb 2020 11:01:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4N64-0007vD-2B
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:00:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0D94206DB;
 Wed, 19 Feb 2020 11:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582110051;
 bh=HtKSRzQFCzl6DpMToIACUoz6CFw9/WPHWtojy9tN6C4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YqvIKoXgJlUXHE6v2ZNciKOcnyr2nij9pTwaiosZpolNsOddKA+lu3shaOIVINk4T
 fRjceMxDAj6fr6WeN4yDxLXRc049jKo50o+bgWERH6tGqgD4P0eYebmJ0vEjI6zjEQ
 rQheC1zqgkbqsXHIyS9Tff9Ybc4SVJFxWwYqk3S8=
Date: Wed, 19 Feb 2020 11:00:46 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/arm-smmu: Restore naming of driver parameter prefix
Message-ID: <20200219110046.GC16824@willie-the-truck>
References: <20200218172756.2131-1-will@kernel.org>
 <90975c71-9089-b857-6b22-804415e4d5cb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90975c71-9089-b857-6b22-804415e4d5cb@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_030052_119705_D1F1A135 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: joro@8bytes.org, Russell King <linux@armlinux.org.uk>,
 Li Yang <leoyang.li@nxp.com>, iommu@lists.linux-foundation.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 05:40:39PM +0000, Robin Murphy wrote:
> On 18/02/2020 5:27 pm, Will Deacon wrote:
> > Extending the Arm SMMU driver to allow for modular builds changed
> > KBUILD_MODNAME to be "arm_smmu_mod" so that a single module could be
> > built from the multiple existing object files without the need to rename
> > any source files.
> > 
> > This inadvertently changed the name of the driver parameters, which may
> > lead to runtime issues if bootloaders are relying on the old names for
> > correctness (e.g. "arm-smmu.disable_bypass=0").
> 
> Indeed, it turns out this also tripped up some Juno setups in our internal
> CI that were bodging around firmware issues.
> 
> > Although MODULE_PARAM_PREFIX can be overridden to restore the old naming
> > for builtin parameters, only the new name is matched by modprobe and so
> > loading the driver as a module would cause parameters specified on the
> > kernel command line to be ignored. Instead, rename "arm_smmu_mod" to
> > "arm_smmu". Whilst it's a bit of a bodge, this allows us to create a
> > single module without renaming any files and makes use of the fact that
> > underscores and hyphens can be used interchangeably in parameter names.
> 
> That's awful... and thus great :)
> 
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Cheers, Robin!

Joerg -- please can you pick this up as a fix for 5.6? I don't have any
other SMMU fixes queued, so it doesn't seem worth sending a pull request
to you just for this.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
