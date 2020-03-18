Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D283718A27E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=eFPxK1M+DiBMG5q+6pbtNou3UcnySWUuQ8zs2n8tr4c=; b=MZHZNSLp74/fvc
	TI1vxv5LbNlT5cSUF6ZGozouEHpACapuFeywAu54p0MxPtEgDfPAYMeXnUcDQRoz2YR7eYHI4eF1B
	2Z/xPacT9i7kzzE9UY1qQWsRDyuQFcAX0t5D42+DcG1ZlSz+5iokTJphyet1CMn4iRy20v9erKqcz
	8GyJ6Qqz15EvBfC85Vw9Q7IpJk+tD9bOIdd+OQpGQZ0rktF59+4hmeWa1naVIinpO4/qo4x+r9ZgK
	8CXOzepDa55QgQ1z3bNocqzb4GIEH28EHQdndDCC9Ta2EsRI8szmKiZ5jNFqfW8neIaRTAH23buns
	Yz8BDkGforT/qY4srEVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdYB-0004Q1-C2; Wed, 18 Mar 2020 18:36:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdY2-0004Op-1D
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:36:11 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B47D020780;
 Wed, 18 Mar 2020 18:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584556569;
 bh=CZ3vU96wdH3fiBOrH3e81maNz/01u/l6RR1bNf1AwHc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Vv41YUmsvsqbsVWt+ZlKXuMSQdIFe3V2lqbd32gGrs+rgPHII0pB5zWTktovqOeYS
 QbehFAswPQdPw1OEX0h+Tg9+6MniZ9q+7wNn8AH5lMHXIzTCuvRJb5Liofsd8EpPPM
 D0Fbn3zIg28YC8wygqWkyDujQ/3nL0FcQz/PVLU4=
Date: Wed, 18 Mar 2020 13:36:06 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 1/6] PCI/ATS: Export symbols of PASID functions
Message-ID: <20200318183606.GA207832@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224165846.345993-2-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_113610_090250_0EF2B5DB 
X-CRM114-Status: GOOD (  13.55  )
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
 0.0 FAKE_REPLY_C           No description available.
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
Cc: robh@kernel.org, linux-pci@vger.kernel.org, joro@8bytes.org,
 robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 jonathan.cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 05:58:41PM +0100, Jean-Philippe Brucker wrote:
> The Arm SMMUv3 driver uses pci_{enable,disable}_pasid() and related
> functions.  Export them to allow the driver to be built as a module.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/ats.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
> index 3ef0bb281e7c..390e92f2d8d1 100644
> --- a/drivers/pci/ats.c
> +++ b/drivers/pci/ats.c
> @@ -366,6 +366,7 @@ int pci_enable_pasid(struct pci_dev *pdev, int features)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(pci_enable_pasid);
>  
>  /**
>   * pci_disable_pasid - Disable the PASID capability
> @@ -390,6 +391,7 @@ void pci_disable_pasid(struct pci_dev *pdev)
>  
>  	pdev->pasid_enabled = 0;
>  }
> +EXPORT_SYMBOL_GPL(pci_disable_pasid);
>  
>  /**
>   * pci_restore_pasid_state - Restore PASID capabilities
> @@ -441,6 +443,7 @@ int pci_pasid_features(struct pci_dev *pdev)
>  
>  	return supported;
>  }
> +EXPORT_SYMBOL_GPL(pci_pasid_features);
>  
>  #define PASID_NUMBER_SHIFT	8
>  #define PASID_NUMBER_MASK	(0x1f << PASID_NUMBER_SHIFT)
> @@ -469,4 +472,5 @@ int pci_max_pasids(struct pci_dev *pdev)
>  
>  	return (1 << supported);
>  }
> +EXPORT_SYMBOL_GPL(pci_max_pasids);
>  #endif /* CONFIG_PCI_PASID */
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
