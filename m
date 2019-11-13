Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A416FB4D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x44f0g3waO+s2iSTS+nPu1AQBn0Y2QgvC8UFssdAI9M=; b=qscvuxtJpN0PxR
	VESvBlBAVyS6CfHqqZdi6aDm3YQXjf1FPtPas5yXtlHDr/2nbyniEFS7nVZPp+fzvtbXDZAFWuweg
	p35LFmEWtt0I92SN02nRx1AA+CuuK6Mo3cDkdLqe76B3fIWhNoFw9w1z+hg6iUkyYbZSrrpS91y9s
	EZbu/9uSdGt7oi1B8hIQdV89A+rGPr06xO1ASQXfuXahFa8jJ6r0jxdZeEHygMDe0SPsBxY8HemKK
	T3q2yvcta9kCJ37PIic7YGcSZ/scVYPSGjzeUteUD2UmxHbDvpjEwdbzlxjoize5JECPsAIGviN5L
	JP3G27jkoMsBr3dzw8Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvN1-0008S3-AE; Wed, 13 Nov 2019 16:19:51 +0000
Received: from mail1.bemta26.messagelabs.com ([85.158.142.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvMu-0008RQ-05
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:19:45 +0000
Received: from [85.158.142.201] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-6.bemta.az-b.eu-central-1.aws.symcld.net id 33/5A-20077-61D2CCD5;
 Wed, 13 Nov 2019 16:19:34 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1WTbUxTVxjHOffe3l4J3a4F5BkRP1w7mYMWcBB
 uWDbMxocmE3XRxGUJmRe40iallLZIcQNhoxFhapU3ZUjRAWNI1vESmIKZK4zxIihEFBlDGHUW
 lxFRMTI3WG8vuu3b73n+//Oc/zk5h8Ll82QwxVvMvFHP6RjSl9BEELHKDcqrSZFlNglbPusi2
 d9uT5KsvXdEws6O72LvLP2I2Cc3ijC2de6mhK2/NYqx1su9UtbdHrTdV91c04zUF6t+karv2k
 ql6tamo6R66mY3qW6rO6x+1Lppt/RDiVafnGHZL9Fc/vuO1DAQYnEdi89H16EY+VKIrsfh3pF
 HErHoI2DB0YyLRRuCZ8eWSaEg6H4cHD3jRDFaR8npcgzsi9mCIKdnEfxc2SEVBJJmobR/xrsi
 gD6FwWp3l3cwTpdgYBtu87r86Z3QvWjFihHlce0GZ0G80A6gt8H1BxVIYIJ+FS44FnGBZTQH0
 +4VTNytEIGjvd8bYx2thuMPvvTORHQIPC644F2A00Ew6bJjAgNNQ133NVzkQJifW5GIfh4GPp
 1AYj8chm+51piBmrO9axwCY/aSNU6Eu0+/8GYW/IMN28U2C3UlVkJsK2DFmSOiAX4q3Sw6tkC
 Z4+FagI0wcWmIEE4CdD0J8xVLUhuKqPpPaJHDobbrISlyGDSc+x2v8t7Eehg44yJqEdGE2GSj
 Nk1jTue0OmVUZKQyKuoNZbQyNlbFHVImq/gsZQqvNxs5j6jisk0qU056ii5VpefNrcjz6lIzi
 cTvUOGTP1RO9AqFMYGyzs+GkuQvJWek5mg4k+YjY5aONznRRopiQFax9WqSfL2RT+MtB7Q6z9
 t9LgPlxwTIMsM8ssxk4NJN2jRRGkRKyjZ/9jwuJ/QZej44SHZIMNGCSZOlfzHi+Q8YQyHB/jL
 k4+Mj9zPwxnSt+f/6fRREIcZfNiZM8dPqzS92uu8JgXlCFPYMCiHM3L9ScD5WiT32mwvdbFnO
 Dfhk2V7dfPrNr59ltRj+OqmYikyYjojZG/qee+FpXL76g/jMKwWdNXFf3f72T8vb7wYy9lFn6
 DD5TuZizMyeIe2NPHrkYHi9M8Ti1meUXfp8SsE0tTUbImoP615e2nMlidKZUmMPwP7oOMlQoj
 G1s2bHtpmOxhM7fm10dLnfH9f1qZdzKyZPZL02ftBd2dqHBXd0Msmhsztr40cbpqpdeSOyiNq
 jA9c60qKHi5aOnNq36YeJsMGLLVu4ynP39nVGrSqOW1Po6ZMJKa64kgxYavlev0vRk1MuPb3Q
 uFV+fu/HthjZdMJbswOrZdUbcvMYa1H2N+1dhp5ihjBpuKjXcaOJ+wej2KzRfAQAAA==
X-Env-Sender: Adam.Thomson.Opensource@diasemi.com
X-Msg-Ref: server-28.tower-246.messagelabs.com!1573661973!635596!1
X-Originating-IP: [104.47.4.55]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 19857 invoked from network); 13 Nov 2019 16:19:34 -0000
Received: from mail-am5eur02lp2055.outbound.protection.outlook.com (HELO
 EUR02-AM5-obe.outbound.protection.outlook.com) (104.47.4.55)
 by server-28.tower-246.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 13 Nov 2019 16:19:34 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eg6WMFz62bQ517t/Pb41kOu70M1dB7/jZ7H5AWo0poR8jZwqgcSDTkGHZJ0z4917FypX4oefNstksGJkCZNwKheVNBss5ork98L69slsNWJffDsDr4bbLRfy/1N8lJyoIzIUGpS/HzX+l5RfizERCJFQzuvpUj5dKj345Xy1lCl9wJua6DSc0N/jyebVkfgy/2zAuxQDM1gHmZoVtLB8ThP00SdmjHFLj0LeXEa/CKs2iePN1DzCa9svf2hSN+a2PPXwa/aK8ZM1JZQ1ukFDNp+ibY3ebJfKnx5M+XL556c7xalysBGziuRF4W1buQKXScVA+iSJSYqsIevslnsF/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p8AgjRyUUmrjwUmql3DO6GOk79TdSxFOcrTIPUq2QTM=;
 b=Flc/qNN9Feggh55H9OZKb7v+nLhkQQx0rN+LjbpAd1+KHSV1950M/r70yH2ostv6kUrD/PfEfWp1cQPILBF+e128ae9GNOxuArlLfLcOF9Bdf9sTJhRcB1BbHrrWytzktiDcpnHII6Aq09gfS+pGMgvCkMvDYxMk+gK+K90taGgVLCoeb5KVEZKQG2oACIaHjjkoixBaO1ofz1n0Knkvh8e/BQ+Os+s5zuZ4W/HcM8nj+jr3Qp79ur5MORF3rCVu2PFwujfzhXrlw2Uc1tNmJwdlDvegfV6AXSUGUoMwZhH6In1HCBgnKK6KHO/blrlPaC6pMVGp42TzUvlYfR/OHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=diasemi.com; dmarc=pass action=none header.from=diasemi.com;
 dkim=pass header.d=diasemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dialogsemiconductor.onmicrosoft.com;
 s=selector1-dialogsemiconductor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p8AgjRyUUmrjwUmql3DO6GOk79TdSxFOcrTIPUq2QTM=;
 b=lyDTlbL52BvPpqnrH3jDwJEVRpJlJIPdfnTCIofC2lvkwJHL2Dm/UxAkOatnFKb4RhfNOsuXLubJm+CR8tbHmANS6R58HgktRd0V/RjbZtAtyKiQ6Kbkug9+4BatHuEzOTzL+7z60BtCdA66MWebii12uKinm6DRZO+DSG4EmN8=
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM (10.169.154.136) by
 AM5PR1001MB1106.EURPRD10.PROD.OUTLOOK.COM (10.169.155.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 16:19:31 +0000
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df]) by AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 16:19:31 +0000
From: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
To: Christoph Fritz <chf.fritz@googlemail.com>, Adam Thomson
 <Adam.Thomson.Opensource@diasemi.com>, Mark Brown <broonie@kernel.org>, Fabio
 Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2 1/4] regulator: da9062: refactor buck modes into header
