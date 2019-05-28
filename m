Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CF12CF62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 21:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=o7Bf2SoaROHMILcNZt3FhvD9/nYulG0jZhVBVACQAsI=; b=VQwbcf0hsbryTN
	eTxUMtaAGq63f3wQe+eA/NhU1+yzvtKEZV6gdc1VNX5bmkaLT6HRwaJ6pnQczX4kOh8Ktar2BcDYT
	dhTpQ+wxlqhwstogz1+LNd2+zQ1tm+gcQZKuMpEPphX9M5c4Hk2OYG+QYpXwxEwVuJTJFwKh486LV
	7fkfxe2CiaY/FfgflefGa9zbE5gJi4szfQ6pz5W2Hya9V8GhdnOXPffUcoHcjBncmdwNSZFamOAb7
	EAy6a1QxsMYITUb7T03dEmPTZOTBuUrqXQV8MoX6Bovufk4yhfXytalFGtviDKaFoQccQG1xfQgib
	bhL3JUmh0OZnOuJIlJzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhhn-0002xM-6h; Tue, 28 May 2019 19:24:15 +0000
Received: from mail-eopbgr30085.outbound.protection.outlook.com ([40.107.3.85]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhhg-0002ws-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 19:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ai9jwiNPVbNdbcJ/T84LdDnIB5vxKJDYi8EuBQKg02s=;
 b=cBkcZmNWxtxHIKfhWmHJ1RuLpMdI7Tz2xr6AAOB4w/wkpO2sNnDTKm3IxTnMcizgj52YW3Ws1s/7QerNPWmZOKcBpqzKtny67p+OxaNqDn9h5uJ6ca9KpjdHRRrFKyDmv/1JrDxeU4YOhylGZ4olu2gwqGftr9YfV5ug6uNIm58=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB4557.eurprd04.prod.outlook.com (20.177.55.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Tue, 28 May 2019 19:24:05 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 19:24:05 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND 2/5] ARM: dts: imx7d-sdb: Assign corresponding
 power supply for LDOs
Thread-Topic: [PATCH RESEND 2/5] ARM: dts: imx7d-sdb: Assign corresponding
 power supply for LDOs
Thread-Index: AQHVCKkZHNdBkg2sXkeS6OCWrMrKwQ==
Date: Tue, 28 May 2019 19:24:04 +0000
Message-ID: <VI1PR04MB5055647612FAC2FE6FBE139FEE1E0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <1557654739-12564-1-git-send-email-Anson.Huang@nxp.com>
 <1557654739-12564-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7eaac96-865a-4e83-fbc3-08d6e3a20c55
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4557; 
x-ms-traffictypediagnostic: VI1PR04MB4557:
x-microsoft-antispam-prvs: <VI1PR04MB4557DCB8F61FA857AE351E1FEE1E0@VI1PR04MB4557.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(136003)(366004)(396003)(199004)(189003)(229853002)(446003)(74316002)(9686003)(5660300002)(6436002)(55016002)(6862004)(6246003)(76176011)(6636002)(4326008)(7696005)(54906003)(53936002)(99286004)(66066001)(256004)(71190400001)(71200400001)(478600001)(14454004)(316002)(4744005)(33656002)(3846002)(476003)(6116002)(2906002)(44832011)(486006)(305945005)(186003)(81166006)(52536014)(102836004)(73956011)(66946007)(68736007)(66556008)(81156014)(86362001)(7736002)(64756008)(66446008)(8936002)(66476007)(76116006)(8676002)(25786009)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4557;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0j+DgTF6NH1DBCGTSwBl0+4yMycwEiAvvQ4QXasZWxZxIYXpescSRWXRqyuVaN0tzhlSjL9wWgepDghtc0XRNKCxbOfBP/TMffyfYBhNyHPJnFnHgIpoAUtoNN/g38N0KFPOVxfApM2mSdJagd9Q5NXMq7tWpBkS/M93fFNErwMwsUTJHKa3c8MdyWbOF6gY7nmR2AB7IJ/4K9Yqs0Q000MVcORtfSnqds8CMmFF7t93wlqY630KJAaq3VtK73Pk6rpoHL8KMRO0wafb1om5vRu5uwVyAelOYCVUR4cL8F3K7zTgOuR43SMjiU/VmRx1d/mojE87fNHns6+fGNita8dXa5fo3IB/QhQjL3UMKty8k8UMsYQ8oUHgW3jameE4xPhDCQ/dNPddP27TN+3wqymAZr036kfjCBBIVVbOS6U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7eaac96-865a-4e83-fbc3-08d6e3a20c55
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 19:24:04.9423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_122408_493488_E4C4AA7D 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.05.2019 12:57, Anson Huang wrote:
> On i.MX7D SDB board, sw2 supplies 1p0d/1p2 LDO, this patch assigns
> corresponding power supply for 1p0d/1p2 LDO to avoid confusion by
> below log:
> 
> vdd1p0d: supplied by regulator-dummy
> vdd1p2: supplied by regulator-dummy
> 
> With this patch, the power supply is more accurate:
> 
> vdd1p0d: supplied by SW2
> vdd1p2: supplied by SW2
> 
> diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
>
> +&reg_1p0d {
> +	vin-supply = <&sw2_reg>;
> +};
> +
> +&reg_1p2 {
> +	vin-supply = <&sw2_reg>;
> +};

It's not clear why but this patch breaks imx7d-sdb boot. Checked two 
boards: in a board farm and on my desk.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
