Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B61E1DCB0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okeJ74j12eW/ZIfpkjMBrYyn6ZCV+Je9oQ0HAF4fw70=; b=d4RS4lgKB9W9Pa
	xmXfoRNw08TQviQwh307YQHkulBO3P7Pb7jImNjkfAkiDkxcK8D7J1QSB7duHQdr7nwX5KhTjWK4e
	H20riaHj2pGryhcyDD/wWsyHMEjbqwtdmQe4RuGpKO40CtOGZsom1UYJDNwfLcCuSCSWqcMxN+JeP
	U50nK9KU3g0eAj39hj7oB5c2PEa0FZiCeDmKGXpM9NOgJ0V+oCF8Wn7ukJWzyURz35P+2inms+FNf
	bke1LqcdyksR1DVXs12bLWO+5kxD+RZHf7VKx5Ta6zg1tW+GLPW5OS5YNR9kE2YNIQEJyBrEXUr8v
	GZLHDVX+rP1MKMpmBWug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiSE-00024O-9n; Thu, 21 May 2020 10:29:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiS4-00023D-V6
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:29:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7774020721;
 Thu, 21 May 2020 10:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590056963;
 bh=1XPt6kD9iV7o2QBCozeLJ0Q2mmcvZqvbc2tntrfdIJA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y246nv7zF5d7co4yRlK1N6muY6PEDZel/9PbdIwVyfa9s8yNWkkbSYEmCXDDHb58M
 OaUrpHlm3WhIQ/Q8dnyYsFS2GHrihtNqvyuYMfN3P9IgBigrBQMpsXYJo+boBgW9ib
 I7M6vSvkn7i2VZb8g5eCwf0NwOH0Sedc6cpmqgcY=
Date: Thu, 21 May 2020 11:29:18 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 3/4] iommu/arm-smmu-v3: Use pci_ats_supported()
Message-ID: <20200521102917.GD5360@willie-the-truck>
References: <20200520152201.3309416-1-jean-philippe@linaro.org>
 <20200520152201.3309416-4-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520152201.3309416-4-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_032925_022249_E5E6D1BD 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: ashok.raj@intel.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 alex.williamson@redhat.com, hch@infradead.org,
 iommu@lists.linux-foundation.org, bhelgaas@google.com, robin.murphy@arm.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 05:22:02PM +0200, Jean-Philippe Brucker wrote:
> The new pci_ats_supported() function checks if a device supports ATS and
> is allowed to use it.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 20 +++++++-------------
>  1 file changed, 7 insertions(+), 13 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
