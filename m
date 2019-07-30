Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768A97A96F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAK8ji/Bfeqd6binMW6QHxVDHiwfcVLcAayrIPvvFjg=; b=hzJHPnx7a2kYGi
	+7/O+3WjgTESvCyNGpipHRQhtYV1fChIEXrNG9Ni81sfh9q98HLWBx5wArnQhKfARYbAO6okB3VyL
	U5uXDNtvs6Yh7a9rTBew8Pzx+8FGKVIxPRwKPvFNw21pxtKUYqOrHRIR01VGZrWH1AhPK1AxQ1xxd
	1NsHN5PKBlOBtGXuOpQzvU1aabcg/dYvko73yVK2QLylmkgC6F9qzYbPyTvLE7p8pG2+bs22MPP8/
	bHlk9M4TtvTkoFeIV7R/59eaGN5QgTd4vGOBTyK/m4m3TVB2HuwZJNv1V63iDMsqP17F98j3ZuNuJ
	iOVRWpZXD94t6uSd4XIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsS61-0003It-Vh; Tue, 30 Jul 2019 13:23:18 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsS5o-0003IA-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rXRe9kHDGGLyA6ncp3ZI9KHQuqcnVK8NrDCC7iqaddA=; b=w6sW6BpyS5l6hMWAd9l8xOA83D
 H4NPG9IckFh697Pl9FN1XsESmkSY3d9IgHRS679ncIkR21uK/Zevu4ZNgYWSfH7NCP01kaGc7FYfZ
 KMTdhxY2Ec0urBfRCqMNodkUBet+58Cl5eZbFngzGr0R3XWr3Sw/zsGUbvaJ3Tq9aeV4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hsS5h-0007de-Fc; Tue, 30 Jul 2019 15:22:57 +0200
Date: Tue, 30 Jul 2019 15:22:57 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next v4 2/4] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Message-ID: <20190730132257.GB28552@lunn.ch>
References: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
 <1564479919-18835-3-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564479919-18835-3-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_062304_532955_F2A530DE 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 12:45:17PM +0300, Claudiu Manoil wrote:
> ENETC ports can manage the MDIO bus via local register
> interface.  However there's also a centralized way
> to manage the MDIO bus, via the MDIO PCIe endpoint
> device integrated by the same root complex that also
> integrates the ENETC ports (eth controllers).
> 
> Depending on board design and use case, centralized
> access to MDIO may be better than using local ENETC
> port registers.  For instance, on the LS1028A QDS board
> where MDIO muxing is required.  Also, the LS1028A on-chip
> switch doesn't have a local MDIO register interface.
> 
> The current patch registers the above PCIe endpoint as a
> separate MDIO bus and provides a driver for it by re-using
> the code used for local MDIO access.  It also allows the
> ENETC port PHYs to be managed by this driver if the local
> "mdio" node is missing from the ENETC port node.
> 
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
