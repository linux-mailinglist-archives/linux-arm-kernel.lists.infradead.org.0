Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3544AFC15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoGCBUk0kU+RBaVFZxvM9nin0VZvuWC/yDhJMJY+63g=; b=b5+woGZSoOd/wG
	RCDK5LVnadE6ZjxSns/pVKJbnk5xkcUkNWb09vtU89q6ITrhG2DfOccwLUc9W2TcSRVew8Op99kYK
	IKLoYK/iP2Rx2DopOIE93PxsZMP1NHdhtimXnJMF+L+T3L53MuLReWDNGDAC6w0eCQY8CBrvM5Usi
	kZe+KK39ZIf97JjU+1WgIIVM8Fr3TePxwzQMOEasAx+RqUFYSSDRLlprSWF1C+zkJ0awiG1prVpF7
	Ij3vJXXnXPP5cbA0y6bA3CtKiSXY6n6Ni6r/gWqIw5vr7QuXDAGgcUtwCfoVMq10+y5OLEobh7yos
	HEeUgQfzSUB7+l5+jdWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUGg-0003e3-RE; Tue, 30 Apr 2019 15:02:02 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUGa-0003dR-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:01:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68A1D374;
 Tue, 30 Apr 2019 08:01:55 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D236B3F719;
 Tue, 30 Apr 2019 08:01:53 -0700 (PDT)
Date: Tue, 30 Apr 2019 16:01:48 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH] PCI: iproc: Enable iProc config read for PAXBv2
Message-ID: <20190430150148.GA6616@e121166-lin.cambridge.arm.com>
References: <1556270404-27058-1-git-send-email-srinath.mannam@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556270404-27058-1-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_080156_240824_6294EA2B 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 02:50:04PM +0530, Srinath Mannam wrote:
> iProc config read flag has to enable for PAXBv2 instead of PAXB.
> 
> Fixes: f78e60a29d4ff ("PCI: iproc: Reject unconfigured physical functions from PAXC")
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>  drivers/pci/controller/pcie-iproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/iproc, thank you.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index c20fd6b..9d5cbc7 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1347,7 +1347,6 @@ static int iproc_pcie_rev_init(struct iproc_pcie *pcie)
>  		break;
>  	case IPROC_PCIE_PAXB:
>  		regs = iproc_pcie_reg_paxb;
> -		pcie->iproc_cfg_read = true;
>  		pcie->has_apb_err_disable = true;
>  		if (pcie->need_ob_cfg) {
>  			pcie->ob_map = paxb_ob_map;
> @@ -1356,6 +1355,7 @@ static int iproc_pcie_rev_init(struct iproc_pcie *pcie)
>  		break;
>  	case IPROC_PCIE_PAXB_V2:
>  		regs = iproc_pcie_reg_paxb_v2;
> +		pcie->iproc_cfg_read = true;
>  		pcie->has_apb_err_disable = true;
>  		if (pcie->need_ob_cfg) {
>  			pcie->ob_map = paxb_v2_ob_map;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
