Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445691BA590
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mzal9zaZ0ZvwtkWRk+ITTk6+R/5NCm+pbeOH98Z474=; b=q/AD14W/FVutVD
	+TGuM9fy84JYQSjNssWmwqB6b6PdSbtQKS4z61XHPTNzK4BQr8KkqZBg5KNUY7V48IXrMdnougUhF
	gDrfR1OsyulE3NTG2AcIQ89cgat6ROyI1goG83a2yOt4pON0dVpj/xA7t/7Q33lqCll+7ovy4Lvdk
	DXPsFTtvtv/EEiPQPplSEYR7M3cWCcFV4HMNbIhPF1be8vBZ81ujmn3pkKb7Nm9odLazjhHwXLYmi
	x5D6ejKf7uc2o3CWHpfRIPk8w0Ko9giZCFSl+HGqTbkDOD+MRTMslG0zu9OpqNysQToVFtP29EsZ/
	40H2tfjYBhAi6hwLGLxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4HZ-0000fY-DB; Mon, 27 Apr 2020 13:58:49 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4HM-0000eI-10
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HI+hXdef3teFcq3aFHJ+lNQ36+H/xnayzEP1cLz139A=; b=m8KykkkylWdoseBY1n/gsoqEh
 KVFTqlhC0kFSp30GS16jUkbUZq7hRIIFETkZzuGl9kBqK2RTa4RTpC3CXJ9+Rj7Y2/iLhSK6XgT3N
 ScefK7wtt9WxTxKjVKBC1wqYSRrECSrlLe9tbgSH1oytOZq2pylhi5zsVzFC+5p4NpsqR+RUNxT9D
 XtUWUAj78s5iuppoliNlc9owGzJlBFNQSFZrqSOPfgOik+W8NN+vB08RqRaYtuQPZwCNiRbA7SqBY
 h1PR2wiMjIpCXZqlGIY/VXWn7lBiRbKH5zdlKb0HDEBtgr2ibt+ebxHGba7DtaX29ZXB3ypvrWRYi
 E6rLzrZ9Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44642)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jT4H7-0003EQ-Ql; Mon, 27 Apr 2020 14:58:22 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jT4H6-0006iG-Q0; Mon, 27 Apr 2020 14:58:20 +0100
Date: Mon, 27 Apr 2020 14:58:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v2 0/3] Introduce new APIs to support phylink
 and phy layers
Message-ID: <20200427135820.GH25745@shell.armlinux.org.uk>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_065836_141898_5E40BC1B 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 06:54:06PM +0530, Calvin Johnson wrote:
> Following functions are defined:
>   phylink_fwnode_phy_connect()
>   phylink_device_phy_connect()
>   fwnode_phy_find_device()
>   device_phy_find_device()
>   fwnode_get_phy_node()
> 
> First two help in connecting phy to phylink instance.
> Next two help in finding a phy on a mdiobus.
> Last one helps in getting phy_node from a fwnode.
> 
> Changes in v2:
>   move phy code from base/property.c to net/phy/phy_device.c
>   replace acpi & of code to get phy-handle with fwnode_find_reference
>   replace of_ and acpi_ code with generic fwnode to get phy-handle.
> 
> Calvin Johnson (3):
>   device property: Introduce phy related fwnode functions
>   net: phy: alphabetically sort header includes
>   phylink: Introduce phylink_fwnode_phy_connect()

Thanks for this, but there's more work that needs to be done here.  I
also think that we must have an ack from ACPI people before this can be
accepted - you are in effect proposing a new way for representing PHYs
in ACPI.

> 
>  drivers/net/phy/phy_device.c | 83 ++++++++++++++++++++++++++++++------
>  drivers/net/phy/phylink.c    | 68 +++++++++++++++++++++++++++++
>  include/linux/phy.h          |  3 ++
>  include/linux/phylink.h      |  6 +++
>  4 files changed, 146 insertions(+), 14 deletions(-)
> 
> -- 
> 2.17.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
