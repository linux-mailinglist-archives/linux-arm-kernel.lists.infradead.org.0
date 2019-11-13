Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A96FFB503
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3weqvQzRuWep+VdRTsSoQSaaFu+SgeDarN/lAm+Ifo=; b=C/UwWEzVs1FJC5
	nTRJQjeX/mpNrlIMB2nyspH/j9mC02+OeB0s/mipXaiz3FgGuYbUBAdOgThSOQujX4wCMBYB4a9lh
	OwepaiJLgsTglENT3OsdwiPSCjxrt4dgkJlHTAYB3eSBpYXXiEH/RGEYDBVvMvrNuXhsNwE/lW12Q
	uztZ1O2SkttXoq4/mst3Sr8rWtBD6sf6FoSVAcMmWFwhH2DS0BShg/u85L6eVUZOGYNyJBLThYTXR
	0H4KQG5ktlDCXi0Eb4wxGPv8+Lr7F+QalpKNveCv+v83muejneUCJHOqabtprMyb4avR/0UpF+Iol
	MQ5qINXOEeJfjmIE0PBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvTE-00048r-5j; Wed, 13 Nov 2019 16:26:16 +0000
Received: from mail1.bemta26.messagelabs.com ([85.158.142.114])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvT5-00048I-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:26:10 +0000
Received: from [85.158.142.194] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.eu-central-1.aws.symcld.net id 81/03-16077-E9E2CCD5;
 Wed, 13 Nov 2019 16:26:06 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1WTf0wTZxjHee9Xr0jd2dLxQoBkFzVOaQEd8Zx
 MzYxJMeJM1JjNdPOAkzYrLbQlK0qCA82YiFRQiEx+BqZW3BhF0AG6FIQKOIWJItuYSEeoMEjY
 IGEG2R1X2fbf53m+3/d5vu/lPRKVTxAhJGezcmYja6AJf0wXKd2iKlP3aqOG3RuYCyMeghl7O
 kQwFR0/4szIwAfMb7N3ATP3KBdhGkYf40ztkz6EOdXWIWHGG4N2+GvqyuuA5lbprxLN7/Yiia
 bB8SWh+eVxK6Fx1mRp/mwI3yf5CNcbE0y2I7ju79LbaGrbClv+eA96AvwsPQ38SUDVorDR7kL
 FohODk8PFiFg4AXyZP08IBUa5UVg+2IifBlJSThUj8MzE0hE5NQLgbO5zQhAIioFF7mdLJwKp
 QgQutrbgQoFSeQi033dKBJeCioNj1VWIwIHUbnjZcQUXeSMszW3g+xJ+3xo4bRS6MoqFU6PXC
 HHZSQC/ct/gC5KUUhpYXfOO4AFUGPzr82uowCgVBIc8FUvTIUXBmtYHqMhK6B19hYt+Dt7LHg
 RiPwLef+LxMQ3Lyzp8HAb7K/J8HA/PLnYt+890XPUxA2vyTmFCHEithq9cGWI7FboLHJjIa2H
 rXIePQ+Hg9z2YcBVIeXE4PHVZYgeRpf+JLXIErGyZIUTeAL+umkBLlz7FKnjvogerBJgDbEkw
 65N11hRWb1BFR0WpoqM3qWJU0Ztj1OwxVYKaS1clckarmeVVNfuZRW3JSEk0JKmNnLUB8O8uK
 Q3/9ibonf1D7QLBJEIrZc05PVr5ygRTUoaOteg+MacbOIsLhJIkDWXFb/dq5avMXDJnO6o38K
 /3tQzJADpQNh3ByzJLKpti0SeLUjdQkXZvWTUqx4wmIxcSJHsmmCjBpEs3Lo94/Q/0g7AQhQz
 4+fnJA1I5c4re+n/9BQgiAa2QbVfxUwL0Ruvyphd8CIQPcbK9WwhhZf+VQk4gmU1P66T1sZ5F
 c5fXGrtrorbti09zU7Qz4Z1gzrQj+Lj/Vrwyu3mzp+DuiJJuujlGzJTseX/hw/OFvQlx5Y9sq
 5vozrjx8rW6mueT8/vfdW77LrZvYaUsUvdm+5pDJaFpzRuvpx04d+7h1t7j8btKDoVWne0/cm
 Oq++KVnElX5vXprvqcuqsxDxx9bxyrpzN3drGxqbdVWReQyZbErLRpRWXP0Ut7s4fqX0r33Fn
 o2fdWf8Z6Z5IJKyxS6OiQn+IcU/PaA/vb46bKmgfZbSu2tz3MGvJmHH5v78DowO5Lh+WWWx9T
 VOLO8G+S8zc1/bAuIkcZXD/MFNDd8Xb2zkFbu0HaqaQxi46NXo+aLew/XVRjEn4EAAA=
