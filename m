Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABA31F4FAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb8fUHsmSFR7G2k0LTs62/HAXJycl3XMCGpFcWD7VNg=; b=fPTLzoIyCiD26C
	0ajnULpbLyHQ9pU2ApYi6QO19AEpggxObXYwEfh7lDMEKlS0r394IJZcYAqsE+RLj/L8DXRMM6r/w
	OSKSdpnTKGkLDd8l0IgvFFNEHR2FRK9242vAIcW/Pvy8p9pOyEgBkgCkM/5SEtASxOZ78Myynw0h3
	nKrRph/a1zIz23KI1k5hYGNiJVHdHp5PLFJArNynw/BR0t09IdBbr8SJ32eZ24+R40cMfHlnNuVFK
	EWegAKsmnf7nHEPXfNd1dwi3cDLVKjBa3t/x41i9eYPfZ35MbLzOBPtHw5Um7DS2eQUy1XYH5ENQq
	hiIllB0Cr1SO/QLtnSZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivYk-00089L-LQ; Wed, 10 Jun 2020 07:54:06 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivYc-0007zj-Ih
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:54:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLv++6zjzmbn03ZWocqkuwS0ky1TNDodM3aCWqjFYJjNvmLYeLnqEtJWeujJmGy6mONQMeI2cKhptdsO4DDtaThYYePcUgHbvugwMrrzpiuZXVneQjzf+QT+Vei46yaBOxlp8kbk5G09HoSr6S2dXQ+CYI/AYysvNTKdnRxBrwvLgBbZ0cW4TzLxEYQ9EUqEhPlTKE0GJrDvfokQL4vepOOe8+NHTb9k4IxMM97Oq6BwjQpoyT8p/Gfcc3ZVPsJ/F2cQg/DyQDUtzZ+XPbLrZFAtFXK7GaQnG4hqeFaIcHt0tAlnZmzc1egB8EJGaMHqLWfiE3MMOqEPj6MSU3ijwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=me7v+XnVdq6PelxdwT5RZp0/waIVJd5CaUZV0eJvZe4=;
 b=DFOWvBeYgz+j40ksIXJoXMFMl9Il2BhnJtUVuuEWZEBhH3a5KaCSgAW9+lZvpwlJGmPuMwr909WfAqiz/biJG7phfgBgSaVM1EMo0JcSq450XVWkrIomANFNBxMIUiVc/yBrx7VN5DmKe3ubgRiBRtJG1s5SLW4IqLlZIhYRUdiS9/h2UjnAUDYU/i4UfPg4S/c+wySUCU7rWah9+gv1TWdvwsY6I+S8RE9fFyimtTjfqKEl8BHsXqur36sqFRkRK0Fk/bs2qA1EV4gYaz6BfOsLjUmIdWWcjaQd6ouRVwkq4amdxmNgTWnI5jQ8qdLgB+aJ9IfEySY6/KgNQJ4R3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=me7v+XnVdq6PelxdwT5RZp0/waIVJd5CaUZV0eJvZe4=;
 b=LIE0fqu6lBvtriOPPr6GnLZN6vwS9E6duBLIEafRrDD50wSXzuPWqxrozRVgTTb6lKMTaqit6TsInV+zKtLV1QSBVnmZjhHF2F3GWPZEnrbUA4FYMJlDf4Y9ybBxLJ0zRRmMoTSAMwrGJIirqCKvQBhWcThInTzs/+CsJRCEiAY=
