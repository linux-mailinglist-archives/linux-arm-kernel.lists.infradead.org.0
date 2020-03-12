Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C17E183BF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:08:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZKIZkSP0lccHsWeL+3d4PgFGSyre9TrbZDzs9UthCE=; b=cawA3tuljyb2sN
	6myvM8rbt1KXEjb7QDZa3+jYXdGw1lnCw+Wdndx2v9F1ORm9mRl++K0J97k2hel1xIt7R9lZQrZHR
	/IV5RCaMEWk6FH155Pg4cu4mdHLKr/lwn4uzN+5QAbKcVE3wD46JlVRQe+8UE5lwb4JK5JIsrXz2e
	s6j0dISbmW/X4Odkm54fdOTjv5S/4nNgUGkz1bEDTSnQhnNmzzZH1h5kypTBW4HOx8onKAV+Y/mdx
	9EgtJ6RnFa/8it720NYdr90kUaJXHzdi+EaKGNdELQoXaKLnn6+5X4/eAsSKshd+Ei95Do9x/js7M
	5WCJv7ONFXaSWnDGX4aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVzh-0003l4-VM; Thu, 12 Mar 2020 22:07:57 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVza-0003hS-6K
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:07:52 +0000
Received: by mail-ed1-x541.google.com with SMTP id a24so9450084edy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 15:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=09HoQ5yKKTzC52h8DcFum9TdRrDdU+q3hWjuJoEs67M=;
 b=NeCAbPd46VNfEXE/GihhtpSTXB6ri3ZXEQPFz1pFr7zwBKof5kilpHWiLqxuzUQ+rR
 PzsxPDGD2VTa6vvrkYDUmDlUBg5Q6KJRbr2NnpoF1xxqOvhNM0WdwAQqc/n5gNurbg/A
 GMOq/LGBtgK0AYf15pZflLJtbe4zvq48tugK1M3DiFGzMr6ehYwEdkr94iEkbehJfMKf
 VXe43ZlvCvmI+wGAlgpIwUVj1wq5lPV8K1LJ8wU41ffVhkV1qHQSZmcp7IBpzHprvJ4o
 Ki/GgtCTlu/8e+55iXIK+T1Rn3/hhHXisRtChqa5N30/eBVNZeSnYeUmgg8gdVKwG80k
 tzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=09HoQ5yKKTzC52h8DcFum9TdRrDdU+q3hWjuJoEs67M=;
 b=aXzGUWq+4BIlYwAOpWc3KwKWJ4t2QINjPAdmFo6wbjNh1G7+h9s7isHmHJi+ac/2ta
 lvdU9cNcR6MDnKBb9ETccY2FneKj+Yypf5cAIMJLtZJ5WBnITJBIZHCXwagZrcguzk6T
 rzzCLm3U9KKek8zRarrHvrOI+kbZpzIhZqQ82VBe7+tjxCEqZDLAs8tP9R66iWm2nT2Q
 sbYLE9QOhdrmsTy82CRk1bfnJrXHrcDq+O9ymIGOWns4KbI6VmaVyu1vJEOkrULXHW0g
 pmoC/S7Px2EJ1ZuLvK8SamAauFeK3tgZ8st0AkpGuDsXnjgmvoheeaD/smM4/5BbmCyr
 bVvA==
X-Gm-Message-State: ANhLgQ1NjNXI9YTtBDmRr9UDYPntZUwQJB/ZHtO3A4qXnBMnWq1WbXG5
 0KobPAUEcRRqx+dP+uDdFtb3ccL/YWDZai+mDS0=
X-Google-Smtp-Source: ADFU+vv29LV+LrHrAX74+0u8zlCtfmsF/tpTKCLUjivUWOJdldY59uyR0/VG72OTulhoqTqPuaKSJTEcVeLL/ygAGT0=
X-Received: by 2002:a17:906:76c6:: with SMTP id
 q6mr8622638ejn.176.1584050868783; 
 Thu, 12 Mar 2020 15:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200312164320.22349-1-michael@walle.cc>
 <CA+h21hoHMxtxUjHthx2ta9CzQbkF_08Svi7wLU99NqJmoEr36Q@mail.gmail.com>
 <55374edd-2698-6841-569c-cccf1151cfb1@gmail.com>
