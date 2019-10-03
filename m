Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF63C9A76
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNsz4Yfwg2TIR89KjPHxTzIhvc2PjwSUYoVM7rm0ykI=; b=pnXWyUFefKrInB
	3go1GpCFO1dsndZ8O3m9iC20jzEG62k33gpLnKxRygCbQD79hbJCRr13vEp55IlGpHA+UVogLCDL7
	pYCzZrPBIUyqg8Rx+XTehbgaRqROX6oE5iWOAf6AAJ0i8gQTotGtPTHo7s4rRLmoZ/oCF3wLjyc8D
	ghiKQGpj2HkoPKYc/fzbrCEybJ4y7mCfNiRMI8p4ZTBnRo9PnJOVUMer0+AcNMFvi24eDrOl06K4h
	z+NoVceP3bATMKUO7c48WicyaonuUdptOXC6QoH94GnI0HeLw0fBvWA/QnlBc25fzl6dAE9ciiRIA
	P7rGTin7KheH5dCUvTbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFx8S-0001Ra-PW; Thu, 03 Oct 2019 09:10:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFx8L-0001R1-NF
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:10:50 +0000
Received: from X250 (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FAA3217D7;
 Thu,  3 Oct 2019 09:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570093849;
 bh=MMxJEs96BVXDKmKuJCphNcJwHlAfmZsNg6vA8HtDNS0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z8S71spy+Xp8DisodNAuE7wi8wIsa9qQOR+VeMzwJLbpw4Dz2CBl4oDhZUZg7KyCI
 jKIATNnmJs4DhCYtb3wotBj33BxFRZNeLBIbIBtbocDEhzMwCTQxJd7mBGOpEAFDOG
 rXAe6mVQ6Y0Su2CLdU80pQ4UTH4eE+qWy+ExCBTc=
Date: Thu, 3 Oct 2019 17:10:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Message-ID: <20191003091019.GB22491@X250>
References: <20190902034319.14026-1-xiaowei.bao@nxp.com>
 <20190902034319.14026-3-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902034319.14026-3-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021049_775874_107BEE17 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, minghuan.Lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, bhelgaas@google.com,
 linuxppc-dev@lists.ozlabs.org, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 11:43:19AM +0800, Xiaowei Bao wrote:
> Add support for the LS1028a PCIe controller.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> v2:
>  - No change.
> v3:
>  - Reuse the ls2088 driver data structurt.
> v4:
>  - No change.
> v5:
>  - No change.
> v6:
>  - No change.
> 
>  drivers/pci/controller/dwc/pci-layerscape.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pci-layerscape.c b/drivers/pci/controller/dwc/pci-layerscape.c
> index 3a5fa26..f24f79a 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape.c
> @@ -263,6 +263,7 @@ static const struct ls_pcie_drvdata ls2088_drvdata = {
>  static const struct of_device_id ls_pcie_of_match[] = {
>  	{ .compatible = "fsl,ls1012a-pcie", .data = &ls1046_drvdata },
>  	{ .compatible = "fsl,ls1021a-pcie", .data = &ls1021_drvdata },
> +	{ .compatible = "fsl,ls1028a-pcie", .data = &ls2088_drvdata },

I think you can save this driver change by using "fsl,ls2088a-pcie" as
compatible fallback like below.

  compatible = "fsl,ls1028a-pcie", "fsl,ls2088a-pcie";

Shawn

>  	{ .compatible = "fsl,ls1043a-pcie", .data = &ls1043_drvdata },
>  	{ .compatible = "fsl,ls1046a-pcie", .data = &ls1046_drvdata },
>  	{ .compatible = "fsl,ls2080a-pcie", .data = &ls2080_drvdata },
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
