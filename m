Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850081C5914
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2m15/RAXAGt1eEolW90FTrLpki2Li9ikQLSbfjIYDiI=; b=b73qlmy/avcagl
	YKyDFkLnOslqqfcbNd3ieR+vth2UZxLmEropUlZA+Y8M+5KyiA41li/Nh6MRiGtXNtcasnLezxknS
	KJDHVqldUB8GcEbduGBaEYTx8CHRSe3iJTVxnMFh575uXDPVW1exMw/wgTQA7lF1YjvGXaJL+xVqa
	kYUXorUEE6WxDB4pNUdZAqWLzNDE0lsOSsYICTPSd5XsrIOT6UVXu2EPfhq3tvXWCL4+UZRVpdwGc
	ekNrP9/5LabJviADEznD2S9ftj5hiXGusDhBDS5NvEKbSsTEdXtfrTDLsX/xKaHbwxAJmljXWtKwc
	OoDwe7VAm1ehpxKsaPIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVySd-0004yD-RO; Tue, 05 May 2020 14:22:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVySV-0004x3-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:22:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id n11so1077936pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DGtEu1KsY1dr41QJrz50PNo/qEe9hhqV40ULoK/JQEY=;
 b=fppBqTIEYFEQOtLCh6kQJwvY3nR8D9p8ij1Nzx+hThzSI07ASyz3kBNezKy+tic7KP
 Zsf+wOm64CalAwkvMC2Mn9o9GRINg584C08ghOx8sZ4R8wGd/azhLscwrtMcgP/mYDnB
 ZgRFeECtreW8oFOaEZr6Qg21KCWVxM01TVWPcQxJ2DMZ9UR37Nzdv0e41hgJ0k7F79h8
 2JYbgfr495aRcvDK02NYDBI3LfbGcvRNNJN+672pBDjqas9b7zmCfil/XJjjqPYnS0P7
 sIoQmrXY0ZceG8GEVLvJ9Y3oGMXtLSJXeRx2/ukitX0em9Qy7H+YEvjg3qurclkmeY3s
 xjnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DGtEu1KsY1dr41QJrz50PNo/qEe9hhqV40ULoK/JQEY=;
 b=Cz4Kj+wR5mm5QuolTv4HSfe0TfKz8ZcrgqFWRx8lzJ3Yx7Y2UvafV93FR2gbbPS7W9
 yeZ38V9NZUAE5GUJQQkQbVBZyOD26ssRVqNWAVeFsV3Ss9vJlUg0admL5FfZb4jzVWAK
 IcaBulmZL5/XFzYGZo8kx6dXGJTo5WLrdzywGOcscPF8Q6pScnUf6ZB9q7MXykfR/8wK
 V4uM1DPxNygIDX1oU6deP0q7Ur+yJGFDMOrob/Q0IfAXMIu7WvXBW52ijscEivR4qL1V
 Miq7FnVnJMvXW543Kq0/SHtOR3UCKmIY1UfeitO/CW+nJdELVXlFIhi2RKs5N/kvkuFg
 AVyw==
X-Gm-Message-State: AGi0PuZkPMaqwZaS5ELxYeMR6jastV4vm9QPw89PrlKPk6aaKCGEYs+i
 rWPJC2gKM38uFAPr2nMd168MfRqp4bvvYHaLHcU=
X-Google-Smtp-Source: APiQypIUZH8pTQ1mbnyQiBF+62SPk1HAQJexRMaWRWP7pjcZ9uW5NVk9E1Cq2JTRPBaIyTEIMjg4XAmxWxh6LToXh94=
X-Received: by 2002:a65:6251:: with SMTP id q17mr3052332pgv.4.1588688527041;
 Tue, 05 May 2020 07:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-6-calvin.johnson@oss.nxp.com>
In-Reply-To: <20200505132905.10276-6-calvin.johnson@oss.nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 5 May 2020 17:22:00 +0300
Message-ID: <CAHp75VfOcQiACsOcfWyJSP1dzdYpaCa-_KKf==4YCkaM_Wk3Tg@mail.gmail.com>
Subject: Re: [net-next PATCH v3 5/5] net: mdiobus: Introduce
 fwnode_mdiobus_register_phy()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072207_856755_3C7B3F71 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 4:30 PM Calvin Johnson
<calvin.johnson@oss.nxp.com> wrote:
>
> Introduce fwnode_mdiobus_register_phy() to register PHYs on the
> mdiobus. From the compatible string, identify whether the PHY is
> c45 and based on this create a PHY device instance which is
> registered on the mdiobus.

...

> +int fwnode_mdiobus_register_phy(struct mii_bus *bus,
> +                               struct fwnode_handle *child, u32 addr)
> +{
> +       struct phy_device *phy;

> +       bool is_c45 = false;

Redundant assignment, see below.

> +       const char *cp;
> +       u32 phy_id;
> +       int rc;
> +

> +       fwnode_property_read_string(child, "compatible", &cp);

Consider rc = ...; otherwise you will have UB below.

> +       if (!strcmp(cp, "ethernet-phy-ieee802.3-c45"))

UB!

> +               is_c45 = true;

is_c45 = !(rc || strcmp(...));

> +       if (!is_c45 && !fwnode_get_phy_id(child, &phy_id))

Perhaps positive conditional

if (is_c45 || fwnode_...(...))
  get_phy_device();
else
  ...

> +               phy = phy_device_create(bus, addr, phy_id, 0, NULL);
> +       else
> +               phy = get_phy_device(bus, addr, is_c45);
> +       if (IS_ERR(phy))
> +               return PTR_ERR(phy);
> +
> +       phy->irq = bus->irq[addr];
> +
> +       /* Associate the fwnode with the device structure so it
> +        * can be looked up later.
> +        */
> +       phy->mdio.dev.fwnode = child;
> +
> +       /* All data is now stored in the phy struct, so register it */
> +       rc = phy_device_register(phy);
> +       if (rc) {
> +               phy_device_free(phy);

> +               fwnode_handle_put(child);

Shouldn't mdio.dev.fwnode be put rather than child (yes, I see the assignment)

> +               return rc;
> +       }
> +
> +       dev_dbg(&bus->dev, "registered phy at address %i\n", addr);
> +
> +       return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
