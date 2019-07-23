Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477C1712C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9V7w4WWOxjnpBBhDbePf1aMvb/cZ7/VuUF1BKZoYfc=; b=Or/YUSzPoJaqg+
	RQe8WlUrco+Qe9k4NIfjaMdv6T3Li7G8Laf45Gn/mdhM5P9tRm52+sLFI18+T3I5xVoCB0PCE2obm
	IadwzuSwBEPs7/0ZwYFFII/KAj5iyIVieqpZCQXrFzalzOZzVSwKZnKEtgJouDvBHlK4LICj66rJz
	dTstRDhpxuCO6UMdHSbArwKgEjv5UDjYsJBXiMJ4UrPDefuB1U71oZAT5N5bAJk3TGyQDprkK62BF
	FKaTACiV/APiGU4LEtuxdWcFz8n0BATNQuKY61iQsUlsUhmH5eAOuwXsrqf3PJ0085Lm7jJXFXRfd
	Nh5J126qumgAIuOTrNUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpp9a-0000Yu-Oh; Tue, 23 Jul 2019 07:24:07 +0000
Received: from m4a0040g.houston.softwaregrp.com ([15.124.2.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpp8m-0000XK-F5; Tue, 23 Jul 2019 07:23:18 +0000
Received: FROM m4a0040g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0040g.houston.softwaregrp.com WITH ESMTP; 
 Tue, 23 Jul 2019 07:19:12 +0000
Received: from M9W0067.microfocus.com (2002:f79:be::f79:be) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 23 Jul 2019 07:20:31 +0000
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (15.124.72.12) by
 M9W0067.microfocus.com (15.121.0.190) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Tue, 23 Jul 2019 07:20:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+vJTsKIX4khYAAWTSbdRr+XG1z0hWDykotT6rcZ5rRDJeMYPM8IAXJ3J5cKiOuSAnYTSoYhy+a+R33ZVWfsDzcwfqqF6aKJwPqYLYuR30XaPM1pGVIDjbgVC1/snCYsSW1B2lC0SgWcUXPT76SrHD0hAJDtJchLjDfoE/faw6wux3Zpf/mvjaRsfvsEla4OQsAbN5yHfprH/o8pwpBC3rb0ktGqTajqTNXTumsNnY+GZU+h50CGEQz0FiMUA2/CWyOVoVpFKOTdM51SR8TdtGOFBtSTBTkoseK9SeDSTr/CZ9Zo1PN+w/BZvMNdHcXu/i1YPvAqYkL/WugBh1/gOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n8NDwWJ2B1OnsZI9Ijh5acuX/g2XgAm+Z2RPzW2CdPg=;
 b=VS1OmMAw6NlsPbsRYT4Rw6X+fsXuu2O/brnhA1QYJ/V8M+0GhoQuqjMnVuyBnTvdXgxl4z+CfRrLwXb/H4Dqnxq0XWkKoMyf+7OzNnCbYV35Ww2lNbdWl7/8NH31Qa2Ac/DsDEex/BD+yz4tMUefqsXO/YwsWRpa8ArqhJ1BFLh6Vhtg/UyoDldBqdLlf+mX3QZ1wO94luW4gpjYom5GBMwnHepyjq9YOaAn7Pcm3vUJQPkH5sBbYKgdj/cZiXLizCrDZk+Z+nxglGEf3G358GoIpErl5DgutjgbbqOwyeXybN0xUr6QqCbK0tOiXjI0PoHBG6l94UyMblNf6jZ3ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com (10.171.255.24) by
 CY4PR1801MB1912.namprd18.prod.outlook.com (10.171.255.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 07:20:29 +0000
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8]) by CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8%3]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 07:20:29 +0000
From: Matthias Brugger <mbrugger@suse.com>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, "Mark
 Rutland" <mark.rutland@arm.com>, Michael Turquette <mturquette@baylibre.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, "Florian
 Fainelli" <f.fainelli@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "Rob Herring" <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 17/18] arm64: dts: broadcom: Add reference to RPi 4 B
