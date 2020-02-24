Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B1216A33B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8DF+o/Fq6lDwS3IaXsd5AsiEf2PMFHdGAHIGfRB2PI=; b=LFmx6+/TI3Ze+y
	CPuVH14Lei1KGFzwYZjSKYE0hYKc6OWR+agPeM8nIVoZKhPGpl2oWJJB30OZ7paGqkX9O1zU5uPJZ
	f/HhcGrZFaFhjC3HieUJwnKRAbBjhYplxTRoiw2GDO7TUE8lN9Qdkkx9hdHHyVvv76Q4LzaZX/EHx
	kc6iRSp3q0ClyaqTbt1J8oG5q3+60IDOx0auXrvyOxR5k6XpMFiF3Aek2ncdZjdkvcTCKEW8cFWmq
	IWG7ISVFpFx/QdKtVwkM38U7rnbMZDXXvsezMLpOk/h54ZwhtszVHPaoeCaJtsyy7azAR0+QkOD2h
	G2fV3x2mVg91ciLTnx6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ASw-00038G-AS; Mon, 24 Feb 2020 09:55:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AEq-0002WN-OD; Mon, 24 Feb 2020 09:41:22 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 369712082E;
 Mon, 24 Feb 2020 09:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582537280;
 bh=1nAZsSaUpHnLId7l7noD4HYXX57ZdAUDrqEkhcXwCPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GskwDtqL8f/ZWRzCOvxGcyxW6mNShCW4StY026PH6q/pDUg7tyPsi1NDpHEPqYTyX
 n4Qwp1T/y5YcTHSj+6iAGjmOodjHRq5qCwbhYdOl97tIujIo7+N5x0no0YeI4lUw5Q
 Lp1Vj/BfZuEJ0I+HOis1+V3nFXWuVeS3Rgk8QFjc=
Date: Mon, 24 Feb 2020 11:41:16 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Kiyanovski, Arthur" <akiyano@amazon.com>
Subject: Re: [PATCH net-next v1 12/18] net/amazon: Ensure that driver version
 is aligned to the linux kernel
Message-ID: <20200224094116.GD422704@unreal>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-13-leon@kernel.org>
 <79ed2b392b4e413faef03f4bb2f8d562@EX13D22EUA004.ant.amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79ed2b392b4e413faef03f4bb2f8d562@EX13D22EUA004.ant.amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_014120_850882_18E642AF 
