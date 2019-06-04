Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771E43506B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 21:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nl7mbQb291vGFEoGBMaQWBfz5CsvQ0DHPqLJQNV40PM=; b=hAZIutdOBcxWQk
	aQr4h4yYPQlE2bbIalZJiSud/KVBP1fD3MM+FVwTKbUBDLfWKubGMQT1+b9PHxYMvxVpxYT8QHddu
	njnRDgp7qMV5rj94BVL3NZWjjQ4xboDrqtfPGbbtxdP/PZKRT8lYG8y7jCO84cR4WPTJgkNIWy22V
	F9LNe822LgsWF9RFp+9cs1LC8u/vGzRPwTanSGbPOck+quioAb1DJNuai2YuUWxd8b4ag1S9Eop6T
	lE7EyJRcGiCvVpdlEykyJrv7Gihw2xpjBHv/v2RA04kU9e1q3pnksBSkz8BDO1JDNM39qGqzWDTiL
	KAzxJjV/bip6tq7dCQEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYFNn-0008C0-5C; Tue, 04 Jun 2019 19:46:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYFNg-0008Ba-El; Tue, 04 Jun 2019 19:46:01 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB087206B8;
 Tue,  4 Jun 2019 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559677559;
 bh=1tBYtI0D2Gm8NgAPNHeS+3+9XEB1WWJiwXHzo6wtquI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wiCx5eHdZP0Vtxa21xguwHieM1fpdxfa/f3hN0HhcqBIWd7i1OT7ClXdvS7I74hEx
 Us9WAhkHug9BCopGgZexJIDCTTT5ogopVfG9VKrEPGVA4nldu5XguklleSkSPhiCto
 53m3TzWmgImw9Vh0/2c9Ug7HCpkktPv86AZkDLHg=
Date: Tue, 4 Jun 2019 14:45:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [RFC PATCH 26/30] MAINTAINERS: Add MAINTAINER entry for PCIe on
 TI's J721E SoC
Message-ID: <20190604194557.GB84290@google.com>
References: <20190604131516.13596-1-kishon@ti.com>
 <20190604131516.13596-27-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604131516.13596-27-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_124600_512436_1CC848BA 
X-CRM114-Status: GOOD (  14.01  )
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nit: the subject wastes a lot of space in the most valuable part (the
beginning).  Something like this would make "git log --oneline" more
useful:

  MAINTAINERS: Add Kishon Vijay Abraham I for TI J721E SoC PCIe

On Tue, Jun 04, 2019 at 06:45:12PM +0530, Kishon Vijay Abraham I wrote:
> Add MAINTAINER entry for PCIe on TI's J721E SoC.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  MAINTAINERS | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a6954776a37e..8a421949f335 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12122,13 +12122,14 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/designware-pcie.txt
>  F:	drivers/pci/controller/dwc/*designware*
>  
> -PCI DRIVER FOR TI DRA7XX
> +PCI DRIVER FOR TI DRA7XX/J721E
>  M:	Kishon Vijay Abraham I <kishon@ti.com>
>  L:	linux-omap@vger.kernel.org
>  L:	linux-pci@vger.kernel.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/pci/ti-pci.txt
>  F:	drivers/pci/controller/dwc/pci-dra7xx.c
> +F:	drivers/pci/controller/pci-j721e.c
>  
>  PCI DRIVER FOR TI KEYSTONE
>  M:	Murali Karicheri <m-karicheri2@ti.com>
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
