Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EF2188A35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDGQmTWer5CQVbxQXLWbkXEiDAccOq2oTroGEw539SQ=; b=ETYJ2A3QHzRZtH
	nGa+UYlqFBI772AScJ8o6BJ361B9PliCyjBwgkJ2rDtTE3kGo2QvWLeB45GGFNwKhN5v+MtEMhUBU
	5NSbAMnMIo+Vh4NuCzTgUxNEVuucpZXWGxYNcMsNAbQnaevmWpCvcvJdW1157DDUbxgD1vEGQRK0V
	trveheQNtJ2pryQ963i3l3dMQ88vlty4B5z+5YvGI9TOgm94tdKPe5TPTn7OsrzyXcjUfQfIpLvi6
	QOXiQm1r099qLOUBg65W7cS+gWUJ4uJgSTdAPNRGHDXIy6H6V2hVOyC1RXrLHNMtMvtwase6v0zDQ
	FbcZwdN0py1xw2xEoTJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEF3j-0007so-Ue; Tue, 17 Mar 2020 16:27:15 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEF3Y-0007qz-WB; Tue, 17 Mar 2020 16:27:08 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: hiZgdZ5wt/s+H4xus3clYlfc8H3Oq+kIGETbH0Vmd1tCk+1PeKx6wDgeGGKGGEBhNzSGIdgNSG
 vP5XXb6SsLhYakhhXl/cHRj9L+ed0wQQe/9DqTGxjx6GGoefl+QLHXp1fQjp7M2o59K0MMjM5N
 7I/EBXuUNPxtgBIkV/PGGCo4R+8uyojo/0sPpG3cmZfIWkGryIUZP55CsiXAPsX3NieX175ejF
 R/ErTnG095oMB9vPF44NN7II+WesfyYp+gC2rHqioOAmMsi3MUcH8Ar53x2IQDXnztyMRKPBtL
 pBE=
X-IronPort-AV: E=Sophos;i="5.70,565,1574146800"; 
   d="scan'208";a="5953021"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Mar 2020 09:26:53 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Mar 2020 09:26:53 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Mar 2020 09:26:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KlEFxC+IfhHDXhsVgPEoqQcELVi/QrCc+hvIMCDhmw96PZgqgRpuxM7NVYxB++C12paY48UZfJw5y9uf76yRbT0DgtgQGexKG2+hzpio08DneFotLXDR3oSwcCgSfRryeCdCpb3pCsNGU18O7GJzmfxPueR27nSqWLr0w8EiRhIqllPLwstoSAKt7dNKe6KUI9UFJw5X0dWG/1zd8ludmrsTDHd9LtfiQkw0cHZumhhVEHtArz/qdnI2hMvril1r8iuv98eR6THaBw6Do3Zb6FLP1Iyxx5MaA3k2eKxH4a16NRj59Mb2qVthqEpPyxIAeYuUeWvnUXSUp2SMgrJnug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EIzOciiFpPp1sQzpGEUBr6eHXjX2bEc2vxNCrPI5zN4=;
 b=HN+SCIe79XvpnJf/w0UsIQJZgCFdrWHo8wOyY3QiY/3V7wJ8kr1JuvQkD5xtt9d4YH6bh+eqofoGvV2cmqI6EzQU9PZgifTD+OkqoPT4gib4Zub4qcUAUaCbjo4LkNlDEHBwq24KapBEXuQNAgr2QQ7yqNqPGH/G1AQRt6qSk9h0rR640ZnN96GlMCgccBcpTXxVnzgC+qMTS7m0zxf9JVd/YfnYDwzfVdZaaVyRn3h+T23vvF6HN5J/2iRAbi7OiwsMYT7p7U7Tp2awzNvd8uR5F5+PZIPWIerhXjrQbOnC/MuOj8Blz2AnaXfQJf/nO0+hLWKc1UDuEMNRebm0lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EIzOciiFpPp1sQzpGEUBr6eHXjX2bEc2vxNCrPI5zN4=;
 b=b5Uaan6Ik2ujIYO18GUWOiuu/64lzJSiEGQlSr80Ssd9Vzxfh54A9rRsUbn9saMg2Tc5KRnz9zrG5W1sAQ1DQelNwbU2KcGhHdk+kHvBNxc6SqQ2UGDusxS93JTHYofFcOuv1jrrZeSXvIo9LeW3Sy27fh9Bhc7AZN+N/3gbgdM=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (2603:10b6:5:5b::32) by
 DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Tue, 17 Mar 2020 16:26:50 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2793.023; Tue, 17 Mar 2020
 16:26:50 +0000
