Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EEE11EC97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=59Ou0XWaGX08zWLlbh5963f8LJz6W3GROUtcNZKkgjQ=; b=JYu8K9aY8c20UF
	1+cEumeUfKJUZIAeklEvKs//BLUJUWmDSHEt81atCq5Yb08efDvpMEmbR4B+U/eQxEEEc1g4HQd8m
	52uteQa8IjuN3dHzvDc8SQZDAJf2XdDsKvLjunndqeA9vVI3OSoJGAGoL+KuRUYzs93R61ENGYa1W
	UADE2GMsO4UaXhsaGfuSRRuptcMc2GasUaEgQkIBqk1jOZ1TJdA+LnpnMwufadWSU92fN00CakotQ
	VHoXUjQJSgsGt9Skl0EkAyhuPn1KrGd0vVAhebd7a/o+Tsv75lzg1K/FU6aLJm073MD/MWwHyQSya
	e8XqOsZhYDschbOLMk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifs9L-0006sk-8R; Fri, 13 Dec 2019 21:06:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifs8w-0006lE-Ja; Fri, 13 Dec 2019 21:06:36 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D28C62467A;
 Fri, 13 Dec 2019 21:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576271193;
 bh=TLRFub19ZhaITE7YjcFkEHRBA0pszoIN5RnRY1gDYLs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=E/BnZTX+a8LiIkE6EdBlArJFLe2i3cC9dAJ9uaJzsx+hIy4Neio9I5tQwh+XcB08d
 YZV1mMNvJ1mDG0o5Vz+DTW3Xm51ca/KJWDwKJavT60c/lw5iWIrjQWfoEI7HKwPIq7
 9Ynq21FilKYcUtvUrWHTkFAx9x5ELRCpRpV7Bpkg=
Date: Fri, 13 Dec 2019 15:06:31 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [v2 1/6] pci: pcie-rcar: preparation for adding endpoint support
Message-ID: <20191213185011.GA170447@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_130634_689036_6BFD6EFA 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 08:47:43AM +0000, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> this patch prepares for adding endpoint support to rcar controller,
> there are no functional changes with this patch, a common file is
> created so that it can be shared with endpoint driver. Alongside
> this patch fixes checkpatch reported issues.

Can you please split this into:

  - a patch that moves code only, with no other changes except any
    necessary Kconfig and Makefile changes
  - another patch that fixes the checkpatch things

When the checkpatch fixes are buried in the code move, it's impossible
to review them.

> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/arm64/configs/defconfig            |    2 +-
>  drivers/pci/controller/Kconfig          |    4 +-
>  drivers/pci/controller/Makefile         |    2 +-
>  drivers/pci/controller/pcie-rcar-host.c | 1056 ++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.c      | 1229 ++-----------------------------
>  drivers/pci/controller/pcie-rcar.h      |  129 ++++
>  6 files changed, 1242 insertions(+), 1180 deletions(-)
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
