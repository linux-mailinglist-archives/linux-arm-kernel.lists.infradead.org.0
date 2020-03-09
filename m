Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118517E162
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:40:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JL1XugP4SYgL7mNZQZy3hfrG8S91d7YFzH0Ao/TgCu0=; b=Njr1FWHgvgCjeF
	GrNPfbazCruQW3GVtaP0ezRyFPIgVoV/2Bt2V5x/mORDMylkAPUUF1LIcioz3fz9lQ2p7sHuEvWCz
	hXQtEm/iyXvuRnnVXtlqzI1luXGJKDQjAnNlVLCQdJ7lTdpm9O1wCo7EKBP7AHgmk9lGftJhsehxV
	OZuWpuVWybrIB+I5SSMIwo+B3r5ZuN3uMEL09n7fzA6n1q4N+0mH/7KnQcDfIQsKJ6NbfN9f7UB83
	S/iigxu/TeBL3h9QYoiOqosncKRWAS3oXuc/Z824tR37QIiHjnBbaiDsxoxyQyD3zzPXBs3DHKd5k
	U8tmGxtMA9YFz3rI+xHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIdy-00021b-9i; Mon, 09 Mar 2020 13:40:30 +0000
Received: from mail-eopbgr20084.outbound.protection.outlook.com ([40.107.2.84]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIdr-000217-1R
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:40:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lYnVjA3zP0uVnB8rHCxVNQe+5QyodIUayaujkMu6VnwRsaaWMcNA3yCwtciDCTdV98+OGCC2nP7eFIEKKJDdlJYLZ23KTqX0Uwd8oXJCwm3tF+8FKnojmzrJVvG1pAbxfDGyoYGEGS1YPK1PGWMPSmmu1jomsAfSoTtUchFiahE+ko1nS321pFFaLl3Zdft0Y+fpdnzdP7BYAd8u0oII/4sbXqdgT+jkQ/K2774Ku2xbgHth2QUne+KNpLk0Jl+s+7uJ4VgVGAUzQ5oPH0kNFirkyjjNRcReQFMKRKmVgekTcuqK/KH0rR7Z6e+3t51D/GjByps5AeCed7BvaMSjKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KMidsTvdLF3grg+vGMKuvpMmjkv8LS6hXSx26cqDJXk=;
 b=QpSY8l9FHO/wc3hjsJmg6B2bOt/moSWfNCea4GiTKBgf4K7nbkSaIG4Dbchh+u7CDwCm3KABrQXTxh23Ksg76fjaQbWFNCU26ge23LzIqz8yAI65oPgi4V2mS/Z9FoN+gCsDxVCZxNEOI8cuyDjbRtvQASEtBRXWjfZzL2l48FAV0AuOG7geNxz1+nzvKhK1x8mMLBNnVTt394v9VkW9JtEdfaUpotLlxnixwUeDPR4E0ToT96y5UTbOxU6LI2Y0DO5nhG2syLMv/CCMcA0gYWFUZ251reD2oxvzvArJKq+d5apfv8YMl+bskzWjHV3Wpp25mDZEGB4OBQ8aiDbsqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KMidsTvdLF3grg+vGMKuvpMmjkv8LS6hXSx26cqDJXk=;
 b=GcjkwchOxIzhFiZTSy+HdEn4sER+0yjIqpCG93T959cq6B5yvBcFaATIpgNJT5MPeCN2lJg5d/NEq9/Z9v+bPS1ilzBgauSyNpA13SYOtYgko5rYogcO+Svh3Sra2ZY+oXGjHmLvkLC94eTt0POQRGWwStXleLzAo55vK4pXxeg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6659.eurprd04.prod.outlook.com (20.179.255.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11; Mon, 9 Mar 2020 13:40:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 13:40:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "dmitry.torokhov@gmail.com"
 <dmitry.torokhov@gmail.com>, "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "wim@linux-watchdog.org"
 <wim@linux-watchdog.org>, "linux@roeck-us.net" <linux@roeck-us.net>, Daniel
 Baluta <daniel.baluta@nxp.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux@rempel-privat.de"
 <linux@rempel-privat.de>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "ronald@innovation.ch"
 <ronald@innovation.ch>, "krzk@kernel.org" <krzk@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>, "linux-rtc@vger.kernel.org"
 <linux-rtc@vger.kernel.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "linux-watchdog@vger.kernel.org"
 <linux-watchdog@vger.kernel.org>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av6lP0y7UryDUCSkdoJ2q6AXKhARRTA
Date: Mon, 9 Mar 2020 13:40:18 +0000
Message-ID: <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: de9658cf-a8b4-490b-12b4-08d7c42f67f1
x-ms-traffictypediagnostic: AM0PR04MB6659:|AM0PR04MB6659:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB665911A08592AAC8535CF9B288FE0@AM0PR04MB6659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(199004)(189003)(8936002)(9686003)(55016002)(7416002)(4326008)(2906002)(86362001)(66946007)(6506007)(5660300002)(966005)(81156014)(81166006)(7696005)(71200400001)(316002)(76116006)(44832011)(478600001)(33656002)(52536014)(66476007)(66446008)(8676002)(186003)(66556008)(26005)(64756008)(110136005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6659;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1PoFkMa15tZ46KLhGlyo8zb94cPa2Upb+OL0q3ee4X0V0YqwKW+AQxl6FSzVG4v6mKfhW1mLh7C+KdoQO0d4dfoWflV4vdEo25Utb7TeEDGEoi1E9xdRI0AIGcAkh9Kk6Ravpd/TXTAHCaOCAvvDi1tMcP9W++/6mZ9GzVTSUvF1WSp3AJG96njWkBc99H2Aho4S0zWFyn6Z3GaF2bfCcgsxbun8ReGZVqIiZAVnOECEI2MT4vN4JleGIhnGmiksZwVHG79cNYoDKNi8vswD7hiBQTvJa5tpi2FlHtHfl1zU8BvOMlDVSMSot+Nv08nooePpVF+Kh78n///rxfcKfRUaqLhPF91WeoJ6T12TI1IqpjEKkUbgE9ym8SveOobiB8Pfd0tFS6f+TaGYitrFv4ZDvns8fMcB/yY+d50dzQDRVv/6xahZHznJArPoEVmnDbHBgEnEGHJN+qGSDbsfQq3zN92EIXEPYIu28EsuU91lPmn3c30K9oVIBqRtMaHWpK7JOvDlRtbvB1j1abU1IFMVwCE0jgtAOmqQ2LzeXxAkolUKazlQt9IKx1v+JqksBMKIQOkLtDcajuXUuBJ5aw==
x-ms-exchange-antispam-messagedata: pq6kPcSrFhIFN19wWcF2MPiJKUHgunIozl4hXG9thhhS73JNDw9pyNrv6q2TMk9ufBeXJ9IbZaZ1ZW8IIQY+40ukMaV9smeK+FlgxGtC9SrWuBZDTVIatkSTFWxq17/nCn8ZOOJ5iDEmWcgR1kiVNQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de9658cf-a8b4-490b-12b4-08d7c42f67f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 13:40:18.0814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ESZRSNZMHriNm9xIi4xELVmoB4YRXTHo1mspcwwexasFf9vwa5SUQSPh1ypwMGGeCb3PCXU7ABBoTuGs1t0JQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_064023_083608_7380E9C9 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> Subject: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case

I have one patch pending reviewing.
https://patchwork.kernel.org/patch/11395247/

Thanks,
Peng.

> 
> Add stubs for those i.MX SCU APIs to make those modules depending on
> IMX_SCU can pass build when COMPILE_TEST is enabled.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- return error for stubs.
> ---
>  include/linux/firmware/imx/ipc.h | 11 +++++++++++
> include/linux/firmware/imx/sci.h | 19 +++++++++++++++++++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/include/linux/firmware/imx/ipc.h
> b/include/linux/firmware/imx/ipc.h
> index 8910574..9e3d808 100644
> --- a/include/linux/firmware/imx/ipc.h
> +++ b/include/linux/firmware/imx/ipc.h
> @@ -34,6 +34,7 @@ struct imx_sc_rpc_msg {
>  	uint8_t func;
>  };
> 
> +#ifdef CONFIG_IMX_SCU
>  /*
>   * This is an function to send an RPC message over an IPC channel.
>   * It is called by client-side SCFW API function shims.
> @@ -55,4 +56,14 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
> bool have_resp);
>   * @return Returns an error code (0 = success, failed if < 0)
>   */
>  int imx_scu_get_handle(struct imx_sc_ipc **ipc);
> +#else
> +static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
> +bool have_resp) {
> +	return -ENOENT;
> +}
> +static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc) {
> +	return -ENOENT;
> +}
> +#endif
>  #endif /* _SC_IPC_H */
> diff --git a/include/linux/firmware/imx/sci.h
> b/include/linux/firmware/imx/sci.h
> index 17ba4e4..022129b 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -16,8 +16,27 @@
>  #include <linux/firmware/imx/svc/misc.h>  #include
> <linux/firmware/imx/svc/pm.h>
> 
> +#ifdef CONFIG_IMX_SCU
>  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> imx_scu_irq_register_notifier(struct notifier_block *nb);  int
> imx_scu_irq_unregister_notifier(struct notifier_block *nb);  int
> imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
> +#else
> +static inline int imx_scu_enable_general_irq_channel(struct device
> +*dev) {
> +	return -ENOENT;
> +}
> +static inline int imx_scu_irq_register_notifier(struct notifier_block
> +*nb) {
> +	return -ENOENT;
> +}
> +static inline int imx_scu_irq_unregister_notifier(struct notifier_block
> +*nb) {
> +	return -ENOENT;
> +}
> +static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8
> +enable) {
> +	return -ENOENT;
> +}
> +#endif
>  #endif /* _SC_SCI_H */
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
