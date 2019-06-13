Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1544843304
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 08:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnBCvhSUk5GthbHTTrL9FdEbrMGjth/sMqbEjQf8pQY=; b=ZiTK8fMeP878s3
	VTKtXoGCKQr4HyyJqfM2yMUdIODzNmtMWGrOqXMY0iEX1RA3PW+4dUF/VylpDyz0RIb3mZogojFIz
	UBlqxBW20VPRIo2a99voI8dABYor83KfICT3SdwTZ3aePzjTDx6RkncoKrGcXthB5PGSQV5hl7JwA
	poMIVdWDud3uaKZnvvH4GRcSL8xvJHlxiMIvAGp1kUl94iL8zFJqpP79dtDx8DICHNPIsKyw9LOts
	SDpR9PYedWJoyHAKsH+DCaz9EofFUOIt3AyoI1n6dCK08GwF2eolefpIhCOp/y+OkmlSBTVvZtCAs
	XhoTJeLJ9AwqhfSVVNEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJfS-0005u6-UA; Thu, 13 Jun 2019 06:57:03 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJfD-0005tV-75
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 06:56:48 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hbJf4-0006EI-Qa; Thu, 13 Jun 2019 14:56:38 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hbJf0-00055K-Vu; Thu, 13 Jun 2019 14:56:35 +0800
Date: Thu, 13 Jun 2019 14:56:34 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Message-ID: <20190613065634.alck5wads6toe7uk@gondor.apana.org.au>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
 <20190612103926.GE11086@dragon>
 <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20190612130602.GH11086@dragon>
 <VI1PR0402MB348596BF52CE43B5D4CD534798EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20190612132600.GI11086@dragon>
 <20190612135952.ds6zzh7ppahiuodd@gondor.apana.org.au>
 <20190613004709.GB20747@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613004709.GB20747@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_235647_425239_A73E5771 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>, Horia Geanta <horia.geanta@nxp.com>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 08:47:10AM +0800, Shawn Guo wrote:
> On Wed, Jun 12, 2019 at 09:59:52PM +0800, Herbert Xu wrote:
> > On Wed, Jun 12, 2019 at 09:26:02PM +0800, Shawn Guo wrote:
> > >
> > > Yes, it happens from time to time depending on maintainer's style. I'm
> > > fine with the DT changes going through other subsystem tree, if the
> > > subsystem maintainer wants to and is willing to take the risk of merge
> > > conflict between his tree and arm-soc tree.
> > 
> > I have no problems with potential merge conflicts.
> 
> Then feel free to take it:
> 
> Acked-by: Shawn Guo <shawnguo@kernel.org>

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
