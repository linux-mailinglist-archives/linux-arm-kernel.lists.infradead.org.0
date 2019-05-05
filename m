Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DBC13E29
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 09:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71ooyR8NcduvBxDehBlabLM+xdG3jIgEPtzZIz5ApsI=; b=fj1msBzKHw1PxN
	ajG5exqUZPGZafDGuwOItsgx1VtSUGBQWzLTSzJfPW+MyBqhQhuRHbo2Ks9+MOIt9feJWtizxXDwu
	G3uwnSigTI/R3cxqN+9x+ahv5TmD6uDbSzzcVND6CGBGrCdNnkpcYqBx5zmmXNIf3HhUUDghnl/9r
	S4V/WhwPDoevTGO40gjg0O2WVSOTzJHehcgk2bqhZZybD14ZzeNCxzb/HzzjORYKWGOJJrkwgo3qO
	34+aciSYLjezCzNYtTq6coXcHWHq68vuSSW5aUps4shhwr0o/mWmKghQmpKAN5HiCzSrimGf9ihh5
	R2XJ3UH+mctp+3OjC2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBbd-0005vg-NW; Sun, 05 May 2019 07:30:41 +0000
Received: from mail-eopbgr140073.outbound.protection.outlook.com
 ([40.107.14.73] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBbR-0005v9-Px
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 07:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JkvGQNK/ddM8eS1pTiZAvs1Z+zuAhMlIp1WRqYMFU4o=;
 b=LQeSlQNeRrQfcmvQG/4j0nU1jZVoYkseH6Qesj84ZyTPaM7AjGsY+j7YXgeGJtXtbQKF2Pl2+RoIFeV3JLoyF97nG9/UUmLiv72Cdu+VoC2ke/UvmrPPmqTm2+NOLdW1yGLz8yx99lCRLx/dXIwz0Lvo4R9aRVZd80gkl8GsqXM=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6531.eurprd04.prod.outlook.com (20.179.254.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 07:30:25 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 07:30:25 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH] cpufreq: imx6q: Fix the resource leak caused by incorrect
 error return
Thread-Topic: [PATCH] cpufreq: imx6q: Fix the resource leak caused by
 incorrect error return
Thread-Index: AQHVAvvcgKY/ghVFik+vqE7MN5XPPaZcInQw
Date: Sun, 5 May 2019 07:30:25 +0000
Message-ID: <AM0PR04MB42116F910886537F4C35AC8A80370@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190505043929.19071-1-ping.bai@nxp.com>
In-Reply-To: <20190505043929.19071-1-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b07a3144-438c-4e34-5118-08d6d12b8a95
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6531; 
x-ms-traffictypediagnostic: AM0PR04MB6531:
x-microsoft-antispam-prvs: <AM0PR04MB653155E60EFF2F8EA13ED01380370@AM0PR04MB6531.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(73956011)(66476007)(66556008)(64756008)(66446008)(68736007)(8936002)(486006)(446003)(102836004)(52536014)(44832011)(7696005)(6506007)(26005)(110136005)(76176011)(11346002)(476003)(186003)(54906003)(74316002)(99286004)(33656002)(256004)(25786009)(6436002)(71200400001)(2501003)(55016002)(71190400001)(66946007)(7736002)(2906002)(6246003)(53936002)(5660300002)(66066001)(3846002)(6116002)(316002)(8676002)(2201001)(86362001)(76116006)(81166006)(81156014)(305945005)(14454004)(478600001)(9686003)(4326008)(229853002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6531;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4vYv+CnxX8NrMQRBGRysa1I/KRKm9mLGS5E0tVGUpy8k0g7jBgvnGZGK1P3xbzbsVr5pqVE4xiOiAP0VT2d1p+f1RZYNoDIgr+1KVSMl2nuS8KPfR+oSPU7B+XYDHnfcTI605rTZ0lK5r1oTZRcfLY3fEh0RUti/M8n5Q5N7EZNzeoknmG0kzxVviMH0dCCTA1QIXVcO4JbwBTzeEbWOK1mdGr9MVu6qgccB7OhWGwYz+t6FdQgJBa57FFoyUHALbQVWKKotSwUVq/KECPPEiTxtyZbMB+T6yIyj2O7yhL2Jb8QbGjRUuqICfshk1O4Om8Nfrke0hhPhKWPHP4GBltYf0AjRBv7ffIvxl4X0bapEqxcJtqL3juGF3a9oEVnCucKUXn2DdvmtaUImzI8uzpD0HMiYk5cvZKKMfnW6B3o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b07a3144-438c-4e34-5118-08d6d12b8a95
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 07:30:25.7744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6531
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_003029_951177_EDA678E7 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Jacky Bai
> Sent: Sunday, May 5, 2019 12:35 PM
> 
> Previous goto only handled the node reference, the opp table, regulator & clk
> resource also need to be free before error return.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Better to have a 'Fixes:' tag.
Otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> ---
>  drivers/cpufreq/imx6q-cpufreq.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
> index 3e17560b1efe..1d4ecefaabc6 100644
> --- a/drivers/cpufreq/imx6q-cpufreq.c
> +++ b/drivers/cpufreq/imx6q-cpufreq.c
> @@ -383,23 +383,22 @@ static int imx6q_cpufreq_probe(struct
> platform_device *pdev)
>  		goto put_reg;
>  	}
> 
> +	/* Because we have added the OPPs here, we must free them */
> +	free_opp = true;
> +
>  	if (of_machine_is_compatible("fsl,imx6ul") ||
>  	    of_machine_is_compatible("fsl,imx6ull")) {
>  		ret = imx6ul_opp_check_speed_grading(cpu_dev);
>  		if (ret) {
> -			if (ret == -EPROBE_DEFER)
> -				goto put_node;
> -
> -			dev_err(cpu_dev, "failed to read ocotp: %d\n",
> -				ret);
> -			goto put_node;
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(cpu_dev, "failed to read ocotp: %d\n",
> +					ret);
> +			goto out_free_opp;
>  		}
>  	} else {
>  		imx6q_opp_check_speed_grading(cpu_dev);
>  	}
> 
> -	/* Because we have added the OPPs here, we must free them */
> -	free_opp = true;
>  	num = dev_pm_opp_get_opp_count(cpu_dev);
>  	if (num < 0) {
>  		ret = num;
> --
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