From: <Claudiu.Beznea@microchip.com>
To: <oleksandr.suvorov@toradex.com>, <devicetree@vger.kernel.org>,
 <linux-pwm@vger.kernel.org>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Thread-Topic: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Thread-Index: AQHV/Hjcr8D0wJ1/KU6yOYf2aNcyvA==
Date: Tue, 17 Mar 2020 16:26:50 +0000
Message-ID: <f281a6a0-a150-514d-ef02-4e51192031d7@microchip.com>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
In-Reply-To: <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [86.126.9.245]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce6ecb69-76b3-43f3-fb04-08d7ca8fff34
x-ms-traffictypediagnostic: DM6PR11MB2603:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2603160B4E2BA59142F59D8A87F60@DM6PR11MB2603.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:218;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(39860400002)(376002)(199004)(31696002)(4326008)(31686004)(2906002)(91956017)(76116006)(71200400001)(6486002)(66446008)(81166006)(86362001)(66946007)(7416002)(64756008)(66556008)(7406005)(66476007)(110136005)(81156014)(186003)(54906003)(478600001)(8676002)(26005)(8936002)(2616005)(6512007)(5660300002)(53546011)(4744005)(36756003)(6506007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2603;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IHpw69mXXcfgiHzurM7j01zyT8PYjuTWrFBX/Z+gK4W2ArC6phY+due3PiwxkDWUKv/aNKTQhFbBtghnhHYeBL5PubIL31sYMPlaJR0E9mplKTQoCIY2SeuJ7Ghi3QLD9FEfW9i4EVjWTK5b3ZnhqWZmtVMRxKY/exnutU1ZGu3R41Obz5uraoM8L1Co9dHcRUprgyJKwujk318niv5n6yapwJDmtw3d7+KPEah5uAkKugV5tuvQSf1a/4q5SpChMBmVksNQYKVwt852WaA0QXFJnLFoGt2/hzO7nvYV6qlL8foEirpb2w6aajECFP4jJM7Y5Wcv+xdOvaB1ANPGwMmtsbQu+1+3bP1boerYTjirIZX+gaeGrgL0m7lgWI7IjDWLj4iwLhp6IColBaaWVP1rTCGJ7H9WcHk89yiFI25c920UA9dAIZZ5Y3qoPKXf
x-ms-exchange-antispam-messagedata: kVDFYKtTgbeYS4/dP8kT/ISXT3ss3Uh/024uKSW7TRN49m9cQG7UYpys52grIkIpPfeeaRiBY+rVggypZOr9Co1NuNWfPkthVNm35X2Ufv1xkSZ5+GtjTlgfbdYjWY/U1cRDlCzXSUKU09pZS+YTPw==
Content-ID: <5888E88EB76E8649A10DB864BB54BC2E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ce6ecb69-76b3-43f3-fb04-08d7ca8fff34
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 16:26:50.4921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oNuGH8X6o35HIT2auDm4AePv5WhlN/Nxi9h7VsR/67IG1IIPszVehpt5idm0n1GLnIy3StHKTYF9jnzRxgboUWfeMkSaUoF+2w+zrflDOhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2603
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_092705_072575_A2A57985 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, heiko@sntech.de, marcel.ziswiler@toradex.com,
 linux-kernel@vger.kernel.org, paul@crapouillou.net, thierry.reding@gmail.com,
 laurent.pinchart@ideasonboard.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, f.fainelli@gmail.com, khilman@baylibre.com, wens@csie.org,
 linux-rockchip@lists.infradead.org, Ludovic.Desroches@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org, philippe.schenker@toradex.com, pbarker@konsulko.com,
 paul.walmsley@sifive.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, igor.opaniuk@toradex.com,
 sbranden@broadcom.com, linux@prisktech.co.nz, palmer@dabbelt.com,
 kernel@pengutronix.de, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17.03.2020 14:32, Oleksandr Suvorov wrote:
> @@ -187,7 +187,7 @@ static ssize_t polarity_store(struct device *child,
>         if (sysfs_streq(buf, "normal"))
>                 polarity = PWM_POLARITY_NORMAL;
>         else if (sysfs_streq(buf, "inversed"))

You may also consider this string     ^

> -               polarity = PWM_POLARITY_INVERSED;
> +               polarity = PWM_POLARITY_INVERTED;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