Thread-Topic: [PATCH v2 1/4] regulator: da9062: refactor buck modes into header
Thread-Index: AQHVmigBY6xsAGskqU6yzgbK8/6f2qeJRqIA
Date: Wed, 13 Nov 2019 16:19:31 +0000
Message-ID: <AM5PR1001MB0994BED6A92933518239B44980760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-2-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1573652416-9848-2-git-send-email-chf.fritz@googlemail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.225.80.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 367de9e3-d776-4bce-4184-08d7685543e6
x-ms-traffictypediagnostic: AM5PR1001MB1106:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR1001MB1106278A810157B2C6E50FBFA7760@AM5PR1001MB1106.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39860400002)(396003)(136003)(366004)(346002)(376002)(189003)(199004)(81166006)(186003)(7736002)(81156014)(446003)(86362001)(229853002)(11346002)(316002)(33656002)(110136005)(76116006)(5660300002)(54906003)(7416002)(74316002)(305945005)(55016002)(52536014)(55236004)(8936002)(6506007)(6116002)(3846002)(53546011)(76176011)(7696005)(8676002)(2906002)(9686003)(14444005)(256004)(66476007)(66946007)(66556008)(66446008)(64756008)(25786009)(26005)(478600001)(71200400001)(71190400001)(14454004)(66066001)(4326008)(102836004)(486006)(476003)(6246003)(99286004)(6436002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR1001MB1106;
 H:AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: diasemi.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SAKAnS4hVGfDo2bSC04w28EPxBdI1O1PClRVcekKib2s7Gf8JJujy+drYHMIYOxYoNQkcTC4fym6rg+cIu5Bs3xvazC+a/mG1v5dLi0Oc0hnFe8tATK0np6oL/llyCXGSygIiBL2oLYYyDGzuEzueSPr4YIwcUciAwJ+SGzF+pDONpZjOQJmggdx74E6rursY4hAeSLIUD1WqSpbUUAlHg3Nui1xl3KCduCWdEHTUzWTgpkANU8xUeMDmUZG7mcCWJfFnM9WnZi+IdyjSANsKueXHkjtTVtv2BFS4KZNuahwSAiaH1cUs1J4j/v8UOGAkv/ONBoQdC5mQmLS5QddEU7eGDVMcbMSDWeaiQO+Qknfk50S+1EYZmR0ONqvd7qQcat2B3cdqzQzA+2kOOVTFRJtgNWe6pKShpCaetb5GosxVyPIZEyAm9jiEKrZqdGz
MIME-Version: 1.0
X-OriginatorOrg: diasemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 367de9e3-d776-4bce-4184-08d7685543e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 16:19:31.4997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 511e3c0e-ee96-486e-a2ec-e272ffa37b7c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YHEcNzFclb0Z9u37d+U5gnaPClOMghzg0qkNOGeSsa7mQeASqpy/R08aVHoyMyKulO/va+zbK6pke/w7xc4W7VNgREsXPSvx6SLhK5x41R4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR1001MB1106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_081944_191658_A4CE30C0 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [85.158.142.117 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [85.158.142.117 listed in wl.mailspike.net]
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
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Support Opensource <Support.Opensource@diasemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13 November 2019 13:40, Christoph Fritz wrote:

> This patch refactors buck modes into a header file so that device trees
> can make use of these mode constants.
> 
> The new header filename uses da9063 because DA9063 was the earlier chip
> and its driver code will want updating at some point in a similar manner.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>

Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>

> ---
>  drivers/regulator/da9062-regulator.c               | 28 ++++++++--------------
>  .../dt-bindings/regulator/dlg,da9063-regulator.h   | 16 +++++++++++++
>  2 files changed, 26 insertions(+), 18 deletions(-)
>  create mode 100644 include/dt-bindings/regulator/dlg,da9063-regulator.h
> 
> diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-
> regulator.c
> index 4b24518..601002e 100644
> --- a/drivers/regulator/da9062-regulator.c
> +++ b/drivers/regulator/da9062-regulator.c
> @@ -16,6 +16,7 @@
>  #include <linux/regulator/of_regulator.h>
>  #include <linux/mfd/da9062/core.h>
>  #include <linux/mfd/da9062/registers.h>
> +#include <dt-bindings/regulator/dlg,da9063-regulator.h>
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
> +		val = DA9063_BUCK_MODE_SYNC;
>  		break;
>  	case REGULATOR_MODE_NORMAL:
> -		val = BUCK_MODE_AUTO;
> +		val = DA9063_BUCK_MODE_AUTO;
>  		break;
>  	case REGULATOR_MODE_STANDBY:
> -		val = BUCK_MODE_SLEEP;
> +		val = DA9063_BUCK_MODE_SLEEP;
>  		break;
>  	default:
>  		return -EINVAL;
> @@ -145,14 +138,13 @@ static unsigned da9062_buck_get_mode(struct
> regulator_dev *rdev)
> 
>  	switch (val) {
>  	default:
> -	case BUCK_MODE_MANUAL:
>  		/* Sleep flag bit decides the mode */
>  		break;
> -	case BUCK_MODE_SLEEP:
> +	case DA9063_BUCK_MODE_SLEEP:
>  		return REGULATOR_MODE_STANDBY;
> -	case BUCK_MODE_SYNC:
> +	case DA9063_BUCK_MODE_SYNC:
>  		return REGULATOR_MODE_FAST;
> -	case BUCK_MODE_AUTO:
> +	case DA9063_BUCK_MODE_AUTO:
>  		return REGULATOR_MODE_NORMAL;
>  	}
> 
> @@ -279,13 +271,13 @@ static int da9062_buck_set_suspend_mode(struct
> regulator_dev *rdev,
> 
>  	switch (mode) {
>  	case REGULATOR_MODE_FAST:
> -		val = BUCK_MODE_SYNC;
> +		val = DA9063_BUCK_MODE_SYNC;
>  		break;
>  	case REGULATOR_MODE_NORMAL:
> -		val = BUCK_MODE_AUTO;
> +		val = DA9063_BUCK_MODE_AUTO;
>  		break;
>  	case REGULATOR_MODE_STANDBY:
> -		val = BUCK_MODE_SLEEP;
> +		val = DA9063_BUCK_MODE_SLEEP;
>  		break;
>  	default:
>  		return -EINVAL;
> diff --git a/include/dt-bindings/regulator/dlg,da9063-regulator.h b/include/dt-
> bindings/regulator/dlg,da9063-regulator.h
> new file mode 100644
> index 00000000..1de710d
> --- /dev/null
> +++ b/include/dt-bindings/regulator/dlg,da9063-regulator.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef _DT_BINDINGS_REGULATOR_DLG_DA9063_H
> +#define _DT_BINDINGS_REGULATOR_DLG_DA9063_H
> +
> +/*
> + * These buck mode constants may be used to specify values in device tree
> + * properties (e.g. regulator-initial-mode).
> + * A description of the following modes is in the manufacturers datasheet.
> + */
> +
> +#define DA9063_BUCK_MODE_SLEEP		1
> +#define DA9063_BUCK_MODE_SYNC		2
> +#define DA9063_BUCK_MODE_AUTO		3
> +
> +#endif
> --
> 2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
