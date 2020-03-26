Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F1F1942BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jl183LDn9oB2ydjC5/+B0d64TcBHF3wafe217O7X7gM=; b=SmiZd+GapE9N0q
	zIV/To2cPI84KlSRm9icsmobds6qsUXbtRcgoU6ComUVGFJuiGLK48Nf7ZisWog1VcnNMI1kqj1cV
	730KyMe6j801kD7pyamJ4h2/ys3CEeNE7LfMjLmt4alAqsapmCeD9yd4ZUNxxr+IckmTBB1Dhz/lE
	Bdx3tHsIUgX+VsWy3Cx7abtcqh3qRdHM7tTlNgoHFCv6FTZNfWIkew9CRbbxNxwiCFGouPrXHpSog
	cJ5r8XeHafk4P7VX+1Ucg49FwN5r9JuOqT8QsKdWRaLZMmeT2Dx+LIQTiEJfRF+Sql5yzEI4NeZbJ
	n4KWWQgqAW1jC4Iz4INg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUB7-0006U8-O8; Thu, 26 Mar 2020 15:12:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUAy-0006TY-GT
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:12:09 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9991E206F8;
 Thu, 26 Mar 2020 15:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585235528;
 bh=gNmb1UwpI1bot54AGT9LmV+Ay1kJtk9PvnEvdt7OJfc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=HswQ9GU3pelOso6U3R+842+f+BEsJtKi+asi1ius/Kpn2ivVMGAkMxQdfx4AdmRWL
 OXIpK3kwBDOOPY60j6YQgGoDi/R1l/B3W2qIVR2ZIZhJqacpgQuvx/Hur4AJIK+DoY
 froEyzgClLoLaQL8Y/qmAtHqp2GIHJ1KQZMKnUFw=
Date: Thu, 26 Mar 2020 10:12:05 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH 3/3] PCI: iproc: Display PCIe Link information
Message-ID: <20200326151205.GA6837@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585206447-1363-4-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_081208_563790_90EA2461 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 12:37:27PM +0530, Srinath Mannam wrote:
> Add more comprehensive information to show PCIe link speed and link
> width to the console.
> 
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>  drivers/pci/controller/pcie-iproc.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index e7f0d58..ed41357 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -823,6 +823,8 @@ static int iproc_pcie_check_link(struct iproc_pcie *pcie)
>  #define PCI_TARGET_LINK_SPEED_MASK	0xf
>  #define PCI_TARGET_LINK_SPEED_GEN2	0x2
>  #define PCI_TARGET_LINK_SPEED_GEN1	0x1
> +#define PCI_TARGET_LINK_WIDTH_MASK	0x3f
> +#define PCI_TARGET_LINK_WIDTH_OFFSET	0x4
>  		iproc_pci_raw_config_read32(pcie, 0,
>  					    IPROC_PCI_EXP_CAP + PCI_EXP_LNKCTL2,
>  					    4, &link_ctrl);
> @@ -843,7 +845,14 @@ static int iproc_pcie_check_link(struct iproc_pcie *pcie)
>  		}
>  	}
>  
> -	dev_info(dev, "link: %s\n", link_is_active ? "UP" : "DOWN");
> +	if (link_is_active) {
> +		dev_info(dev, "link UP @ Speed Gen-%d and width-x%d\n",
> +			 link_status & PCI_TARGET_LINK_SPEED_MASK,
> +			 (link_status >> PCI_TARGET_LINK_WIDTH_OFFSET) &
> +			 PCI_TARGET_LINK_WIDTH_MASK);

Can you use pcie_print_link_status() or some variant here instead of
rolling your own?

> +	} else {
> +		dev_info(dev, "link DOWN\n");
> +	}
>  
>  	return link_is_active ? 0 : -ENODEV;
>  }
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
