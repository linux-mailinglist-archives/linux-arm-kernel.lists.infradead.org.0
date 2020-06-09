Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB441F3C69
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wz3+2+E1EFygGaKEoESuPlZPrevinJZZhKYOxpLTS2k=; b=SygHBvITE1ETJa
	Onzb2kpI/FTNMA03BWxdtn070L4BYFCwJcKGla2wPie3xOBntNTR/7/LaH2G2sKexxXgYFu9/H75t
	cvEsqg5r1Coze8/GuiILbJZvxgCHp5ARFQBZ5nJwRtCx4GatIvhE/UeM4Hys8yh0U1LML2gAPVoDC
	RBLk90sfeKZ8Cr5JuVOxIcf6J4HcHs9BSSGN+vBMpB0xNu849r5nutHZOEZAseQUZRtRg4lUyDWel
	ZwaZCk/DSlmN2HJGxDQZCIYVyBn8v87en979IZDURx3vpLjYOKzY256rQXbI5NHqOJAYwTIYby9z9
	2zv45ZgKreeFP2S7plZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieJP-0004RC-RP; Tue, 09 Jun 2020 13:29:07 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieJ8-0004PT-38
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UbfHPwkmXzUEv5TXx4dznj/38f1H17CuZRM3RaUTV8U=; b=ZGHYljfqzyYx0rKCK2hvXhZA7S
 eKPv/0fjooFG9D2TQWK6WxVjLqDDRWHXtb8Gzfi5StuX+aHQrdD21GV4KZBM7V+4GlzxHL+RR89IO
 kA9gPPnwVJtdZcJO/vLTs8f1xw/0mqRm+DN5SSlWcjzhqNSMMN71op3V8ma/VEVhhKpQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jieJ6-004W4U-Be; Tue, 09 Jun 2020 15:28:48 +0200
Date: Tue, 9 Jun 2020 15:28:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200609132848.GA1076317@lunn.ch>
References: <20200609131152.22836-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609131152.22836-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062850_177386_B36CDF5E 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 03:11:52PM +0200, Sascha Hauer wrote:
> The Marvell MVNETA Ethernet controller supports a 2.5Gbps SGMII mode
> called DRSGMII. Depending on the Port MAC Control Register0 PortType
> setting this seems to be either an overclocked SGMII mode or 2500BaseX.
> 
> This patch adds the necessary Serdes Configuration setting for the
> 2.5Gbps modes. There is no phy interface mode define for overclocked
> SGMII, so only 2500BaseX is handled for now.
> 
> As phy_interface_mode_is_8023z() returns true for both
> PHY_INTERFACE_MODE_1000BASEX and PHY_INTERFACE_MODE_2500BASEX we
> explicitly test for 1000BaseX instead of using
> phy_interface_mode_is_8023z() to differentiate the different
> possibilities.

Hi Sascha

This seems like it should have a Fixes: tag, and be submitted to the
net tree. Please see the Networking FAQ.

Otherwise it looks O.K.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
