Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E178F7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTnb+J0dPiQ287EKa3lQvjSVf9EDGoYVyI2dT0RGe8g=; b=gswe/LzFfx6tX6
	76cl7k+k5H0DpOh9R4sCRUqo/Ba+NkUaY7YJD8h8kPsfkSfcjni8EHCfbysP7ucMesO2639X+LmGH
	MQG+G4K4ph3dyQ1YAXNglx6WrBUPSTQTT9OLTfWPMzqXvL9g01veo3b66hV/zkGEJLQqkG7c/DQ4Y
	rc32+YFDXd9Fot7gfYcZZ2FIZ+aYYcf+I52MG/xLJA7nRLyrudUFZIh0OSe8PyRTRJMFzAO/iZVTG
	WOUamblt0pIEixbCa8CPRNqrToxXrDZET9wlI8/ZuW3ZsXk9GcTdULS4S2CaJ02PJ4P6KJx1a9xu+
	wzNayeInsKLV9CoszHlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7iw-0001ER-KK; Mon, 29 Jul 2019 15:38:06 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7if-00019X-9P
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E8+StAJi8iR+10hnQNem7TjVI3Aa8ZKLhuLix4pgEFU=; b=Glj5iqr8L2yWUK8p+I64wgdP9q
 DZOE9qPw6xIsieVDpKTkB1Y/FmeR8En9e9crk2+PXwgDl7axcaxmAX9YslGJySYLZbDIsuh1p89rQ
 Ps3ONpBtXfyrGD5OoRmNMw7K0SJagtQkNh7iJv97bmLTOSbF7YvCilxzuOkF0y/TrHs4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hs7ib-0002Wc-2C; Mon, 29 Jul 2019 17:37:45 +0200
Date: Mon, 29 Jul 2019 17:37:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next v3 4/4] arm64: dts: fsl: ls1028a: Enable eth
 port1 on the ls1028a QDS board
Message-ID: <20190729153745.GI4110@lunn.ch>
References: <1564394627-3810-1-git-send-email-claudiu.manoil@nxp.com>
 <1564394627-3810-5-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564394627-3810-5-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_083749_477665_59E81571 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, Jul 29, 2019 at 01:03:47PM +0300, Claudiu Manoil wrote:
> LS1028a has one Ethernet management interface. On the QDS board, the
> MDIO signals are multiplexed to either on-board AR8035 PHY device or
> to 4 PCIe slots allowing for SGMII cards.
> To enable the Ethernet ENETC Port 1, which can only be connected to a
> RGMII PHY, the multiplexer needs to be configured to route the MDIO to
> the AR8035 PHY.  The MDIO/MDC routing is controlled by bits 7:4 of FPGA
> board config register 0x54, and value 0 selects the on-board RGMII PHY.
> The FPGA board config registers are accessible on the i2c bus, at address
> 0x66.
> 
> The PF3 MDIO PCIe integrated endpoint device allows for centralized access
> to the MDIO bus.  Add the corresponding devicetree node and set it to be
> the MDIO bus parent.
> 
> Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
