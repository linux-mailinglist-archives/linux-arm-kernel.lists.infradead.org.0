Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E601CD6CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7tLDRWA0WQQ2D0xA9ULVDOg/KWz25Aj9baN8tNwu1o=; b=P0puxl2nf3dYh3
	ZVF29W6tXLf+h0oSG4Ch4zGj4R68rvNF3HZ4Ig0es4+PWJh5+Q4imQirTVdIIhRTzOF7wP2wMUl20
	C+nAcQ0alYP/mWV4tKoCZQObI3LiIk5SR79i1qBLPkvY515Z6tkAZ9hvkKCdA/ykWrcqEt4kHbWuW
	RYP2Ql3n3oYf0BkCXR34zyR40vuif5Q/QkRkkGat3cqUBEOsU7NDrUfvijVAbntxFhTcrlYzN4fe9
	qA9TJnuIl7lCp0R/U88gXuxplWOt3YhzeHpdsV+dByVLLf4sFMjNzsAYU+78tqZcfdPfAttB0i7JR
	zOX/+VU5RdmLYGqKIDKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5we-0004id-JI; Mon, 11 May 2020 10:46:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5wV-0004hx-Hr; Mon, 11 May 2020 10:45:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AB041FB;
 Mon, 11 May 2020 03:45:50 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C49693F305;
 Mon, 11 May 2020 03:45:48 -0700 (PDT)
Date: Mon, 11 May 2020 11:45:38 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH] PCI: brcmstb: Assert fundamental reset on initialization
Message-ID: <20200511104527.GA24954@e121166-lin.cambridge.arm.com>
References: <20200507172020.18000-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507172020.18000-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_034551_635803_006DB066 
X-CRM114-Status: GOOD (  14.45  )
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
Cc: Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 s.nawrocki@samsung.com, tim.gover@raspberrypi.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Jim Quinlan <james.quinlan@broadcom.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 07:20:20PM +0200, Nicolas Saenz Julienne wrote:
> While preparing the driver for upstream this detail was missed.
> 
> If not asserted during the initialization process, devices connected on
> the bus will not be made aware of the internal reset happening. This,
> potentially resulting in unexpected behavior.
> 
> Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host controller driver")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 1 +
>  1 file changed, 1 insertion(+)

Applied to pci/brcmstb, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 0b97b94c4a9a..795a03be4150 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -699,6 +699,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  
>  	/* Reset the bridge */
>  	brcm_pcie_bridge_sw_init_set(pcie, 1);
> +	brcm_pcie_perst_set(pcie, 1);
>  
>  	usleep_range(100, 200);
>  
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
