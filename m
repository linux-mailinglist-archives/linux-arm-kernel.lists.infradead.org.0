Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F136FD96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0Pzhxd4YMVVDdk0kaulOuX1X2u1CaCdcEzM+dwVhmQ=; b=Hj699nvMZlXiAQ
	s29l2MFcdswOSrDOAOWsHA2O0yxVLNmv5Dey7UvnyrL89ALSowYI7omQ8g9ikm82NqF9iNxFuAHkZ
	gXTT8Z6fhT4jJjNAONr6elsd/6zQq1Vgq4IvZli9mWhjBlsNXsBH0/1W0hSl5MShl4ar5tNUYFHE/
	BvnRRMUqLyouDbA3Wkw7Ngidwp8PttuID1WEJgkxnV/hcEZMPjBjUuSmZ/AO5/hlLfLbqL3cJWAm8
	dEXvHwc9zrUQgZU0T3H7GfzJkGgO+vq5EMZhluvkBTiVdllLLIgpwfh2phu9KO9FeGVzQRo8Y83z3
	jfCpaNKy/8/36F/EquQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVNm-0003CI-HB; Mon, 22 Jul 2019 10:17:26 +0000
Received: from m4a0040g.houston.softwaregrp.com ([15.124.2.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVNS-00035g-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:17:11 +0000
Received: FROM m4a0040g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0040g.houston.softwaregrp.com WITH ESMTP; 
 Mon, 22 Jul 2019 10:13:07 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 22 Jul 2019 10:15:32 +0000
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (15.124.8.10) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 22 Jul 2019 10:15:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/eKITG4iE26eRSTDCJjYx0detTEUh0te6GvyJ/kDeDZK0NkjnUK4Ew+4yyslQnxNkc9mEK8wjCa1D6L/B5K8xioUb8Ae4XxPgCTCamoEddoLjPblQJMmy0Nxnw/AgocrgZbLBjyMYGBP6OrXM8W6EFufy1FY3O2tXAdGKIE19+4DaVx7Qh2imdvi5aoblFMUu2Qwro0h8LtxbNVqKc+Qhgip4Jm+Pt0d0n1z13h3crm4NNUpBIYexnG0r/jYNtpYgmJIx8FzceEm1ysVQSuXJRwwDxCpqlLdb4ftCYA3kC7WScUCjXxg+Y0xkZnG2gfzHvUy9PsT0Q3GQSaQK4B0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i56TEZAUVPAHnm5dqqYwTDD3ljESbyZmG/XYe7NPUuw=;
 b=BGXXlqzfCDQf76FdMRgrCB8CPcohZUzdvSn1O9FVO9h4hD8R52y7Z7C9qkKg2gTumHXnfcTDvCNUcosG+X8Byt+Bsler+7Qtq30wjllVJHZnEmKIJLJBXjCW6lDeBuIV3DOKcT899akjf6ETTpJVCa0dJKGiEeO7ojDexRWXf34WxqCRn7rH3U7dm3Ga5TzaJioUNWorbGH2pxVNTeNCOwohvQl/e1quaOSYsyShQu9W71VV64cfbcWoGB8GQam6Cwwouz3ZlHjV89mYMKYL3iW/Wy/YlTkOUy3yAMusmq6TEx2a6PuNzA921sqRlaWV7T36yuQAHfR0w+thbtf6Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com (10.171.255.24) by
 CY4PR1801MB1943.namprd18.prod.outlook.com (10.171.255.34) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Mon, 22 Jul 2019 10:15:31 +0000
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8]) by CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8%3]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 10:15:31 +0000
From: Matthias Brugger <mbrugger@suse.com>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, "Florian
 Fainelli" <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden
 <sbranden@broadcom.com>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 10/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2711
