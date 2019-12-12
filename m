Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F26B11C596
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 06:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shs2xnE0v6bvZBfD+a+S9mhg6bEu7tIPaV8yu5oATPQ=; b=iophkpWZg2P/tL
	ZTPtoQvQfNJmMpsiZLitUSXJS09DQwFUGeLbq3vcinLxo07/y8aywJIkhElyMByE3ZGRJirWeFssa
	lJpZxkZ/bl3RQbbNXdYX4MJMs3POBkt6vnz+IvGnMiMH58W8O4L5vxLcikcHYh3kccuWiZ9sc9Vog
	V1i9NpUldihQcyTM2Zc50oP+nyvnwZ9YvGN75rbN+n1GoBK8jY+gf//wVhikWyHOTWzNC19ZTf/r/
	7vkmG6P1/FkvP6icEDf03LepYYxKht14yAbnwJ7sW7pIHet0J46l5YW55fawlV+OwztTTFW+W8Ka3
	HPeSHluiN6PZe1Z3RF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifHI7-0006pw-VY; Thu, 12 Dec 2019 05:45:35 +0000
Received: from mail-mw2nam12on2082.outbound.protection.outlook.com
 ([40.107.244.82] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifHHv-0006oz-58; Thu, 12 Dec 2019 05:45:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ls3BWT2JZiMF1quQjuW2S15TCuOw5zaqfW9UMp5+cvzya7BxjfU74GoDqUL2DJTrnAx+fjLKdAbomdSn5Fx/m72igko0+A/n6ztqQNoegncHpDvr54Bd5WoF6QGRO2HpikosAsGNl8e3jCV0krI3R8vQLtB8fLJLO89Ib3nhXswYhv1dsgFYjiXKAuOfyeNU9A8f/QYo6ppB+wglcOl74xMwbuROdoXVo2FeLPbLXJ4z0S/buRnbAb7e5n5R5Z2nnJ/2xBeipiGCpyhbtd5SrqdZZWlwKn+XQm//eEYGhTzDHN2vpgUB4a1/Pv1dXh02mEebwBDVbjgDcl4yYTKBfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6a0Tis2G2v9de9CINqeKkPu/zvCMbwC7NJdlkWUaG8=;
 b=eV/aKQy4/0wP1xhcE3sGrnKPyha8bqv+fqEb55YD+2oP7SpNie+Q0h7LIYWrdbKtolJGrdVMS0zqPWfi3GAOt/+hIYVyDliMx1wH+wsw89BX+70M3ZxvbYUgJoYDgiyS/6o3gQCsByqVntW6BQ40neFF25Q2QLZciZy6LDgEJAvZJOpWKaTW+YRSDMaVPa8QwewQknXecSUh0lm6O20Hoa0uQKsfAE6BLFuhJG6VfSLiMmSBY+AU1ixphIvL6TWlJjLv/S/WYEc3lP402kWKi3jkiO2SS0GYgna6V0AiimJ6dbjqTjFs7ckJvUzlIDEm122+PsABBG6UknZFMCOaOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6a0Tis2G2v9de9CINqeKkPu/zvCMbwC7NJdlkWUaG8=;
 b=mmvLvDM8nAWVILtSfZh238d9XxZzfllSCu8k/lQ5MW7kKE7HUBGytftme1HhcwrJZRf/JCvgXkw4e9v9YUPPflLhCcqef4M11Ns83aYDbpfBMD7sQTsqrLOUU7467sJMicpJI9Y+w5YaYdCM/mtUHieDF1wU6KX4RPEG8VGoCQk=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6245.namprd02.prod.outlook.com (52.132.230.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Thu, 12 Dec 2019 05:45:20 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::5d66:1c32:4c41:b087]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::5d66:1c32:4c41:b087%3]) with mapi id 15.20.2516.018; Thu, 12 Dec 2019
 05:45:20 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Brendan Higgins <brendanhiggins@google.com>, "jdike@addtoit.com"
 <jdike@addtoit.com>, "richard@nod.at" <richard@nod.at>,
 "anton.ivanov@cambridgegreys.com" <anton.ivanov@cambridgegreys.com>, "David
 S. Miller" <davem@davemloft.net>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH v1 3/7] net: axienet: add unspecified HAS_IOMEM dependency