In-Reply-To: <55374edd-2698-6841-569c-cccf1151cfb1@gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 13 Mar 2020 00:07:37 +0200
Message-ID: <CA+h21hrHGJxV8zbG4NSsHEAUucA8s+P6eyFAtWn-C6yk=52ehA@mail.gmail.com>
Subject: Re: [PATCH 1/2] net: dsa: felix: allow the device to be disabled
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_150750_238385_E16A4082 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 netdev <netdev@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 at 23:45, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 3/12/20 2:35 PM, Vladimir Oltean wrote:
> > On Thu, 12 Mar 2020 at 18:44, Michael Walle <michael@walle.cc> wrote:
> >>
> >> If there is no specific configuration of the felix switch in the device
> >> tree, but only the default configuration (ie. given by the SoCs dtsi
> >> file), the probe fails because no CPU port has been set. On the other
> >> hand you cannot set a default CPU port because that depends on the
> >> actual board using the switch.
> >>
> >> [    2.701300] DSA: tree 0 has no CPU port
> >> [    2.705167] mscc_felix 0000:00:00.5: Failed to register DSA switch: -22
> >> [    2.711844] mscc_felix: probe of 0000:00:00.5 failed with error -22
> >>
> >> Thus let the device tree disable this device entirely, like it is also
> >> done with the enetc driver of the same SoC.
> >>
> >> Signed-off-by: Michael Walle <michael@walle.cc>
> >> ---
> >>  drivers/net/dsa/ocelot/felix.c | 5 +++++
> >>  1 file changed, 5 insertions(+)
> >>
> >> diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
> >> index 69546383a382..531c7710063f 100644
> >> --- a/drivers/net/dsa/ocelot/felix.c
> >> +++ b/drivers/net/dsa/ocelot/felix.c
> >> @@ -699,6 +699,11 @@ static int felix_pci_probe(struct pci_dev *pdev,
> >>         struct felix *felix;
> >>         int err;
> >>
> >> +       if (pdev->dev.of_node && !of_device_is_available(pdev->dev.of_node)) {
> >> +               dev_info(&pdev->dev, "device is disabled, skipping\n");
> >> +               return -ENODEV;
> >> +       }
> >> +
> >
> > IMHO since DSA is already dependent on device tree for PHY bindings,
> > it would make more sense to move this there:
>
> Michael's solution makes more sense, as this is a driver specific
> problem whereby you have a pci_dev instance that is created and does not
> honor the status property provided in Device Tree. If you were to look
> for a proper solution it would likely be within the PCI core actually.
>
> No other DSA switch has that problem because they use the
> I2C/SPI/platform_device/GPIO/whatever entry points into the driver model.

True, my problem with doing it in the PCI core is that "the book" [0]
doesn't actually say anything about the "status" property, so this
patch might get some pushback from the PCI maintainers (but I don't
actually know):

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 512cb4312ddd..50c2b3da134a 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2281,6 +2281,12 @@ static struct pci_dev *pci_scan_device(struct
pci_bus *bus, int devfn)

        pci_set_of_node(dev);

+       if (dev->dev.of_node && !of_device_is_available(dev->dev.of_node)) {
+               pci_bus_put(dev->bus);
+               kfree(dev);
+               return NULL;
+       }
+
        if (pci_setup_device(dev)) {
                pci_bus_put(dev->bus);
                kfree(dev);

OF bindings are completely optional with PCI, as you probably already
know. But there's nothing "driver" specific in disabling (i.e. not
probing) a device.

> --
>

[0] https://www.openfirmware.info/data/docs/bus.pci.pdf

Thanks,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
