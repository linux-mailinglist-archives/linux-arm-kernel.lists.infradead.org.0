Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960966C7C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 05:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2zO1jt0r/W9fpcPEDLSnpeoGB9/NpLI1NCK92DnmpQ=; b=P85W8DWd8y9hkK
	sKaG0+8LCjhmGLIF7moKlrsfIpk+uzrj0FSPINaH/tkgtMXP6GkC7oogf8uD115Q1YRL936kE0l/n
	QblTROMORtGOOapwtLq2jAvyfdp9+MJN34V57MsIfJdY/vfjrN+kYlTrCre4FEqX3cPxB0xQJDLDg
	G/zR2yvWhOE+WyQdK/+EIxB37LPv902wqLjoSpKkM+2D4p9pXp0noL07xm5J2EGMVOWekY+veUrai
	hgMk8+10sQblOvnf5bBg+CdfKMhO3VKa2b56SNGuamgnhP+5C+KhtW4AJSMzbr6nocT64hcGPrjvD
	UvEuCqypSZsosA6BqX+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnx6l-0005EM-Ic; Thu, 18 Jul 2019 03:29:27 +0000
Received: from mail-eopbgr150059.outbound.protection.outlook.com
 ([40.107.15.59] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnx6T-0005Dm-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 03:29:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RzRlR4+SZKWYSLt3cpDa3RAE801nw64Wfrjr/cVsCeqffV3yZ2XZTHXqYF4kCy83vu+/XV5BDcvetg3fe5iLNGp9T+gCL2mg2aJsoyefifGLY8meOpS9nOAitsrgOsRaUAJiP5f/ez/iyxGXpD1M+/rP8mcXQ+3CvDhT749HNFsFCGD0DGDKCI2l6MmJ+WXV6jzKl9jbIorOooxak9TqLEaQwol1E/rTXejpiuWi9KkOFXyhu8McKhWURlAwCDFrG5VMJc0JUNavAyVdxBORDSESfhUKl4ZUdS3D+O5tOfu5tppE2Id3uUWGhFmRFojPCKbH3oIr2gJPQncQLVL8nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TbgJrcGw4l5ov7UeLUe0ybC+oqv2tlXgAe/QEPk/v4=;
 b=fRma4TBGVhZ8kg6FMWgx6uTmn1RrXbPGNzVvhxot9kXHwyFgSTiBTUXn1yQ1O0EsAn4AKZMODKkpGHd8ubDjjs7Y2mt5I1j0R8RqLUJdFQ/w2LdAhhfw1qBHVmhWte+y42YNmhWFaGncanS7pD9cKP+W6c22fEilv5m3Lx6+P44vqsP7t0XNf0c5hFBNL3HQeGkhSkE7crrvsY942DrY8CgswPJDKLAQJjeaebnmlqeWr8wFAsOAlcFHkKVXYUzZpHcZCVJXIb1fwscXv20jR4O7GQ9cZpm4d0nfOufS5rRRn8oVdAoYTsX6D6GQ5pAFtCY6vOmFDZOqBU889IC4hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TbgJrcGw4l5ov7UeLUe0ybC+oqv2tlXgAe/QEPk/v4=;
 b=HPBlUKWCZzayI66zY54X1ITmI43eu891fjFYVWiNEmfy+B4gxpSQrzF42Hd63qluKDoYV3odB1vFN1dWomX45yn/X2hvoSo/YLWVSVWMshCtbyCNsfAL7IUWXaDPVXfPRqaE/9rbpy75q9shBvj28WksfyjWRyp0ccbfmktyS54=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6291.eurprd04.prod.outlook.com (20.179.33.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 03:29:06 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 03:29:06 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH 2/3] firmware: imx: scu-pd: Add mu_b side PD range
Thread-Topic: [PATCH 2/3] firmware: imx: scu-pd: Add mu_b side PD range
Thread-Index: AQHVMdIf/A/Nl6mgYkmorW+PMBHFi6bPyyMA
Date: Thu, 18 Jul 2019 03:29:06 +0000
Message-ID: <AM0PR04MB42114DD325C5DB2E06011A4A80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190703190404.21136-1-daniel.baluta@nxp.com>
 <20190703190404.21136-3-daniel.baluta@nxp.com>
In-Reply-To: <20190703190404.21136-3-daniel.baluta@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e10935ee-66f1-4d68-19fb-08d70b301698
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6291; 
x-ms-traffictypediagnostic: AM0PR04MB6291:
x-microsoft-antispam-prvs: <AM0PR04MB6291AD87C88E0C62CC9DE13380C80@AM0PR04MB6291.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:268;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(396003)(376002)(346002)(199004)(189003)(66476007)(102836004)(53546011)(6116002)(256004)(478600001)(71200400001)(68736007)(25786009)(33656002)(2906002)(55016002)(8936002)(8676002)(6246003)(99286004)(81156014)(54906003)(7736002)(4326008)(26005)(76176011)(3846002)(14454004)(53936002)(74316002)(11346002)(6506007)(64756008)(86362001)(316002)(66946007)(71190400001)(44832011)(7696005)(446003)(6436002)(66556008)(305945005)(76116006)(186003)(476003)(81166006)(486006)(110136005)(9686003)(52536014)(66066001)(229853002)(5660300002)(2501003)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6291;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ep4IcrbBfoT3mdMvO7IfpQUCXMwN3lphUIihIgKkVWJlBw3Hm6MqOsp7TbV38OpBG/yot2zJii+M4NGAlcJYMZ30w3ukV1DteCBt9wOwmQL01G0uh17me5DPZnbnV7ZS5/ec+oM6ldizsFVj2Li9nGnMtg154iqs5OSD6CJpW0njWbJTLUINwN8uQCyj0UmZdE/s/EDVuNYGuruLyjOH5/xUDZL6CtJf6n4XLNOD6CEWFt56Wl7RIlV2cvfaQJnBGl/ci8lxgwo/gtEQIwNMhS0AMlnOLX4ClXWfNqs8+2FcXyCtWCrkviGn1YWza8cUfEc9wQL+5QGXvMO/a82T5wg+MOy87GOEROuHCqhkg4RkIltmCGQ4VSB481JesG2P+wWz+1J0QKqDTi2mV+3D0wYNUgA3LkOzDNmlDvaxK80=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e10935ee-66f1-4d68-19fb-08d70b301698
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 03:29:06.0467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_202909_899617_33D53A26 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Daniel Baluta <daniel.baluta@nxp.com>
> Sent: Thursday, July 4, 2019 3:04 AM
> Subject: [PATCH 2/3] firmware: imx: scu-pd: Add mu_b side PD range
> 
> LSIO subsystem contains 14 MU instances.
> 
> 5 MUs to communicate between AP <-> SCU
>   - side-A PD range managed by AP
>   - side-B PD range managed by SCU
> 
> 9 MUs to communicate between AP <-> M4

The left 9MUs are general and can be used by all cores,
e.g AP/M4/DSP.
So below description is not correct.

>   - side-A PD range managed by AP
>   - side-B PD range managed by AP
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/firmware/imx/scu-pd.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> index 950d30238186..30adc3104347 100644
> --- a/drivers/firmware/imx/scu-pd.c
> +++ b/drivers/firmware/imx/scu-pd.c
> @@ -93,6 +93,7 @@ static const struct imx_sc_pd_range
> imx8qxp_scu_pd_ranges[] = {
>  	{ "kpp", IMX_SC_R_KPP, 1, false, 0 },
>  	{ "fspi", IMX_SC_R_FSPI_0, 2, true, 0 },
>  	{ "mu_a", IMX_SC_R_MU_0A, 14, true, 0 },
> +	{ "mu_b", IMX_SC_R_MU_5B, 9, true, 0 },

Should start from 5?
{ "mu_b", IMX_SC_R_MU_5B, 9, true, 5 },

Regards
Aisheng

> 
>  	/* CONN SS */
>  	{ "usb", IMX_SC_R_USB_0, 2, true, 0 },
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
