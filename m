Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A017FB4FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQj8OqGxML9fArkjBtG6mlShfcM5ZCpe8QD97Bq87yM=; b=p+QAwKzS11ExdC
	ByGpD5N/MyJDIv6p5muHZrDhn8IGuirr47xn54iX15VCmdzrLO7tVolweWtFrLHCWOVYPuwN/FH9b
	d5MsqyEP7g1fdj8grQSETz/EhDHTebi92JjhWYxA3vDw4zPBJuabDt8j83p/e/sS+AJTp+3BBEM8f
	nwYKDbOBSBfpWm0IMj+7TIGpKfGJsV3X2s/Uw661Myz5VBhhkmd/LOHvTvrqQn29Rbszau2NO1Q2o
	e+VaYEIatpc+kL0ZFe6iVJoNdqaJ/o37ZgV5WKtf7ukOoFFkud5nGHXjT4CJdDFhXxfifrERXUKZY
	ZursSJBf+xGRFowp0D+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvSE-0002Ua-CZ; Wed, 13 Nov 2019 16:25:14 +0000
Received: from mail1.bemta26.messagelabs.com ([85.158.142.114])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvRv-0002Pz-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:24:56 +0000
Received: from [85.158.142.194] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.eu-central-1.aws.symcld.net id 74/00-16077-35E2CCD5;
 Wed, 13 Nov 2019 16:24:51 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1WTfUwTZxzH+9xdrwej5lpAnpGWuM4mIFyhYuY
 lg7lsYSlBMlEyliEZBz1pEyisLa9/bIIaJw5tQIw2K29DUAYxqUTkZSRDEHkZTMKLOl7lJQLD
 qVAWJrL1esi2/z6/+35/3+d7l+cIVPon7kuwOWbWaGBSFbg7pgt2o6mjqv6EkHJrEF06M4fTm
 ysPcHrh0WOcLu8cENIzI5/SU44uQK8Pf4vQ9tlRIX1t7AFCn/mpU0RPt1Qi9NNGnw89NPVl9U
 DTbJ0QaeYtJSKNve4crhkfbcM1t6q/0Wz9Fq1ZtfsdIb4Q6g1J6TmJQl3Bi2ZhxvV3ckrvJJw
 EVbJC4E4A8hoKb15aFvHDPQwOD54V8sMtAF8VbeDcgJH3UTi+YHPa3AgpeRmBU5XHeZ4BcGID
 5RgnaVhyf9q14EUWI/DvtlZXFEpOIvCv54VCzuVJxsDhl+M4x17kUbjRtynkeT8c6sl3JWGkE
 g5eKQAci0kGLpXdBFyQlDwNYHtzo2vBjdTA+h8uuioBUg7X8n90LaOkD3w8V45wDEkSVrcNoj
 x7w8XZLSHvZ2FPwUPAPw+Cv4zNbbMCltk6t1kOh8rPb3M0vPJ8YMf/XeeNbaZh9fkzWCEgnLw
 XbnXk8pgBV+/586iEI8MevFkGH7b0YdybQHJRCCef1YosINj6n9I8B8GK1pc4z4GwpnIZtbq+
 hAT2XJ3DKgBWB+gkoz5FZ05j9KmUOiSEUqtDqQNUaIiKyaOSVGwmlcwazEbGKaqYbJPKlJuWn
 KpVGVizHTjvoPYrzO8OKF5fUXWAtwlE4S1uOtWXIN2VlK7N1TEm3ZfGzFTW1AFkBKGA4ssB/Q
 lSiZFNYXNO6FOdN/mNDAkPhZf4jyCnLDZlMGkmfQov9QKKsCzaqlApZkg3sL4+4mnORHImXaZ
 hJ+LN/zAE5L6eYiAQCKQeGawxTW/+v74EfAig8BQfopwpHnqDeeekJWcJxFni9N1eroSZ+Vfy
 PYlkjeTHxMGAixdWG7DsFj+1/eyLSOt6BLvwdHeNP9sR/Cj8rsyUlvWJoteCvtbuicmJrZUvf
 DyAxwYero38PAsmvoq8UNI1OhPWHXj8ui0+oOm9uOqfHcf21yabHTBMtLXxbp99tjRiE/Qqg4
 j4qNd27+Rwdfb31NohpChKRLe3iS1fSz76LM7vfdRbEN4oO+UofOI4aJs8MHNYKT8SoVzbbQ3
 Trqxauj+4HfB7SvPS1JPNvEsT8/tGu5CGhhu/yltaJVEV8xW6RIHk3HRP/PJBEpQ+iy7aU1Uz
 fXt1rDF04C339l3euuLZbkljXL/nFNDK/D07NpXhsXUnmgqK8hSYSceo96FGE/MPEkoVCIoEA
 AA=
