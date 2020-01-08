Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04429133827
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 01:52:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l6x4HnnDXsvJL9j25QSW8g5ry6xgO1ybueIl6XGddo=; b=IdgiXF0qbt3O4C
	cn3V+/UBvyn9/b4gl9BhQr9wBlKGYghVwJ4Va7Uj2GLqlO8y2ew3JyzIFiW4Hw/7WgURl1gNclOdN
	xUkq0xXCYpyLLonLLXZB0RvEunpLTfMXkPYR8U410254V19obTyRE7CUY2WASojBNmdoA5CS8vrLS
	29XTohQX0OswqaxLrWb6Rv2CogyDulIErYN+fbIpGvuXPPe9WAZ/5RM5J3QTpu9goOdHIzPUWXRhw
	y14y+4QPW1CDu5Q+49soRQDUCcTxr6PbXb2njaJ47m+wNuVvLpbTdKc5mIJuSCMBcKh6+Eq9/0+LN
	cAsNuCa5lb6FqXMXdXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iozZm-0008Nc-F1; Wed, 08 Jan 2020 00:51:58 +0000
Received: from mail-am6eur05on2060.outbound.protection.outlook.com
 ([40.107.22.60] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iozZg-0008M6-8N
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 00:51:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QVNxMlnmdNkpgLX4FVwf4mN9Y5RUFe0oUVdNMrizYGBiXJJAz2Jwuay0vEXj2fOGmaXXDtEQMLSlaFkkHnjQpxxbiQjIFLiK3RwbApVBL5PE/q55/jzvnC85XOCzOrq2i+ZIhY6fMs4yzlw5ewGaM86xZDWJgJxJ95azPyN9qIF9+5z2ZM/q2nwjYXXbV54ywYrCtT95wY1v/OQmDX4s8WSZbN1dwxB1he6UoqWCKfUKy5IinIs+IKMe0Iwdz0g7gXRJ4v7r+6Ka3/CHx39FM0kOxsFi1W8wOVyI7Dygi7I7A542psY6xf86P+BCJXNF697Mt55tPDA55+R3vKUTOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mIls5LWpjnWuZR40O6iyFui5L4nni4mmokAAjtRT8DM=;
 b=iWyVTnGyBmhtOav6x/x1BSz96GQ7yqmNx9v7DqfdJ2iQJ5kg7UDjmovBAUvc+8ANiSPrhowNfQoTBVpb7qGPBXuFjOS3nMhD8w/gsDKGseV4mLFVPdtuThTfnZcyMaksaXnWorbGagqxDQBiCwIBKlgVhVnIaqBVmK5+cHm/7sQUZg86kOZx7EugVFwlYsH1oPpZdmJ+LNL18ErqNCAxR6lsQClVd9inn4NyESiSWkGxGeKt2jMQ8IAoj3ZwqIUuGftLGbuflCdsZMjAoER3iLkC7aVhXbXvfTE/IK2Bg3snMePfYuetpmOXH+tpD4UD5CvmmkU3g81QKmLo70JMhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mIls5LWpjnWuZR40O6iyFui5L4nni4mmokAAjtRT8DM=;
 b=bq87BfQ9D0L06ix9kqHulMJ+P6zYkVh8H5lgpi2usWcjgiqSjpwSD0jMIolQkfU+d0NUNv8ZrFAoHygmZKs0xtl7eriDSGzVt2sB3tl2rLDe/HdJiDtVUZyHHq9AH5vxVnLyTNUzeIovLfO27A1q8i5Dg9J9MjAU3ZNC/rq7SUI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Wed, 8 Jan 2020 00:51:44 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.016; Wed, 8 Jan 2020
 00:51:44 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, 
 "olof@lixom.net" <olof@lixom.net>, "maxime@cerno.tech" <maxime@cerno.tech>,
 Leonard Crestez <leonard.crestez@nxp.com>, "dinguyen@kernel.org"
 <dinguyen@kernel.org>, "marcin.juszkiewicz@linaro.org"
 <marcin.juszkiewicz@linaro.org>, Jacky Bai <ping.bai@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "nsekhar@ti.com" <nsekhar@ti.com>, "t-kristo@ti.com"
 <t-kristo@ti.com>, "yuehaibing@huawei.com" <yuehaibing@huawei.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk
 provider
Thread-Topic: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk
 provider
Thread-Index: AQHVxT22lCphJTTugEK2JxbHY9gYlKfe8rWAgAD+LjA=
Date: Wed, 8 Jan 2020 00:51:43 +0000
Message-ID: <DB3PR0402MB3916FD8AE2F010B6FADF40DDF53E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1578387197-5750-1-git-send-email-Anson.Huang@nxp.com>
 <1578387197-5750-2-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481A2BBA0CCE3501F5337A6883F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481A2BBA0CCE3501F5337A6883F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 144547f0-5bbb-44f6-cbe0-08d793d4eea3
x-ms-traffictypediagnostic: DB3PR0402MB3836:|DB3PR0402MB3836:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38361E10E58ABFF34FE88E36F53E0@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(366004)(199004)(189003)(52536014)(64756008)(76116006)(186003)(66556008)(7696005)(6506007)(5660300002)(66446008)(66946007)(2906002)(4744005)(26005)(66476007)(4326008)(71200400001)(86362001)(8676002)(8936002)(55016002)(316002)(44832011)(81166006)(81156014)(966005)(9686003)(7416002)(33656002)(110136005)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g7v/xaor+Q09Mgv/67j/kvpTS4lcOJdWg/TvsmgdhVOnLVD/L5LD5FxJ4/ACtHGXm16g+BHetzdpyz+Y+U09G8oQolskWFLrRlYfhiEVvEbnT4qDJa7u+qX2/1QTz1x3OXKb9TcJ07BDtBNkpTU3Cev297YEUInBX8+o/jlu3FU2G4GViS570Xzxk6dg+v1oJkk9IHyrFxqxQvl3DjuL9cv02ov9tbVlY7iGPzcI7nWjsb0la5BBSJiFy/UqUCUZmvW1GyKXdQ8llyqrnw35nz1qDRd0ls2PETSunUyQIIBmpo5b0SR1zH0bY5RcVUAsITBANKMkyOaNZlPNWLI+EBjIPdAH8X9pEnOJSGIrmF0Nzcrc59WPkIBCYXTk+sX6ZfK/rkAP/pjXMNrRNYh+tktNbtBztx/P+JuWaRioFQhUnJxnxKSf0Q04sMquj9rt7LOfKK0Q/n2VcwK2mgIYg3LvawkQ6qx5PqDcaYv4oy02k3X2YEo5Xfe+5Me7CkI+8Jx7JRUi05KX/RPZyvYK7AImmqxIUgVKWSRWiiPrFm9FV50yF6ITfZ96U4kGzQVSlqYfkH3Q7/9JG0AKXFyn2g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 144547f0-5bbb-44f6-cbe0-08d793d4eea3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 00:51:43.8798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iw3L93Vsc8tgcrwHBYVWsmi1eOn7GCLkMKGOdcUW4d7MtsoT9JrRmDbpnFxxyBCVLHgHEzxE+eMQkXekyM48Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_165152_483031_D51A6BF1 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> > Subject: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk
> > provider
> >
> > Add hw based provider support for i.MX8M composite clk, pll14xx clk
> > and other gate/mux clk APIs, so that new added i.MX8M SoCs can use hw
> > based clk provider.
> 
> i.MX8M hw composite clk has been in shawn's tree,
> https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/
> commit/?h=for-next&id=a4b431f8038a67222fde888a48bcbd704d2daca0
> 
> You might be using an old base?

I used linux-next..., will redo the patch series based on Shawn's tree.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
