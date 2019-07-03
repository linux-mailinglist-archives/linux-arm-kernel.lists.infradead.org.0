Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7221A5E9CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdDQvFeBWlVzziHEl5CtyK3jDPLh26I+1NDYPS9AM2c=; b=inWeZ9jzSbhhVc
	zOcCHDfd9F3bosBelbLK63/2R3YA/zSWA9XyIuHvgjdwYu//7FuUfhZARk9iXSn+OStRonKhB57tM
	lWsp5OvKhPyUzsRhmMnVNKkYu3LYf2zgO6wOz4Y5x0iZoxsEg7GgFIR65wdPuREdtHzZdOmjqFt4E
	2H1NfMBUO9o+7075Fg9RFg6H/vDACEOLLq7ZYXygwgXygbiBhwbd12Gh3TizKq9HHC2lMX/qDgsSW
	5UQDxHTn2ZWHYlRpk9qgMy9B1QG6PXqhmTJo51gZwbdbnnjcb8S9G5SxSz1PqTctxKSN6FgS4skUE
	QZQwpmsBQwVYCK5I2cfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiZm-0006Qk-4g; Wed, 03 Jul 2019 16:57:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiZa-0006QE-6q
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:57:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDD9E21882;
 Wed,  3 Jul 2019 16:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562173052;
 bh=lF/LK5VWeXs45bSDLLs672rAdE+1FeG+kEPupm0/s3Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ny058zpXJwWXcHe2EdpYuvfUSdtlDzRaNRpCbEn5o9ugeUjU8K2Hr9iOyrFoc75Xb
 eFQo4r/DnwimXsavr0PouTdSsiWUt6ABOsXy8QCzjKizuhRYLTI1J0HaftXe51UytU
 AJKBXuH1yjqrhMUPZutLzCTrcwxEzk6CbOT6xe8g=
Date: Wed, 3 Jul 2019 17:57:28 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, joro@8bytes.org
Subject: Re: [PATCH] iommu/arm-smmu-v3: Invalidate ATC when detaching a device
Message-ID: <20190703165728.2ykhtw2cnswxskss@willie-the-truck>
References: <20190703111920.23637-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703111920.23637-1-jean-philippe.brucker@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_095734_270801_FFC704FF 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: iommu@lists.linux-foundation.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 12:19:20PM +0100, Jean-Philippe Brucker wrote:
> We make the invalid assumption in arm_smmu_detach_dev() that the ATC is
> clear after calling pci_disable_ats(). For one thing, only enabling the
> PCIe ATS capability constitutes an implicit invalidation event, so the
> comment was wrong. More importantly, the ATS capability isn't necessarily
> disabled by pci_disable_ats() in a PF, if the associated VFs have ATS
> enabled. Explicitly invalidate all ATC entries in arm_smmu_detach_dev().
> The endpoint cannot form new ATC entries because STE.EATS is clear.
> 
> Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
> Reported-by: Manoj Kumar <Manoj.Kumar3@arm.com>
> Reported-by: Robin Murphy <Robin.Murphy@arm.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> ---
>  drivers/iommu/arm-smmu-v3.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Acked-by: Will Deacon <will@kernel.org>

Hopefully Joerg can add this to his queue for 5.3.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
