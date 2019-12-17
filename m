Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C451224EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 07:43:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9w3H4xjve4JeFQk6mCYiTDPWnqNSl+CCSCr4hEeD1jI=; b=dfUnFG79YjY+P4
	Wlgi/keIUla2UjFAGtU9TPzysbPt9a7etVnMZa8k6vvl94HOQPHv3VqYvpAIa1A64+zQPJkI7/BEW
	nxiIlJRQef0OnPNaDXiUK5cV9AQIw7kQ9qoiFofQN23R3AiSCJddAOADTBYBv3LKoxB7DRTcuNHfy
	JMHutSERxF7AiWoj5SzazajNwqCMka6qo+cGZWxBb6VdCcJePeaVtua8M+cuj7uYEpqohNGiFR3tP
	5ll7dEVN8CuVUhx4MbG92bS/jyiapw+tZXCrCpQZB1sRo3Pjkly+PHNsRCGoSorck07tNUUn+FnVb
	xp/waj7pUcUbINEE+IdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih6Zk-0004MC-AN; Tue, 17 Dec 2019 06:43:20 +0000
Received: from mail-eopbgr750074.outbound.protection.outlook.com
 ([40.107.75.74] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih6Zc-0004LT-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 06:43:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NNuEkjqffvMH7XYHlL+DlGU065jzmsHJM5KfCFL8V1hDFupVMTcomlH31F6t+M26XowMEuUAPX5TxqtxTRKcSCqYlF28tZ8UsBZ1F5IYl5JliHyxaTK+0QC9bPWjh9LX3r3txPVczhrNI5reFOe+pec6IbdGLpn9HZjMEp7ctrvP3yuPo7CG0B+lscov0kPKtdBFt/IO1iG/tOvA5T5UGvXy7yKZ2DKnkF96Lof/Teesu+SrAxOwQJ1z3FIZdIRRwRMuaDJeNA7oDYUGfgWm8UwtFiHRt+D481vjxFzIG/cCmEhEmXXEgWA7yZKuLKmsw4alr8GjofVQl50KjRwfVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HdwOCPLxlfO91NF5+4gZTFKg3jXYVSQOctYi/SCkXM=;
 b=iHHihJYRDMOGB6zcvnqXuIs9WbwOZFiKwDcgmIdTt7/UEbD2DVa/Q21rNFZLvUBySG1x21WnIoIuhLhKZ3p4vE0b+rivmuTllQ1Yp5s3vKOe7TO+5MlgJmK1YQ7X+w26KEnB5mQnY2zd1ZTN8SNtyOtB7lN2xZFrrnceCNa76A5ewPoZYnkC8i3myQdqOZo+nPmOtesDGU/YxXjEn6vMOqsqIZPLW0SNZMTHEEVsxafWJlFpoKre4/qrxkz02cENyMQeKBPgkK2n+oFa6sBFVybgtsLjdgxjzxYCgazKXkFNaEErrGSlXPhhQYwjGX0AqtkF48nVrMONA0gzDozhxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HdwOCPLxlfO91NF5+4gZTFKg3jXYVSQOctYi/SCkXM=;
 b=Qx80PqgHfgHwMGH685jBKvd1OrGEP+hCus4R3UaPbExTAkgCnQypSIk7BE2ROnVp0p42PpmQoUopRW4gxMIIZlv9KI93ngHPAEDSlgYxSIHUVqJu7iLgAJsg+yuQ7THUbtsCwpt2dME3L4R8+VL/0MkFziKWWMAuMYybmpnmdy0=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 06:43:09 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::5d66:1c32:4c41:b087]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::5d66:1c32:4c41:b087%3]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 06:43:09 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Richard Cochran <richardcochran@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net-next 3/3] net: axienet: Pass ioctls to the phy.
Thread-Topic: [PATCH net-next 3/3] net: axienet: Pass ioctls to the phy.
Thread-Index: AQHVtD9BqjnLY2nNAk+Cq7P2nUR4Gqe93tjw
Date: Tue, 17 Dec 2019 06:43:09 +0000
Message-ID: <CH2PR02MB7000A528FD86ACB95D03F4F7C7500@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <cover.1576520432.git.richardcochran@gmail.com>
 <361f63095be92df10e8e953af3b981cdac58d98e.1576520432.git.richardcochran@gmail.com>
