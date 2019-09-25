Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA4EBDEAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NdS6IrvmteVtY2xVSYwUJsFTOhmgSLoNEj9Fqn0WX/A=; b=oKS7gU/F4mzfX2
	wweK5tnOpd5kZxU0aOVmsVbGMqxA3ZkPWrgLGa4XU8qwFru49qVmSWyYI3qwFtahpX7vfEKlN9amI
	MalWr9jY0cz9liHxXtCG6raIm1Uk9rc3yxWYsnCsUy32E0csl4/wv0Xcegj6GoEfi28wTSZoBA/04
	OKxtllB4tGyGeAVqnLrW1MDbDAscPiXnD780vC85qE4XEJWUlxcLh5FMeK1K/tMhXrLczkVFZJgIF
	GiQXgDR0MSpSlpguZNEbg5p+1oDsrJJh3p1bEKDi6zGWyM4qw8R7ElS1+al2OpuRAKMuy2+2vCIhd
	kBHD1yxcC93Gm8oX3nbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD76t-00048G-3Z; Wed, 25 Sep 2019 13:13:35 +0000
Received: from mail-he1eur04on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::619]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD76R-00045e-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 13:13:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6cgG2Jr5FdXOsOuMwUtwTY0q4NYmyaidMv1eCjmliXzWgGwlUFDcgH3AxbZy5qKFlOpETM+cw9LcgpyNhGaZqDRz9PhJ2zRXXB0qQeC3gOzblBezTa0k58kMQM1ogOkdV1V4+sJMKyxQ3LxGgpk12Pub2g7Dloz8HqzNaBKyiQd8mWelo5zzyYwyYF+VVQxQD4E+zHcovZU43FWYscYOJr6RGA8l1YhyNLQQmhe9jy3mZbGwQqZzs3Scxj7w78cHPXCSwc8Ji7eptV4R6BlMCFQBlUc9bW7LE937qbaskIDyVkCYTWmoekEZN7gErVcRgEX52/t2tZTnFkjGmNoVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yijX3nsW6Eu8F/x5H+sE1PiV9eRcmfiPEs8Eod6KO5A=;
 b=V9NqwJBfJQM9/5FYUnAZhVWV65oBgLl0yuNX3m6CYFAV/5NIvVRxph6vFtPblmwfWpWBxVmKR2K+LXu9FzymyrTv5r2X12Tksq9GIlMJULlUPMf+ZIikcJw83i2skQVfac5jA3yWNVBHrzFCJlFI2iCkib/X/W/97hV4zNPbawqjYImrvBmqCCLUb/uDxYROjN9K+kPeJMYXIuB/4kr0Ms4pDLNjzRHBXDaWmdqOtadLjnciUQq6fChzgoO2eaw4b/DaKZ5DT3VyOxFNp7kK0CoyZacaBREukoD1pP8zkp3r4iM02ibW0zglZcPkEgBgVZa1oF2Hi9nVdKUB78UrsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yijX3nsW6Eu8F/x5H+sE1PiV9eRcmfiPEs8Eod6KO5A=;
 b=IiPGDc/v959ZurmIg6Lrb9AxOtwCjPBCiCXZiYOAeguv7110EgSkbp610R1A0tpw6frmiP3lUix10Bz9YfGKIeJLXP0067qRU1dCVztmhNCB9HnS8+8ewkn4l2eKhc+wOPOhLLlXPZO7VqHo2c9i6Zsb3r1fAEnM1O76g9ZqEXM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1SPR01MB023.eurprd04.prod.outlook.com (52.134.18.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 13:13:03 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 13:13:02 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lSn4nBMGf230anvZh0PllY6g==
Date: Wed, 25 Sep 2019 13:13:02 +0000
Message-ID: <VI1PR04MB70232DEA67972332611480CAEE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2526283c-1931-412f-009b-08d741ba18a9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1SPR01MB023; 
x-ms-traffictypediagnostic: VI1SPR01MB023:|VI1SPR01MB023:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1SPR01MB0239392B88A58BA2D3E113BEE870@VI1SPR01MB023.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(199004)(189003)(6636002)(316002)(102836004)(186003)(26005)(305945005)(6506007)(7696005)(8936002)(5660300002)(53546011)(76116006)(66946007)(9686003)(76176011)(7736002)(66066001)(91956017)(45080400002)(54906003)(6306002)(478600001)(66556008)(66476007)(81156014)(110136005)(64756008)(25786009)(66446008)(8676002)(71200400001)(71190400001)(86362001)(81166006)(229853002)(3846002)(6246003)(2501003)(99286004)(33656002)(6116002)(14454004)(44832011)(55016002)(2906002)(446003)(14444005)(966005)(4326008)(476003)(52536014)(256004)(486006)(6436002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1SPR01MB023;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 66u+VoyOVB0RdKZ0ocp5uO9BaQSYUkMSetPZaxq86rSvYvFHXVeEjfto7tyV70LC371fmfcJxnFBcbVPtnanA6jAk1tjnNUDrD9hZbBvXt+1gMc3VxaRqhKagu0FxfiHcNq1034/PSRDkssAJ//a5sqiCagxFdZROr8VmGH+Wra8pTwIqkTvSl7QwCyWabCTJZnHzKCN6sG901QPSIte8HYS5z20bi6YiAgtmTNP9AtjwipXVbI+pkStgUkPz6Ys4bxsU6Ry37he+OeuCsAq/XoBiOGcedOjB22qsmpmqz4GDGcV5e2aXjrCcjEu25AgycE0Tr2i4lNcsZMYPRJDyMzUfb+ryc15YgrAWFY5roXM16zDB/Bsv1pBVXYHS7XdWloNg/+Sjj/pn6EWPHMhIgzRqLJo02w2saNhsRoORqGMIE/RgreqF3jW3tNmPRBcZ2FUzpdNCYq+9C7IY7GQhA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2526283c-1931-412f-009b-08d741ba18a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 13:13:02.8264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2ZvYu/9RCXozIhCIO+YRWSZ88ZLHxrJ/LeexbbRmitPfGQrW6/v1GrL7J6WOLK9uCykYC5EL0SfwG6XHwer8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1SPR01MB023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_061308_184608_732C24BD 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:619 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.09.2019 13:09, Anson Huang wrote:
> The SCU firmware does NOT always have return value stored in message
> header's function element even the API has response data, those special
> APIs are defined as void function in SCU firmware, so they should be
> treated as return success always.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> 	- This patch is based on the patch of https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cc0ced6cd07f04023977008d741a07367%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637050029712216472&amp;sdata=Ccq%2Fb2RJdMqmnL7VXrl8YhOlUwC7bWiUG%2BNmiw4OsSM%3D&amp;reserved=0
> ---
>   drivers/firmware/imx/imx-scu.c | 34 ++++++++++++++++++++++++++++++++--
>   1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index 869be7a..ced5b12 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -78,6 +78,11 @@ static int imx_sc_linux_errmap[IMX_SC_ERR_LAST] = {
>   	-EIO,	 /* IMX_SC_ERR_FAIL */
>   };
>   
> +static const struct imx_sc_rpc_msg whitelist[] = {
> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func = IMX_SC_MISC_FUNC_UNIQUE_ID },
> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS },
> +};

