Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF2D12ACB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 15:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuN4t8rS7ytjssJLxsbV01c3dE/dID4+fNZ/4J07DAs=; b=MMoywqCDyxd0+G
	hvbzxdUyQyFmrpmnxBWE5PeRpd+Pg1zW0UYX1nj/3etiUACTkFlEUXtZITGzGOEjppfU4NRo4ub+1
	xkzd/V342xex9ueOPcxqDMFSGYez4IlI4Oe6DVl4hrXGm3qF5TIj+uumiFXJfog0tdz+s/ediA034
	puqbsjL7J4MhgJ2J1KGKiPhydXFVcW+R6ISe/JrCIZye6O72/ySqFGbo6B7+qA01vsnv1F7UOdRnC
	4OnSbvDDFP4PcoRsRlCqS3Zu9OqbrJ/82I9KH3py6HL0BMgWNPnXk0OhqvnLJNOzBgawWyupe0kO7
	O3mHlZgasvzw+UCyPJOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikTko-0000T7-Qf; Thu, 26 Dec 2019 14:04:42 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTkf-0000Ry-LW
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 14:04:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1lEAqOi+u5enHhacTjsCnAhwFhfkjh4QbbAHSZB7Ebq2aVTwbyfI2+M4KjqUS6ec6aR3GOlBONhgJ/oF9KN5vDEQEEGpZc2k1S/wHqPsPkSC4rACcuIsC+nd0BjlMBC/En8muzaKLaQm7xGu34ekka1zBbNZP3SeOHl9jBxNpHN09FyH97ykcdVx505wIj9vZjNxJSiyiJlX076aBX3Ui1r4z0tSd76OsbTcW19zMAlVI1HhdPwluYHpTw5uKQOEjxkcjMBy3zC2TeQPQl9AaLObyCREVOr8T0LZpu0z7jXmkHz/mbtlP10RCfScqG+H1MWpxk9pzR8F1JYChztIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdeEwGufP9ZrXewH9YszJbbm5IsOTiS9gXj7hzsa+DY=;
 b=azwmVgNydjLnh9Zro9CRKwPGelGkN6fDdTBA1lWn8yLTvJspQq6pI3UyO0q5TpQIjezQZl1MvmwvdQYaX7a9lLnoZc1M5o+TLhzY83u5jlQrTUBYbqLH5Sd6l9O8NLuOPUV+871vB6w1WlysXKM7SgeXL/X2sRRoXM45tc+oHvgtgQd3swPZ8g4kBzC5mgS7aqf9bOqBmfCztmu1xy0n+ZksxF9e5S11mBmoJNWGAURSGBlQmjEiRXgzkgtgMNetSCjgU23t8LYJ8q1P71WLpRZDzgZ5LTkCfPRlnBSiYWcEhj8LNG+wPL3R833y6uHAWzIaBTUFUGSPk4ni0MpNJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdeEwGufP9ZrXewH9YszJbbm5IsOTiS9gXj7hzsa+DY=;
 b=RNaQ1gJQD0er9jF4aar5VugS4UidfFHafySUZ2eCsjzKEVjHOGClG6z3GFvTlgM2Zh/K5uzFfs5UTPnTiiSSTqZzm0TjScLGOAqJQC4E89wWXacwSnf7InevFUU1A/6Ig4blaOohZjAZtvHS/cGJWjLFovhXd8SDBItSXByJA3s=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5060.eurprd04.prod.outlook.com (20.177.41.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Thu, 26 Dec 2019 14:04:28 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::6d52:5678:e02f:95f4]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::6d52:5678:e02f:95f4%3]) with mapi id 15.20.2581.007; Thu, 26 Dec 2019
 14:04:28 +0000
Received: from localhost (89.37.124.34) by
 AM5PR0601CA0032.eurprd06.prod.outlook.com (2603:10a6:203:68::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 14:04:27 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 2/2] cpufreq: imx-cpufreq-dt: Add i.MX8MP support
