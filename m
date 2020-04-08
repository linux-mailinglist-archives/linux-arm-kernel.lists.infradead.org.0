Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2AC1A2C97
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=g9R3BLqMXfsJOmZhg+sqwPRb+tkWytfnKVorBFapNVY=; b=rpDi12iPhnL4Ij
	ItjB1CKrDUDCNxyp/G/dz22Xku+mqYlrQRK3sxLr4NEa9f4ak8yRSOqwFdkrG/zuOvV6sk2WNFj9O
	/P4EQrBmMi9dkJG9MaBopEo1K5udCWhXXMhZSnsyJNuEq5o20OFSVTyLaEiYBPuANbghyC1mT0s5h
	70XTv4+8ZEw/+4oHKjfkecc08/o0f4Ilb5URCAugKHsdi7k7JNm57MYPV83KCVcti9y11GfVTvwMl
	J/5/YDsYjTHW/6exTehkdKrfeErjVuzu/tqNbdqAny+a5HwIf6MQTtWVfDyv1jKtE6t+Dqvi1yl2V
	XVvXvqy7AkhTGXc5xvaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKTv-0000wM-PX; Wed, 08 Apr 2020 23:51:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKTn-0000vz-VF; Wed, 08 Apr 2020 23:51:37 +0000
Received: from localhost (mobile-166-175-188-68.mycingular.net
 [166.175.188.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 050E02082F;
 Wed,  8 Apr 2020 23:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586389895;
 bh=ohD59jkDFB/7GbrNwOr+RvtEO78AppOEta0uYKkJaOk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=i243TA3iZ14gJyfzqpJx5lW6qxa0I0TWRjoCNJ1pTyAMoKpRNGO9XGXe4feq2IHKZ
 /N0BFAPMBXb2oHHt5BczVvgIHnz9by1j5vnTFnMQHgRR+xhuiQqEnffDgEQ9BBv+iT
 0IpSHFoe/PMaOm3RmcfLSyKA8M4gx9tSc9h2n7QQ=
Date: Wed, 8 Apr 2020 18:51:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v7 6/8] PCI: rcar: Add support for R-Car PCIe controller
 in endpoint mode
Message-ID: <20200408235133.GA151858@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586360280-10956-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_165136_026140_3AA90DB8 
X-CRM114-Status: GOOD (  12.44  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maybe:

  PCI: rcar: Add endpoint mode support

so the important "endpoint mode" part is early and doesn't get chopped
off or wrapped.  We already know it's PCIe and rcar-related.

On Wed, Apr 08, 2020 at 04:37:58PM +0100, Lad Prabhakar wrote:
> This patch adds support for R-Car PCIe controller to work in endpoint mode.

s/This patch adds/Add/

> +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> +				struct pci_epf_bar *epf_bar)
> +{
> +	int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> +	struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> +	u64 size = 1ULL << fls64(epf_bar->size - 1);
> +	dma_addr_t cpu_addr = epf_bar->phys_addr;
> +	enum pci_barno bar = epf_bar->barno;
> +	struct rcar_pcie *pcie = &ep->pcie;
> +	u32 mask;
> +	int idx;
> +	int err;
> +
> +	idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> +	if (idx >= ep->num_ib_windows) {
> +		dev_err(pcie->dev, "no free inbound window\n");
> +		return -EINVAL;
> +	}
> +
> +	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> +		flags |= IO_SPACE;
> +
> +	ep->bar_to_atu[bar] = idx;
> +	/* use 64 bit bars */

s/64 bit bars/64-bit BARs/

> +static const struct pci_epc_features rcar_pcie_epc_features = {
> +	.linkup_notifier = false,
> +	.msi_capable = true,
> +	.msix_capable = false,
> +	/* use 64-bit bars so mark bar1/3/5 as reserved */

s/bar/BAR/g

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
