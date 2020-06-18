Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B041FE940
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 05:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDgHFKXbPi12RbWoEUCb4ezC597AaDubmm3h8YhlC2I=; b=vAva0rTq7O8PXY
	jo2XYOjY3UYUrkY6aRgcIOI7/IaSaOnb1YAXWigfIRQLmXoTp98NyfdcjjmBsvBjhd3bJEGpRJ8C3
	1IuSw5O4+/AnZh3op42PVdG2nkmpTIBUX2cih9jZ5zY3KrGaS+dEUxNWQiQGD9hXZ9OTSxmamfWgO
	0FygElCAFbnOfzuO1/Q2Bk35BDmxTGEfZ8MP2Vcf48LPuX9OXSFLsjL8QCrryMsMSgmRBSJqe8Vmh
	o7djR43tvg5XFfodIujC9vHRXxuncg0cRWwc8EfhQLGintg6Do1k22maCli50pRjPMcwjxrFJSw4j
	FepUiJRB+d49HcRhw/EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlkvX-0005ip-Ij; Thu, 18 Jun 2020 03:09:19 +0000
Received: from mail-eopbgr40060.outbound.protection.outlook.com ([40.107.4.60]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlkvJ-0005i4-Vw
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 03:09:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dNpfzGSC0nss96TQ+dKNtYS6dsHC6a8A71AaVYFlYlxmtvXvDCSkdULkrS6CVUz5QfFi5DMx2BQM+QwK5zNSugKqOLs34T2HoMvPB2w7JBis5ek7Te+08HkR31PvVdL5P0ghEvi+AEYANvpLPF6Yq6syo5Rla3b7+9rtMzgerf2DIHN96bXF14KRxTAg6MBEETnI6DBHUwdetCFVxIaLYeypPkLbgEQnn7xHwdM+2VMLgX5kxMEgxpxyKnWvkCim24mM5qUIbX9jtPX4f9qb+7EOHa7s6DvLgnZPr1e3SW8n4X3Pic8X5XYHt6zCbhPlAtxKk+Zo1OVdm+z/5P6JUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I9N7KL5y5sB/09UbOBaQVac7PGw07PfTmIAtVc9280o=;
 b=f2KXpebcufsEYl5Hgvi5QpS2xaeKl8UFbNOTkGXrn1HxqMg1XOQ70GVOEDymu4ij40W2Qqa2hssw02XmAiwN/mzXD9udo4W2e5CFa+1D5IIviVD6m2wHv6zHZOPPEUmv7iVKqtol+Kp3CQGprZcta6go6/HmaWshaJY1HJDEwRNQN0j3mvsW/T1jA80daFynnt/d4IGUQzPnaRTS59ZcvH27nkvxB+XPAyzMI5aamnmZFs482TtB898rbCX4egRwepRS2pyuza25QhJek02yRUMv2/vRCPNDyJEsmfYfnNadMsn9PzzPckcUHFSDFINt8yuBS2m9cJnXwYnExckdMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I9N7KL5y5sB/09UbOBaQVac7PGw07PfTmIAtVc9280o=;
 b=YUP79wwAZudW1wQVhg2qYdR/eYqvDb+ujg8f+jy9WxZOCqv7nDMagZs13AKn6HppJNRIopcBYqDkamWw8A4VrnbR9sAxFEyNsGygVUxeAgXxTl1V+TlcS2M4F/OxF4p4MCMJHJI+eTt2HLO4OqWOy5ncxeDNy7QkEn4nYBbZDUg=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4136.eurprd04.prod.outlook.com (2603:10a6:209:4e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Thu, 18 Jun
 2020 03:09:00 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 03:09:00 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Topic: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Index: AQHWPjGjLfNEVvc8HUmhxuTW0pJGcKjcqIMggAAi6gCAAPOSIA==
Date: Thu, 18 Jun 2020 03:09:00 +0000
Message-ID: <AM6PR04MB496647CBE140DFF73DCBBEED809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-3-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966F4A5E0276AEDB5605260809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39160682846B99E0A3762AF1F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39160682846B99E0A3762AF1F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1f3ca449-c087-4494-f462-08d81334f2d7
x-ms-traffictypediagnostic: AM6PR04MB4136:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41360610BC7A99CD889B5074809B0@AM6PR04MB4136.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DNKYYE1jTP8ri2bNtyQAcME9rM1ClxLQ10aM5q2BbTtrgiScsgZDjKKg2HqNQWuq01KTt53a2TArC2tpQWlWIj+oTtOcEGfxT1amilUE3c01AfCE+YvVnw2cvBvspHoEt/uEnAkc5tCSMFmkd3zuWwI7jBESSmifE+RhoFVsWfsmhMSitcYzrHXTM0WFdIkRIwDB5GIeiPbcd0IuVxA+e5hHLKyHHmBcDd9VtFMK1KUCh7lrcWjAGL5Bg8OQnm0XZENCVBdQGL0E3XSJ/Z9/Hxqbcxemg7gmzmkp7Bx70JYCZvvk9uw/JavDgOdOsyLPc9aOm3992h1kvRl+jc0cByxKrRAlVaJgfcm3ollPRUHehPZhY2YqhKz35FY1cwxP3g35dubUWmaCBhROQtORWQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(66556008)(76116006)(66476007)(86362001)(5660300002)(66446008)(186003)(71200400001)(66946007)(7416002)(64756008)(52536014)(6506007)(44832011)(53546011)(9686003)(2906002)(55016002)(110136005)(478600001)(8676002)(4326008)(26005)(83380400001)(33656002)(316002)(8936002)(7696005)(21314003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: P0fT3/EponGUnv8d0C3+UrKHGPBjo7bi+IuWb+iqKYx0VeIdUoFitlnA/4t8h7V/tEJZoD6U6Z3dbFPrB7hukKF6ttLUjMV5WxvNpbrcttFGLcfMY7BowqmutXeT9uK5RrrPatShzQ4GHYh2cXWGL/Qw0XbeFHHaJiO7u1xpjiEcSMMW7IhwDNATOYrpldiHD0POLcl90MkobPBDffL52yhseHG40MnGiW1EFbELtdqVbEvOLAhydN6Unb6cnUeVvIV58YSAFH+xHj2lEnjRyjV6WTkpuMUY4kzJ17zYnW3Rm1AdqIUhy71VnZgwl4bKK+ibLvhKI7avBk918/+Tu2pAMc957/OO0X9aS8yMDCH71wxAtPWw9OtUclRI9QbpqXRUSUrGjjYdqjp1OC4nJS27iKwY0ViN7jczCzpSrD3FMOSeGdgAHl0PJOSgtvyIZYFJ1ENAi9zalbn2tiqlOyhgvKOvSSFtNZ09ZvgJe4L5CUDDMku3PTWtvlRxgFf7
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f3ca449-c087-4494-f462-08d81334f2d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 03:09:00.4512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FMlTjhfhZqlaQeGYy9S1XglhPt3nngRme9BE0/9CdkrKOO0Ai50i9/j9QlRX2vskZM7Le/zuUFmnMe4DITwT/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_200906_121901_F9BF4446 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.60 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.60 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Wednesday, June 17, 2020 8:36 PM
> 
> > Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Tuesday, June 9, 2020 3:32 PM
> > >
> > > i.MX common clock drivers may support module build, so it is NOT
> > > selected by default, for ARCH_MXC ARMv7 platforms, need to select it
> > > manually to make build pass.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > Can't the original def_xxx work?
> >
> > config MXC_CLK
> >         tristate
> >         def_tristate ARCH_MXC
> 
> Such change will make MXC_CLK=y even all i.MX8 SoCs clock drivers are selected
> as module, so it does NOT meet the requirement of module support. Below is
> from .config when all
> i.MX8 SoCs clock drivers are configured to module.
> 
>  CONFIG_MXC_CLK=y
>  CONFIG_MXC_CLK_SCU=m
>  CONFIG_CLK_IMX8MM=m
>  CONFIG_CLK_IMX8MN=m
>  CONFIG_CLK_IMX8MP=m
>  CONFIG_CLK_IMX8MQ=m
>  CONFIG_CLK_IMX8QXP=m
> 

It works at my side.
Below is my changes based on your patchset:
$ git diff
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 47b10d20f411..e7d7b90e2cf8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -4,7 +4,6 @@ menuconfig ARCH_MXC
        depends on ARCH_MULTI_V4_V5 || ARCH_MULTI_V6_V7 || ARM_SINGLE_ARMV7M
        select ARCH_SUPPORTS_BIG_ENDIAN
        select CLKSRC_IMX_GPT
-       select MXC_CLK
        select GENERIC_IRQ_CHIP
        select GPIOLIB
        select PINCTRL
diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig
index 26cedbfe386c..f7b3e3a2cb9f 100644
--- a/drivers/clk/imx/Kconfig
+++ b/drivers/clk/imx/Kconfig
@@ -3,6 +3,7 @@
 config MXC_CLK
        tristate "IMX clock"
        depends on ARCH_MXC
+       def_tristate ARCH_MXC
 
 config MXC_CLK_SCU
        tristate "IMX SCU clock"

Regards
Aisheng

> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