Thread-Topic: [PATCH 17/18] arm64: dts: broadcom: Add reference to RPi 4 B
Thread-Index: AQHVQLAa9uAZSIZRFEiZtdOeOePOmabXzMgA
Date: Tue, 23 Jul 2019 07:20:29 +0000
Message-ID: <7dc61967-cf76-f898-e28f-97d3d7df0506@suse.com>
References: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
 <1563815257-2648-5-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563815257-2648-5-git-send-email-wahrenst@gmx.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0206.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::26) To CY4PR1801MB1909.namprd18.prod.outlook.com
 (2603:10b6:910:7a::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbrugger@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [37.223.144.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0039a7b5-cb6b-4181-7335-08d70f3e3dd5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1912; 
x-ms-traffictypediagnostic: CY4PR1801MB1912:
x-microsoft-antispam-prvs: <CY4PR1801MB1912B19BA7EB1547CAA8DEC8BAC70@CY4PR1801MB1912.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(81156014)(66556008)(66946007)(81166006)(5660300002)(14454004)(66446008)(8676002)(66476007)(71190400001)(8936002)(4326008)(64756008)(3846002)(6512007)(71200400001)(68736007)(53936002)(6246003)(86362001)(386003)(53546011)(229853002)(6486002)(102836004)(76176011)(305945005)(31696002)(2906002)(110136005)(7736002)(36756003)(316002)(66066001)(54906003)(6436002)(256004)(446003)(31686004)(14444005)(25786009)(7416002)(99286004)(6116002)(478600001)(486006)(11346002)(6506007)(26005)(52116002)(2616005)(186003)(476003)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1801MB1912;
 H:CY4PR1801MB1909.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y8O0YgP13RLtmCDaT08ol5MH0WaZ0cZ3IYSoQ5+qKwPTNd7VltpkObdJ5zVTitgI/KHkpd4sPRP4vdXY/ng3xgpVgGZe2fiPJxk/FyLTt2ZuEEhv3JzrFPRMwpMa0I0WSa62p/hM02Jne5Xtajku7IxIkuDzCNMBW4n93runZJokNwWKj7xgNQTI7lTV8vUK9WuzY9E+A3YNhVttrRuvFlYJSH2L6TOhb23FC03pP/KpDsN8bO+2vzGb+7N9SEiB0cFYo6FcEZHa9w+kFUUlQrg1HmI3gQPQ+6b3JzX0VYA+wFzJ6RyWzyXl6+mh3vDPR7lNYl22I9e/04PDEa7m8ggJwv+pHf2jsvb4upxEqgyjSo4QdNSAX2KjkjS81gZj9IFlyTSVENINFYmr9ReFohrixvG1E6nXq4QZ8MdR9cI=
Content-ID: <ED339DE5CBE7E5458891B23E9F5588BB@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0039a7b5-cb6b-4181-7335-08d70f3e3dd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 07:20:29.8530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbrugger@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1912
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002316_620960_8CDFCE64 
X-CRM114-Status: GOOD (  17.95  )
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
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/07/2019 19:07, Stefan Wahren wrote:
> This adds a reference to the dts of the Raspberry Pi 4 B,
> so we don't need to maintain the content in arm64.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

AFAIK arm64 doesn't boot without the DMA RFC patch series from Nicolas. So maybe
we should wait until this is fixed before adding a for now broken device.

Regards,
Matthias

> ---
>  arch/arm64/boot/dts/broadcom/Makefile            | 3 ++-
>  arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts | 2 ++
>  2 files changed, 4 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts
> 
> diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> index d1d31cc..cb7de8d 100644
> --- a/arch/arm64/boot/dts/broadcom/Makefile
> +++ b/arch/arm64/boot/dts/broadcom/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
> -dtb-$(CONFIG_ARCH_BCM2835) += bcm2837-rpi-3-a-plus.dtb \
> +dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-4-b.dtb \
> +			      bcm2837-rpi-3-a-plus.dtb \
>  			      bcm2837-rpi-3-b.dtb \
>  			      bcm2837-rpi-3-b-plus.dtb \
>  			      bcm2837-rpi-cm3-io3.dtb
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts b/arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts
> new file mode 100644
> index 0000000..d24c536
> --- /dev/null
> +++ b/arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts
> @@ -0,0 +1,2 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "arm/bcm2711-rpi-4-b.dts"
> --
> 2.7.4
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
