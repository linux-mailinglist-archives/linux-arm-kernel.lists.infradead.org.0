Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6FB1BD8C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d5dw8iyVEKySWaym+SYprLhDjdKK/hpOyk0GH/sCKE=; b=T3RSiNBZPgzmqJ
	ERwd0OV3RR/o6+jdpCEh/gNRvAYNkXyREarbFhTZOXKGotKYUi0UgnmmA1Rm8ScuWVTrrueSKGEYk
	2Ao/nqnbWgfdOV6rWa7e0y4C/cjypuJtNzfp0KvN50NuW5syC2SgqtnhET8W8cwpHl3EUhL5QO/pF
	JeInCPltujXEAx14mdBqpAYzhM3jP9MDD1r8Y9edJLi3+U2svzKepsO4Ys1DK9cM8Hs09YVpDbE/W
	RDJ72RSI2kGJezzLikibcczFze/Q6RTWYA3eUZfK47XYROsfBo53HMsYkHUQ4dLMn0gUc0OeBRC5H
	y12yUShc5UM/eWnZLtDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjN6-0002E1-0E; Wed, 29 Apr 2020 09:51:16 +0000
Received: from mail-eopbgr130042.outbound.protection.outlook.com
 ([40.107.13.42] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjMw-0002DI-GJ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:51:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nUhjkJzVpYXHKIhvTEfrzcT4nhwVHz3kZD6yk/8KrizRy+ePCb9AQlNI1DrHZ/FB0h7+NXj5obWA3nF5HRDm8fmYaaTZ1fRn2GTUJbcLESQbW8eQzGe9dOYn995wAh1yOEAVAC24tYRAt6ZzyLOGwJm0qdslTo4JccYM8VaGpGEB41StnH9D79jxaFXOoU0zsFG7zrN/3pBOaKvUKXJ9ZFRAOhkDPKIjpVbtL5X5ahc5LNJ9PxOVOctRFeKd0TI5RarvYLvAgPdwCMw46ds2LNvRH3vlZzFGPt0uz9dXoZ7DKcOOLTc/z+8mr91jWUJ7Xwgcef+U2xQh0MWO1UsP2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x07Zfcew70iSspPeSv+R+1IQUSnOo7DvWfcYrQZvJ3Y=;
 b=erLPzVXieBOaNAOROAQ2W0zkOwzw0I+WnKNwD0ScMRFlDPdkH5AWupVTrdmT5ztwLgAKug+nmg9kIuw08dTtWzsIouGkR2DzyDZIwMl1tjbo8ZsshvFW5IcCiLKvMskjBkRn4NlZLzwzKrrWpFmpc/NK2SHmJaxW21REY1Yc8teXf8RyFIaY3G6xQrmPppyzaHsn5Hp/2bUuW2CIR/bs4XfZUvyvYFWZe/PqD9Zlgyat4nWbqA8Y6HhgphaoxJEaIMbTkAmvUllH2T4S3TYGZFLfgwCOKQ7LYBPxDbwxrwh24aLN0jxgH5d0kjbEiSgebjtCY2EqsPHWjKuKmuGiBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x07Zfcew70iSspPeSv+R+1IQUSnOo7DvWfcYrQZvJ3Y=;
 b=FZ/IsT1IV5hYAUE7fzj/QvRb/JtElen+QZDpnaDHqlZFtbbIbINXLujEMaFNSiyNp05hKQBqpeM7HYHKyvpfXojshvnfPipGEUW8LLrA+/WQdMZYyG6XLL/QSSWgS7OtL7trKf5MgdrZDfeF7+LWZIPtqwVxuJpPMnetwm0OuDE=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2744.eurprd04.prod.outlook.com (2603:10a6:4:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Wed, 29 Apr
 2020 09:51:02 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 09:51:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: RE: [PATCH] soc: imx: select ARM_GIC_V3 for i.MX8M
Thread-Topic: [PATCH] soc: imx: select ARM_GIC_V3 for i.MX8M
Thread-Index: AQHWHgtrbOPFN34OUkSD4Duf25RuPaiP2uvg
Date: Wed, 29 Apr 2020 09:51:02 +0000
Message-ID: <DB6PR0402MB2760A8B8622129C856EE170988AD0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1588153215-2435-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1588153215-2435-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7882dc99-fe0a-478a-4fad-08d7ec22d420
x-ms-traffictypediagnostic: DB6PR0402MB2744:|DB6PR0402MB2744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB27446907297366175475ED8D88AD0@DB6PR0402MB2744.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03883BD916
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h++yIc/YXubT5oTN7we0Mgqc+P+I1LcJGkZiJGz0nD52bH3d7X2BQPnahz6Jgoi55HpSaqnaA/zgnKBnDhDUzDleoeRpaF0gUO7RH87TZWdfi21CmSDDogVj8Z7pHM1DpBh2gNNSlujP+PYUSnNYUWkLjvS40ksQSIuzpQ1+VxQBGwvqKOLdL2GabnUN9B+Cv5Og4kYHdfs/LrfSsgB4gdVAr2EG7rllgWnToW93ZaIy4C7qlooN43M0AQAkDYvvaE3P6m7d9txl3wGq3j/nTPlyPBmJ2/L8j6xoLGfRoU7TfRTi0/jMYZ4MWErjIQTgzqd+SpFdA/FubzFwtU134ukAGorxtgK2+b+2dvtI6bbnSvMVSfLxYVzyxIjf0pjre8jjTv3TYkI1FrhKy32EMIzNtgrTCuV+061d1eIb4kHiswG2XXGaoHwApaJ1nmxVOG7oBF/hsQ/B3+YPy81MEdwDP48p/evVr7mEtPtKByKGSh0yFRl1MbKab0bcQj9kZGec22q/4+/pNbJzcv++BA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(366004)(346002)(136003)(39860400002)(54906003)(6506007)(8936002)(44832011)(52536014)(33656002)(7696005)(478600001)(110136005)(5660300002)(8676002)(86362001)(316002)(186003)(71200400001)(66446008)(66476007)(64756008)(66556008)(4326008)(66946007)(55016002)(26005)(2906002)(76116006)(9686003)(966005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: IptbIWl8UuN1XYIYFtNckle1c3Uvy0c3F0IbDfdwKfEeCz3kFvr0r5vCSX+n9kszj7OuGPnTZSF0oxhx/s3Qxv2OOOuayizalnh+TMLhzt2bGdqdq+mnNjucNUT//rWwHFPibzgNvxaH/wK9+tI3AjWqGxIgzgt1FQCiL44FceusWGWUTcyyaCl8XFENGDYjAUB3B4RauB6wEVYIN+Gd0rVY2XxY7dXbnEZ8lnyYom0BlPlq6tMvaGAB1u35d4+64yUDp6YQI22RAKmfJ5ubYcn8tPZgdPGzJI/0nTeRYykQc5T3Iy0V0ATJVXrPxs62AjjJLUXDReg9k69Kwfq5DBtGtaqHSaRx2PMVB7DqOit2XuYV4NLSmsOX68rW+v2vN0ETJgTNHTxEGURzHzjxqalEgDYeQ1jmGL7fuiR20tJScVOKJjmf1joMldsJzmTZ/Qa5SkRdR7OZPGCUXtJlTAZ1GS9rTV6vcRaIqX3f1to2huSvlQUkyrG1rYwiiFZyOxayr4wwzb9Pv38hFntyzWtt8kfXCO2xnVQDTfiydgBNNFNv9wQwYsGm24WzQnrYIU1gXsQfv2rG3M37S5UuDfjY+7LZ1+p/vYgE1PokxxULtkNLnoT8TWR6Sq8o5SJlr2ksejneqJZHhzDzDn/IIw8bopul+fHW05/xdO+8KR4A99lZn4I/6oiNtQJ/AU4Fv++DIu3QiwFWeWStUhNzZQpJCDSleV38l9A54zxZ/7899ZZo/EfY/SgmoNgOwrLGJHUS54M4yIjta4pzX9PanNSIdNJTWK+ETV4ZDP9FHTw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7882dc99-fe0a-478a-4fad-08d7ec22d420
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 09:51:02.6415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EQTeiHZv8L4hNaJWxBNdjRNpcT8MvhD1tcCOEm3A2EA8VqJcK8UXClmob644A3LnggTrVHzhslhcKF74FswcCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_025106_545434_02CBE034 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.42 listed in wl.mailspike.net]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> Subject: [PATCH] soc: imx: select ARM_GIC_V3 for i.MX8M

Forget to use v2 and mention that this is resend
https://patchwork.kernel.org/patch/11435941/

If you need v2, I could resend with v2.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32 mode linux
> on aarch64 hardware. For aarch64 mode, it not hurts to select ARM_GIC_V3.
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/soc/imx/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> 67aa94b2481b..f4006b784312 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -20,7 +20,8 @@ config IMX_SCU_SOC
>  config SOC_IMX8M
>  	bool "i.MX8M SoC family support"
>  	depends on ARCH_MXC || COMPILE_TEST
> -	default ARCH_MXC && ARM64
> +	default ARCH_MXC
> +	select ARM_GIC_V3
>  	help
>  	  If you say yes here you get support for the NXP i.MX8M family
>  	  support, it will provide the SoC info like SoC family,
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
