Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 390DC6FDDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbG4MDpzQTH9eVm091DWpXRaSPYdNY7YDCvdLhV3eQg=; b=XOVd/6OyxYEqUu
	RTQadaoWlJeKrApXk5+ev2Ram+6+mwXSRbRjvDfrD2eAnlj55x4uq44scsW3EXUnbGVQ9s+xx/gAR
	6ZbRC6B6v3wm4zlk5UUvLA1Yv6vygUsyWW3XDo5j5YRFNzuF58MI9eBGfaSUNOusnnXui2uqoXtBl
	JhwP7CVeLjZzCjcuTL68W/02mBYZZBm5O1x02DqEojea4G6mJz8BlyIZRWLAXi1XK6phoOef/QKGR
	GIRXdBRTRJsT+jzQjUSqzERgArikkZNzxEaN5QVjw619iJw5GI8R53cUg0qOlqsGRB2PsBENIz/G+
	lQZsJy9PQ0IToL/JWiVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVct-0002rQ-Ni; Mon, 22 Jul 2019 10:33:03 +0000
Received: from m9a0002g.houston.softwaregrp.com ([15.124.64.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVci-0002qZ-5Q; Mon, 22 Jul 2019 10:32:53 +0000
Received: FROM m9a0002g.houston.softwaregrp.com (15.121.0.191) BY
 m9a0002g.houston.softwaregrp.com WITH ESMTP; 
 Mon, 22 Jul 2019 10:32:42 +0000
Received: from M4W0335.microfocus.com (2002:f78:1193::f78:1193) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 22 Jul 2019 10:31:56 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (15.124.8.14) by
 M4W0335.microfocus.com (15.120.17.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 22 Jul 2019 10:31:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvfGPX/0exAx4oT9CSrLHXSg5XKPnMURRH7o2lXBOqAOe0/VLDZP16W+2JivXNOKYwDjY+Za3ENLpZzdPcRDRcXMtqHPyRFLcSW07yj6Sfz4JAlFZVvgIJ/kXXpWdHoV/lBGgBO/qY30hOzmHNzxh/G6dqc064Bohf9wz7ibqpHP+RDzf4yQ1Y5uhas27EPpDvvPUAK6rHgX0i5cxnnBnzmlJqYQjlcpAsrLTIbu3bGh2usdeaB6mPSkj3vEW4JaxUYIGGfYT2jPbtWwys5/niahdZYewP4aqrFHyt1XwjaB56exWRtFZCNbCKhoW9/w5x9J48ByrAdhcNsFBRx1Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQwfBvzLc/OiDgYEzNXLxGg41GAEFqF8eRwMcDHC9W0=;
 b=mSc7d09LNdouuJX187ZfmwnDtbAeBsJHgmhASvbo7OjFJGraqDFWril6kdqBgmKqnvBJ/uinLrhIthTQ27PLPfqVkfIXE5R/JEs6E/CIu1/+yTHc+d5D3Jae9uWpcB69cjdRsKuXGUeCoEG1ER2shlWcaW3sIvKlUjlcsw3iYTUBsJYvmAyIvl+MAQ7pzbppiF74egKIwwRpYrOT+YFq6zHHjHPyCJQ08dwuorn0vNo7kFHsC7NWX5TVM5F+6I3DVpCZzJWb9+C2q7Nn4NxA/f8GGqhEGcIPrMqmLaQcqgQohA5GVebOQwggXPz3wuXV8ZAjSzGUkBwoR26KSOWU0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com (10.171.255.24) by
 CY4PR1801MB1814.namprd18.prod.outlook.com (10.165.88.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 22 Jul 2019 10:31:55 +0000
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8]) by CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8%3]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 10:31:55 +0000
From: Matthias Brugger <mbrugger@suse.com>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, "Mark
 Rutland" <mark.rutland@arm.com>, Michael Turquette <mturquette@baylibre.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, "Florian
 Fainelli" <f.fainelli@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "Rob Herring" <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 09/18] dt-bindings: sdhci-iproc: Add brcm,bcm2711-emmc2
Thread-Topic: [PATCH 09/18] dt-bindings: sdhci-iproc: Add brcm,bcm2711-emmc2
Thread-Index: AQHVQFIyxpmlkhauX06v5OScSoKtrKbWcK+A
Date: Mon, 22 Jul 2019 10:31:55 +0000
Message-ID: <4749e256-69a2-bf42-e1ec-4dbbdee6c967@suse.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-10-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563774880-8061-10-git-send-email-wahrenst@gmx.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0197.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::17) To CY4PR1801MB1909.namprd18.prod.outlook.com
 (2603:10b6:910:7a::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbrugger@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [37.223.144.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a81eea29-7972-4d7b-d4e4-08d70e8fd155
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1814; 
x-ms-traffictypediagnostic: CY4PR1801MB1814:
x-microsoft-antispam-prvs: <CY4PR1801MB18148FB344F6EC6AEE8439DDBAC40@CY4PR1801MB1814.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(199004)(189003)(7416002)(76176011)(31686004)(86362001)(446003)(2906002)(52116002)(31696002)(478600001)(486006)(186003)(11346002)(2616005)(476003)(7736002)(3846002)(6116002)(66066001)(305945005)(71190400001)(6506007)(229853002)(71200400001)(53546011)(26005)(53936002)(54906003)(386003)(25786009)(14444005)(256004)(36756003)(110136005)(8676002)(99286004)(102836004)(66946007)(316002)(6436002)(66556008)(66476007)(6486002)(81156014)(81166006)(4326008)(8936002)(6512007)(68736007)(66446008)(64756008)(14454004)(6246003)(5660300002)(142933001)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1801MB1814;
 H:CY4PR1801MB1909.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FcE9qQ5lfcbGaPm603/WZeMJoYyicq80GII/3L+BfkdJ6PfgSSk/RBO4ir96Xb75dHxH3R1VH/84n+HjA06ej59Kl4nCQe8Rf4drSZG3fdxHXG1LkvxaX7YCW3FKfNxBIuxdSt30fXSmH5N97nxHfk9JNT09Sj328ZB5rpD341nuTcY/sBirMtZvOiKSiN5lIzOmCXNAhamMkaakHb+yQhOsDtQpBZQCr2pasui+9UktLjjtVs1X0ATRjccEKEqFSQmIXHkFou0LSXgmXvzIc1ijLGTBAstnWCiAT4RVXz0FHhwXZdURBkyZ2MR9olIlZA0eYh/t+WZAcgql9xkPj1/35rFtNJlUoNE1XWm7Fry5Qlhe5n10REqYYluFPQ2ToBnv7mJcS/YmBHjuBl3kE2b3yM06xbQD1w2QGPICanA=
Content-ID: <D8D2F9593A16FE408812D088287C3219@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a81eea29-7972-4d7b-d4e4-08d70e8fd155
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 10:31:55.2279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbrugger@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1814
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033252_299808_90D19C75 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.64.67 listed in list.dnswl.org]
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



On 22/07/2019 07:54, Stefan Wahren wrote:
> Add a new compatible for the additional emmc2 controller
> on BCM2711 and clearify usage.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>  Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
> index fa90d25..09d87cc 100644
> --- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
> +++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
> @@ -6,10 +6,12 @@ by mmc.txt and the properties that represent the IPROC SDHCI controller.
>  Required properties:
>  - compatible : Should be one of the following
>  	       "brcm,bcm2835-sdhci"
> +	       "brcm,bcm2711-emmc2"
>  	       "brcm,sdhci-iproc-cygnus"
>  	       "brcm,sdhci-iproc"
> 
> -Use brcm2835-sdhci for Rasperry PI.
> +Use brcm2835-sdhci for the eMMC controller on the BCM2835 (Raspberry Pi) and
> +bcm2711-emmc2 for the additional eMMC2 controller on BCM2711.
> 
>  Use sdhci-iproc-cygnus for Broadcom SDHCI Controllers
>  restricted to 32bit host accesses to SDHCI registers.
> --
> 2.7.4
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