In-Reply-To: <361f63095be92df10e8e953af3b981cdac58d98e.1576520432.git.richardcochran@gmail.com>
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
x-ms-office365-filtering-correlation-id: bc8e8324-4939-4d62-e17f-08d782bc617c
x-ms-traffictypediagnostic: CH2PR02MB7000:|CH2PR02MB7000:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB7000B460EDA6CBF663637A8FC7500@CH2PR02MB7000.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(189003)(199004)(13464003)(5660300002)(53546011)(66946007)(8676002)(64756008)(66476007)(478600001)(66556008)(7696005)(186003)(6506007)(8936002)(52536014)(81166006)(81156014)(110136005)(316002)(86362001)(107886003)(76116006)(33656002)(2906002)(9686003)(55016002)(26005)(54906003)(71200400001)(66446008)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB7000;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u1ACaaBe6SQu0NmAvDfddT34hB1jIVylacRNQfTXbqPAttQuEsfIqLZKenUXhaoTMmTECKmCrm6u7urshAL1+d04I46Wh8gBpDcMcGz36xhL+OiR/enwA/IOzD3c9BczAR5rVBjX3otgKnAfPPKBgz67qZoLVf3Q430RBJTjymQmkAseHA2yJCuRDa0SlNC696HZiqpUz9wBChkIpVOeXDwCbBSjNOOebi98TRX5iVDLcgwC1D8nmsUO1LpeWP03HTG/Y6M/TNrkbuMu0HE4F3d4C3k/t8z7VisZsKEfVNDqVoWndL0cLMdeeMpNiZ/MW1pf8WUdb9ZH+wSzAt29WQU4Ggq8iAHDDIO3Mv9ZrVTSx3ph499SmJ2oFedQpqirc/V+X1pl5KIemqLmX+umfVlfct/F49HrnHfwkDzVNLCt2AiIq20uimqw1my2ayoWIximPdfWl5/fPDW7sLn//+weX8U0OZc+wBsW/ar/orCUX7pURviLRbWmPigcu+Hf
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8e8324-4939-4d62-e17f-08d782bc617c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 06:43:09.6265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E9tSnP91MOROFM1cY600yZhbQtavipKTZWj21qNxZtoTtkcXzuXOvSXmRCrLhKA85rfLemRYtQCjK2TX8hl7jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB7000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_224313_038361_26ADDFA8 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.74 listed in list.dnswl.org]
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
Cc: Michal Simek <michals@xilinx.com>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Tuesday, December 17, 2019 12:03 AM
> To: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org; David Miller
> <davem@davemloft.net>; Michal Simek <michals@xilinx.com>; Radhey
> Shyam Pandey <radheys@xilinx.com>
> Subject: [PATCH net-next 3/3] net: axienet: Pass ioctls to the phy.
> 
> In order to allow PHY drivers to handle ioctls, the MAC driver must pass
> the calls through.  However, the axienet driver does not support ioctls
> at all.  This patch fixes the issue by handing off the invocations to the
> PHY appropriately.
> 
> Signed-off-by: Richard Cochran <richardcochran@gmail.com>
> ---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 05fa7371c39a..d0b996f220f5 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -1067,6 +1067,23 @@ static int axienet_change_mtu(struct net_device
> *ndev, int new_mtu)
>  	return 0;
>  }
> 
> +static int axienet_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
> +{
> +	if (!netif_running(dev))
> +		return -EINVAL;
> +
> +	switch (cmd) {
> +	case SIOCGMIIPHY:
> +	case SIOCGMIIREG:
> +	case SIOCSMIIREG:
> +	case SIOCSHWTSTAMP:
For hw timestamp we are passing the request to phy?

> +	case SIOCGHWTSTAMP:
> +		return phy_mii_ioctl(dev->phydev, rq, cmd);

Driver migrated to phylink so now we have to use phylink_mii_ioctl.

> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>  #ifdef CONFIG_NET_POLL_CONTROLLER
>  /**
>   * axienet_poll_controller - Axi Ethernet poll mechanism.
> @@ -1095,6 +1112,7 @@ static const struct net_device_ops
> axienet_netdev_ops = {
>  	.ndo_set_mac_address = netdev_set_mac_address,
>  	.ndo_validate_addr = eth_validate_addr,
>  	.ndo_set_rx_mode = axienet_set_multicast_list,
> +	.ndo_do_ioctl = axienet_ioctl,
>  #ifdef CONFIG_NET_POLL_CONTROLLER
>  	.ndo_poll_controller = axienet_poll_controller,
>  #endif
> --
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
