Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C41F44BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B76+l2DE7jMShC0juTi3wMpO6I6PCKmhouHc05xrH50=; b=b4+WtLOJOx7JG5
	oVStAdVGlbBIx8QSAFOat3ixide4XMP5NhAQDLNTvgrHQuFye3+z5yRj1aOjjRE7l2tbrdpBDxSz1
	Zb2w2ydYoPYLwfbVbVYoWrfCN1tGNqpvSpqO4Gl0FjEZg7F9rdl+098HA3x+ZDQf0QvoteFwzDNW7
	Yg2zdpynhjSwELXSms45DZ+Y+By2xYr64SGq2rtL3zsYYV5APVPijlLq7qC3Nk8B+vI1H9a7rO0F2
	gYVr9Sj0tqSbh+iRX+qNnG6xFYedrKuefimBSD4I+QzqjyJKHjlJX5vRdQsOoMPhZuhLf2PJG+Oz+
	bNbSbST8Qk7EOfHq9BMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1eP-0004YB-9G; Fri, 08 Nov 2019 10:37:57 +0000
Received: from mail1.bemta25.messagelabs.com ([195.245.230.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1eD-0004Wk-6y
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:37:46 +0000
Received: from [46.226.52.194] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-b.eu-west-1.aws.symcld.net id B3/49-10003-F6545CD5;
 Fri, 08 Nov 2019 10:37:35 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1WTfUwTZxzHeXrX64nUHQXWhwqohUEUWlpGxqk
 ZMwRJk0kkM9mLyvSQG21S2q4tA2RTcLDxEl0XIBtNeBHLsjECpMVlTMYWRhcxIBlRQBCEUHAU
 xpoiA4c06/XAbf99fs/3c/f75vIcjghWMBFOFxhpvYZSizF/VBnPOSrRHrdnygb6/cnaWQdGL
 jyYwMjG/rtccvb+SfLRmh2Qf90r55DWuVEu2TL2G4cs+7GfR/7eJTzmr2hraAOKbvMUTzFvqu
 YprK0VmOLhaA+msFkuK1atERm801yVJktbcJ6rnOrsAbrB/QWtc2gxKN5bCfxxQLQg8FnLJmC
 HX1G4OLWIsYMNwM2rT30DStxG4NfLNV5tFy4gajnw74/VTCAgZgB8NPIZxgQYQcLq2zO+J4KJ
 aQCb7c9QZkCIKg40Ddl4jBVEvA7dJS6vhXutE7DLnMIcBxMJsMk171NQIgpW2B0+5hMUHNvoR
 9ltpQDWNHRzmWAXoYDOpju+zYAIh09KvkUYRgghnHA0chiGBAEtPcMIyyFwcc7DZX0aDlwZB+
 x5HBwac2yzGDbU929zOBxprAJMT0ikw2vtB3b0SZOZyzIJLVVlKKtEQU9fIYs6OOE6xRrRcHy
 5fLtAGCxrGt3mVS784UvSBOLN/+nMchxsuuXGWI6FX11fQsy+DxEIB+ocaBNAWwGZpVflKI25
 lEotkctkErk8QSI/nCSRJyVKqYuSLCmdJ8mnDUaJXErlG6SGwtwL6myphjZagffSZevs7d+DX
 9b+kPaBUJwjDuFXQ3umYE+WNrtQSRmU5/R5atrQB8JwXAz57lRvFqinc+iC91Rq79XdiSEeIA
 7mlzAx36Cjcg2qHDa6A17GTYv1zQhuq29pRgSoRquhRUJ+UYpXJRhVmad5/qKd32AEhIuC+MD
 Pz08QoKP1uSrj/3MnEOJAHMSvYRYGqDTG5/uc3iocbxXZeB9TxUj9G4mKObvxqrTd04eT8zOy
 au9GZMzccF+KaevoEF57+1130k/fBXMSeW9uHaIeZ3jeiMFEp+ou3g/slQ5tDH4S90XtucKDf
 Vh0YPZs3eaHXRGeOQnWXdlJn7Fmno0ei3ypMN52WriVYBHzkkOnh5DotcqOPa3ryNJNbe/gz/
 Sn2LHEuv3kePrC5ynle7/xuIKeDm+dv954dn2+EesOrfpgYV2U5lqpfO2dJ1HWF52b+yKL4p0
 3UeGDyYepRVsyUnQkLTl7OdR+PPajV1y9yiupYQdcS0dNMSvp7ZbIV29IDsZi2pqZkj9HbBcq
 zryvf2uys9RvX+nG6gv3tJ1Xh4cfC5TCI5duXQ4RowYlJT+E6A3UP3Jk4hyBBAAA
X-Env-Sender: Adam.Thomson.Opensource@diasemi.com
X-Msg-Ref: server-4.tower-282.messagelabs.com!1573209454!277119!1
X-Originating-IP: [104.47.2.59]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24437 invoked from network); 8 Nov 2019 10:37:35 -0000
Received: from mail-db5eur01lp2059.outbound.protection.outlook.com (HELO
 EUR01-DB5-obe.outbound.protection.outlook.com) (104.47.2.59)
 by server-4.tower-282.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 8 Nov 2019 10:37:35 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYWv1WCjgyZz/t8AuRw8Dl1GYaiiXxc4R90bqmmTWRjPsneW5wMbkR8F/WIWyR8S7g04uDcI4SYtnepndsr7DXw1RPkqFQbAfIl1oeVigjIPGv0PJ5xN2x/KoNwzMkzUCGnJxi8TjJx3C58fuhr9XySHB7Aibb5lnAC62EYLyKyDQFyT2DyWmnmcpnCYnWTwfd7pMLyllVlycMUwekNrNoHUTRo2WsiQaXDfscf+lRmDTxPWA7mJHHADfPo0MGU8LfAfkY1qUO5eGVAnguFxdzTaiKIC/CtQLbByE5ChVWp3oiuuNACkrsfbouM0VYSH0sKs1Bui5HZYaGHiTpTUhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=841Yz612pM/w1L5N3qWD2mfDlEpA61Mk07cOTAmxC0o=;
 b=QNdSWUBxlDhEa6clGgtUDt5zwjFXwTT+IOaOCYGZkw0tvJxQTLK7GL9VkZpfZuPzvoRqE32Nuqp1PqwMnIRB02iis/l/V8eIHzBP5t37+U6FwRUxA6INwYVHAitXHfT/Fg3jxZOJUTxyR38U1ZqlPqLZwo09MJwpmjBx9HOXboPy4yZb90zGwxy48IE/hGhr/9YAQ33nLUAL8w+du/31+cJufgaFfxkAzNxn9dwkE3tLUHNuMZ/R2MT4euN5vk4wvv2XEV83/BNSy9z7Yo1PFaeifMDo3sefAM1oxP/Z+AJmH/QUYXQ9yNnfmbT9fZh9cK1GbGYM8U0zST+qCYGCCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=diasemi.com; dmarc=pass action=none header.from=diasemi.com;
 dkim=pass header.d=diasemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dialogsemiconductor.onmicrosoft.com;
 s=selector1-dialogsemiconductor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=841Yz612pM/w1L5N3qWD2mfDlEpA61Mk07cOTAmxC0o=;
 b=XZiFtsFrP4AeTwKRV1rrLh3VzDBEAmWQRXCZ3/D1wdCHkTtavgDayjjb38UyYEz1uMj5ZlBVXR8Yi4KNm1TVzC0Z8C/Y5Q20ACcuJMQ/u+011Tw0DbtuWrev6B4u6fgl6dmBsfFxza+Qd7Apyb7TkGZhRvfW7szVVFNqVx2TNGc=
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM (10.169.154.136) by
 AM5PR1001MB0963.EURPRD10.PROD.OUTLOOK.COM (10.169.152.144) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 10:37:33 +0000
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1b7:8cda:1411:fb7f]) by AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1b7:8cda:1411:fb7f%8]) with mapi id 15.20.2408.028; Fri, 8 Nov 2019
 10:37:33 +0000
