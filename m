Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCBFE9319
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:45:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq1RiGctQHCaifTDkjcleEcWBFzQVChyCazXAyI1QDQ=; b=YPH8p5uR0Yv+P1
	XleHlrFfxqXNA5rs/3uxVdtpcrXNMY2N5kzBXPnRJa+4JtuMTKNLUVsVlso3oJgb9GkUXRG2d9dt4
	D8UQT7aIBCIb2cHZlpW2l4XbqVy3urDo/bQ17YsCVVwkNN76lZAfhV/KDA1Er8ld2fDy51P3ShEDc
	EbacG41/nH/YOXeYcu878+8AALPIE5arydzjM4raLEik22YxeX5QWEEQKwWtXUpS5pUHfMsg25C1A
	SSaHdoqMx87VnLSdhSnClt78dpXHL2iD0dUq7jrSL6epIUYpasmBLEGmzQ2cjl2hhL5fTR15LbuSQ
	TXan+4EB/UQq/F6ys5MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPaEL-0002jO-Be; Tue, 29 Oct 2019 22:44:49 +0000
Received: from mail-ve1eur03on062e.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::62e]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPaE9-0002id-MW
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:44:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BkFpA6Q+GhzLGDenxbmSIDGxZVop0PIszwCyNdBvkDiXCSOB9NPmD8QFJiqmtw3dnVCbGuz4AQUBjI8QjMbYbzwa8yflcicdGwfGlYMGH9vCBtz5rwhqfj3l9DwgmdbwhF586w6H1cZTiaTVMvGgmu3d1CZbjY8+GnLedSFYeoAx1Y/hjmvf2p0HVM1RpE/d9AwPVIQ4oyBPIzd5hWO51Kce/5zN6I6OGi0BVRpj5FmKJ2UiMx9sO3C18ZCAM4DVbj9mh3cKn1chsqs/UQ8G03uslUwgeZ65UwaKFtlZ156eRu3o9bpi2Q9hbnqSSL6KHXP/wsWvnpggF0fOxcXG6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GRBpJvjoxoG+b5Dpj6WaVjn3b9s8OVOD0L9cM3sVYf0=;
 b=Xp6QeNgc3kF8lrjlDxxm7h9SIOiNdC/4gmlQVGNgG4yyzP8Ek6hkLy+FBTCT4itCZgj9pU9rUd51KFoQYpkMsWTPyukcdzV51KIUf+UoGhcAnubFCHJwQnk1mXl5Qfft+gKJQmQetkwutG08I3NLzA8kL838iTuW7eyTM/pE0svtRYmlAm3SS3m6cSE8UMp9UDe1cpGrH/0f0px3gHyDxKBT71e9lY7Ku9m5ZnIxJy/WJt3jLu3vx1w+T6tisKWZT6l8g+snsYu9wKVmaW4ZosK+J/xIYBsFHLDTbC2tGInFXundHGgUanYmrZXaRtjBnex/9OExpvisrpn+8q15yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GRBpJvjoxoG+b5Dpj6WaVjn3b9s8OVOD0L9cM3sVYf0=;
 b=ammmhVMdEYiOh6hOtUAP72gs3FQ2RCPWlwwpsnMDvd1uf8pmv4DaeyjctPvAUSy2RyaSJ5T2txpQ+KLtAsqkXS1mtp+bJVpjtr3CTCSH1T87dp+WSVlS77hQsRrmJSlDdTTz1ABAoG5rkMMErIo/FEleZE9xC1hWjCoyY4LG8YA=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6543.eurprd04.prod.outlook.com (20.179.235.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Tue, 29 Oct 2019 22:44:32 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6%3]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 22:44:32 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Qiang Zhao
 <qiang.zhao@nxp.com>, Christophe Leroy <christophe.leroy@c-s.fr>
