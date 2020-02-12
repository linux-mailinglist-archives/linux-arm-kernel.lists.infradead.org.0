Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB92E15AAB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=RjEiD3LO6FIEhQOVfl+s1Yj2JFofRSOwIBJ/Pq1RooE=; b=WCRA5WLDfIJCa0
	QNiZwVu1jSdBimi68XwiNP1XtiU/AdG4mfRk1v102kLigAgmdPiYg4kEzUN9hDs8Pvj6OHBT+Bq19
	dXjFJMn0iP3P/OjF784vs91Kt7qRvyouD9xCsU/ae5JQYYkqo6eIbIN/DcigQLzwdyYK+VFEqhTb9
	rM12GlHnfvuFWMVRaDXZ/s4rvvQe67EkvFiXKs4xlnccsRiMaUWgsznFr0rwWxVTz+9wP6H1+Nw0d
	z3B6C/WWPPrAx48jqeQj2XiLlLJd7caYjQm+HTLyaRokSQVtLG6Z9sff0QVPOPTTAYNaUI5p1aRfz
	eXegm8jhmMkXEFUD0JHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sd9-00076Q-3w; Wed, 12 Feb 2020 14:04:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sd2-00075o-1R; Wed, 12 Feb 2020 14:04:37 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7839A20724;
 Wed, 12 Feb 2020 14:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581516275;
 bh=o9BHn+9tET4BD0g8kAYLMhwyFEa94It7nBIG65XyVow=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ybhA5sw1XC0h+W6Zeya0JSyVEIzLi+xMgWYE+Dwss2uAZuddrdzio//rz6eimr3jf
 5fLzed0lzlgiW1e3gJzM4JGdbsZRLPLhAOBWjt9aGVTFpyj7hLZk6qW6Tax2jy+LJS
 zVOS8XI3s1D5+v5kCab07CmDWyahtMIe3CLy9eEY=
Date: Wed, 12 Feb 2020 08:04:34 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
Message-ID: <20200212140434.GA129189@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_060436_103621_030906C8 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 08, 2020 at 06:36:37PM +0000, Lad Prabhakar wrote:
> The mask value was calculated incorrectly for PCIEPAMR register if the
> size was less the 128bytes, this patch fixes the above by adding a check
> on size.

s/less the/less than/
s/128bytes,/128 bytes./
s/this patch fixes the above/Fix this issue/

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/pcie-rcar.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> index d5568db..c76a92a 100644
> --- a/drivers/pci/controller/pcie-rcar.c
> +++ b/drivers/pci/controller/pcie-rcar.c
> @@ -71,7 +71,7 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
>  	/* Setup PCIe address space mappings for each resource */
>  	resource_size_t res_start;
>  	resource_size_t size;
> -	u32 mask;
> +	u32 mask = 0x0;
>  
>  	rcar_pci_write_reg(base, 0x00000000, PCIEPTCTLR(win));
>  
> @@ -80,7 +80,8 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
>  	 * keeps things pretty simple.
>  	 */
>  	size = resource_size(res);
> -	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> +	if (size > 128)
> +		mask = (roundup_pow_of_two(size) / SZ_128) - 1;

I would put the "mask = 0x0" right here so it's all in one place,
i.e.,

  if (size > 128)
    mask = (roundup_pow_of_two(size) / SZ_128) - 1;
  else
    mask = 0x0;

>  	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
>  
>  	if (!host) {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
