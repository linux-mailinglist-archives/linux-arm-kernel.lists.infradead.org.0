Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B105F1C8C21
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TwxLAIHMG+SZ8oc/8ln2G3tYbNbGSZCtcruWopJ04Js=; b=RriUO1wedX6tN68zLBPYn/Xyl
	jsM1bWuTTrKaZLUb8wmEvzkg3LP2b6xxMDMVBpl4KckIVSB73nOk3D8m/PTVg8nY7kQVRg0Avk+G4
	VFfU2vTUPesHqQ6wal+5Mg1MosnzvMTx1CUmvQGchWwyTWmU3KVqldDPy+7DhSpBxJj0NO2pQxlXR
	WcR36W6tEgT9rIqcu1oBelHijFxslrwxyxSZAE6fZyqa7rBZDU7p7kyonnp8GMnjbicqLHF5nf59m
	aHIIOzeyP3hN4XzHTT/32bhm9/VCeoSRK7eqS8jLmHZ897U1oSdXzhE6BKlRL07jIZFISeYl0bDNY
	yaS3+ZIcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgY9-00030j-FT; Thu, 07 May 2020 13:26:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgXy-0002zh-D5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:26:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06F3C101E;
 Thu,  7 May 2020 06:26:40 -0700 (PDT)
Received: from [192.168.122.166] (unknown [10.119.48.73])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24FBF3F68F;
 Thu,  7 May 2020 06:26:39 -0700 (PDT)
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux.cj@gmail.com,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
Date: Thu, 7 May 2020 08:26:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_062642_485271_32E7DE49 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/5/20 8:29 AM, Calvin Johnson wrote:
> Extract phy_id from compatible string. This will be used by
> fwnode_mdiobus_register_phy() to create phy device using the
> phy_id.
> 
> Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>   drivers/net/phy/phy_device.c | 21 +++++++++++++++++++++
>   include/linux/phy.h          |  5 +++++
>   2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
> index 4204d49586cd..f4ad47f73f8d 100644
> --- a/drivers/net/phy/phy_device.c
> +++ b/drivers/net/phy/phy_device.c
> @@ -662,6 +662,27 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
>   }
>   EXPORT_SYMBOL(phy_device_create);
>   
> +/* Extract the phy ID from the compatible string of the form
> + * ethernet-phy-idAAAA.BBBB.
> + */
> +int fwnode_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id)
> +{
> +	const char *cp;
> +	unsigned int upper, lower;
> +	int ret;
> +
> +	ret = fwnode_property_read_string(fwnode, "compatible", &cp);
> +	if (!ret) {
> +		if (sscanf(cp, "ethernet-phy-id%4x.%4x",
> +			   &upper, &lower) == 2) {
> +			*phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
> +			return 0;
> +		}


Isn't the ACPI _CID() conceptually similar to the DT compatible 
property? It even appears to be getting used in a similar way to 
identify particular phy drivers in this case.


Thanks,




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