X-Env-Sender: Adam.Thomson.Opensource@diasemi.com
X-Msg-Ref: server-31.tower-239.messagelabs.com!1573662365!643294!1
X-Originating-IP: [104.47.9.57]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22904 invoked from network); 13 Nov 2019 16:26:05 -0000
Received: from mail-ve1eur03lp2057.outbound.protection.outlook.com (HELO
 EUR03-VE1-obe.outbound.protection.outlook.com) (104.47.9.57)
 by server-31.tower-239.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 13 Nov 2019 16:26:05 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3kubbtoE0lky4OGYLO6F0iwuBIkHCa+H8pJeKmqP6Q09enU6ThvkjNVoSBA1CkBAy2ShSP33QdnTFlSxodrXpg9NGJu5dMt1jkOv/B6VIHo44Bc6s39RAgxr37Qq7aCGrivoH1lwGXSs7taOH8FdE05H/XOO9cnXMlBlDfFQFqZYHRjfNf7QZw5jjEO5TDC8y7QrGaUZ2QnHPkCacxFsOygA1vloOqKw3ZywL97rD+hpch/gkQRJRBs2AvyQLyf/qNp75sp/wZrwJuiG0dkCca5YL9LNy8uHY5zxQiMklpY+oJL6C2q/uzl2Zxy66FYG187YF0ppnWOfGzC7HSKwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P0MMOi6md7iIfte1esg5jtuvFgqa48dENGhZCpV44Fk=;
 b=YoXV3TQGoK3U52dXUg4/MoxeXflurszyp/STn9LyAC5xSWJKQQF1XGH8wMBetxJV5ZF0aT5VYA6SAUeTpej1VCUbjdk/gxsHwgYAM8VUFqyqCrKdlY1SkyGp2OsBFgV+Ls1V/DlbRkNJdBK4FRbKN9TNl6jsln5ark9p/2zRszesHbXV1Mqwu9PsbecP/QI+RCluQzU+kO6K4RFdTIdrj7ufdQI361NovfSVJVwNtJCcXOaAS2ndLtqlWNOw2JoRvzIlGGiSW07oJ+qcF3Ro4+NlYraIhgdlHVE/reFilk1WZy4ZAlj3mLcm1yMV1LUFyGwrZ6WgOwIN14wgwz5loQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=diasemi.com; dmarc=pass action=none header.from=diasemi.com;
 dkim=pass header.d=diasemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dialogsemiconductor.onmicrosoft.com;
 s=selector1-dialogsemiconductor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P0MMOi6md7iIfte1esg5jtuvFgqa48dENGhZCpV44Fk=;
 b=gsiviBsjwDwFhSHmB1hsB4hG5kKFoh2DOdSFo9YUqf5c6YGKBCag/iVmpR/cNM6RPXv1EPwv03VHJX1ltCIRomSoXpqxQyqtZKR7mrA1Mxxj4PJSlBpRvUCbE3yK7WIbnuTgCj+3dNis9wdOPmBJkc/frkO0Ek2/7bx7wIgxXgI=
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM (10.169.154.136) by
 AM5PR1001MB1202.EURPRD10.PROD.OUTLOOK.COM (10.169.149.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 16:26:04 +0000
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df]) by AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 16:26:04 +0000
From: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
To: Christoph Fritz <chf.fritz@googlemail.com>, Adam Thomson
 <Adam.Thomson.Opensource@diasemi.com>, Mark Brown <broonie@kernel.org>, Fabio
 Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2 3/4] dt-bindings: mfd: da9062: describe buck modes