Thread-Topic: [PATCH 2/2] cpufreq: imx-cpufreq-dt: Add i.MX8MP support
Thread-Index: AQHVu7mKaZLuFaepI0S7Z4SaC6NlIKfMc1AA
Date: Thu, 26 Dec 2019 14:04:28 +0000
Message-ID: <20191226140426.ip2vb6dom5hckenc@fsr-ub1664-175>
References: <1577343167-16376-1-git-send-email-Anson.Huang@nxp.com>
 <1577343167-16376-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1577343167-16376-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0601CA0032.eurprd06.prod.outlook.com
 (2603:10a6:203:68::18) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d51eed90-c363-43d2-ff4e-08d78a0c8568
x-ms-traffictypediagnostic: AM0PR04MB5060:|AM0PR04MB5060:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB50609D366D9596CAD6282654F62B0@AM0PR04MB5060.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02638D901B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(396003)(366004)(346002)(136003)(39860400002)(376002)(189003)(199004)(5660300002)(66446008)(186003)(16526019)(2906002)(66476007)(8936002)(6862004)(86362001)(1076003)(52116002)(81166006)(6496006)(8676002)(53546011)(66946007)(64756008)(66556008)(26005)(81156014)(71200400001)(54906003)(316002)(44832011)(6486002)(4326008)(956004)(478600001)(33716001)(6636002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5060;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CEhE1rkYukRZOPVEANut4o4U8hFudjiGvGqIt2XArQr0PBaWE1cvDjR6ZE6qQ0Y5nYlzXx7tGZkZmBzzKGC6i0hWyd/PMS0cUK/le6r7/uV3cf1ajohvQ5T9/S+u8+oJ/T6FVe/P9t3TIr72H/9Dejb3dgCTIN2GXW2iNtyO6+6LtyxcIZLyRLjBPobjTn4m+RebxoJyk2LQSfUoWXFa8feBeaHPjlJrUG08/JYb638sWXKJiDZXLyMNrY2Lm4Zf0aFfP8dpvegzxjwkGfBlO7Nq0D4Lxz8Co+NvoaEVWtu0RkGfypEInz/Ez93X5rlzapxnQmsPYu3xufq2LDwFrGbkwLWgRwPFR2sPAbP1napU7JAjsENtjjKAvBTcUSzoVgBXP8KBt+TuSCkqWu8cnsHiUEO4sRYnA5GzIIfKankMqQrj53AVNODsoj+gg97K
Content-ID: <8F23C618A82F824C80C1441332F2773D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d51eed90-c363-43d2-ff4e-08d78a0c8568
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2019 14:04:28.1254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BCiT2gmbSgN40DgIsZSYRCnUW5fHfLnfeJwjKRtrNQcUQzEwQScM5pkTc3WsjQGWDiekjn9UbaBKWY8SAST0aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_060433_799728_1F27CD56 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.68 listed in list.dnswl.org]
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-26 14:52:47, Anson Huang wrote:
> Add i.MX8MP cpufreq DT support for speed grading and market
> segment check.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index 85a6efd..912e93d 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -35,7 +35,7 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	if (of_machine_is_compatible("fsl,imx8mn"))
> +	if (of_machine_is_compatible("fsl,imx8mn") || of_machine_is_compatible("fsl,imx8mp"))

Is there a way we could do this more generic so we won't have to add
another of_machine_is_compatible if a new imx8m comes around ?

If not, please drop the second one on a new line to follow the 80 chars rule.

Then you can add:
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

>  		speed_grade = (cell_value & IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK)
>  			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
>  	else
> @@ -54,7 +54,8 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  		if (of_machine_is_compatible("fsl,imx8mm") ||
>  		    of_machine_is_compatible("fsl,imx8mq"))
>  			speed_grade = 1;
> -		if (of_machine_is_compatible("fsl,imx8mn"))
> +		if (of_machine_is_compatible("fsl,imx8mn") ||
> +			of_machine_is_compatible("fsl,imx8mp"))
>  			speed_grade = 0xb;
>  	}
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