X-Env-Sender: Adam.Thomson.Opensource@diasemi.com
X-Msg-Ref: server-28.tower-239.messagelabs.com!1573662290!643595!1
X-Originating-IP: [104.47.9.56]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 9646 invoked from network); 13 Nov 2019 16:24:50 -0000
Received: from mail-ve1eur03lp2056.outbound.protection.outlook.com (HELO
 EUR03-VE1-obe.outbound.protection.outlook.com) (104.47.9.56)
 by server-28.tower-239.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 13 Nov 2019 16:24:50 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ek5gwPnItNmewk/St8k6BVoLWHsKHa1eIVVlDLtr8mYCi/4L4EszQdlpMatxwqz4fWAfkccABFvDE3FvWWWB5RkrqsHasPbea0pMB5XgIOKaG794dWwrdL5qVNUN5IbAJ+U0ucXqOOMkpYR/45aLZeDrCV8K9a6uhUw315YZ9FEg66I7L9QTYcEscEsGEeJwSGk//UaEuXWdBDdQ5HNaVIokMTTTd4OP87ykfJLoxIGT1/iw/TgK3Vv8YWY5a+kdsRk6gKsLa+wV6yo70XWGZsWr/KgamQJW8GcdHJ7aGreWKOpALm8LKK/wQ4B1pBh6XvWUGRAOW0GlxuW52wshow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yuzLRpzxmbknwyzO3Rf5PCx17WnGp9C4IwnTGeglF0k=;
 b=VSqhqMnXZgOO8E6hhu99+smC+4XeZWOScarl+XkyLVxTihJnd/5/iSKcwGzJpVx2xEtSEbLr2vXxYrsE2bo3SG7o/iHqkz7iKm9WqIlwHc9SyuFDqKp3T6tyNigC9aFKrL6bwBlUmSza7mwxv/5t3Gm9tJM7d0bBF6H4Xz5NSt565J2xVrMrk+ghezNSFqpZEG9BzAQ3unH/EwCwcNxrer6DkuglJp5l4I3L2fng4jiLG1P/rna3e8gVhJddKdoPY35YeGzDj/RZIAv3R4yRXTBxWyu7CRuwB4GqUGXqN7PWJIJooWYOEeBmM2UfDP/hiVVPwfoazLJzeVW+F/hSVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=diasemi.com; dmarc=pass action=none header.from=diasemi.com;
 dkim=pass header.d=diasemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dialogsemiconductor.onmicrosoft.com;
 s=selector1-dialogsemiconductor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yuzLRpzxmbknwyzO3Rf5PCx17WnGp9C4IwnTGeglF0k=;
 b=V9lK4JOER6wrP0Y8NZvYFChgON5SpgoONg4ih26nNQSoMVcHBs0n2pmNlLnMW3swGjClFPdOSSV73bdaHd1jA6gfJURMw9lpv5Wc5qKfzdq7pVpfRWNMojP/NcMqDY8nft1aoqF3KgD57eRaQCw8tdPfm3QVtQW7ROZ79WQRzck=
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM (10.169.154.136) by
 AM5PR1001MB1202.EURPRD10.PROD.OUTLOOK.COM (10.169.149.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 16:24:47 +0000
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df]) by AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 16:24:47 +0000
From: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
To: Christoph Fritz <chf.fritz@googlemail.com>, Adam Thomson
 <Adam.Thomson.Opensource@diasemi.com>, Mark Brown <broonie@kernel.org>, Fabio
 Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2 2/4] regulator: da9062: add of_map_mode support for
 bucks
Thread-Topic: [PATCH v2 2/4] regulator: da9062: add of_map_mode support for
 bucks
Thread-Index: AQHVmigCG2tyD8654UmXrN4EETRfIqeJR/fg
Date: Wed, 13 Nov 2019 16:24:47 +0000
Message-ID: <AM5PR1001MB09947464276D08EEF3C0338880760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-3-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1573652416-9848-3-git-send-email-chf.fritz@googlemail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.225.80.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72cd8480-5f93-4e3e-1256-08d76856002a
x-ms-traffictypediagnostic: AM5PR1001MB1202:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR1001MB1202D4469A900A6376B9ACA3A7760@AM5PR1001MB1202.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:765;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39850400004)(199004)(189003)(66946007)(64756008)(66556008)(66476007)(476003)(14454004)(66446008)(74316002)(486006)(478600001)(25786009)(186003)(26005)(7696005)(11346002)(76176011)(7736002)(33656002)(52536014)(305945005)(5660300002)(53546011)(6506007)(55236004)(102836004)(446003)(6436002)(54906003)(256004)(6246003)(110136005)(316002)(4326008)(9686003)(6116002)(3846002)(8676002)(99286004)(76116006)(81156014)(81166006)(7416002)(2906002)(8936002)(86362001)(66066001)(55016002)(71200400001)(71190400001)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR1001MB1202;
 H:AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: diasemi.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1uWYqTA/1FWoihJryGm9V1eLr0SSw99RSd1iQeW8C4fcW4pRDuYBI0FxzNKhzAlsbweC3fDYxP+Lt/x1dDb8g5xOmr8/IrlzIbitxgZgzovouFUkxl5brOlGdio1WaSzoYdgPa1JrGVMvjtudGoeSGKeXgITu8/IPVvncw8hbYO2Lq7IKMrX4YEBwkB11vHL83dhGa++XMAnLOPkyXtwnlHOAX9aK2wyHiWiiFaw/Pw9wFME4cFluwAdE2vU88O1veSDn0zidGGyr2HXRVrQdBvf4C4rYR24D7UWyUkHhW6vI3VXf0TJxR/2V5XrLDkon6msa10oheIiYIiv1NuhcoRbWsrjP4TXUW5M+8eQZ0RJ10V3HdT1o11EnTMpyp+j9q1+kXUpOE2TzS5frNGHtKbAydRncSc85xvJNjnKCsQ9D0dakpB0dF06UobpZU/e