Thread-Topic: [PATCH v2 3/4] dt-bindings: mfd: da9062: describe buck modes
Thread-Index: AQHVmigEMpw23tHEz0usoxrmFxlKlaeJSXIg
Date: Wed, 13 Nov 2019 16:26:04 +0000
Message-ID: <AM5PR1001MB09943078D91600010568207080760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-4-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1573652416-9848-4-git-send-email-chf.fritz@googlemail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.225.80.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f3d3198-d6c1-4720-1bf8-08d768562dff
x-ms-traffictypediagnostic: AM5PR1001MB1202:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR1001MB1202660A2B2E612648CCA3EEA7760@AM5PR1001MB1202.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
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
x-microsoft-antispam-message-info: Pjj16eJUspYvoVPmuVOdfae/FfYC0NEauY3xozV/FfS8eLb4hIAIzOp2UPicA+4+Xf/WcAu9vJz55mSo/gabDcFNMdnSu+xGhooedKCPS9OTKo5IzI2XsOamBTG8lY7rSImqIdCbDgnltLtw8vFCwIEOJBp431/0+7gt3XuPK72EwO0Cv+ww+5bFfXWErUZhi+tlq1L9UeuTjxwdHcLBu1zQBB4b3OmXfju2hznHHWu7Ix0Us3iWpDGWbx0YN0pNGtCn8z3tATj1o57cM71vB8rNa81l2vuew6ggo3z3aRTMVlX7OoSYUMQIpxQqaeOGs/yo76oC8sxVvRnfPRLsVXZ8+xVeVp6f1oB3ewVB7v2b7YD3TkazNFIidrzSUbPHe3VQY/SAtThs3TJJLMkFvBzObnHgg57WTFtISEHhaF68n/AUOz5IE7FsL/J4jyQz
MIME-Version: 1.0
X-OriginatorOrg: diasemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f3d3198-d6c1-4720-1bf8-08d768562dff
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 16:26:04.3314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 511e3c0e-ee96-486e-a2ec-e272ffa37b7c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iWGS/xeDCSs3WplfiULb871NlvFj2kLL/8IP1i82SnyByB6KwI3wCAkMYeHziuJB0rjaG2FvRm/m/3SqpfHl4yH+AxGtoya3O/XhC32Rj50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR1001MB1202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_082608_045568_A3CC74F3 
X-CRM114-Status: GOOD (  15.41  )
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
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Support Opensource <Support.Opensource@diasemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13 November 2019 13:40, Christoph Fritz wrote:

> This patch adds DT description of da9062 buck regulator modes.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>

Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>

> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt
> b/Documentation/devicetree/bindings/mfd/da9062.txt
> index edca653..bc4b59d 100644
> --- a/Documentation/devicetree/bindings/mfd/da9062.txt
> +++ b/Documentation/devicetree/bindings/mfd/da9062.txt
> @@ -66,6 +66,9 @@ Sub-nodes:
>    details of individual regulator device can be found in:
>    Documentation/devicetree/bindings/regulator/regulator.txt
> 
> +  regulator-initial-mode may be specified for buck regulators using mode values
> +  from include/dt-bindings/regulator/dlg,da9063-regulator.h.
> +
>  - rtc : This node defines settings required for the Real-Time Clock associated
>    with the DA9062. There are currently no entries in this binding, however
>    compatible = "dlg,da9062-rtc" should be added if a node is created.
> @@ -96,6 +99,7 @@ Example:
>  				regulator-max-microvolt = <1570000>;
>  				regulator-min-microamp = <500000>;
>  				regulator-max-microamp = <2000000>;
> +				regulator-initial-mode =
> <DA9063_BUCK_MODE_SYNC>;
>  				regulator-boot-on;
>  			};
>  			DA9062_LDO1: ldo1 {
> --
> 2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
