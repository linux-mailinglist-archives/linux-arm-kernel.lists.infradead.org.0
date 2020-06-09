Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06701F3B82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFGBL4koeC4P2Pq4W+zap6yIrsMZsUb7qFk/elbUZPo=; b=MeA1lquQIPzIXw
	4wsmS8UBt2qdlMApZceKq0T2/l5XcPmClySzr/TcAtrOOhKcHy2cyAfnMNDEuwb+wdodxk3omxk7T
	3EhSeDcUoCEIOAngviJI5RC6pFCMnUHk2TXw41tjLzy75TYP8piPUimBZ5gGpE63XkA+OgxVKG0FR
	0wekE3HiKRsqFiCcBEjA/pHjBtz0cu1GVPV+Mc2Y8WwvLHlqmhyf6z3odV51uYkrPeGiWf7yFmVyL
	A3wqOv1VTwwjLiOEcqF6yvdX+B9qyAR5TbyzkcInmYLEivvQa7sZa/itfHZxCgf5CkMwCw43s85vs
	EwdsPMqy5naqoc8cK4xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jie3O-0001Ru-Ef; Tue, 09 Jun 2020 13:12:34 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jie3E-0001Qk-9k
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T5qZZZONjhOyZmzsYwxogqZVynVoTskOeNFAgtVitgc=; b=0kT+i8bG4gJ9YNgZTit0buJYCX
 2qKIXFpSv1dv/f1KOB1LgmNQD0/+namhgfd9+b1HqSPiPqIfpSYY8G8TA6yoIElSoHuD6Wog52UkJ
 no6a7ZwRv6rKmWDmE7UTvQKa7kvzgR84SKAA9hSB0PpG340P16NmV+uv64+nvte0hASU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jie36-004Vx2-MB; Tue, 09 Jun 2020 15:12:16 +0200
Date: Tue, 9 Jun 2020 15:12:16 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] net: ethernet: mvneta: add support for 2.5G DRSGMII mode
Message-ID: <20200609131216.GJ1022955@lunn.ch>
References: <20200608074716.9975-1-s.hauer@pengutronix.de>
 <20200608145737.GG1006885@lunn.ch>
 <20200609125535.GK11869@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609125535.GK11869@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_061224_352593_1E75828D 
X-CRM114-Status: GOOD (  14.48  )
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 02:55:35PM +0200, Sascha Hauer wrote:
> On Mon, Jun 08, 2020 at 04:57:37PM +0200, Andrew Lunn wrote:
> > On Mon, Jun 08, 2020 at 09:47:16AM +0200, Sascha Hauer wrote:
> > > The Marvell MVNETA Ethernet controller supports a 2.5 Gbps SGMII mode
> > > called DRSGMII.
> > > 
> > > This patch adds a corresponding phy-mode string 'drsgmii' and parses it
> > > from DT. The MVNETA then configures the SERDES protocol value
> > > accordingly.
> > > 
> > > It was successfully tested on a MV78460 connected to a FPGA.
> > 
> > Hi Sascha
> > 
> > Is this really overclocked SGMII, or 2500BaseX? How does it differ
> > from 2500BaseX, which mvneta already supports?
> 
> I think it is overclocked SGMII or 2500BaseX depending on the Port MAC
> Control Register0 PortType setting bit.
> As said to Russell we have a fixed link so nobody really cares if it's
> SGMII or 2500BaseX. This boils down the patch to fixing the Serdes
> configuration setting for 2500BaseX.

Hi Sascha

Does 2500BaseX work for your use case? Since this drsmgii mode is not
well defined, i would prefer to not add it, unless it is really
needed.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
