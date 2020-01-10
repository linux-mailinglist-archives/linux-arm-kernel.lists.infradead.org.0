Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 499651370E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Us1iQ2lL87WivogQak5udJABCM7LymasR/niOGzVpz4=; b=RYPKx25+WnwSHl
	iHGwOuFZckfLZL/ZXbTGlGgEf9I/BLMPUnsP7MF9Z3NVXo/EvdDCQ5wTxlIhouI3t263tA8z2cG9a
	d8EAI8CMyvHm+NR7sc3jG5FNeUvQbssr7mGN4owjDDS5CUKbzuL4fP89FhgAQJsRyuiMPPo+MC+qm
	8NarkWX0Mk1rtn3PXaJdZaGh3A5iBZhiD75xWIdAV2I0Lb1LHklsrQf5/7nSpskzRUkdNH7U9m3d/
	CEZyO2vhIjLHj0K5BoC7we+s0Y7tQj7AfcjdYPpDP6sMXobRM/m/k9XumYTGuAogv+8tjzotfH7n3
	vF0ZaEDXFNJrYmWkZghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipw0K-000280-O7; Fri, 10 Jan 2020 15:15:16 +0000
Received: from mail-bn7nam10on20614.outbound.protection.outlook.com
 ([2a01:111:f400:7e8a::614]
 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvzy-00026d-Qz
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:14:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MX6XmZXIJUCStGEXCbuvimLh9jjh5iBv715wJrfbC2FxE1x2N8b8F3rfd4XkNMeW/89SFev7Zvpd+3F/Y7W21QSUUZbVZegLy0zN6VzVPH9JHc1l9dZ2xhfV53OGhYHfMD7lKTDiBkFqh2/KQQjGklW/d/N4fGu56hHgdbRGf2vejiwdMZXIfEbdcdONr3EJWdVzLzElta3EoFSl/1b66g8CwBT3vf0nYrawHJnsL7495Oa5HPmcFpRL1Yyg3IQbpEvjc0z9Xnn+eqxXRaOFYwIX8GgD3v0eSQpR7h+iyn2Qr3L1pg9cv2ojpwOTPShI4P5ZT0LuU7jg7Am70PK7Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ic0IedYA64h7TvmTjEwKb74Yxbqw6u3+Ex/dgXVxpyg=;
 b=BS0YqetJHPGNRkRDaNfnyI+lXl5dl6WBAMm22VWn46mMzZMF/TUp555W5EuvnQmaQnkA9BBt9tEL/J4kooLRkSRcL8gs7LDO1ZI05D7xr2GjvVU5LDahZqor7yTapUy0nuM3gI9jYTuaAXMEWDkPPr/SKNe+2I3SYpqyNXNbESWWopcvNfNfTCpGtEjCSSshLAxYFeH09BAc3OhcfOK7gLmwNXgxfcG1tzfmSINTUy7TRU01xlFjbykEbElcT3HeJOjt5R4DL3Haud9u/tHGgaqWOS77OEryCOEKFhynqRPHvozgkQ24IHxjg3dUOmnAwPH6e2tX2bb6wHwk7kb8Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ic0IedYA64h7TvmTjEwKb74Yxbqw6u3+Ex/dgXVxpyg=;
 b=tT1y/1oQgJR4ZHWM4IG3HZ1L7d2Xx5A84dFCLYSVkGKHS9uB5MBaMNgX1EogAHpHQTsn8dR/TbzLjqkakqOaahrbRhH+z98gQiijqs/k3ikvtatvLZpMzXUOSlCQZPdtMdW5CMx/e55R8ZtrUU71/S1SNVjOb2LE0tEZV/v8WJE=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6840.namprd02.prod.outlook.com (20.180.5.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 15:14:47 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 15:14:47 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>, "David S . Miller"
 <davem@davemloft.net>
Subject: RE: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Thread-Topic: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Thread-Index: AQHVx6y2ShwELFcgQk2RmkO2ceD3dafj/VgA
Date: Fri, 10 Jan 2020 15:14:46 +0000
Message-ID: <CH2PR02MB7000F64AB27D352E00DC77A7C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-4-andre.przywara@arm.com>
In-Reply-To: <20200110115415.75683-4-andre.przywara@arm.com>
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
x-ms-office365-filtering-correlation-id: 3336a455-c974-4424-2bc8-08d795dfd47b
x-ms-traffictypediagnostic: CH2PR02MB6840:|CH2PR02MB6840:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6840D5CAD2DAAFAD37722CA3C7380@CH2PR02MB6840.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(13464003)(43544003)(189003)(199004)(71200400001)(316002)(66446008)(66556008)(66476007)(64756008)(110136005)(54906003)(52536014)(86362001)(55016002)(76116006)(66946007)(9686003)(478600001)(7696005)(5660300002)(2906002)(33656002)(6506007)(186003)(26005)(8936002)(81166006)(81156014)(53546011)(8676002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6840;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QIJamsDW9g0K8HymIx0Ck4dFfXXELQLaeu8/rYiqUibFYCBbfHB3WG4Lc+dwBvBNz6/TB7bUfYcSQ4PoU86K+20isukuN2Tn8uym4MsloiNJEqIkyHB9Ucidp+MyrDh3aVJ6bh/YmdsTW/XVaKZ3frKJYOvXxv/gj1HcipuRSQn4k05LnWKKyt+NWHLJdB+63MIYbIAyqtes67vc4L9CLaS4DnbHH4+P8GLfX86mAOfp3lKOZDlePBg1KVZaY2IbUqP3pXxrH/dpzPDO+LKOXXbdFrcHmf4e6G6FgITn9zxz/krLpHeDEnjKSuE57Oe8nKsRD7TwfSooGOwErHR8riM+heRpPMSDglvGRTnDR+9eNaNaU8v1t94dJ0J03NGhkHlIlJ3OuLzmCHK97NjvJEfvJ3sIn2PrC6oc0YThFXt2gHWUNgkRfyylmLYnSEREdzeCRgnaHW3giKKqKS3N7bL/68OpVKoHQypvr+Eu+JmzzG8vr/TqX0eG5chQOIHD6cly5PXF2UoMm378VguJBQ==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3336a455-c974-4424-2bc8-08d795dfd47b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 15:14:46.9490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0KTEaowHr/taVxheRuKsisr1MQWTz4PVOyDXhrF00wUoBxdfoDXZRXw/9+GBJczM9B3vErSI/FxnD9vQFw7GHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_071454_875325_0B14ABDF 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Subject: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
> 
> When axienet_dma_bd_init() bails out during the initialisation process,
> it might do so with parts of the structure already allocated and
> initialised, while other parts have not been touched yet. Before
> returning in this case, we call axienet_dma_bd_release(), which does not
> take care of this corner case.
> This is most obvious by the first loop happily dereferencing
> lp->rx_bd_v, which we actually check to be non NULL *afterwards*.
> 
> Make sure we only unmap or free already allocated structures, by:
> - directly returning with -ENOMEM if nothing has been allocated at all
> - checking for lp->rx_bd_v to be non-NULL *before* using it
> - only unmapping allocated DMA RX regions
> 
> This avoids NULL pointer dereferences when initialisation fails.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 43 ++++++++++++-------
>  1 file changed, 28 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 97482cf093ce..7e90044cf2d9 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -160,24 +160,37 @@ static void axienet_dma_bd_release(struct
> net_device *ndev)
>  	int i;
>  	struct axienet_local *lp = netdev_priv(ndev);
> 
> +	/* If we end up here, tx_bd_v must have been DMA allocated. */
> +	dma_free_coherent(ndev->dev.parent,
> +			  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> +			  lp->tx_bd_v,
> +			  lp->tx_bd_p);
> +
> +	if (!lp->rx_bd_v)
> +		return;
> +
>  	for (i = 0; i < lp->rx_bd_num; i++) {
> -		dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
> -				 lp->max_frm_size, DMA_FROM_DEVICE);
> +		/* A NULL skb means this descriptor has not been initialised
> +		 * at all.
> +		 */
> +		if (!lp->rx_bd_v[i].skb)
> +			break;
> +
>  		dev_kfree_skb(lp->rx_bd_v[i].skb);
> -	}
> 
> -	if (lp->rx_bd_v) {
> -		dma_free_coherent(ndev->dev.parent,
> -				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> -				  lp->rx_bd_v,
> -				  lp->rx_bd_p);
> -	}
> -	if (lp->tx_bd_v) {
> -		dma_free_coherent(ndev->dev.parent,
> -				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> -				  lp->tx_bd_v,
> -				  lp->tx_bd_p);
> +		/* For each descriptor, we programmed cntrl with the (non-
> zero)
> +		 * descriptor size, after it had been successfully allocated.
> +		 * So a non-zero value in there means we need to unmap it.
> +		 */

> +		if (lp->rx_bd_v[i].cntrl)

I think it should ok to unmap w/o any check?
> +			dma_unmap_single(ndev->dev.parent, lp-
> >rx_bd_v[i].phys,
> +					 lp->max_frm_size,
> DMA_FROM_DEVICE);
>  	}
> +
> +	dma_free_coherent(ndev->dev.parent,
> +			  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> +			  lp->rx_bd_v,
> +			  lp->rx_bd_p);
>  }
> 
>  /**
> @@ -207,7 +220,7 @@ static int axienet_dma_bd_init(struct net_device
> *ndev)
>  					 sizeof(*lp->tx_bd_v) * lp-
> >tx_bd_num,
>  					 &lp->tx_bd_p, GFP_KERNEL);
>  	if (!lp->tx_bd_v)
> -		goto out;
> +		return -ENOMEM;
> 
>  	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
>  					 sizeof(*lp->rx_bd_v) * lp-
> >rx_bd_num,
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
