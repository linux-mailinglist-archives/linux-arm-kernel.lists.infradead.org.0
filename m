Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119CB8E974
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVplk1TgzZwMNdVT3BCi2dvoo0pPQl4dRf0iBmutjKM=; b=rtRImAlv0D1wUh
	gsL9AmQ8CNogY4tyFZkqa1ac+8RaAIp5az0shpv7X3GcBSQHw6rys0/OzF7kxkwVuOqcN/gdp8uwk
	fZS5lE8TqWohkHRaoQxZFfuaf+Y7eVrD26F7I5xeE5vKX+G0KZZQSibxv3AnocXUTNUnlO6r7DSwN
	wPbv4ag3UTPmehb6v3qUSecOi62bYYqgPT2Wh5i6XoYztM6LuSENYQeNX+WhEtqtBWAwMD4Wl09Ip
	HeopWf+dc8v1uZrewkTyuvh/6D2Jf07QZk6XY6vz8QtTLv/4+xYngt78+0Fs245byjK38AhSPfM+Y
	6JOGkCYE2J4veYfMJv/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDWD-0000tZ-A2; Thu, 15 Aug 2019 11:02:09 +0000
Received: from mail-eopbgr50125.outbound.protection.outlook.com
 ([40.107.5.125] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDW0-0000tD-ST
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:01:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qfmho+dFqH5koqaPwfR9M68xvq8yzWZvDC0jEe9Gn8/Y9UqfR0nSU4SS1M8uokN5LBObhbSdFT+BrVhSGS5BzDCAShmD0oaGIp9VIOS/IHBLprJx6qWqhcNTOJDNI/Oip4wbN81jaZYS4ErPWXACPOeI1KYgKNTVwFmdUNyu7unSx45Y/UlmSZS2lm1FyxsRBPu8Oqrxb9Gk0gg/Jl+kDMrr2UxG08GV2A+SGR4rVDAtvsVGBegheZKVdOQI+5Z4vHGEIzu2attzBcqetCx3o0k1zy93+hFlC3miWaX3K08r7PcpCckZpgUt2VhUz9fPZMtGVCx+Lp59bS9VTDPwTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MLJgK3ZFupXucWqvO0Y5evuL5e7nHOm6/Tw/4zVqY1E=;
 b=TCuija6DpvgbgNQwJq/TSNWcK9vWpsDx/6TSyYQ2EmZ7QxW6+nDH0B7EfHO75QIV3aub8ZnZoLZYRRfo+2nQ68cELH2a0LJrt4IKooDyT6YVZBiK4lx3+Gx2Zqtb/4tZbhJo/6SQxDFeaQg34QLfaWAOx+QK2Ah+8Duf7dkRsFfvV16NcE0/0VqFvEuQKEn+cPy9tspGgl4MTJ4KdSRI6HTwMLmMj4PtthEXwGY0XtCod1LembdWrtQPScIWyQFTsea469WI63xQRaYEPp9CagAGXqPchG/kGsJii/dzQib9tToJx0ADHxTUAFpugFcoPjOCTbbT1UdGBwhBdszRmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MLJgK3ZFupXucWqvO0Y5evuL5e7nHOm6/Tw/4zVqY1E=;
 b=qpCFAAY5kdAne5ir6pSNZm8NCHX8xIfhTWPdqqG85fVxylpaZV1woQfqEpqbUc0QieRdIYIvllhPIK6SJ98Jky2KgXfM23qGivqMnivbKG42IhTjoNK5gcS4NMpZaKe4iDVWd3ok1beYBQ7L67QfKSAvwZiVm1E7ZT/X82Tb6cg=
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com (20.179.27.210) by
 VI1PR05MB5808.eurprd05.prod.outlook.com (20.178.122.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Thu, 15 Aug 2019 11:01:52 +0000
Received: from VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9]) by VI1PR05MB6544.eurprd05.prod.outlook.com
 ([fe80::4810:d157:267a:83b9%4]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 11:01:53 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 13/21] ARM: dts: imx6-colibri: Add missing pinmuxing to
 Toradex eval board
Thread-Topic: [PATCH v4 13/21] ARM: dts: imx6-colibri: Add missing pinmuxing
 to Toradex eval board
