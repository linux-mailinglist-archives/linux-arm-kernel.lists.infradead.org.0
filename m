Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51181BA51C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JprdwsK3Or29G5EQ86llBvfqD5dXDLsvg0ogFs8nk0M=; b=WqLyXXW4QoTsye
	qpAaPfqWLzHqcY2wysVJP6UBlfgwSzG3skgl1JeLRUu8NdRwXg8E972yhD5fL7HssbE6QnRbx4IKk
	+Lk+JOxYC2QoJ8j4UXq9W0uKAnzNipJqxbs9MKd8xCVzC/Ccwup/HquT3v9bz0na3Zcycxz4mgBmn
	s5sMRmC33P2X/eSx+rmfJ3xctT1GV9vUFUjz5GPVtHxa/puDpSK6JXUTgJpYK3iSp1skEKbCC5w7O
	MW1eJXabvxnG2f/kF0A/bhl9BaVXr+9n8GTWBj7kgDnpgWipvy9CmviGV+DFXEkSOv2MF83/QWxpY
	N9LKWIV2WOZLD2pex0xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT41m-0005X8-Os; Mon, 27 Apr 2020 13:42:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT41C-000509-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gzBP/5TPSgWoYnfvROGi040waenlBeLNeHeHZF/9krM=; b=uS5ZF4Y4fsPKqhBVIAb9dODmx
 drtChwbes2kdwHDoLa75LyWIXKrhHIXZjaEQMWJIGLKFoKa2ofUeQWZmLoHx1TQkk4O/dcbHnMdA+
 LYPgroUuuUOU3QT59FVZ3jBmpMp8BW1JrhUNHt9hb+3FD1wkQYMO2ra27rRJDqhs96xlFLcEgGUjE
 TJtzQASnKCxW9BwvRWMS4oqO0eTivJF3RFAQRHnV8x93MiVJi117d7PjQSeRetx05riLVwzTdipI9
 qMlbycfDIPzWea/z8VRnFf8LvRfEyDMOJuwZUbl3mGWh+kD26YT0WYL2Hhzd1PsBZ5oLsfUNg0M5a
 LjdSx93zg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44630)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jT40w-000392-G1; Mon, 27 Apr 2020 14:41:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jT40v-0006hs-Lz; Mon, 27 Apr 2020 14:41:37 +0100
Date: Mon, 27 Apr 2020 14:41:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v2 1/3] device property: Introduce phy related
 fwnode functions
Message-ID: <20200427134137.GF25745@shell.armlinux.org.uk>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
 <20200427132409.23664-2-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427132409.23664-2-calvin.johnson@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064154_714235_1968BF56 
X-CRM114-Status: GOOD (  11.47  )
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

On Mon, Apr 27, 2020 at 06:54:07PM +0530, Calvin Johnson wrote:
> +/**
> + * device_phy_find_device - For the given device, get the phy_device
> + * @dev: Pointer to the given device
> + *
> + * If successful, returns a pointer to the phy_device with the embedded
> + * struct device refcount incremented by one, or NULL on failure.

It probably makes sense to refer the reader to the return conditions
for fwnode_phy_find_device() so that should fwnode_phy_find_device()
be updated, there's no need to modify multiple locations.

> + */
> +struct phy_device *device_phy_find_device(struct device *dev)
> +{
> +	return fwnode_phy_find_device(dev_fwnode(dev));
> +}
> +EXPORT_SYMBOL_GPL(device_phy_find_device);
> +
> +/**
> + * fwnode_get_phy_node - Get the phy_node using the named reference.
> + * @fwnode: Pointer to fwnode from which phy_node has to be obtained.
> + *
> + * Returns pointer to the phy fwnode, or ERR_PTR. Caller is responsible to
> + * call fwnode_handle_put() on the returned phy fwnode pointer.

This one even more so - fwnode_find_reference() is in an entirely
separate file, so the comment could well be missed.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
