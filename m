Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E7F1C0875
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=SATWQKS5KbPe0Jd8t7dB8HuTvDnhibufoLra2e0po6w=; b=kAktpRSll8Qtbw
	6wZl9BxQuEwWUpJsOWq0ALY0MtztaduYRPCvXQhzgFzK915eVYBOB0KxSXS6tT4KC5rUl6RGsbvkt
	DxkcPC3XOBJkuvHIwP1N/npjyRO2qRNp1wHV3MGprSCT/lya73HanOsNb9aRhkvPqE6L8YxGMgvSG
	DyMO9e/53owUnBNJxjUKnnKKxC5Sj3z8FIlZJDiG9lkszH0vU8TJZwYQ+qoHpaMOAVZZhYoJAc1hv
	gpnAxd5i2nOuSTxgwP45A+mAQUomuSNpgLC2vfLUiBQfDmrdox7EeiYag9q/mX5kf1uOapc+Kfvsb
	B1Z78ehlHNzsAzBAOc7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG3S-0006fo-Dl; Thu, 30 Apr 2020 20:45:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUG1P-0005T4-6O; Thu, 30 Apr 2020 20:43:10 +0000
Received: from localhost (mobile-166-175-184-168.mycingular.net
 [166.175.184.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5150206C0;
 Thu, 30 Apr 2020 20:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588279382;
 bh=u75tJYVYqVgwKuxyvKak/ZmBpHgmj5uCJfAwjytROXk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Lo/oqZaXh7vcHQFfdXlnjaGTon80H4R9d/gJ3gIDroMAlE999ZPhFGt2CAgEd0l/+
 RhvqHzdgIGpb0FfKhafe0UqCs5Chv22vRnKMSnwtUjSdupAg1L8EyzHVSOJJt44VJt
 KJI7OV0aIbDtt8gAcJ0q0cgaWxNy4RlP1imVGnYU=
Date: Thu, 30 Apr 2020 15:43:00 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 2/5] PCI: brcmstb: fix window register offset from 4 to 8
Message-ID: <20200430204300.GA63206@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430185522.4116-2-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_134303_331466_2E7A8481 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 02:55:19PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> The oubound memory window registers were being referenced
> with an incorrect offset.  This probably wasn't noticed
> previously as there was likely only one such outbound window.

If you repost these for any other reason:

Capitalize the first word of all the subject lines to match history.
s/oubound/outbound/

> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 454917ee9241..5b0dec5971b8 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -54,11 +54,11 @@
>  
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
>  #define PCIE_MEM_WIN0_LO(win)	\
> -		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 4)
> +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 8)
>  
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI		0x4010
>  #define PCIE_MEM_WIN0_HI(win)	\
> -		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 4)
> +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 8)
>  
>  #define PCIE_MISC_RC_BAR1_CONFIG_LO			0x402c
>  #define  PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK		0x1f
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
