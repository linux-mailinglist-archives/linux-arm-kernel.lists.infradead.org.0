Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A6A1FCA88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkEdiAl6T+qDVHcDBgFtd0hcxScRG2bOo4SR1oIshBM=; b=M8kMSSye9d4A2g
	izphciE/S57piwYIySPN4779G8LgpAUGeatorjuajLxFUg9NC3ScoaNWquSAMX4d8OvSS5WYhLd9l
	shyNpnWPEG72ffnRrPyBtWF+skcZQ8S4deIL/fIHHalRhM4mmDb+3DacE3mg2am1c7tPNA7DVYJMU
	OVztp7XW4fVsOHEMb1yIup7AXjPaXYriIBkRRtABbLBeD3Q+ACTunuAbklotfLqaXYRYZasX3M3Yb
	aBwdakAYwiyIqB4dubcWm0evWCCdIm7jCqiE7M3sMiWyMJ2n4yqrJHUhihZeWbFkbw3Xg0oBX3rog
	1kJRax5PY8aNkxHI84KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlV1X-0001wO-EM; Wed, 17 Jun 2020 10:10:27 +0000
Received: from mail-vi1eur05on2086.outbound.protection.outlook.com
 ([40.107.21.86] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlV1E-0000WC-0S
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEoAmhAjrMj3MIi2Qx0nhwWzgI7VL3e5fopTenAhbhOl35C2vESrNKBxq/JEZX7GwcrekUZ9sdZF/DR9LIcVJE6XPqRVAhWva2wexZeDgZTMnTSzetCoB4k3DPuqZv4ZmcJ1YsRvzKYi7JeSoXuPPQT9joiTpUB7GXXyiOYYAN6kjabLsfMMkT7EZeQkshNTcKN/EMxE+tlGfg3HEqMeqNu4HM5L/F9FHD46TRRMpnJHB+cmC2ehPrcPPUZUi6m7ToG4TFOf48Qea4xxXnvGwrNNhRzY+JK7VhtHAak87VBakApgJEpeJi7GjsHc18vPMQrw2I17R0ZA3r8H/UhAmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxf64OgTaC6lcGbbEbfInvceM1/NZWp8oGEn0hoBSSY=;
 b=P8hujXGguVYL84Guu76gzsqLOXKLa7B5EQSpVjkzmK0QUtO4nd5YpUtzHZXhssKRATysZVALolnuUdqQzVf9gl6SGxMPw/9kutwbpCkvnzwFnG89xep3f5wu7si44okXmzcqrGEX5mJDU8/X/J9SjbtfG43q0Hvy11T6inYxqLdn9f5D+/UBuZrNOWSfSv4AvdaX4EE/4d/M/GVEeC6p8EgQympuCzIpPK923tmOZ7t+ryLvMrQHFnftWVThRm0PHfC/KA/fG/DMjUpJ+JJAcHf75iK9opt9BeLGfp+qPwTibOx+eU20Lp0dXlzB8XFb6XEM1xpkXlbJi/F6wWXvuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxf64OgTaC6lcGbbEbfInvceM1/NZWp8oGEn0hoBSSY=;
 b=s9+ktiS/AhpGvy3cVYS7pTs93yGqPGxp7L9NEezk9ffvnDmGh511Siz0cnmUsa0A1PaU6UZeZgM+3fijYjD7PlzdtnO9MtG3iI9/0toR1solPRGd9vDWtlHTOaHBtOPlxmd9dWgaakuAfvpQ8pEtDma75O/PteM1fyP21VqgBUQ=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5432.eurprd04.prod.outlook.com (2603:10a6:20b:93::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 17 Jun
 2020 10:10:02 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 10:10:02 +0000
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
Subject: RE: [PATCH V2 1/9] clk: composite: Export clk_hw_register_composite()
Thread-Topic: [PATCH V2 1/9] clk: composite: Export clk_hw_register_composite()
Thread-Index: AQHWPjGiuQ2F29kQlUqqseTZxooV6ajcol7g
Date: Wed, 17 Jun 2020 10:10:02 +0000
Message-ID: <AM6PR04MB49665E5D93C2FFA8221F8660809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591687933-19495-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e55bc7bb-174f-4b33-1859-08d812a699be
x-ms-traffictypediagnostic: AM6PR04MB5432:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB54321C5852F49E5F4BC2CF8C809A0@AM6PR04MB5432.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tu70eWASn20Vf/QKebEZt/mSIDsicYAMAAFenYmfViUkDxEFHAq2wQHMhB2nDzh34t80Jd/K+CtUwdSSwD+gaSC/RiZb2F+oCTlZt81b3d+fKjbCHI7aDvx2HYpXpoSeyx5/jzjD/SAsAbP3ZsHMWUX6cjUVMoB+X7L/+hyLlVLNMuW0lYVfpFUwMP6ornPU1QDmfXhuepcXAf0H9ySMEogf8road7Co/tesjXZpOCZUMPce8cPztHd+YFzZmp2xaAJSisTQ5tJUaIky0ibxBdVj3FFAVUw0exXj/HIkrgevIMJVEhDVF8qdI7iZDw9+q39oAQ2P2N+zhIbmUqVp6BiVMoEirnIQ5Qxo5WcO2NlIEp5iumkvQU4Rn18VNhG6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(396003)(136003)(366004)(346002)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(7696005)(26005)(186003)(33656002)(44832011)(86362001)(316002)(6506007)(8936002)(478600001)(71200400001)(52536014)(7416002)(8676002)(110136005)(5660300002)(2906002)(4326008)(55016002)(9686003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /ZaNTPM8n/ngMzHoV9eanEI4hx5rJ+SjwkICBx11RiytKCQTZbFOB47Fkb+KhOHV8D4BRJMJjIl9InL/Cg9Ypfx3BsJoI9+WrHjO5KR5Qu1eaM7TgPTx1sQTyWPoV+1eqKC9lBT5ICgnsgieQfnCk7meTMv5CG44jyfwGtIuw5qzUuky7zINpUq1kQENQ/xP0D8cUM2IYwoE6H+y9kdK1m37Xw7hDBMXoNZwoHxpO0AumEfb97OWCG3LOgggirWF3cQgtAvFEB50AKLPZGo2Id7+sCcqEHXQNCy+uVIzJGWyXXiCqS+UeZs6In3VE0CMICmiBIR4/iGu3Qn7gwLI2LU/t6V5imf/prV6pglq+QsW0znhwbQp4ktjPiZuhlfraaOFG0HJgSPEpn0eS+ut7U4xwSZdp90HnP5+umjn9esv+jp68zjNBmj+Dy50aj4bUYcNnhEdqFR5/w5Fxsg1H0sUXYS6bUYp1UNUsU+6Tc6EOFgGuaO39xG60quMLPVZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e55bc7bb-174f-4b33-1859-08d812a699be
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 10:10:02.5338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7JFEvABr4bHcfbs7nF/TSlw++b7BPAoR5At2XfbMuHufSm6DxHjj5yzPvzOBYJA1AA5W7mhcV7QTLrS6UKKJ0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_031008_096620_93584131 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.86 listed in wl.mailspike.net]
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

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Tuesday, June 9, 2020 3:32 PM
> 
> Export clk_hw_register_composite() to support user built as module.
> 
> ERROR: modpost: "clk_hw_register_composite" [drivers/clk/imx/mxc-clk.ko]
> undefined!
> scripts/Makefile.modpost:111: recipe for target 'Module.symvers' failed
> make[1]: *** [Module.symvers] Error 1
> make[1]: *** Deleting file 'Module.symvers'
> Makefile:1384: recipe for target 'modules' failed
> make: *** [modules] Error 2
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  drivers/clk/clk-composite.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c index
> 7376f57..2ddb54f 100644
> --- a/drivers/clk/clk-composite.c
> +++ b/drivers/clk/clk-composite.c
> @@ -328,6 +328,7 @@ struct clk_hw *clk_hw_register_composite(struct
> device *dev, const char *name,
>  					   rate_hw, rate_ops, gate_hw,
>  					   gate_ops, flags);
>  }
> +EXPORT_SYMBOL_GPL(clk_hw_register_composite);
> 
>  struct clk_hw *clk_hw_register_composite_pdata(struct device *dev,
>  			const char *name,

I guess you'd better add this one as well.

Regards
Aisheng

> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
