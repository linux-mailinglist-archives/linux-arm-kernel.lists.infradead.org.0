Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BFD18F6DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHO42qxnZiZG1KfZ3SjLmmh7wEcoMoAeGT5RwFuu2Zc=; b=k8YtcMrbqPVpyO
	S6fM2XRqKLh0F+7H2xTfQq/2XaqgLuHI/DqsnED5/Fm5WTOe08e7zEPl53L3Q5cW5sWkuVhGIvHG2
	sXFqma4nRJPBA0mBW6r47ECCNuEOP3mktbBBzDafijNrxMCc3wPwHdxewUjs34kJck2U70pusgIxz
	hgdg9iDMW0wVfLw3S/Kq8NTPcraqWfvVSNXnLEYZy2dQt057HIFGpj8xWiaXaiuSWBg3PstIs73PB
	9uD9KYsG5lqA2/+APuYMTXZzzMx1bdS4fWyd3Dk3sCrTEOWOLmtkyfgxTlOtNi93NH+HuG9RRjbR4
	P3cSp65XF2PXoSSos/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGO2w-0000ga-H3; Mon, 23 Mar 2020 14:27:18 +0000
Received: from mail-eopbgr30044.outbound.protection.outlook.com ([40.107.3.44]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGO2p-0000g1-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:27:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ak3QL1mWpvTrOJjMUFhb+oq9yXiuXXpYV6vRaOVVRi6Mo4iH2/IyZCVjVElMXLzhiTrlwUYA+7SmuX+kVCPik1datZrkkqssT9t/ASWsVCKTFs/tSoD20fS5q7OeWxQ8E/GZvVagjHs78vDRQjztdhXPhj9YWvjTJGMYcb6D+VRnc7/UYlMWSjAvkRkDSlK4n+Tidvex2HIECa6Xy4wnSXUmDzNlHuvV9PRfXcQqlLoZwwOnlBOMOsKiXO/RUqv503eplmb+wN5S+7zlhGDEbdosqUyv4g9RX5sRZLvuFrt+eVBcRkFjwJ2nObb5kcPsiDdnnTG/pOSGW7kVe4xvEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EkmnU8GffRjmH68GP4oWaUsiK16+2vCNv89n62n4mBM=;
 b=GFCnfTDxf+IJstNcFBlDM4hAKZwi86dsKBIwObWEvbyZiqsJS/JxX1tTG3ym6LjIhDY8lH8nlXGtzdyynUBaZQVQsYgtpHkMYrCGNiBRUHZKP3fk30JLEBxCKCgEVx9JplK4iuOEU8ezRMy6Wl2dJhw/4Glue/bOcB/227nHH+hPPBmvxiSvjOIjLwZK2Wep2qRXdYQjsxVp5gj3A+AKtAtem6NYIVHQiRYkMHS5DIQstta110w0Dxtt8ubyYc5nn8lBZKWd9sVqHW/IaEPUvqVqW16l6vavOkYmqdCQ+jjldCOgMe4JQM/TKSAa0yQiQywn47UC1qwQ03+OimpMyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EkmnU8GffRjmH68GP4oWaUsiK16+2vCNv89n62n4mBM=;
 b=iLKAdACTQ070FHDukf27vDPDHvUk/f9lpBfx9C/+UNtqSsnuBKUROlNLno+j48cUa4XR69oTQELJjN8zX6hBHfZKLTG1eeT1wEV3IA8DCwFVq6XklkkqSkyIlaHFZykNMGhLvd84sY3zU5XyaEvPkKHpWWQ0W5ok2qHoSmSytEQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Mon, 23 Mar 2020 14:27:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 14:27:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Horia Geanta
 <horia.geanta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
Thread-Topic: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
Thread-Index: AQHWAQ+PMwlXAHkCzkSegBP0Of4mRKhWN38AgAAEZRA=
Date: Mon, 23 Mar 2020 14:27:05 +0000
Message-ID: <DB3PR0402MB3916CA154E7D1FDED469B8DEF5F00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <1584966504-21719-2-git-send-email-Anson.Huang@nxp.com>
 <644b108e-596c-64d6-9693-80ac7f706dc7@linaro.org>
In-Reply-To: <644b108e-596c-64d6-9693-80ac7f706dc7@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19c2e8f3-428f-479c-5cd5-08d7cf364348
x-ms-traffictypediagnostic: DB3PR0402MB3913:|DB3PR0402MB3913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3913155857D432E8890EE023F5F00@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(136003)(346002)(396003)(199004)(7696005)(186003)(8936002)(26005)(81156014)(52536014)(76116006)(86362001)(478600001)(8676002)(66476007)(66556008)(64756008)(81166006)(66446008)(5660300002)(7416002)(33656002)(66946007)(316002)(55016002)(71200400001)(2906002)(44832011)(6506007)(53546011)(4326008)(4744005)(9686003)(110136005)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YO9LEJCvdpwAh/Icu50w2mD/wP4ATbDZWV8xlRpRH7NDdaBk5BPlJoZFROo9tlqL77Ps9hVSCXCulHsMAbd/3cXYtO5g2HLll3qqhe4iows2VZI6aNZZ/Sr8oeTp2czWHkmFY5i91DmF7y1TfpR3c9gMixuLgig0VWghzEvT3Ip1nilFu5VMEuoW5j19EmQJwJC0xHWqV4px9KC6Ad4rx1T8nkHaAyaqEok/shO4WGfOWIMM7E6/i0ZZRHfXPu/J2zB1SdMCVB/Xg+AYSrrep4zeBf53JZPLQ0jS8CbTgsuSgUvubUiHp+U21awgeMUys9MQVGVMmWJQ9LlkQFjTmrGV9dW8pObjhulE58r7xtRoefJIZI1PGe4fD9MEbQKWdr5ejKa360OuAZ8CHibg+uP2pz2WkDWnTY6slvKg37ELETyLmUik9YiEuyD5Cs/3UjWGFdE4AsSR6oHRye4T+2NH7s7ltsAvQHWJF+kRksiG9HYq+YTums/YruNxuOwwH2pZljqfw0YSOBFCu1znZg==
x-ms-exchange-antispam-messagedata: Qzl17yqdBCN1x+21ylCnUGBI9lZ7DD314RptBkguiYB/OegTiFCGkv9ELh/AFzzN5ub8sRt4B+ZnRvlu49hGCSa0pMtv2Yf+BgArGuvQMBVY0R+yZkl1YNIikk5m8k97nlHADE5pkizPoXAUaiKoag==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19c2e8f3-428f-479c-5cd5-08d7cf364348
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 14:27:05.9164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H4BI4CfvMlcMIPDJxDA4tG3HagDUkdmlSYeqVM3BGEXrV9owp1ZWETXuFJrPyXBPBrlF2rFQosvFRmCFoz4PaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_072711_618031_87EC43FC 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi, Daniel

> Subject: Re: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
> 
> On 23/03/2020 13:28, Anson Huang wrote:
> > i.MX8MP shares same TMU with i.MX8MM, the only difference is i.MX8MP
> > has two thermal sensors while i.MX8MM ONLY has one, add multiple
> > sensors support for i.MX8MM TMU driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- Fix build warning about test_bit second argument type.
> > ---
> 
> Please, just send a fix on top of this patch because the series is already
> merged.

Done. Sorry that I did NOT receive the mail of patch merged, just sent a new patch
on top of it.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
