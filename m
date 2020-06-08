Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB191F1CEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 18:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hjxm2GOjPO/EbAprZ5GNdCEOBZeC4oYO2GmlqI7ljm0=; b=Bc+BzQIE5iuGkf
	jtaEC6GiTVt+ripjyYeKZZa8gM3YiCJ4cmJgY52UKieqoknWwBFu7d1klXrdrL3Zqj2A9wUZ/acgI
	SziH9cnjDwQBkoI/FdqzqtfWaIEe1esxWl9X6SuKEDlBlWpNRf5+gBdkh8VIr5EVWvUoAx8+eOX31
	gZ0VVisxN17hR6J5PjmfyfsWeNaPdAfps0NdGdvMGaGN8SkCoN3gitZTKh6A76VtKXGhkk/pLD8w+
	5vqexbalNkA3rLIr32DTdfvipUitreJLf3JHNfMlr3ONvrFJOEgx/hR7GKfoHOJ7n5FI79lNCxXh0
	3bZne1H9E+fHA0Zy3EEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKKN-0006Zr-A0; Mon, 08 Jun 2020 16:08:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKKD-0006Uy-Sq
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 16:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7VoRl6qQlPxAENq4swBjnhUVEexaLc0WppnAtA1JmcY=; b=0WRHvJzJToSgd8Xjgr1TW5lNh
 f6sbLcPfQYlR930Di+98noAUh6OtZQe7W6tdF6mQgk3nI3Of8xrxCVr8ots3PjNSAuSaGxDPlB5+a
 UZ3dzCTg/NReHWAwOA/J1G49dKJtwWy8u0XbEGN/XncsysEekP+B5WOP0+96wJ2SmnwIWBov2+QLY
 PeEfH4tSH0f4AZfr8n16AhQaXDXP/8lpYc4QjE+MpNYTG5fygyCk4ISApJJ/VXtWutflbFMcbPhoB
 WYDkjXyaopMoJI+WASx25CpQynsHz75ghL4IRBZmFlCn/uV1SkeUnMCGTxjsge7bQRG4NsdRY9ZhC
 dOQyVdQhQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:51000)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jiKJf-0000c8-OJ; Mon, 08 Jun 2020 17:08:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jiKJd-0002CW-W7; Mon, 08 Jun 2020 17:08:02 +0100
Date: Mon, 8 Jun 2020 17:08:01 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] net: ethernet: mvneta: add support for 2.5G DRSGMII mode
Message-ID: <20200608160801.GO1551@shell.armlinux.org.uk>
References: <20200608074716.9975-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608074716.9975-1-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_090837_970336_2E5C394B 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 09:47:16AM +0200, Sascha Hauer wrote:
> The Marvell MVNETA Ethernet controller supports a 2.5 Gbps SGMII mode
> called DRSGMII.
> 
> This patch adds a corresponding phy-mode string 'drsgmii' and parses it
> from DT. The MVNETA then configures the SERDES protocol value
> accordingly.
> 
> It was successfully tested on a MV78460 connected to a FPGA.

Digging around, this is Armada XP?  Which SoCs is this mode supported?
There's no mention of DRSGMII in the A38x nor A37xx documentation which
are later than Armada XP.

What exactly is "drsgmii"?  It can't be "double-rate" SGMII because that
would give you 2Gbps max instead of the 1Gbps, but this gives 2.5Gbps,
so I'm really not sure using "drsgmii" is a good idea.  It may be what
Marvell call it, but we really need to know if there's some vendor
neutral way to refer to it.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/net/ethernet-controller.yaml       | 1 +
>  drivers/net/ethernet/marvell/mvneta.c                      | 7 ++++++-
>  include/linux/phy.h                                        | 3 +++
>  3 files changed, 10 insertions(+), 1 deletion(-)
> 
> This patch has already been sent 3 years ago here:
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20170123142206.5390-1-jlu@pengutronix.de/
> Since then the driver has evolved a lot. 2.5Gbps is properly configured in the
> MAC now.

Nevertheless, adding a new interface mode needs properly documenting to
describe exactly what it is - see Documentation/networking/phy.rst, the
section "PHY interface modes".  The above point about "what is this"
illustrates why we need these documented.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