Subject: RE: [PATCH v2 20/23] serial: make SERIAL_QE depend on PPC32
Thread-Topic: [PATCH v2 20/23] serial: make SERIAL_QE depend on PPC32
Thread-Index: AQHVizGGK1AbHr0Ag0SyT1h3bdNPg6dyPcDA
Date: Tue, 29 Oct 2019 22:44:32 +0000
Message-ID: <VE1PR04MB6687CA599C89D46076C9B3518F610@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-21-linux@rasmusvillemoes.dk>
In-Reply-To: <20191025124058.22580-21-linux@rasmusvillemoes.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a3e55dcc-d939-4d99-6d34-08d75cc19112
x-ms-traffictypediagnostic: VE1PR04MB6543:|VE1PR04MB6543:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6543B7A877FD5E98318097AD8F610@VE1PR04MB6543.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(366004)(136003)(346002)(13464003)(189003)(199004)(476003)(7736002)(81166006)(8936002)(486006)(8676002)(11346002)(9686003)(81156014)(6246003)(446003)(55016002)(74316002)(6436002)(33656002)(2906002)(5660300002)(186003)(26005)(305945005)(229853002)(7696005)(14454004)(102836004)(76176011)(6506007)(316002)(25786009)(66066001)(52536014)(54906003)(110136005)(256004)(4326008)(478600001)(66476007)(66446008)(64756008)(66556008)(66946007)(76116006)(86362001)(71200400001)(71190400001)(99286004)(6116002)(3846002)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6543;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YQgycBYrXi9jcB4wzGPw0x8N9jH4WK21MqUtjzhkBpmZIghiEAOOKu95oQ+s1h4NNlNBIKFLw+kXzXQmaJSOSLHeZZL2sUjTFGFadFX87W02zHlR7e+o19Bn8cktNA+xXo35fJQjSzYHkodh1oLlNCwk1wu0QlwNRbghIg+e60zM6ZV+2Q34J48zZ8gib1Ak2LfHmP4cV5pj2nNQCUuclzzUMDb0LTZ5kCURPRX/4pqv/d1QPrqiZA7cFlqS4R/GpKZx9oGJk4AijRp3YuGILMMBpeQJ/jUkgiimVcIp9wUo3OqVEEyHbE9bvH+bytZlRS0PYNtM5ivRcYFONzDwWnPTzl4ieBWzBIOZYxAI2JyPmXGod+P0B3Du7vwwmniurHv8iX+r/CcZtg9vAK03peKraFexNBnasoSd6uBJQUuSMn0zbdwXmMRPdazQHTcX
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e55dcc-d939-4d99-6d34-08d75cc19112
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 22:44:32.6792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ExFPY5twVtJy4ZezuXPXbnyoeFBTa9UfIfdDgB9+Xcj8txvBAnc+XTeR3HI0E9gZNrc2dMjoI7reZh7W6qfmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6543
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_154437_931884_78291AFE 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:62e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Sent: Friday, October 25, 2019 7:41 AM
> To: Qiang Zhao <qiang.zhao@nxp.com>; Leo Li <leoyang.li@nxp.com>;
> Christophe Leroy <christophe.leroy@c-s.fr>
> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Scott Wood <oss@buserror.net>; Valentin
> Longchamp <valentin.longchamp@keymile.com>; Rasmus Villemoes
> <linux@rasmusvillemoes.dk>; linux-serial@vger.kernel.org
> Subject: [PATCH v2 20/23] serial: make SERIAL_QE depend on PPC32
> 
> Currently SERIAL_QE depends on QUICC_ENGINE, which in turn depends on
> PPC32, so this doesn't add any extra dependency. However, the QUICC
> Engine IP block also exists on some arm boards, so this serves as preparation
> for removing the PPC32 dependency from QUICC_ENGINE and build the QE
> support in drivers/soc/fsl/qe, while preventing allmodconfig/randconfig
> failures due to SERIAL_QE not being supported yet.
> 
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>

I think your purpose of this series is to make the QE UART not depending on PPC32.  If it does accomplish that then we don't need this change.

> ---
>  drivers/tty/serial/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig index
> 67a9eb3f94ce..78246f535809 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -1056,6 +1056,7 @@ config SERIAL_LANTIQ  config SERIAL_QE
>  	tristate "Freescale QUICC Engine serial port support"
>  	depends on QUICC_ENGINE
> +	depends on PPC32
>  	select SERIAL_CORE
>  	select FW_LOADER
>  	help
> --
> 2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
