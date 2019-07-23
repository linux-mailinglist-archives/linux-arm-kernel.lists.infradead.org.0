Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6507072118
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 22:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9p1Hz9gJ/v39soFxG53YWPn5hb1DUmbXGpf4hdUX4Tg=; b=CbAGhG73ZD6Ldd
	xAGFUiC2FAEDYNdZUBUhPb0POPF/l6b8WROWX1C3cCdtv6lCY6ngd5uNWiHCLLTR3+g8aWXEzg7PW
	gUqCXaqoghjTmtM6xK63L2LBNZOXxT8D2W6R1UsUhFvzKthGnR/Y1Q/9Z2DaDyHGhT0nWNPvWKsLw
	qUu7u0HDzp64+FxTdMhkmJuHwLGbrYv9TllBmdvLySq4FqZqOPEZrA59kMBowpRnA4HeOZh5R7Op0
	SMExMnm6SvajPoLj7wkpUsJRIfxZZBLgp2rosB/A34Lw10w73SBKueHO6/oJsoRPRM+nqFuVAyMsc
	wuIv/iKQbk2Ljf+omtBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1jK-0007Im-8U; Tue, 23 Jul 2019 20:49:50 +0000
Received: from mail-eopbgr130073.outbound.protection.outlook.com
 ([40.107.13.73] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1j5-0007Hf-Jk
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 20:49:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZL1SHSMtciq43Crw68Gvxfvf0hK69U0M958y+CzspChQW1FbdH0t/LlwAQYc6AWO9wEhLdO/r54GtGZqHJ8T1UCUPUVbGVzCsoJeiksKWnEnY2t+y+Z9aCaV4hm534nH7sJuIwM3Q6L1BbXLQzbA+N3rGzib1udzURQpjdlmEn2RilErUS2YIqFFGyojyY4lrpmkdRWfy2LpeNxLxoHmn/x8ztKaBeEpc5qXQ4kY4V9rH712/HrTKfU5cDpdAzY2IPzIbkTqCrVBBwS6tVK1Mldjc84LnSDjocrwfjazOqDzwLqdRfJAUQBIfPJutC+ievAsX15PFkS1IJ94fNr4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gO1wOfk8Z4IQl0xQQjnsNA2Mgeg6sF/+vSP1KcN+JPc=;
 b=K1S3dz3FzrkLlK2XGdV6p9zxkKE8KvOEzJfMNZH5M51r46lGPsv7tiSKWP0h6gfA+dpcpeKW7DPndHN2YUOqba7rgJZ2xMYdOq0Lt6K1s7tu5k3hTIl/pJFMKrzPv03XzN2YprW/U1Ux4/YNnt9eeoQe9/rJ+wRnEBwzMwBLhBaLX2MixVr0fGjTrkC4PBuRc9+xFsezTQk4g/KJdXkx6aOLs6finz+LcTiCZxO9k2aRSXlZH0x3iVZYkvY5smqE2a1wKIeyfgJgi9wqzJhwadMFBmwXvjJWeEn4UnOdosxIj1IWShKl1FCmWQxaHDXWC9ik3C2n25J3DRIn80WcrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gO1wOfk8Z4IQl0xQQjnsNA2Mgeg6sF/+vSP1KcN+JPc=;
 b=L6Gdv3bjbzeVzy5695IPoXaywBizMvaJJAx/56hMJxTLyq3VSYa29DNF/TGhQIFM7tZWwGRVOyIakfs9stMWU2odjKtlcPQy/G8SohHxt7adD0bqLkz65UnVqTIPXA1cQ9J+oUJyAZEDydWGJBmtD8sX7iqbOPXYAnkx5S1caPU=
Received: from DB6PR0501MB2759.eurprd05.prod.outlook.com (10.172.227.7) by
 DB6PR0501MB2517.eurprd05.prod.outlook.com (10.168.77.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Tue, 23 Jul 2019 20:49:27 +0000
Received: from DB6PR0501MB2759.eurprd05.prod.outlook.com
 ([fe80::7148:ecd4:3a7f:f3f]) by DB6PR0501MB2759.eurprd05.prod.outlook.com
 ([fe80::7148:ecd4:3a7f:f3f%11]) with mapi id 15.20.2094.011; Tue, 23 Jul 2019
 20:49:27 +0000
From: Saeed Mahameed <saeedm@mellanox.com>
To: "claudiu.manoil@nxp.com" <claudiu.manoil@nxp.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Subject: Re: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe MDIO
 endpoint
Thread-Topic: [PATCH net-next 1/3] enetc: Add mdio bus driver for the PCIe
 MDIO endpoint
Thread-Index: AQHVQWmdXX+sxQto9UCSZSuFYsFM0KbYrWaA
Date: Tue, 23 Jul 2019 20:49:27 +0000
Message-ID: <2e3c565cacae6050656aeb7c0132736c60f9f4ee.camel@mellanox.com>
References: <1563894955-545-1-git-send-email-claudiu.manoil@nxp.com>
 <1563894955-545-2-git-send-email-claudiu.manoil@nxp.com>
In-Reply-To: <1563894955-545-2-git-send-email-claudiu.manoil@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.32.4 (3.32.4-1.fc30) 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=saeedm@mellanox.com; 
x-originating-ip: [209.116.155.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a3aae89-78d3-459c-b7f0-08d70faf40c2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0501MB2517; 
x-ms-traffictypediagnostic: DB6PR0501MB2517:
x-microsoft-antispam-prvs: <DB6PR0501MB2517177F7BCB8D23709CC331BEC70@DB6PR0501MB2517.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(199004)(189003)(76176011)(2501003)(6436002)(478600001)(6486002)(25786009)(53936002)(91956017)(66066001)(76116006)(14454004)(6512007)(229853002)(86362001)(66556008)(66446008)(66946007)(5660300002)(66476007)(6246003)(54906003)(7736002)(81166006)(8936002)(36756003)(305945005)(8676002)(4326008)(64756008)(2906002)(81156014)(71190400001)(71200400001)(58126008)(26005)(6116002)(476003)(2616005)(14444005)(256004)(3846002)(68736007)(6506007)(99286004)(486006)(11346002)(446003)(186003)(110136005)(316002)(118296001)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2517;
 H:DB6PR0501MB2759.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /y8sT8PDmbl5oBN600Wwt3AdOS0+7shfz643TgniVMG9XOj4/3ABjEa1cjYNXT81M6s9kOd56xKIGRDbwAmI7MB7AYzjyWlDogbDQOGnvvI1AMivAcDTAdoo2lqlotsMfhRU4SzstKJE7+o3WNexSPGHSZfCSbj4eM4dzD8ct5uM4YrLjFjewrFi3ULGIxr87rYaESMrKeEfQ0gfekYJ6hWBTPYtITf7pfTEH38htuR6YZbAYTPKPhHKxvsxv3VUQZwSaCqMXRC1kIWdHPPGMEpR0n2MjzeJVgl4VaQYC3RUIgzWiYly25C2MzhTC9aLEOaq9g6kkJgP6ZoUTJpFXy5V/X0iRId8r7MeXfvQuMSCwlEm6dkkchGwfPT8j+V1npPRAzJJsPB5aPeD0sYo2NFyFdPQL0aOTgf8RUL6nn4=
Content-ID: <E131E465F5E195408AFDA8F176CF2B58@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a3aae89-78d3-459c-b7f0-08d70faf40c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 20:49:27.4341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: saeedm@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2517
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_134935_657003_A68D561C 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "alexandru.marginean@nxp.com" <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "leoyang.li@nxp.com" <leoyang.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-23 at 18:15 +0300, Claudiu Manoil wrote:
> ENETC ports can manage the MDIO bus via local register
> interface.  However there's also a centralized way
> to manage the MDIO bus, via the MDIO PCIe endpoint
> device integrated by the same root complex that also
> integrates the ENETC ports (eth controllers).
> 
> Depending on board design and use case, centralized
> access to MDIO may be better than using local ENETC
> port registers.  For instance, on the LS1028A QDS board
> where MDIO muxing is requiered.  Also, the LS1028A on-chip
> switch doesn't have a local MDIO register interface.
> 
> The current patch registers the above PCIe enpoint as a
> separate MDIO bus and provides a driver for it by re-using
> the code used for local MDIO access.  It also allows the
> ENETC port PHYs to be managed by this driver if the local
> "mdio" node is missing from the ENETC port node.
> 
> Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
> ---
>  .../net/ethernet/freescale/enetc/enetc_mdio.c | 90
> +++++++++++++++++++
>  .../net/ethernet/freescale/enetc/enetc_pf.c   |  5 +-
>  2 files changed, 94 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> index 77b9cd10ba2b..efa8a29f463d 100644
> --- a/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> +++ b/drivers/net/ethernet/freescale/enetc/enetc_mdio.c
> @@ -197,3 +197,93 @@ void enetc_mdio_remove(struct enetc_pf *pf)
>  		mdiobus_free(pf->mdio);
>  	}
>  }
> +
> +#define ENETC_MDIO_DEV_ID	0xee01
> +#define ENETC_MDIO_DEV_NAME	"FSL PCIe IE Central MDIO"
> +#define ENETC_MDIO_BUS_NAME	ENETC_MDIO_DEV_NAME " Bus"
> +#define ENETC_MDIO_DRV_NAME	ENETC_MDIO_DEV_NAME " driver"
> +#define ENETC_MDIO_DRV_ID	"fsl_enetc_mdio"
> +
> +static int enetc_pci_mdio_probe(struct pci_dev *pdev,
> +				const struct pci_device_id *ent)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mii_bus *bus;
> +	int err;
> +
> +	bus = mdiobus_alloc_size(sizeof(u32 *));
> +	if (!bus)
> +		return -ENOMEM;
> +
> +	bus->name = ENETC_MDIO_BUS_NAME;
> +	bus->read = enetc_mdio_read;
> +	bus->write = enetc_mdio_write;
> +	bus->parent = dev;
> +	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
> +
> +	pcie_flr(pdev);
> +	err = pci_enable_device_mem(pdev);
> +	if (err) {
> +		dev_err(dev, "device enable failed\n");

mdiobus_free(bus) is missing here and in every error path.

> +		return err;
> +	}
> +
> +	err = pci_request_mem_regions(pdev, ENETC_MDIO_DRV_ID);
> +	if (err) {
> +		dev_err(dev, "pci_request_regions failed\n");
> +		goto err_pci_mem_reg;
> +	}
> +
> +	bus->priv = pci_iomap_range(pdev, 0, ENETC_MDIO_REG_OFFSET, 0);
> +	if (!bus->priv) {
> +		err = -ENXIO;
> +		dev_err(dev, "ioremap failed\n");
> +		goto err_ioremap;
> +	}
> +
> +	err = of_mdiobus_register(bus, dev->of_node);
> +	if (err)
> +		goto err_mdiobus_reg;
> +
> +	pci_set_drvdata(pdev, bus);
> +
> +	return 0;
> +
> +err_mdiobus_reg:
> +	iounmap(bus->priv);
> +err_ioremap:
> +	pci_release_mem_regions(pdev);
> +err_pci_mem_reg:
> +	pci_disable_device(pdev);
> +
> +	return err;
> +}
> +
> +static void enetc_pci_mdio_remove(struct pci_dev *pdev)
> +{
> +	struct mii_bus *bus = pci_get_drvdata(pdev);
> +
> +	mdiobus_unregister(bus);
> +	iounmap(bus->priv);
> +	mdiobus_free(bus);
> +

this should come last to be symmetrical with probe flow.

> +	pci_release_mem_regions(pdev);
> +	pci_disable_device(pdev);
> +}
> +
> +static const struct pci_device_id enetc_pci_mdio_id_table[] = {
> +	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, ENETC_MDIO_DEV_ID) },
> +	{ 0, } /* End of table. */
> +};
> +MODULE_DEVICE_TABLE(pci, enetc_mdio_id_table);
> +
> +static struct pci_driver enetc_pci_mdio_driver = {
> +	.name = ENETC_MDIO_DRV_ID,
> +	.id_table = enetc_pci_mdio_id_table,
> +	.probe = enetc_pci_mdio_probe,
> +	.remove = enetc_pci_mdio_remove,
> +};
> +module_pci_driver(enetc_pci_mdio_driver);
> +
> +MODULE_DESCRIPTION(ENETC_MDIO_DRV_NAME);
> +MODULE_LICENSE("Dual BSD/GPL");
> diff --git a/drivers/net/ethernet/freescale/enetc/enetc_pf.c
> b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
> index 258b3cb38a6f..7d6513ff8507 100644
> --- a/drivers/net/ethernet/freescale/enetc/enetc_pf.c
> +++ b/drivers/net/ethernet/freescale/enetc/enetc_pf.c
> @@ -750,6 +750,7 @@ static int enetc_of_get_phy(struct
> enetc_ndev_priv *priv)
>  {
>  	struct enetc_pf *pf = enetc_si_priv(priv->si);
>  	struct device_node *np = priv->dev->of_node;
> +	struct device_node *mdio_np;
>  	int err;
>  
>  	if (!np) {
> @@ -773,7 +774,9 @@ static int enetc_of_get_phy(struct
> enetc_ndev_priv *priv)
>  		priv->phy_node = of_node_get(np);
>  	}
>  
> -	if (!of_phy_is_fixed_link(np)) {
> +	mdio_np = of_get_child_by_name(np, "mdio");
> +	if (mdio_np) {
> +		of_node_put(mdio_np);
>  		err = enetc_mdio_probe(pf);
>  		if (err) {
>  			of_node_put(priv->phy_node);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