From: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
To: Christoph Fritz <chf.fritz@googlemail.com>, Fabio Estevam
 <festevam@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Shawn Guo
 <shawnguo@kernel.org>
Subject: RE: [PATCH 1/4] regulator: da9062: refactor buck modes into header
Thread-Topic: [PATCH 1/4] regulator: da9062: refactor buck modes into header
Thread-Index: AQHVlVLUtKoR7VqcNEmfhLfWpcR7dKeBE7oQ
Date: Fri, 8 Nov 2019 10:37:33 +0000
Message-ID: <AM5PR1001MB099402F860196D82601BC264807B0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
 <1573121050-4728-2-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1573121050-4728-2-git-send-email-chf.fritz@googlemail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.225.80.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9982d763-c6e3-4d09-dd28-08d76437aa15
x-ms-traffictypediagnostic: AM5PR1001MB0963:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR1001MB09637467FCDAFDCE226089ECA77B0@AM5PR1001MB0963.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(346002)(376002)(199004)(189003)(256004)(102836004)(446003)(11346002)(186003)(4326008)(229853002)(5660300002)(476003)(486006)(8936002)(66066001)(26005)(81166006)(52536014)(33656002)(53546011)(6506007)(8676002)(55236004)(316002)(6436002)(54906003)(6246003)(9686003)(76176011)(81156014)(55016002)(110136005)(99286004)(7696005)(71200400001)(86362001)(2906002)(305945005)(74316002)(478600001)(14454004)(25786009)(6116002)(76116006)(66556008)(66476007)(66946007)(64756008)(66446008)(71190400001)(14444005)(7736002)(7416002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR1001MB0963;
 H:AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: diasemi.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +AKcGZCnrE6pc9J+9HYycuZ8RjqbtCW9RDrdLIMar3CZbUbqa4KBzWdFyPotmHun6mbAz1SJ+dYqXKsYMXE6v/rJfnM3xZHHrOyWUXjO1cym7AoLZY+Mze2N1Opy+/KoOphWc7pdsvx0/TmeLkwFJtwA1w49ilj7uHoQ5PJX4FZipy18zWtBdPyc+H5jrwIwSVuShYVLqEfrTczg1hXZv+OWIW3jwE1HwaGFyf3i0PVnuBJ81HnwTBSzdIUOfZ8/GeNWEw+oSGI4WTW9FTt808cfuwwVfzpC0JJmGd2ZMkYd+IZiMoUTHw8SxNU5JrPeOUEmXnbkosx8yMyE7KDAqA6IPAAcNe1O7MzHjJlgmQKt/9Yo5okhQREvxy+YPmg+jdScBxzMrpqFyC+Z7lKjfPQ5Vrtq99bsPXYrwOTq5jg+sPOtf9e0Kpt1eOHdROH1
MIME-Version: 1.0
X-OriginatorOrg: diasemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9982d763-c6e3-4d09-dd28-08d76437aa15
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 10:37:33.4713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 511e3c0e-ee96-486e-a2ec-e272ffa37b7c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yLqcUFeZCGr3zH3IJWvww53q8QnsGwcwsb2tDajy0xoLG/iMVZzdz6TF5pAMhTtk2crISRDvw6/Gk+NM4x7P7Al1fAeyiN44V5pFmZmSm2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR1001MB0963
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_023745_396723_EFF28626 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.245.230.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [195.245.230.65 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Support Opensource <Support.Opensource@diasemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07 November 2019 10:04, Christoph Fritz wrote: 

> This patch refactors buck modes into a header so that device trees
> can make use of these mode constants.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  drivers/regulator/da9062-regulator.c               | 28 ++++++++--------------
>  .../dt-bindings/regulator/dlg,da906x-regulator.h   | 16 +++++++++++++
>  2 files changed, 26 insertions(+), 18 deletions(-)
>  create mode 100644 include/dt-bindings/regulator/dlg,da906x-regulator.h
> 
> diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-
> regulator.c
> index 710e670..1a95982 100644
> --- a/drivers/regulator/da9062-regulator.c
> +++ b/drivers/regulator/da9062-regulator.c
> @@ -16,6 +16,7 @@
>  #include <linux/regulator/of_regulator.h>
>  #include <linux/mfd/da9062/core.h>
>  #include <linux/mfd/da9062/registers.h>
> +#include <dt-bindings/regulator/dlg,da906x-regulator.h>

Can we please rename this file to use da9063 instead of da906x as this header
wouldn't necessarily be valid for other da906x prefixed devices outside of
DA9061/2/3. DA9063 was the earlier chip so it makes sense to use that name over
DA9062, and DA9063 driver code will want updating at some point in a similar
manner.

> 
>  /* Regulator IDs */
>  enum {
> @@ -75,14 +76,6 @@ struct da9062_regulators {
>  	struct da9062_regulator			regulator[0];
>  };
> 
> -/* BUCK modes */
> -enum {
> -	BUCK_MODE_MANUAL,	/* 0 */
> -	BUCK_MODE_SLEEP,	/* 1 */
> -	BUCK_MODE_SYNC,		/* 2 */
> -	BUCK_MODE_AUTO		/* 3 */
> -};
> -
>  /* Regulator operations */
> 
>  /* Current limits array (in uA)
> @@ -112,13 +105,13 @@ static int da9062_buck_set_mode(struct regulator_dev
> *rdev, unsigned mode)
> 
>  	switch (mode) {
>  	case REGULATOR_MODE_FAST:
> -		val = BUCK_MODE_SYNC;
> +		val = DA906X_BUCK_MODE_SYNC;
>  		break;
>  	case REGULATOR_MODE_NORMAL:
> -		val = BUCK_MODE_AUTO;
> +		val = DA906X_BUCK_MODE_AUTO;
>  		break;
>  	case REGULATOR_MODE_STANDBY:
> -		val = BUCK_MODE_SLEEP;
> +		val = DA906X_BUCK_MODE_SLEEP;
>  		break;
>  	default:
>  		return -EINVAL;
> @@ -145,15 +138,14 @@ static unsigned da9062_buck_get_mode(struct
> regulator_dev *rdev)
> 
>  	switch (val) {
>  	default:
> -	case BUCK_MODE_MANUAL:
>  		mode = REGULATOR_MODE_FAST |
> REGULATOR_MODE_STANDBY;
>  		/* Sleep flag bit decides the mode */
>  		break;

I'm not sure your code is based on the latest regulator updates as I believe
Axel Lin made some improvements to this bit of code. Checkout Mark's regulator
fork of the kernel.

> -	case BUCK_MODE_SLEEP:
> +	case DA906X_BUCK_MODE_SLEEP:
>  		return REGULATOR_MODE_STANDBY;
> -	case BUCK_MODE_SYNC:
> +	case DA906X_BUCK_MODE_SYNC:
>  		return REGULATOR_MODE_FAST;
> -	case BUCK_MODE_AUTO:
> +	case DA906X_BUCK_MODE_AUTO:
>  		return REGULATOR_MODE_NORMAL;
>  	}
> 
> @@ -282,13 +274,13 @@ static int da9062_buck_set_suspend_mode(struct
> regulator_dev *rdev,
> 
>  	switch (mode) {
>  	case REGULATOR_MODE_FAST:
> -		val = BUCK_MODE_SYNC;
> +		val = DA906X_BUCK_MODE_SYNC;
>  		break;
>  	case REGULATOR_MODE_NORMAL:
> -		val = BUCK_MODE_AUTO;
> +		val = DA906X_BUCK_MODE_AUTO;
>  		break;
>  	case REGULATOR_MODE_STANDBY:
> -		val = BUCK_MODE_SLEEP;
> +		val = DA906X_BUCK_MODE_SLEEP;
>  		break;
>  	default:
>  		return -EINVAL;
> diff --git a/include/dt-bindings/regulator/dlg,da906x-regulator.h b/include/dt-
> bindings/regulator/dlg,da906x-regulator.h
> new file mode 100644
> index 00000000..848a4df
> --- /dev/null
> +++ b/include/dt-bindings/regulator/dlg,da906x-regulator.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __DLG_DA906X_REGULATOR_H
> +#define __DLG_DA906X_REGULATOR_H

Just to echo previous comment, rename from DA906X to DA9063

> +
> +/*
> + * These buck mode constants may be used to specify values in device tree
> + * properties (e.g. regulator-initial-mode).
> + * A description of the following modes is in the manufacturers datasheet.
> + */
> +
> +#define DA906X_BUCK_MODE_SLEEP		1
> +#define DA906X_BUCK_MODE_SYNC		2
> +#define DA906X_BUCK_MODE_AUTO		3
> +
> +#endif
> --
> 2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
