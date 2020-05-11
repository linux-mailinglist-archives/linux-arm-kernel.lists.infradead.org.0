Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101CC1CDCD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOY+4mcr0Oy/uPnA7qfekWl/xIdGjR0+hTkkfJDUGxM=; b=ja36w12MsCONyo
	iAqVD1G5AXgPF3hLupcPZbMOuImjt1rogua5s4lODaku1pSWqw1zK4qjV/r6YfOod39arHrq0YGMr
	BfGByr+SRjSQzSKqh8VZa6srVVzluNdxAKd/cy0JV4ojo8w1gRbb1hH82CzLmPeQJMWahK4HU1hjg
	U+Hp27CuPHot+i1JLhsVEuRa4Y55jARs32rs+y50s/kXXq1k/21QGW1hLtWvWEL5//RGcnXbMhTR0
	sBgEcbKa92NKYHeq3GBVK2DCdtWNsCYrbhZp4iS3spR+PO/qxzN4BUtTtFLfHGEKnPdhwCmUDH3Hh
	I0xSntRbtQo+MJN6TXSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9Dc-0000jn-1h; Mon, 11 May 2020 14:15:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9DS-0000ii-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:15:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0E33D6E;
 Mon, 11 May 2020 07:15:32 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B8D13F68F;
 Mon, 11 May 2020 07:15:31 -0700 (PDT)
Date: Mon, 11 May 2020 15:15:20 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH v2 RESEND] MAINTAINERS: correct typo in new NXP
 LAYERSCAPE GEN4
Message-ID: <20200511141508.GA27249@e121166-lin.cambridge.arm.com>
References: <20200506052130.5780-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506052130.5780-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_071534_709355_2A23CBCF 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Joe Perches <joe@perches.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 07:21:30AM +0200, Lukas Bulwahn wrote:
> Commit 3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
> controller") includes a new entry in MAINTAINERS, but slipped in a typo in
> one of the file entries.
> 
> Hence, since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   warning: no file matches F: \
>     drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
> 
> Correct the typo in PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Rob, please pick this patch (it is not urgent, though).
> 
> v1: https://lore.kernel.org/lkml/20200314142559.13505-1-lukas.bulwahn@gmail.com/
>   - already received: Reviewed-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
>   - Bjorn Helgaas' suggestion to squash this into commit 3edeb49525bb
>     ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller") before
>     merging upstream did not happen.
> 
> v1 -> v2:
>   - v1 does not apply after reordering MAINTAINERS, i.e., commit 4400b7d68f6e
>     ("MAINTAINERS: sort entries by entry name") and commit 3b50142d8528
>     ("MAINTAINERS: sort field names for all entries").
>   - PATCH v2 applies on v5.7-rc1 now. Please pick v2 instead of v1.
> 
> v2-resend:
>   - resend of v2: https://lore.kernel.org/lkml/20200413070649.7014-1-lukas.bulwahn@gmail.com/ 
>   - still applies to v5.7-rc4 and next-20200505
> 
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/misc, thanks !

Lorenzo

> diff --git a/MAINTAINERS b/MAINTAINERS
> index e64e5db31497..0fd27329e6f7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12941,7 +12941,7 @@ L:	linux-pci@vger.kernel.org
>  L:	linux-arm-kernel@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> -F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
> +F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
>  
>  PCI DRIVER FOR RENESAS R-CAR
>  M:	Marek Vasut <marek.vasut+renesas@gmail.com>
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
