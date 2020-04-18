Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C5D1AF165
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 17:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InHxmpN2ogoSVvYlZiMQzibKoYYOp/1UBNpfXgSjx/0=; b=fBVFXu06bl229Q
	iX/APcq0wqVtKfCN2JjMJ7mr1MvFjXoSbBFcToEpUNPjEBFaMCNItRGwiM3AktL+pQ83FF+ydVBZH
	hDAEOvaNdJ2bwU8hK2qo3+FIg3S2iSKVNxzPDT3QFDQsfPLnzMVNXtdCRa/3M4NJATEC7+5aPRCi5
	t5wq0bfoG3EveV23KbgvSOaLOcrvZ2aW5O2kZe9X23z+oHF1p3bpSVsSqrcmXgkMuoS+xUtpd42aA
	R5VZBw3x3xvHK9wa8uxY8/kYs3nBYAHOP/xd5v58aLRZ2axchwF4WzvkC1DI2LUq/tcfoZeReg7BU
	+JYDBTcpk1tKko7mWwhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoxX-0005rc-Gq; Sat, 18 Apr 2020 15:00:43 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPoxO-0005pU-5d
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 15:00:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3k2dnf2InJf5CY0m1dDSEfIyndBrROF/WgHcjwyBxz4=; b=KZEI8tMMhflTCK9sm+aYt1BQh5
 r0QGwzESr7kJXvksintdRLT/3sVUATQbUgfHf//Cv4Cf24va5mHEZd+9Unk7p33MfBJzdChpPBqwI
 ZzvR2BzA0fosErF5fON5HkgcP9thFH1bSG/lL3sbiM3NhEgkqJF1bTUWe24BwDKqlkoQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jPoxJ-003TWR-36; Sat, 18 Apr 2020 17:00:29 +0200
Date: Sat, 18 Apr 2020 17:00:29 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [RFC net-next PATCH v2 2/2] net: dpaa2-mac: Add ACPI support for
 DPAA2 MAC driver
Message-ID: <20200418150029.GH804711@lunn.ch>
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
 <20200418105432.11233-3-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418105432.11233-3-calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_080034_211839_1329CB85 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 linux.cj@gmail.com, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -	err = phylink_of_phy_connect(mac->phylink, dpmac_node, 0);
> +	if (is_of_node(dpmac_node))
> +		err = phylink_of_phy_connect(mac->phylink,
> +					     to_of_node(dpmac_node), 0);
> +	else if (is_acpi_node(dpmac_node)) {
> +		status = acpi_node_get_property_reference(dpmac_node,
> +							  "phy-handle",
> +							  0, &args);
> +		if (ACPI_FAILURE(status))
> +			goto err_phylink_destroy;
> +		phy_dev = fwnode_phy_find_device(args.fwnode);
> +		if (!phy_dev)
> +			goto err_phylink_destroy;
> +
> +		err = phylink_connect_phy(mac->phylink, phy_dev);
> +		if (err)
> +			phy_detach(phy_dev);

So it looks like you need to add a phylink_fwnode_phy_connect(). And
maybe on top of that you need a phylink_device_phy_connect()?

So please stop. Take a step back, look at how the of_, device_,
fwnode_, and acpi_ abstractions all stack on top of each other, then
propose phylib and phylink core changes to implement these
abstractions.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