Thread-Topic: [PATCH 10/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2711
Thread-Index: AQHVQFYQd91gaSX3ekC/BwEhDMmMbqbWbBEA
Date: Mon, 22 Jul 2019 10:15:31 +0000
Message-ID: <55b337d1-8e6c-2b80-9859-c35a82ea5df3@suse.com>
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0213.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::33) To CY4PR1801MB1909.namprd18.prod.outlook.com
 (2603:10b6:910:7a::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbrugger@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [37.223.144.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1da348d9-cbee-4801-fc37-08d70e8d86aa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1943; 
x-ms-traffictypediagnostic: CY4PR1801MB1943:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR1801MB19433F9229BB6F80E9E61E4DBAC40@CY4PR1801MB1943.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(376002)(136003)(39860400002)(366004)(346002)(396003)(199004)(189003)(478600001)(6436002)(31696002)(6486002)(14454004)(6512007)(6306002)(53936002)(229853002)(31686004)(66556008)(66476007)(66066001)(86362001)(25786009)(66946007)(6246003)(5660300002)(66446008)(64756008)(2906002)(316002)(7736002)(110136005)(54906003)(966005)(81156014)(81166006)(7416002)(8936002)(4326008)(8676002)(36756003)(71200400001)(71190400001)(6506007)(386003)(6116002)(14444005)(256004)(3846002)(68736007)(52116002)(305945005)(99286004)(486006)(446003)(11346002)(476003)(76176011)(26005)(186003)(53546011)(2616005)(102836004)(921003)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1801MB1943;
 H:CY4PR1801MB1909.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GdAujMcfaX13uljKV1TWYyb3XzqK2TkDq5+bpXD4Jcy1NrxYzrGQfMLHbf/GYpVpAwggPYOU3+4qzwnjVkLgkvMYjYCDaol3ons0iKgCGwTakaSpOk2M5D9i12rfiOfdY27AY8dCl4cAC2jxy8ywjfjg8FQltC5r3tAYWkKcypRSwlaa8jNXWYwGim+gmAC36c5MLoZhjecWhFwkeej3RlxrHpPQe5iZgatr3/5l0M5G5CalVrFT8gcHGpArAg8BCJL68WR261IhA7HKNI36UO88afsrjvKgYmhxy0ZKre84MIMy1R4MsfMu8rN7fn05kEN6mUbwPOTQMAsqlCuD8g88Bv/BKWfmtVGz8JoMPYKfxsQtu6x9e3OgOEEaCiwE+277+hjmcAZbE+BSoyKhhK+aS4VhrvIu/TzUP3vkbGQ=
Content-ID: <09C4B038350A3B47A7C493B68609A1CF@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1da348d9-cbee-4801-fc37-08d70e8d86aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 10:15:31.0443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbrugger@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1943
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_031706_760183_92413456 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.2.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/07/2019 08:23, Stefan Wahren wrote:
> The additional emmc2 interface of the BCM2711 is an improved version
> of the old emmc controller, which is able to provide DDR50 mode on the
> Raspberry Pi 4. Except 32 bit only register access no other quirks are
> known yet.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>  drivers/mmc/host/sdhci-iproc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index 2feb4ef..2b9cdcd 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -261,8 +261,17 @@ static const struct sdhci_iproc_data bcm2835_data = {
>  	.mmc_caps = 0x00000000,
>  };
> 
> +static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
> +	.ops = &sdhci_iproc_32only_ops,
> +};
> +
> +static const struct sdhci_iproc_data bcm2711_data = {
> +	.pdata = &sdhci_bcm2711_pltfm_data,
> +};
> +
>  static const struct of_device_id sdhci_iproc_of_match[] = {
>  	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
> +	{ .compatible = "brcm,bcm2711-emmc2", .data = &bcm2711_data },
>  	{ .compatible = "brcm,sdhci-iproc-cygnus", .data = &iproc_cygnus_data},
>  	{ .compatible = "brcm,sdhci-iproc", .data = &iproc_data },
>  	{ }
> --
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