MIME-Version: 1.0
X-OriginatorOrg: diasemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72cd8480-5f93-4e3e-1256-08d76856002a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 16:24:47.3288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 511e3c0e-ee96-486e-a2ec-e272ffa37b7c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98sJkVFVu+ae7a3kUk3Mg3xe9IJvNF4DfmHwYLrQR6WfwDK4JxyX/zBQulT9KW24NzP2u6jdmZa0qrIWOS5TYFIVMNPwbZVib1xM+cGbZ6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR1001MB1202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_082455_341318_4B330525 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [85.158.142.114 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Support Opensource <Support.Opensource@diasemi.com>,
 Stefan Riedmueller <s.riedmueller@phytec.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Christian Hemp <c.hemp@phytec.de>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13 November 2019 13:40, Christoph Fritz wrote:

> This patch adds of_map_mode support for bucks to set regulator modes
> from within regulator framework.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>

> ---
>  drivers/regulator/da9062-regulator.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-
> regulator.c
> index 601002e..29f4a60 100644
> --- a/drivers/regulator/da9062-regulator.c
> +++ b/drivers/regulator/da9062-regulator.c
> @@ -98,6 +98,20 @@ static const unsigned int da9062_buck_b_limits[] = {
>  	2300000, 2400000, 2500000, 2600000, 2700000, 2800000, 2900000, 3000000
>  };
> 
> +static unsigned int da9062_map_buck_mode(unsigned int mode)
> +{
> +	switch (mode) {
> +	case DA9063_BUCK_MODE_SLEEP:
> +		return REGULATOR_MODE_STANDBY;
> +	case DA9063_BUCK_MODE_SYNC:
> +		return REGULATOR_MODE_FAST;
> +	case DA9063_BUCK_MODE_AUTO:
> +		return REGULATOR_MODE_NORMAL;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
>  static int da9062_buck_set_mode(struct regulator_dev *rdev, unsigned mode)
>  {
>  	struct da9062_regulator *regl = rdev_get_drvdata(rdev);
> @@ -360,6 +374,7 @@ static const struct da9062_regulator_info
> local_da9061_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK1_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK1_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK1_A,
>  			__builtin_ffs((int)DA9062AA_BUCK1_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> @@ -396,6 +411,7 @@ static const struct da9062_regulator_info
> local_da9061_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK3_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK3_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK3_A,
>  			__builtin_ffs((int)DA9062AA_BUCK3_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> @@ -432,6 +448,7 @@ static const struct da9062_regulator_info
> local_da9061_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK4_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK4_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK4_A,
>  			__builtin_ffs((int)DA9062AA_BUCK4_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> @@ -604,6 +621,7 @@ static const struct da9062_regulator_info
> local_da9062_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK1_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK1_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK1_A,
>  			__builtin_ffs((int)DA9062AA_BUCK1_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> @@ -640,6 +658,7 @@ static const struct da9062_regulator_info
> local_da9062_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK2_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK2_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK2_A,
>  			__builtin_ffs((int)DA9062AA_BUCK2_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> @@ -676,6 +695,7 @@ static const struct da9062_regulator_info
> local_da9062_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK3_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK3_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK3_A,
>  			__builtin_ffs((int)DA9062AA_BUCK3_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> @@ -712,6 +732,7 @@ static const struct da9062_regulator_info
> local_da9062_regulator_info[] = {
>  		.desc.vsel_reg = DA9062AA_VBUCK4_A,
>  		.desc.vsel_mask = DA9062AA_VBUCK4_A_MASK,
>  		.desc.linear_min_sel = 0,
> +		.desc.of_map_mode = da9062_map_buck_mode,
>  		.sleep = REG_FIELD(DA9062AA_VBUCK4_A,
>  			__builtin_ffs((int)DA9062AA_BUCK4_SL_A_MASK) - 1,
>  			sizeof(unsigned int) * 8 -
> --
> 2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