X-CRM114-Status: GOOD (  27.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 "linux-acenic@sunsite.dk" <linux-acenic@sunsite.dk>,
 Andy Gospodarek <andy@greyhouse.net>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 Veaceslav Falico <vfalico@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Tom Lendacky <thomas.lendacky@amd.com>, Jay Cliburn <jcliburn@gmail.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Don Fry <pcnet32@frontier.com>,
 "nios2-dev@lists.rocketboards.org" <nios2-dev@lists.rocketboards.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ion Badulescu <ionut@badula.org>, "Belgazal, Netanel" <netanel@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 09:03:14AM +0000, Kiyanovski, Arthur wrote:
>
>
> > -----Original Message-----
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Monday, February 24, 2020 10:53 AM
> > To: David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>
> > Cc: Leon Romanovsky <leonro@mellanox.com>; Tom Lendacky
> > <thomas.lendacky@amd.com>; Keyur Chudgar
> > <keyur@os.amperecomputing.com>; Don Fry <pcnet32@frontier.com>;
> > Veaceslav Falico <vfalico@gmail.com>; Jay Vosburgh <j.vosburgh@gmail.com>;
> > linux-acenic@sunsite.dk; Maxime Ripard <mripard@kernel.org>; Heiko Stuebner
> > <heiko@sntech.de>; Mark Einon <mark.einon@gmail.com>; Chris Snook
> > <chris.snook@gmail.com>; linux-rockchip@lists.infradead.org; Iyappan
> > Subramanian <iyappan@os.amperecomputing.com>; Igor Russkikh
> > <irusskikh@marvell.com>; David Dillow <dave@thedillows.org>; Belgazal,
> > Netanel <netanel@amazon.com>; Quan Nguyen
> > <quan@os.amperecomputing.com>; Jay Cliburn <jcliburn@gmail.com>; Lino
> > Sanfilippo <LinoSanfilippo@gmx.de>; linux-arm-kernel@lists.infradead.org;
> > Andreas Larsson <andreas@gaisler.com>; Andy Gospodarek
> > <andy@greyhouse.net>; netdev@vger.kernel.org; Thor Thayer
> > <thor.thayer@linux.intel.com>; linux-kernel@vger.kernel.org; Ion Badulescu
> > <ionut@badula.org>; Kiyanovski, Arthur <akiyano@amazon.com>; Jes Sorensen
> > <jes@trained-monkey.org>; nios2-dev@lists.rocketboards.org; Chen-Yu Tsai
> > <wens@csie.org>
> > Subject: [PATCH net-next v1 12/18] net/amazon: Ensure that driver version is
> > aligned to the linux kernel
> >
> > From: Leon Romanovsky <leonro@mellanox.com>
> >
> > Upstream drivers are managed inside global repository and released all
> > together, this ensure that driver version is the same as linux kernel, so update
> > amazon drivers to properly reflect it.
> >
> > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> > ---
> >  drivers/net/ethernet/amazon/ena/ena_ethtool.c |  1 -
> > drivers/net/ethernet/amazon/ena/ena_netdev.c  | 17 ++---------------
> > drivers/net/ethernet/amazon/ena/ena_netdev.h  | 11 -----------
> >  3 files changed, 2 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > index ced1d577b62a..19262f37db84 100644
> > --- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > +++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > @@ -404,7 +404,6 @@ static void ena_get_drvinfo(struct net_device *dev,
> >  	struct ena_adapter *adapter = netdev_priv(dev);
> >
> >  	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
> > -	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
> >  	strlcpy(info->bus_info, pci_name(adapter->pdev),
> >  		sizeof(info->bus_info));
> >  }
> > diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > index 0b2fd96b93d7..4faf81c456d8 100644
> > --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> > @@ -49,12 +49,9 @@
> >  #include <linux/bpf_trace.h>
> >  #include "ena_pci_id_tbl.h"
> >
> > -static char version[] = DEVICE_NAME " v" DRV_MODULE_VERSION "\n";
> > -
> >  MODULE_AUTHOR("Amazon.com, Inc. or its affiliates");
> > MODULE_DESCRIPTION(DEVICE_NAME);  MODULE_LICENSE("GPL"); -
> > MODULE_VERSION(DRV_MODULE_VERSION);
> >
> >  /* Time in jiffies before concluding the transmitter is hung. */  #define
> > TX_TIMEOUT  (5 * HZ) @@ -3093,11 +3090,7 @@ static void
> > ena_config_host_info(struct ena_com_dev *ena_dev,
> >  	host_info->os_dist = 0;
> >  	strncpy(host_info->os_dist_str, utsname()->release,
> >  		sizeof(host_info->os_dist_str) - 1);
> > -	host_info->driver_version =
> > -		(DRV_MODULE_VER_MAJOR) |
> > -		(DRV_MODULE_VER_MINOR <<
> > ENA_ADMIN_HOST_INFO_MINOR_SHIFT) |
> > -		(DRV_MODULE_VER_SUBMINOR <<
> > ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT) |
> > -		("K"[0] << ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT);
> > +	host_info->driver_version = LINUX_VERSION_CODE;
> >  	host_info->num_cpus = num_online_cpus();
> >
> >  	host_info->driver_supported_features = @@ -3476,9 +3469,7 @@
> > static int ena_restore_device(struct ena_adapter *adapter)
> >  		netif_carrier_on(adapter->netdev);
> >
> >  	mod_timer(&adapter->timer_service, round_jiffies(jiffies + HZ));
> > -	dev_err(&pdev->dev,
> > -		"Device reset completed successfully, Driver info: %s\n",
> > -		version);
> > +	dev_err(&pdev->dev, "Device reset completed successfully\n");
> >
> >  	return rc;
> >  err_disable_msix:
> > @@ -4116,8 +4107,6 @@ static int ena_probe(struct pci_dev *pdev, const
> > struct pci_device_id *ent)
> >
> >  	dev_dbg(&pdev->dev, "%s\n", __func__);
> >
> > -	dev_info_once(&pdev->dev, "%s", version);
> > -
> >  	rc = pci_enable_device_mem(pdev);
> >  	if (rc) {
> >  		dev_err(&pdev->dev, "pci_enable_device_mem() failed!\n");
> > @@ -4429,8 +4418,6 @@ static struct pci_driver ena_pci_driver = {
> >
> >  static int __init ena_init(void)
> >  {
> > -	pr_info("%s", version);
> > -
> >  	ena_wq = create_singlethread_workqueue(DRV_MODULE_NAME);
> >  	if (!ena_wq) {
> >  		pr_err("Failed to create workqueue\n"); diff --git
> > a/drivers/net/ethernet/amazon/ena/ena_netdev.h
> > b/drivers/net/ethernet/amazon/ena/ena_netdev.h
> > index 8795e0b1dc3c..74c7f10b60dd 100644
> > --- a/drivers/net/ethernet/amazon/ena/ena_netdev.h
> > +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.h
> > @@ -45,18 +45,7 @@
> >  #include "ena_com.h"
> >  #include "ena_eth_com.h"
> >
> > -#define DRV_MODULE_VER_MAJOR	2
> > -#define DRV_MODULE_VER_MINOR	1
> > -#define DRV_MODULE_VER_SUBMINOR 0
> > -
> >  #define DRV_MODULE_NAME		"ena"
> > -#ifndef DRV_MODULE_VERSION
> > -#define DRV_MODULE_VERSION \
> > -	__stringify(DRV_MODULE_VER_MAJOR) "."	\
> > -	__stringify(DRV_MODULE_VER_MINOR) "."	\
> > -	__stringify(DRV_MODULE_VER_SUBMINOR) "K"
> > -#endif
> > -
> >  #define DEVICE_NAME	"Elastic Network Adapter (ENA)"
> >
> >  /* 1 for AENQ + ADMIN */
> > --
> > 2.24.1
>
> Hi Leon, David,
>
> This patch is not good for the ENA driver as it breaks the interface with the FW of the ENA device in ena_config_host_info(), host_info is later reported to the FW.
> Please do not merge it yet.

As I wrote here [1], I tried to avoid any changes in SW<->FW interfaces.
Can you please show me the dump stack of how is such info forwarded to FW?
How do you distinguish between different distro versions and driver
releases?

> We are now working on altering your patch so that it won't break this interface and will send it to you in the next few hours.

It is good, thanks.

[1] https://lore.kernel.org/netdev/20200223091031.GA422704@unreal

>
> Thanks,
> Arthur
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
