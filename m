Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436F4A7CDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RYYwZO9Y4MBpLS9woTU3CzsEqxKIaeJvVpOICmlw2TU=; b=u7LSVskAtYiE5Q
	yyKaC33ClF63ic0W9edmHwZq71nzNBJt01grNAETuqCyAyVMe1SpimnWNT8bcaNqes+UdI1OLFP7V
	87aB3YXIbez3ZJsGPT4xQSF3fzYyagnBHZHCMsxfU1wHgqbz4fme2smwlm34Jlf9ox4As6QwoBzdu
	wDoWxNjAlwnBWPSTrYJN06BVXwdpiii96+AFbO3jCySq6PdLiTQIJepTDX8gNRdqfqPWHG+s/EZZv
	mIilgDkVkK8KoK7nXTOsCmoSzY+pOgVlcOW8veDFsF4mYdXz7/OrAvXFHqaYoYPLeqiow8sYqunWl
	1m41mZtCKZBB+3n7mAWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Po9-0005WC-BC; Wed, 04 Sep 2019 07:34:25 +0000
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Pnv-0005VO-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:34:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGxlOYPUcaAeVVTJ9bGM2BQ02hzsdFB338ZktE6T+o8xNeQ8cbhMm/MsLhS8yeKIjIMKDB5L9LaBWbLQg7wRArm6qFiEh6YKCFyxCDq3NXrLkN/u621UKDVqxV+QodD55FWPajNy88zqilrl4aQM4rwZNFthDK6C14B4uHQ1GfXMsA5YT04F4t9wTe3jELsgwdZy0tDnGVInDmv6YoQSEfEgdNUKM8/EINNbr/zpaqDL/tp5bQvTXXVm9y3uhUtiZMyCPw7b8ufVcAh5kBv0vnxSaHsZBUobWM5o4TxNgOUzVouvHStLCDNRacvEy7wmJNqtcnKxqdEt/eJx3mAMtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6ZyFsO57BP6TrSD81oEt1mcaWQnh1PpYQj1J9rfekY=;
 b=RkIigE7nYLiLPHMDCyygU0XpZagNApOLOSKn7cDMJgHCUHp4l1705CpTYge3X7MQhx61ncMsHTae+iWnh2305YI6kKdMj1RFlQMcGmXetJSd30SX3UCVRVBGDWbqUxfVdKyy5CpaunywP6VHHxGiv4kgMn0b7RXhSYY0pU/e7TpgoZ8rE+vmQDs9isHlP2mCdKKeBer6YLNNJf4CYCbc0ph1a/+lbw+6iq7KiD1qpFj93qCQo7wMfZOEnK94zKU0xH2tyMJkp70kuIMr1wa7vjKc5fsbe4pfWSIlm7nW8wqnt3uA4gH/3n1R7wk4fZt33k3DDRa9MFZdexG3VO3xTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6ZyFsO57BP6TrSD81oEt1mcaWQnh1PpYQj1J9rfekY=;
 b=JOkaU1T5lMEGOq+CtCZz/XTpDWMHWe4eCOzTNpL15j85W1ISF/nll0Cz6VmNms2xMCsQ6ItwRexsPC+/MqofZtCpqlNbU3XDdWx6/s6AizHDR/NKkZlIL+tOMPAxCDorQfi0u/oFCuOLsH4QpvCtItibr98Pso13+ljlLVN7xKE=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4606.eurprd04.prod.outlook.com (20.177.56.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Wed, 4 Sep 2019 07:34:07 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 07:34:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] soc: imx: imx-scu: Getting UID from SCU should have
 response
Thread-Topic: [PATCH] soc: imx: imx-scu: Getting UID from SCU should have
 response
Thread-Index: AQHVYvBashyquDfUQEej9aDOPv0J5A==
Date: Wed, 4 Sep 2019 07:34:06 +0000
Message-ID: <VI1PR04MB7023B9C325C54AA8112F1AE5EEB80@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1567624394-25023-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40e1f21a-b14d-4900-12b2-08d7310a44e3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4606; 
x-ms-traffictypediagnostic: VI1PR04MB4606:|VI1PR04MB4606:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4606447F47127BF1557463C9EEB80@VI1PR04MB4606.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(376002)(396003)(136003)(199004)(189003)(486006)(110136005)(7696005)(256004)(3846002)(6116002)(44832011)(76176011)(54906003)(316002)(6436002)(14444005)(6506007)(102836004)(53546011)(446003)(55016002)(478600001)(2906002)(476003)(14454004)(186003)(9686003)(26005)(53936002)(81156014)(5660300002)(4326008)(66066001)(6636002)(86362001)(6246003)(74316002)(305945005)(7736002)(66946007)(8676002)(76116006)(91956017)(71190400001)(8936002)(25786009)(52536014)(66446008)(99286004)(229853002)(33656002)(66556008)(66476007)(64756008)(71200400001)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4606;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0i9qREzh4HakHv+UF2wxPXrhVBl1xZBR+dDyDGWaCv7ktANnBtfgb+EF8XLQZlFQnz1dhw5HlvZDFO7CkKK1K7sdmJ0EEUe8t68NCOGf7D56UrWtzhnrAIPS0S8bRwI5+W7iwZUIzs0bt4nFpM82IWtIg+clW8EPLoIU45g6KbYF9rgQup/jRsZo4gxH2bYz75J10psUXa75h2P9FPUDUcZQvzXpk2/Age/bmwjUPwi+D9ah17byTt9yGwdCLFuodc1cglyS2G4QF7PFvyd58Vxq3IgC7O2RNr9lJGaZM71mPQ4LvRSW748shjjNuZfXwHclz1USPGGHTg9B08eVau0oHhJICVM1zbJxR0q4hwiDt0UeprigvVOmo/p6OA/F5su2tt6lM1LlWPpC1TrpoQazCbfafqBMhTJlbloZ7Po=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e1f21a-b14d-4900-12b2-08d7310a44e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 07:34:06.9669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CFtEgeZZyaEgbx3MGjg4ZLCi9NNEBxBfkT8wMfnkXuazU5RfI9tU1ixifIjh4dsrAlP30H5nBlNu3g2LVGgfgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4606
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_003411_700142_021A0B41 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-04 10:14 AM, Anson Huang wrote:
> The SCU firmware API for getting UID should have response,
> otherwise, the message stored in function stack could be
> released and then the response data received from SCU will be
> stored into that released stack and cause kernel NULL pointer
> dump.

This fix looks good, but looking at imx-scu code it seems that passing 
the incorrect "have_resp" argument to imx_scu_call_rpc or just receiving 
an unexpected message from SCFW will always result in kernel stack 
corruption!

This is worth handling inside imx-scu itself: unless a response was 
explicitly requested it should ignore and print a warning on rx, for 
example by setting imx_sc_ipc to NULL when not waiting for a response.

Holding on to arbitrary stack pointers is bad.

--
Regards,
Leonard

> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> index 50831eb..c68882e 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -46,7 +46,7 @@ static ssize_t soc_uid_show(struct device *dev,
>   	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
>   	hdr->size = 1;
>   
> -	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, false);
> +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
>   	if (ret) {
>   		pr_err("%s: get soc uid failed, ret %d\n", __func__, ret);
>   		return ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