Until now this low level IPC code didn't treat any svc/func specially 
and this seems good.

The imx_scu_call_rpc function already has an have_resp argument and 
callers are responsible to fill it. Can't we deal with this by adding an 
additional err_ret flag passed by the caller?

We can add wrapper functions to avoid tree-wide changes for all callers.

> +
>   static struct imx_sc_ipc *imx_sc_ipc_handle;
>   
>   static inline int imx_sc_to_linux_errno(int errno)
> @@ -157,11 +162,24 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>   	return 0;
>   }
>   
> +static bool imx_scu_call_skip_return_value_check(uint8_t svc, uint8_t func)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(whitelist); i++)
> +		if (svc == whitelist[i].svc &&
> +			func == whitelist[i].func)
> +			return true;
> +
> +	return false;
> +}
> +
>   /*
>    * RPC command/response
>    */
>   int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>   {
> +	uint8_t saved_svc, saved_func;
>   	struct imx_sc_rpc_msg *hdr;
>   	int ret;
>   
> @@ -171,8 +189,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>   	mutex_lock(&sc_ipc->lock);
>   	reinit_completion(&sc_ipc->done);
>   
> -	if (have_resp)
> +	if (have_resp) {
>   		sc_ipc->msg = msg;
> +		saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
> +		saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
> +	}
>   	sc_ipc->count = 0;
>   	ret = imx_scu_ipc_write(sc_ipc, msg);
>   	if (ret < 0) {
> @@ -190,7 +211,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>   
>   		/* response status is stored in hdr->func field */
>   		hdr = msg;
> -		ret = hdr->func;
> +		/*
> +		 * Some special SCU firmware APIs do NOT have return value
> +		 * in hdr->func, but they do have response data, those special
> +		 * APIs are defined as void function in SCU firmware, so they
> +		 * should be treated as return success always.
> +		 */
> +		if (!imx_scu_call_skip_return_value_check(saved_svc, saved_func))
> +			ret = hdr->func;
> +		else
> +			ret = 0;
>   	}
>   
>   out:
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