Thread-Topic: [PATCH v1 3/7] net: axienet: add unspecified HAS_IOMEM dependency
Thread-Index: AQHVsFkiqR8nSduRnUG1Mm2Zwj3HCqe1/amA
Date: Thu, 12 Dec 2019 05:45:20 +0000
Message-ID: <CH2PR02MB7000A8C27E849A6B81251AFEC7550@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-4-brendanhiggins@google.com>
In-Reply-To: <20191211192742.95699-4-brendanhiggins@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9c65c8d5-7781-406b-2a30-08d77ec6796f
x-ms-traffictypediagnostic: CH2PR02MB6245:|CH2PR02MB6245:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB62457B07B6E59B127FE8C450C7550@CH2PR02MB6245.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(13464003)(189003)(199004)(66946007)(76116006)(52536014)(478600001)(5660300002)(33656002)(9686003)(66476007)(26005)(2906002)(6636002)(4326008)(86362001)(186003)(66556008)(8936002)(66446008)(8676002)(316002)(7696005)(6506007)(53546011)(54906003)(71200400001)(81166006)(81156014)(64756008)(110136005)(55016002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6245;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wbdqpDUm6dDxHM6Yvm8GkKgvuhOVZSxhUtBsfZflN18AxhVoVk7/VXD6EAKeDeS1y2Sw+dm6fuCyRblTV31iVAGsDtIUchHUw1rsd++YE0bZ5oarS/QW6M+reEpGTBcEWXC2x3Q6PuKHP8EUeRBxQGPwJQLeM2aAAeI/qKOVv91Q9JVhTTL3extGojM9HvFQFpgz02uk5sYjXDskSYGKAzaO2t42mc9Fo+dEojE6C9qBSwYnnK9yg46rN3Jieih2vOOzLOR7mM7z8CEAZz7kzuk158QLG2S+vvvJAD5AMBcxgdVW3LmQJ8mlHw2WMGEVb5Pcy7pJf3zIOuU1YU/N/C8Cjfg/UdZC1Q8QziAI/Tp0Nnp+0phMjmQQBP6wrckK+8MlQtTJxKkz+Yfd/beaH4m1cQF12wkEOCcyGNn1rUZXL3bDP/7Wyv1u39XSKKH5muzcjrpgBT8tdO02DIjB0pWaR7fqe0QXXLatNQkselBeyoSodigOO5vaBFQqroR3
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c65c8d5-7781-406b-2a30-08d77ec6796f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 05:45:20.1141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3vu+7lUBSOYsSLoPc2QJVeXj42dT7tBNwx8k4EpdsOZX7dK5n+akLfOMwqT+jG4Oi8TkJTpnrmZ5favEIMyRzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6245
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_214523_194260_A8F73FEC 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.82 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davidgow@google.com" <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Brendan Higgins <brendanhiggins@google.com>
> Sent: Thursday, December 12, 2019 12:58 AM
> To: jdike@addtoit.com; richard@nod.at;
> anton.ivanov@cambridgegreys.com; David S. Miller
> <davem@davemloft.net>; Michal Simek <michals@xilinx.com>; Radhey
> Shyam Pandey <radheys@xilinx.com>
> Cc: linux-um@lists.infradead.org; linux-kernel@vger.kernel.org;
> davidgow@google.com; Brendan Higgins <brendanhiggins@google.com>;
> netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Subject: [PATCH v1 3/7] net: axienet: add unspecified HAS_IOMEM
> dependency
> 
> Currently CONFIG_XILINX_AXI_EMAC=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we
> get
> the following build error:
> 
> ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.o: in function
> `axienet_probe':
> drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1680: undefined reference
> to `devm_ioremap_resource'
> ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1779: undefined
> reference to `devm_ioremap_resource'
> ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1789: undefined
> reference to `devm_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Thanks!

> ---
>  drivers/net/ethernet/xilinx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/xilinx/Kconfig
> b/drivers/net/ethernet/xilinx/Kconfig
> index 6304ebd8b5c69..b1a285e693756 100644
> --- a/drivers/net/ethernet/xilinx/Kconfig
> +++ b/drivers/net/ethernet/xilinx/Kconfig
> @@ -25,6 +25,7 @@ config XILINX_EMACLITE
> 
>  config XILINX_AXI_EMAC
>  	tristate "Xilinx 10/100/1000 AXI Ethernet support"
> +	depends on HAS_IOMEM
>  	select PHYLINK
>  	---help---
>  	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
> --
> 2.24.0.525.g8f36a354ae-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