Received: from DB7PR04MB4972.eurprd04.prod.outlook.com (2603:10a6:10:1c::11)
 by DB7PR04MB5337.eurprd04.prod.outlook.com (2603:10a6:5:1b::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 07:53:54 +0000
Received: from DB7PR04MB4972.eurprd04.prod.outlook.com
 ([fe80::8cb5:8821:ad1a:7f6e]) by DB7PR04MB4972.eurprd04.prod.outlook.com
 ([fe80::8cb5:8821:ad1a:7f6e%4]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 07:53:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Peng
 Fan <peng.fan@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Topic: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Index: AQHWPrCwHFST6JvKdUylgCfenms2aajReZOQ
Date: Wed, 10 Jun 2020 07:53:53 +0000
Message-ID: <DB7PR04MB4972E7B649B935B1EFE6469880830@DB7PR04MB4972.eurprd04.prod.outlook.com>
References: <1591742515-7108-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591742515-7108-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a06a5efc-9625-4008-0ab6-08d80d136c37
x-ms-traffictypediagnostic: DB7PR04MB5337:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5337DA164B7EE4E7A8158FDA80830@DB7PR04MB5337.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RNCNk5rOn+iR1cmYtt3lvvKFQ5xNmLBs7SGeCxFaEHw/Qwt597tgeAhR9czjqxlxukNY6m4jsKbI2TB1lmd6h/q4/mJl2Jdwkqm2CRmBadHWqNcA6w9brDQkdPzAumiE7qqERrhTxYpdgck8fUZ4MOiHrBAxwk9qg9iVlv7nEoNJ7f575KP1pVtpj+ylLg9THqBTp1WmDPmJcQHrixhpxXt1E4SKGjbA4253MKuax4A6obxFsfRq6Khcdv/GDY/C4cs3eQWnaBKrQc1L/Y+sKz1oc/1ZKVSEuRFy+mxWdObycauJ8ESLGyeY1L8wU4iuJWiRYThGdW5/MiOWhd3El2BPp9F0IY0PQo6mT+w2gV8M1N0t+jMmqjBvYG4ELuDO55sh7Bpr29Pgr2XxDrgetg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB4972.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(7696005)(2906002)(316002)(8676002)(110136005)(83380400001)(5660300002)(86362001)(33656002)(52536014)(8936002)(4326008)(186003)(66476007)(9686003)(6506007)(66946007)(66446008)(66556008)(55016002)(478600001)(44832011)(71200400001)(76116006)(26005)(64756008)(921003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 0yX1x3eyls5y/0pOjkxkLT8p3qt8XvW33IY9v//EWwzWkpUv+WeX56rPR2Lp6cfaShPO6D0q8IFr0VSJiEPIIi+gVWe/02p/14BE4S4LKGdQxFewEB16RYdH2ZIHgD+goUDgAhjqZH2dI9jVO6I43QV6YFKksUzxj1t/2keUiXHUQu8sRBf/6rEDEp74V359IGjrjgT8NEZOVTSeuc4ojJ6BtikjUsJ8zidkNz9kXYhDZOxz7a2XHq4uYmRJ7fLNN1CS8oE0kn8c2KYSPdsiR1JLY7zs1eioPbAWiXaQEjyhKxWfvchiRUA1+YHalZV72FHuV8yMrY+lDO7IDsoFJHUruzmI9Q1RihZj4RJ5wxrqx/24PZIFk9z6U6N0zaF+ko7+RtovGkEO7pBbxV3Jk/Xj640lnHbCivfTzhYOGd0JesOq6rK2J3mZiNT9fuPCFAQ/8hoGOLsE96h3iW3U1nJT7TS55j7EUFoxFgpdkgc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a06a5efc-9625-4008-0ab6-08d80d136c37
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 07:53:54.2115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ShOwIcVSeIU0t7YRVscT2pNvoKkvwKCVx7ZFLUEFq1tU9uT1xXAyfElI4NfQQyJmBO2Zf718JEGL08nzNcgjTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_005358_685392_15A0BC52 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Wednesday, June 10, 2020 6:42 AM
> 
> Correct i.MX8MP UID fuse offset according to fuse map:
> 
> UID_LOW: 0x420
> UID_HIGH: 0x430
> 
> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")

AFAIK "Fixes:" should point to the original patch which introduced the issue.
Not the one changing file name.

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add fix tag.
> ---
>  drivers/soc/imx/soc-imx8m.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c index
> 7b0759a..0bc8314 100644
> --- a/drivers/soc/imx/soc-imx8m.c
> +++ b/drivers/soc/imx/soc-imx8m.c
> @@ -22,6 +22,8 @@
>  #define OCOTP_UID_LOW			0x410
>  #define OCOTP_UID_HIGH			0x420
> 
> +#define IMX8MP_OCOTP_UID_OFFSET		0x10
> +
>  /* Same as ANADIG_DIGPROG_IMX7D */
>  #define ANADIG_DIGPROG_IMX8MM	0x800
> 
> @@ -87,6 +89,8 @@ static void __init imx8mm_soc_uid(void)  {
>  	void __iomem *ocotp_base;
>  	struct device_node *np;
> +	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
> +		     IMX8MP_OCOTP_UID_OFFSET : 0;
> 

	If (of_machine_is_compatible("fsl,imx8mp"))
		Octop_base += IMX8MP_OCOTP_UID_OFFSET;
Then you may not need the extra changes.

Regards
Aisheng

>  	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
>  	if (!np)
> @@ -95,9 +99,9 @@ static void __init imx8mm_soc_uid(void)
>  	ocotp_base = of_iomap(np, 0);
>  	WARN_ON(!ocotp_base);
> 
> -	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
> +	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
>  	soc_uid <<= 32;
> -	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
> +	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
> 
>  	iounmap(ocotp_base);
>  	of_node_put(np);
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
