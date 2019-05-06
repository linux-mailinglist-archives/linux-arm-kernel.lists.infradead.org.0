Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2302114683
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X522DnC93S7cx97qEzoVkynpAt1SPvIKjKe7fi5I3k=; b=AwNyD1sum6IdTK
	cAv7rHHkcOL5RuSDoZTbjaxvf8vw59AK0OeTnu2sYe6blGs5pWluqJ7pW6U7CBWQsWtquAwTd5APn
	PsH8vDWsp2TuvkvcV63tFSPq/o9fJBnEMLXbV5Rh0IKWRvDQnvxYvVKladhO5b/vzdjhWtMw3UPqf
	3dGqpFBLWU0hDkb/VALSUM4VyCaTURMWQ2az29KKpONG7BAW/hyC8S8YURIlqpdS06bANCkFdAzR4
	hyO0KMWpeCCKcl1nrKAL7+ob9YBoy+kXHpY/M0ZKystPi5O4sQYuTamiBTIOt5ud0/93UGColAf8E
	fhSd29eGEGjxPQv6BrqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZ9Q-0002hT-CR; Mon, 06 May 2019 08:39:08 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZ9I-0002gl-Br
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xcMsBeA98uqArjM9+lstrkc3YGVHAyu3oPsKflV4lcM=;
 b=P9aINnVsiRAvwc3rIC7M1mDZgC4oJQmM3lmzqCuv2rQIdy5HkyucD7hVLHA6WcsCFAocN5VioCkOpgn4q9oY7Fpe6usXCrBRPGx0DVKmRRd0sWj3WAfQzdOwI06utTWoiGC+/DL0JdHd48ZhPE13fCiUSgxEOZo4BAQmZDo013g=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5777.eurprd04.prod.outlook.com (20.178.202.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 08:38:56 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:38:56 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 3/4] defconfig: arm64: enable i.MX8 nvmem driver
Thread-Topic: [PATCH 3/4] defconfig: arm64: enable i.MX8 nvmem driver
Thread-Index: AQHVA0Zq0lMMTqYsu0eS+A3G1K8gPqZdxoXA
Date: Mon, 6 May 2019 08:38:56 +0000
Message-ID: <AM0PR04MB4211B499C58E61723BE35DA780300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
 <20190505134130.28071-3-peng.fan@nxp.com>
In-Reply-To: <20190505134130.28071-3-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 976de633-4b5b-4eaf-f6f2-08d6d1fe4737
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5777; 
x-ms-traffictypediagnostic: AM0PR04MB5777:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB57774CD5B9366F3DE4D073FF80300@AM0PR04MB5777.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:632;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(136003)(366004)(346002)(199004)(189003)(71190400001)(2201001)(71200400001)(25786009)(86362001)(6436002)(316002)(7696005)(76176011)(99286004)(256004)(54906003)(110136005)(3846002)(26005)(186003)(8936002)(6116002)(446003)(11346002)(8676002)(478600001)(81156014)(6506007)(102836004)(81166006)(14454004)(476003)(66066001)(53546011)(486006)(44832011)(68736007)(229853002)(2906002)(33656002)(5660300002)(2501003)(4326008)(7416002)(52536014)(305945005)(9686003)(7736002)(6246003)(74316002)(53936002)(55016002)(66556008)(64756008)(66446008)(66476007)(66946007)(73956011)(76116006)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5777;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ehVFjJE1QDbN1zpOEpKBmk8loMKKxRc+8p7Xx6/5eLljSaNGBZdm432Ot02RY/AsN+f+P8ZwOYB2dxkhZHk6FOvua/ilp71ujMP+gJpAThtmov/I+2yUg/xl/k6Qn/GMRC3zHuj7vxNZvwtkynYaWPgvnUA+eEFvkAcAvfoCavdRhY/KTedU1I2oxfuNDxAw8erj1KLUTUaewHHW8q+JpPUln24VUzjbYvpj82RYJVQV0p87JKp8W2lLse8MFE0/h0xO4VDdtNnAlx2ilX3igiyF0iWIXVjcQomKHJhV+qu4I8KcnoGQlNKhJMYFuRcOqzpML8xc/Q1ekGbqqCiyD91M9ThFhMO5qGVeNQfLNi2NP3od39pV22FR7Xy109w0XpCHiHV6NIEv0dmZG5s0oLsfWESjtaUAfk3LFIpD/FY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 976de633-4b5b-4eaf-f6f2-08d6d1fe4737
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:38:56.5892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_013900_412162_73B8A068 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawn.guo@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Sunday, May 5, 2019 9:28 PM
> Subject: [PATCH 3/4] defconfig: arm64: enable i.MX8 nvmem driver
> 
> Build in CONFIG_NVMEM_IMX_OCOTP_SCU.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

defconfig: arm64: enable i.MX8 SCU octop driver

otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Shawn Guo <shawn.guo@linaro.org>
> Cc: Andy Gross <andy.gross@linaro.org>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Olof Johansson <olof@lixom.net>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>
> Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index eb31c20e9914..9d8a512fc3d5 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -748,6 +748,7 @@ CONFIG_HISI_PMU=y
>  CONFIG_QCOM_L2_PMU=y
>  CONFIG_QCOM_L3_PMU=y
>  CONFIG_NVMEM_IMX_OCOTP=y
> +CONFIG_NVMEM_IMX_OCOTP_SCU=y
>  CONFIG_QCOM_QFPROM=y
>  CONFIG_ROCKCHIP_EFUSE=y
>  CONFIG_UNIPHIER_EFUSE=y
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
