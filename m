Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E411EC9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CsLIrWM3XRLZOb+yp6C8IdgRuBbSxNipAhctuLP6S4I=; b=mFDxWyHyBtUIVp
	Yx+iAcDPKMty+IQStl4Pf6Df8S31yU2nZNQuZNIO4l6ptzoRFLN5EEMY88OYU5SYRVevwWnIdKOEm
	2G8DB+2Y42MfXlWb2Q80htPaCwHJ0M4p0d+jABuV6gT4zJFHAE6/bA7DHx+rjpGSvhQYy60rCPCHz
	tMactjxJ59bSPt6J9uC/LIV1eyupyUfqES+kxa0jHM7RHQYi0Jy/oZHM2Yzvb88y4OXQQCavxfghE
	XAHwnTPByD6n5Wnmi7Y0009SvmPglb/lMvBgAhpFCZGzAleiQCt3dGvkXsWNtvWk2HHUon/PT3i+m
	T5ku5jkuZ7+NC9VKBbAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifs9b-0007AB-H4; Fri, 13 Dec 2019 21:07:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifs96-0006tX-6l; Fri, 13 Dec 2019 21:06:45 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D6D72467A;
 Fri, 13 Dec 2019 21:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576271202;
 bh=hWUTsi+517PaE+0S0Vj4/AHhcznAaHtL9dM69acMjt0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cObaL2ydIExDh5FQfy04mYtNWg8OGAWhz8lGSbGtxeNyVZ2k16gCNohgzA/fV+IBS
 9cFMAMDj4nGr6XQKqdmWTNDQRO5ykXoBKm9Ncektrv6hzd7/TEU83Mfl0rChSKJn7j
 qY1XoccfsWjH7157hNnDcoweI7eFUjAByHwEYBgg=
Date: Fri, 13 Dec 2019 15:06:41 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [v2 0/6] Add support for PCIe controller to work in endpoint
 mode on R-Car SoCs
Message-ID: <20191213184627.GA169673@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_130644_285289_6E9EF48A 
X-CRM114-Status: GOOD (  11.21  )
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

On Fri, Dec 13, 2019 at 08:47:42AM +0000, Lad Prabhakar wrote:

> Lad, Prabhakar (6):
>   pci: pcie-rcar: preparation for adding endpoint support
>   pci: endpoint: add support to handle features of outbound memory
>   of: address: add support to parse PCI outbound-ranges
>   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
>     controller
>   pci: rcar: add support for rcar pcie controller in endpoint mode
>   misc: pci_endpoint_test: add device-id for RZ/G2E pcie controller

The next time you post this, please update the subject lines to match
existing conventions (capitalize "PCI", description is a complete
sentence starting with a capitalized verb, etc").  Run "git log
--online" on the file you're changing and make yours look the same.

  s/pci: /PCI: /
  s/pcie-rcar: /rcar: /
  s/pcie/PCIe/
  s/device-id/Device ID/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
