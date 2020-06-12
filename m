Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCC41F77BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDkX0EISYrX1BjZiEMbG4QxJOEo6tjF2l18Tg9UlpFk=; b=I+DtLHcKB7wmM3
	fi+Icld1iFPfcU1n+8nS8B//LyuLsjWVzjV7bPAM2yi0ROaAJyT4rx/59k07Wk57IEyf32QLggY2u
	Ykhzu97PUfGS3/nMvrUkNaDzVmy4Ywb0uTQLQDyi4CqSTXL/lmlXTXLia6iCUUkNtn09xXMT2JAEW
	2opbXYlBFbxngJMEBm0YRL+AnbimLsN4rYMY55qYIUcAeA8ER6MmVa7wi8efg4QjOzQBQPVL+8RIv
	Etvglt468+fuvfKaXu3qru6I7rAMktpUwwoWAyx0pIJaEnUacbp+PSeevYDQ8dctNKpNEe0l8rsBc
	chyTJ0xSFmADp2uSjc9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiYJ-0007eJ-I4; Fri, 12 Jun 2020 12:12:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiYC-0007dR-4l
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yK0/1c9HKj2vF/aVFuOZ5pmsjzwvYf0jnH1dHlUlTaU=; b=Cx7RuQ86PB3ddeJ2xmouu/uKH
 0xZPWb+ognvv1FUceCJLBroZnRKagl9MUwZtLcQp8ifCoKSPaAwBSg4qyIg59XcxrGEzZ1WpyLaEk
 nZkhKYaSi41JVrdTtOpk1kAa8Xu+KrKX4mGgpSu43l7w0/ltuajXq80uObZcLGWovVTnzm4LMdwJu
 OWqfGyzdRtsPRxXmhNB/TADT39c2G+V63xY3xMmen/TWEoCLRDExipNWDvbGZaCmnebG5czbGfhXb
 jTrEsyyS9XksQmjs06sI57lA/Y4zG5RqGVuRMxKa3hEg04XGdwd9B+35wJaHd79bY8WzLTHMLyRV0
 Ycld0pp5w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44620)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjiY4-0002oG-A5; Fri, 12 Jun 2020 13:12:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjiY3-0006G9-Lp; Fri, 12 Jun 2020 13:12:39 +0100
Date: Fri, 12 Jun 2020 13:12:39 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200612121239.GJ1551@shell.armlinux.org.uk>
References: <20200612083847.29942-1-s.hauer@pengutronix.de>
 <20200612084710.GC1551@shell.armlinux.org.uk>
 <20200612100114.GE1551@shell.armlinux.org.uk>
 <20200612101820.GF1551@shell.armlinux.org.uk>
 <20200612120604.GT11869@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612120604.GT11869@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_051248_187103_206CFAD2 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 02:06:04PM +0200, Sascha Hauer wrote:
> And here is the same patch which applies on master and the net tree.
> It works as expected on my Armada XP in 2.5Gbps mode. Provided you are
> happy with the patch I can send it as a formal patch on monday if by
> then you haven't done that already.

As mentioned in one of my replies, there's a bug the patch I sent...

> @@ -3533,9 +3535,6 @@ static int mvneta_comphy_init(struct mvneta_port *pp)
>  {
>  	int ret;
>  
> -	if (!pp->comphy)
> -		return 0;
> -
>  	ret = phy_set_mode_ext(pp->comphy, PHY_MODE_ETHERNET,
>  			       pp->phy_interface);

mvneta_comphy_init() needs to be passed the interface mode, and pass it
thrugh to phy_set_mode_ext().

>  	if (ret)
> @@ -3544,11 +3543,49 @@ static int mvneta_comphy_init(struct mvneta_port *pp)
>  	return phy_power_on(pp->comphy);
>  }
>  
> +static int mvneta_config_interface(struct mvneta_port *pp,
> +				   phy_interface_t interface)
> +{
> +	int ret = 0;
> +
> +	if (pp->comphy) {
> +		if (interface == PHY_INTERFACE_MODE_SGMII ||
> +		    interface == PHY_INTERFACE_MODE_1000BASEX ||
> +		    interface == PHY_INTERFACE_MODE_2500BASEX) {
> +			ret = mvneta_comphy_init(pp);

and this needs to be:
			ret = mvneta_comphy_init(pp, interface);

Otherwise, the comphy uses the _old_ interface mode each time this
function is called.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
