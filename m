Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60B313B040
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CnVJuqu080Fk87yYACo6seGWMWEYHoftMuwmpeteBY=; b=CnSKZ0IOTKXbuj
	SuixfKzruG/7VG0nF1PhyDgxYqnJjdM84kyerqydmBMsQ71OTATuS3bQ1Bsk1F0tHP3evTGCgi9Y5
	MarNYpInKXo42afa+oHHdV1M4lqerArRBmxZrzFojwHeQNkkSvw0SpK/dqxwPWpHhBE/Fj7Jz6IHU
	+ihm51iAXw07q8wj4hZYBehtUFkzCs0JNR9lRLAeiMiQNnOSQHIf5TWDCGAEp3DDmTJHuRSqOhSQ9
	YVw0+2fubvDn0FkCWp0ogsqo87W/mSxc/kWO6pfpY+gC5AbEYg+B5LsOul0m0r8rIJ+9K5Ib8wSAh
	f+uEM5xihji5uvdx5Q7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPbh-0005wS-G9; Tue, 14 Jan 2020 17:03:57 +0000
Received: from mail-dm6nam12on2049.outbound.protection.outlook.com
 ([40.107.243.49] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPbU-0005vo-6Z
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:03:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BooovLpsBMsIs82f56XAAuW3mq7Basoj49S7X6odw2247T74mO3XEnKx8Y9hZ/4HAX8rAclFUE/ivgFNLyQDVvU+5el/Wk/sHBCbzKn9gY6oDPqakA+BfIxU8x3pCoCrznpfzGEtUR9NM5tzbOPG1oqoRC0zF9PwvZWVGcMdctddRymfVRaLlGOicaf9OBQ12x8lqtyg5nfuNXlaJeQbANA8n846X/oHBoyNHKEQhngAEVyILB1AaihFPHMnw+h+OMe/ytkLoexYtXwxSGwEyLsU3ptfLJZirfjFn0P08k/KBqrsj2/LOmCDwO9DUuP9gg/dtfrgg8DSGr+D5ebK0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xcwSUU1LAL+B9eq2VXF9Lgyc/en0lRjHDqTyiQBmowc=;
 b=HI8z+97AH7MpK6blz8FJmUeglpKlOYFQ5uE1Izhy9SuvrHNoYIaZSPcbViBinMs4033q803VVZsjbV697RGSwxrWO/mLtgmWhmSkQCilnVXmdRHxm2dcnK+5tfbJFLfqpoE3NZ7NQ+Azv3ppWx3knpKabxbmgcU3ttB6c8pgm8gJfXXPfJlBPYGhxLKfy5IsoEG6JexIYIudyWZ2q/1mlxEXc9s28myv7X6LC03Zj0TA7kLGN+Ti0C/8jg2txCDCiEnm9Or9u4CncneCD42eOozfefwcja8uu26vg3Y74aHC3HrriGzJsXoHwsa6ypu6mtLfHA+xR3CYHJvFk70Mng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xcwSUU1LAL+B9eq2VXF9Lgyc/en0lRjHDqTyiQBmowc=;
 b=Z7n9FMg+P3ad/y43EX3CsjdlOtHcvixvo0ma50XUgpgO3RZAjf3F+VNw/p+76kNgrgK9tKstGZ2gfy3W9tYcsjVt1VHBKIcyrc5vXNH4s/LwayCzw8aq4vPMeMsa4bg8WbpgbES1dSvZTqEbikEitzORwhkZVv4KR/DK0nXr8e8=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6725.namprd02.prod.outlook.com (20.180.7.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Tue, 14 Jan 2020 17:03:41 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 17:03:41 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>, "David S . Miller"
 <davem@davemloft.net>
Subject: RE: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Thread-Topic: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Thread-Index: AQHVx6y+W25+wq1cpkmcd5TNSAo3EKfqY36g
Date: Tue, 14 Jan 2020 17:03:41 +0000
Message-ID: <CH2PR02MB70006450DBDCEC27CA76503AC7340@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-13-andre.przywara@arm.com>
In-Reply-To: <20200110115415.75683-13-andre.przywara@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1c1feae8-f5c4-486d-bb33-08d79913b4db
x-ms-traffictypediagnostic: CH2PR02MB6725:|CH2PR02MB6725:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6725A84A378E726FAB23CB77C7340@CH2PR02MB6725.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(4326008)(2906002)(8936002)(55016002)(9686003)(6506007)(66556008)(66476007)(33656002)(54906003)(8676002)(110136005)(64756008)(76116006)(5660300002)(66446008)(81166006)(81156014)(52536014)(478600001)(316002)(71200400001)(66946007)(7696005)(186003)(86362001)(53546011)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6725;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SWG7O5Wml3jv8w+iyYfc8eZ6yF3vMDcpdeKGEdxwzecrORBPS+No7GEOMivX54FEt4VdFpLmG/Qd3lQpNaS5RqMSXZ+8UARMNdB6WbQaYW1XAGYseHVoP8KjR6/MoqgWcIlDk2m7qDFfrXRrcpEXtnJZv/dSpM9WUjXOH3q1VR/TK9Y6w+SRtIRLb8zeuBZaYQOCG9fARsukXlHpiQ0j0I/5flCkOlBLE2U2mdMK42z1280CD8UOUHGAQ5r17ZTGVvisvRSRFJwi7fiNHopBr0c6hW9XTFV1/knnhm2PQRW524Oiz2hzOTqRL04Fctkar3GWYm5zPkv+EV/uopFeKqdo/xgzOq2Stesq0+6MBJ8ktiPCe/ZYxXWhwmpQmvM59vIrVdLVarRt/yDc+471B9nqzGerS4DKHLT9+Dixj9s9yArOa6rhuUKQeqwZ24RV
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1feae8-f5c4-486d-bb33-08d79913b4db
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 17:03:41.2598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4dqVi2BY3a1HMDlpyIK7KJJKGHaUPr34nUFofS1UmCG+J2ZvXkfORcj5kd9A2VR5a+nbG2Da2fovsGMLDbYB7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090344_246406_CF197B35 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Robert Hancock <hancock@sedsystems.ca>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andre Przywara <andre.przywara@arm.com>
> Sent: Friday, January 10, 2020 5:24 PM
> To: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> <radheys@xilinx.com>
> Cc: Michal Simek <michals@xilinx.com>; Robert Hancock
> <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
> 
> When newer revisions of the Axienet IP are configured for a 64-bit bus,
I assume in design axidma address width is set to 64-bits. 
If not, please provide an overview of the design connections.

> we *need* to write to the MSB part of the an address registers,
> otherwise the IP won't recognise this as a DMA start condition.
> This is even true when the actual DMA address comes from the lower 4 GB.
> 
> To autodetect this configuration, at probe time we write all 1's to such
Is reading address width axidma IP user parameter(c_addr_width) from
the design not sufficient to detect configured bus width?

> an MSB register, and see if any bits stick. If this is configured for a
> 32-bit bus, those MSB registers are RES0, so reading back 0 indicates
> that no MSB writes are necessary.
> On the other hands reading anything other than 0 indicated the need to
> write the MSB registers, so we set the respective flag.
> 
> For now this leaves the actual DMA mask at 32-bit, as we can't reliably
> detect the actually wired number of address lines beyond 32.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  drivers/net/ethernet/xilinx/xilinx_axienet.h  |  1 +
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 27 +++++++++++++++++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h
> b/drivers/net/ethernet/xilinx/xilinx_axienet.h
> index 4aea4c23d3bb..4feaaa02819c 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
> @@ -161,6 +161,7 @@
>  #define XAE_FCC_OFFSET		0x0000040C /* Flow Control
> Configuration */
>  #define XAE_EMMC_OFFSET		0x00000410 /* EMAC mode
> configuration */
>  #define XAE_PHYC_OFFSET		0x00000414 /* RGMII/SGMII
> configuration */
> +#define XAE_ID_OFFSET		0x000004F8 /* Identification register
> */
>  #define XAE_MDIO_MC_OFFSET	0x00000500 /* MII Management
> Config */
>  #define XAE_MDIO_MCR_OFFSET	0x00000504 /* MII Management
> Control */
>  #define XAE_MDIO_MWD_OFFSET	0x00000508 /* MII Management Write
> Data */
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 133f088d797e..f7f593df0c11 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -151,6 +151,9 @@ static void axienet_dma_out_addr(struct axienet_local
> *lp, off_t reg,
>  				 dma_addr_t addr)
>  {
>  	axienet_dma_out32(lp, reg, lower_32_bits(addr));
> +
> +	if (lp->features & XAE_FEATURE_DMA_64BIT)
> +		axienet_dma_out32(lp, reg + 4, upper_32_bits(addr));
>  }
> 
>  static void desc_set_phys_addr(struct axienet_local *lp, dma_addr_t addr,
> @@ -1934,6 +1937,30 @@ static int axienet_probe(struct platform_device
> *pdev)
>  		goto free_netdev;
>  	}
> 
> +	/*
> +	 * Autodetect the need for 64-bit DMA pointers.
> +	 * When the IP is configured for a bus width bigger than 32 bits,
> +	 * writing the MSB registers is mandatory, even if they are all 0.
> +	 * We can detect this case by writing all 1's to one such register
> +	 * and see if that sticks: when the IP is configured for 32 bits
> +	 * only, those registers are RES0.
> +	 * Those MSB registers were introduced in IP v7.1, which we check first.
> +	 */
> +	if ((axienet_ior(lp, XAE_ID_OFFSET) >> 24) >= 0x9) {
> +		void __iomem *desc = lp->dma_regs +
> XAXIDMA_TX_CDESC_OFFSET + 4;
> +
> +		iowrite32(0x0, desc);
> +		if (ioread32(desc) == 0) {	/* sanity check */
> +			iowrite32(0xffffffff, desc);
> +			if (ioread32(desc) > 0) {
> +				lp->features |= XAE_FEATURE_DMA_64BIT;
> +				dev_info(&pdev->dev,
> +					 "autodetected 64-bit DMA range\n");
> +			}
> +			iowrite32(0x0, desc);
> +		}
> +	}
> +
>  	/* Check for Ethernet core IRQ (optional) */
>  	if (lp->eth_irq <= 0)
>  		dev_info(&pdev->dev, "Ethernet core IRQ not defined\n");
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