Thread-Index: AQHVU1e1NRA+fGlpEEevock7VPX/Ow==
Date: Thu, 15 Aug 2019 11:01:53 +0000
Message-ID: <CAGgjyvGX2y8jxyWeFAPqo-q4y0p47Wrcsxh67aw-0UyaShvQ2g@mail.gmail.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-14-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-14-philippe.schenker@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR10CA0011.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:17c::21) To VI1PR05MB6544.eurprd05.prod.outlook.com
 (2603:10a6:803:ff::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAVOBTJqlqvIgksJZqnp+iv+7BT/wX1YigYJ/e2FOctmqYoxA1mz
 ety1kN67r08iSsv28yRCjRpWG8OW6RwqGDIKuw0=
x-google-smtp-source: APXvYqyqVjlj6VXkS9oIMYC+clm0WCzRevHp/UfhWXzFKfkcarbPwf6+WulmXEm7WPolG0/IbyXu0LD3jBeYkW/Nk1Y=
x-received: by 2002:a17:906:7c49:: with SMTP id
 g9mr1598168ejp.262.1565866436743; Thu, 15 Aug 2019 03:53:56 -0700 (PDT)
x-gmail-original-message-id: <CAGgjyvGX2y8jxyWeFAPqo-q4y0p47Wrcsxh67aw-0UyaShvQ2g@mail.gmail.com>
x-originating-ip: [209.85.208.52]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60ee4bb5-23dc-447a-668c-08d7216ffb1c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5808; 
x-ms-traffictypediagnostic: VI1PR05MB5808:
x-microsoft-antispam-prvs: <VI1PR05MB5808048BE7EAD91F627D3A97F9AC0@VI1PR05MB5808.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(346002)(136003)(39840400004)(189003)(199004)(2906002)(6862004)(81166006)(81156014)(71190400001)(8676002)(11346002)(3846002)(8936002)(6512007)(498394004)(71200400001)(86362001)(9686003)(6116002)(55446002)(6436002)(229853002)(6506007)(53546011)(66556008)(66476007)(386003)(486006)(6636002)(476003)(186003)(14454004)(256004)(478600001)(66446008)(5660300002)(53936002)(25786009)(6486002)(26005)(66946007)(4326008)(44832011)(66066001)(305945005)(61266001)(316002)(95326003)(446003)(107886003)(6246003)(99286004)(102836004)(76176011)(52116002)(7736002)(54906003)(61726006)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5808;
 H:VI1PR05MB6544.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 281pP17/uGEsxs31M3i4nNNj+44/05i1nAUkudTeoXLkg3qbVAiBmwmUDDsGFeszz6SAXiA3dofPvB2Ps7jjDkJyUYrBWC57n1u17dhYrvxGcAm26Tso3YR2Ue4Vr+lZpYVZ6/2d7DFndiyu83mn6rBEoppluXRbo+R8Wdt8aPF8Z9D2uPGosKQZcN7yWnFtI0pVo9A6xURQm3Kaf2hE/Q8hkqIYfJ9mQlql9iBqNYTs4BcBQTqZCUAm69jB/0LHR+d7ruWZsKWFwC2yYa7DsLm2FbupTHkuV3OnYlU+1ZPIlHoS1UI2zjM+0xugWbdeeVkV8ChZzmO+MCtSYMq6OazAHJ7fDDxxcwJ9utCmC0EcuwqYAKhCRMPjlRlz0p1BR+wnO9eCqMaWZAbQ6MH780DC847ofnu7iA7zHzVv4Yc=
x-ms-exchange-transport-forked: True
Content-ID: <400F93E830EFE94FAF46FE343A90BF6B@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60ee4bb5-23dc-447a-668c-08d7216ffb1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 11:01:53.6042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5reCIpS4eS+Xan/T15sqlu2+0QgTb7PWPzPl7J0BAADL42OX7Xn8Rs4V4W1ok5pSr79lQg4eMJkLcKu993F89hhcoWqkpFXdOhs7ccPWnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_040156_926875_F7B5FE4E 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.125 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?utf-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 5:23 PM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> This patch adds some missing pinmuxing that is in the colibri
> standard to the dts.
>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

>
> ---
>
> Changes in v4:
> - Add Marcel Ziswiler's Ack
>
> Changes in v3: None
> Changes in v2:
> - Commit title
>
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 763fb5e90bd3..e7a2d8c3b2d4 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -191,6 +191,14 @@
>  };
>
>  &iomuxc {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <
> +               &pinctrl_weim_gpio_1 &pinctrl_weim_gpio_2
> +               &pinctrl_weim_gpio_3 &pinctrl_weim_gpio_4
> +               &pinctrl_weim_gpio_5 &pinctrl_weim_gpio_6
> +               &pinctrl_usbh_oc_1 &pinctrl_usbc_id_1
> +       >;
> +
>         pinctrl_pcap_1: pcap-1 {
>                 fsl,pins = <
>                         MX6QDL_PAD_GPIO_9__GPIO1_IO09   0x1b0b0 /* SODIMM 28 */
> --
> 2.22.0
>


-- 
Best regards
Oleksandr Suvorov

Toradex AG
Altsagenstrasse 5 | 6048 Horw/Luzern | Switzerland | T: +41 41 500
4800 (main line)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
