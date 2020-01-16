Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6FA13D91A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uxm1+rwrETEieyVR/nwW2EES7NenjombjxF9MXOd2/A=; b=dWkSIQkQS9IsrS
	dVyvKHYOEbhpvH4KcRLOCFGrNolFQyYF5c34oBkte5dHMUwC1L0OgnDESwMdOAqLPI8sYavX3RlqF
	99rOZbvU0979TUxQYhDIfrBkLIFDQ0GQY3I5h3kHR6LQPqieA20ZQ55JXcBOV+kkZ1zj88T+VBtbN
	4fF/FIhwjjO1ubCgpQdPkEQ6yB6Xjnm6lFcmg5wTN6I6N887LZGWCxTRDI9iCOy3gQ+D6U7Ns4iL2
	QHr//TOhTPdRcBpl6vKTvBcnafTAlcJaykeOrWjn0wV+LZElxWnVuD2wKquG5bd/icmgbVWyWXkDP
	gY1OupFqIHnBUvxBes1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3QZ-00085E-UD; Thu, 16 Jan 2020 11:35:07 +0000
Received: from mail-am6eur05on2051.outbound.protection.outlook.com
 ([40.107.22.51] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Q5-0007s2-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:34:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBen2DF7aLTd1dkswMX/kZdbRyXS45SwHN2kzADejY8nO4U/Q6dzcJFvIkYxJ3KBibi6my8mlQr/7A9UbtXfAnicygGhu+e9XKRQ+PC2aoOrva4+YnoPPoV8koVheVuIVdQpBDyS1Q0f0CR51ILn/MnxKVGlAYmavF34Sdxejva4TNHtLv5VgN24u8L71KWd984ThSmKBmi1ebfl28H176TiEb4Izp+oldc7izJXQyqWWTQWHCjdPFzHE4mdcq+aKITno1MNrtUxCJlf3SDQZgIwgF884aLLYrb8IQhv1F6Y7iVodgTXrg0SGZyqGNq8QK/e4zKBetv4TynrZzcZJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tiJ+M4QLhkh+5BI+alTVgquliUFQLGXcC9Cq/LKkQTU=;
 b=b90VE5zyBWqqY12L7l6rfH5l+fAXCp+MqniO45rjI+40dc7bYnsVEQP9SgAXZnZwnCEsZZQBtVB5qdMLsuhxTYe7OpNkUmftqoNbbjPgpwf9U0gtsGXH2Zf0JFvz08hCfCZ9N/FkzBO+l2XlBYw1Y0iAARWQPp7mRGhTo8NaDlg9jijmQGrz5FJ3yK548TATzfBAUThAlqhy1dOOKR4+MklD/GN27ujdG70Okzi/Z08cU2V0B9pkA5uRGz8HDl7/t/otNwrB6V/RHzGuJ6L5nYwSBm5uhQUO/IIsGh4aXwVqkxkDNLZBcvx3Zq1/s3DX13vBOVslLT9HqCmrtYTfIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tiJ+M4QLhkh+5BI+alTVgquliUFQLGXcC9Cq/LKkQTU=;
 b=HqCmx8tD8IPP+DE665t8t/FoPHotFLgNhUIxwnfOQYnIZftXgEWXx7RMWkpWxBORb0nZIl7vLKiiSvPR3vfCeTFzSpFMxQ1u1y8ZWTqbDEODV0MxqQSiQ/PvrAJKNTP5DoHxe+D3nzJ24lppRdKP6WZEIe8zXLUJBaRVZPL5xDw=
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) by
 VI1PR04MB7184.eurprd04.prod.outlook.com (10.186.157.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 11:34:34 +0000
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0]) by VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0%6]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 11:34:34 +0000
From: Iuliana Prodan <iuliana.prodan@nxp.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>, "alexandre.torgue@st.com"
 <alexandre.torgue@st.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "mripard@kernel.org"
 <mripard@kernel.org>, "wens@csie.org" <wens@csie.org>, Horia Geanta
 <horia.geanta@nxp.com>, Aymen Sghaier <aymen.sghaier@nxp.com>
Subject: Re: [PATCH RFC 09/10] crypto: engine: permit to batch requests
Thread-Topic: [PATCH RFC 09/10] crypto: engine: permit to batch requests
Thread-Index: AQHVyuLsCMmCcJsnqU6cDfOK2wZNrg==
Date: Thu, 16 Jan 2020 11:34:34 +0000
Message-ID: <VI1PR04MB4445182A8A827C3EA303A2978C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
 <20200114135936.32422-10-clabbe.montjoie@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=iuliana.prodan@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc7d1cc7-1848-47ef-f84e-08d79a780fc5
x-ms-traffictypediagnostic: VI1PR04MB7184:|VI1PR04MB7184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB71844E3EB904213FC2BF6A168C360@VI1PR04MB7184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:431;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(189003)(199004)(9686003)(44832011)(8936002)(6636002)(5660300002)(81156014)(81166006)(8676002)(71200400001)(7696005)(4326008)(2906002)(6506007)(316002)(66446008)(66556008)(66476007)(66946007)(64756008)(54906003)(55016002)(110136005)(86362001)(76116006)(478600001)(186003)(53546011)(33656002)(52536014)(26005)(7416002)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7184;
 H:VI1PR04MB4445.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K8NvZTVtd5OYewy94MF+rcoIqr+bSkh6Tos48cpcll6axwnooJkAscM+8NnYxMtBu158xTtB7wE71UO+MJHXhsNqTzRSWN0eTrrZYqr7W9G58uRD5uGCLmFk1lp1mN/egxGs6FTnRoLanfbGZBWuyCIR1nuC30GzZaJIX+nEC2gs12o46vxqPrSbEVD6CpogZb/6JwTmWHyHK0OeaFDil+NGf9WjSM7bR/M8d3o9TI2cFSqAYviZE+bBVN4eP3AwGDyg+q0YNFx5vv6xatK0GhrIVOxot3jX3lK+HVZkW6bmRQO6M42BWp8r8hsbTKjGZEfS9uZQIT92jVQeFn59urn7jOUY04fk+fgGXGjcMOcZxuN387Nl3k6g49ltL9g+tr9kxuKxBYG2Y2D6Vzo3yi/4+p0fqglV+qSzC++Vev96MycfEdm+vd2VwRlUGCLz
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc7d1cc7-1848-47ef-f84e-08d79a780fc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 11:34:34.6480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qDAKvTY8ZwVEF+2SRLCJRXSSdQd/L6gw0cPkXsr9rc471vpmjvA28c7qp+pMuhqr18orkZkdXIb9JkPsKffMvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033437_850815_E17D7749 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-sunxi@googlegroups.com" <linux-sunxi@googlegroups.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/14/2020 4:00 PM, Corentin Labbe wrote:
> Now everything is ready, this patch permits to choose the number of
> request to batch.
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>   crypto/crypto_engine.c  | 32 +++++++++++++++++++++++++++-----
>   include/crypto/engine.h |  2 ++
>   2 files changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
> index e23a398ba330..e9cd9ec9a732 100644
> --- a/crypto/crypto_engine.c
> +++ b/crypto/crypto_engine.c
> @@ -114,6 +114,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
>   	}
>   
>   	engine->ct = 0;
> +retry:
>   	/* Get the fist request from the engine queue to handle */
>   	backlog = crypto_get_backlog(&engine->queue);
>   	async_req = crypto_dequeue_request(&engine->queue);
> @@ -151,7 +152,10 @@ static void crypto_pump_requests(struct crypto_engine *engine,
>   		}
>   		engine->cur_reqs[engine->ct].prepared = true;
>   	}
> -	engine->ct++;
> +	if (++engine->ct < engine->rmax && engine->queue.qlen > 0) {
> +		spin_lock_irqsave(&engine->queue_lock, flags);
> +		goto retry;
> +	}
>   	if (!enginectx->op.do_one_request) {
>   		dev_err(engine->dev, "failed to do request\n");
>   		ret = -EINVAL;
> @@ -393,15 +397,18 @@ int crypto_engine_stop(struct crypto_engine *engine)
>   EXPORT_SYMBOL_GPL(crypto_engine_stop);
>   
>   /**
> - * crypto_engine_alloc_init - allocate crypto hardware engine structure and
> + * crypto_engine_alloc_init2 - allocate crypto hardware engine structure and
>    * initialize it.
>    * @dev: the device attached with one hardware engine
>    * @rt: whether this queue is set to run as a realtime task
> + * @rmax: The number of request that the engine can batch in one
> + * @qlen: The size of the crypto queue
>    *
>    * This must be called from context that can sleep.
>    * Return: the crypto engine structure on success, else NULL.
>    */
> -struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
> +struct crypto_engine *crypto_engine_alloc_init2(struct device *dev, bool rt,
> +						int rmax, int qlen)

I think one _alloc_init function is enough, which will set the size of 
crypto-engine queue (not hardcoded like it is now) and the number of 
requests that the engine can execute in parallel.

{
>   	struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };
>   	struct crypto_engine *engine;
> @@ -421,12 +428,12 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
>   	engine->priv_data = dev;
>   	snprintf(engine->name, sizeof(engine->name),
>   		 "%s-engine", dev_name(dev));
> -	engine->rmax = 1;
> +	engine->rmax = rmax;
>   	engine->cur_reqs = devm_kzalloc(dev, sizeof(struct cur_req) * engine->rmax, GFP_KERNEL);
>   	if (!engine->cur_reqs)
>   		return NULL;
>   
> -	crypto_init_queue(&engine->queue, CRYPTO_ENGINE_MAX_QLEN);
> +	crypto_init_queue(&engine->queue, qlen);
>   	spin_lock_init(&engine->queue_lock);
>   
>   	engine->kworker = kthread_create_worker(0, "%s", engine->name);
> @@ -443,6 +450,21 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
>   
>   	return engine;
>   }
> +EXPORT_SYMBOL_GPL(crypto_engine_alloc_init2);
> +
> +/**
> + * crypto_engine_alloc_init - allocate crypto hardware engine structure and
> + * initialize it.
> + * @dev: the device attached with one hardware engine
> + * @rt: whether this queue is set to run as a realtime task
> + *
> + * This must be called from context that can sleep.
> + * Return: the crypto engine structure on success, else NULL.
> + */
> +struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
> +{
> +	return crypto_engine_alloc_init2(dev, rt, 1, CRYPTO_ENGINE_MAX_QLEN);
> +}
>   EXPORT_SYMBOL_GPL(crypto_engine_alloc_init);
>   
>   /**
> diff --git a/include/crypto/engine.h b/include/crypto/engine.h
> index 55d3dbc2498c..fe0dfea8bf07 100644
> --- a/include/crypto/engine.h
> +++ b/include/crypto/engine.h
> @@ -115,6 +115,8 @@ void crypto_finalize_skcipher_request(struct crypto_engine *engine,
>   int crypto_engine_start(struct crypto_engine *engine);
>   int crypto_engine_stop(struct crypto_engine *engine);
>   struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt);
> +struct crypto_engine *crypto_engine_alloc_init2(struct device *dev, bool rt,
> +						int rmax, int qlen);
>   int crypto_engine_exit(struct crypto_engine *engine);
>   
>   #endif /* _CRYPTO_ENGINE_H */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
