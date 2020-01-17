Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0613A140EBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=zK582b3wv62ZoLDOszz6OrnTnfZcPHZWcYnUa+dsXFo=; b=ETXFJAVjKV4W3K
	twrKkPEmJaWSXm3a3nZ4A7qytfFjCRfrt4a4WBmJmK/3MYmQKamGxIVvzWzNwg7DupXrzGnq7f35T
	wEi2PGzRh8z9O4PkrvYaaz8lzx3ilNlRP8h8IJQuSrY8hWMibIPRfZnvKkYdgnsMVi09TelLEGEcA
	uFQAUEn7otjC/dFXT+dg9SPtSQZiv1ikIl5/mQjxp9OoRv/rSOH7hNhnncA1zDkpsXjAVmYtqmhw8
	nOT4ZsdtlMHgJKdp0oT7LH+NXJrO8n5W3oaF3P0b0u6f4sjfq/+Q777/nGsSlm8fGChhXphCMrhwz
	qsVLCSVGomrYep1UXkNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUFn-0008Pp-Rn; Fri, 17 Jan 2020 16:13:47 +0000
Received: from mail-eopbgr80070.outbound.protection.outlook.com ([40.107.8.70]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUFc-0008P1-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:13:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jcBTyJn5d6zJwCoLzjMNI1f16HGn/kLWQWa93mU4AX+vwuRv0JoPYCh5Nd25ozKWRmuMnuk7W9GGAS3LRNlLvFyJjEUDP1ZCl+KIdURikefhI0Z0rTfalQH3Y/mQrf/ZdsMXwGAGhXnyb0X86mLvXUSEop5HLN8dCTPICgp2e41eOf02LleBBxlB7+zpfvv2/2Kaxur6VR+sjoSVZBmqe9zE3OAy8kMBNeNp4V3Xafn9EDMnC1GXlcTJuAz4GyWMIK2qmmdUz4N0f05Gw/sKk2Lirlad5eP9zyv3r63ZVUMmXThy35EqHfskwov3A8ceud8Se5kLK4lwwV4RHIAGxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9/5kjcdWbAE5hk+kybYBb/gYZSew8nhRNQwAf06l5A=;
 b=acvrFPeqsCi269+EkJdmYv3+sFptYa25+AkFK6IQVKNevMlG9zh8a6Dh8819WkJXyVfPiC7eJXbvVLXugZdueJ42k/1lWIyamVsFjQlKf1VUhhJpQ5APjgU4FPlOT/z0gJIDieMTG0LXXjKFkmzkMPR8yTNfOPvSocMcs3yAOpQNM/7fJ10vBtS75SBRUWlMEI5dOHtrINtaSUInx9RyTEyzIM0T0oh+crnTPfntzrDtjqczhEru4RXmcQBboHhgx0O9HJJinJb5pPjf5czhZXOW9CDWllQVbjaQuOPz89ks78w0+VluUvBegNP649f4w+aKnDri1Bt92/jgBFRnjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9/5kjcdWbAE5hk+kybYBb/gYZSew8nhRNQwAf06l5A=;
 b=Mth8BhjJJN0yTo/anymVnmRYb+if+CwQH+ooWwSQ628bhTnw9u3pwdaK3xFTZQc1sURHa2Gf8ENppPTUMvPx3YBWdruFkiQT9zlL+cA8kvah2x6Ej3gEanArqWZBnWBKR9sG/L7Q3TIgack4yjnNCllPJc4ljA5CVbomN5jJ+1I=
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) by
 VI1PR04MB7200.eurprd04.prod.outlook.com (10.186.159.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 16:13:29 +0000
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0]) by VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0%6]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 16:13:29 +0000
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
Date: Fri, 17 Jan 2020 16:13:28 +0000
Message-ID: <VI1PR04MB444513CB6C188CCB4C2D13D28C310@VI1PR04MB4445.eurprd04.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 0b32e820-2dc4-44ac-09a4-08d79b6830a7
x-ms-traffictypediagnostic: VI1PR04MB7200:|VI1PR04MB7200:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB7200AD01282E826D12A76BCD8C310@VI1PR04MB7200.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:359;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(199004)(189003)(316002)(52536014)(71200400001)(6506007)(4326008)(53546011)(5660300002)(478600001)(33656002)(9686003)(186003)(26005)(54906003)(110136005)(55016002)(86362001)(2906002)(8936002)(44832011)(7416002)(66946007)(66476007)(7696005)(66446008)(8676002)(81156014)(81166006)(6636002)(64756008)(66556008)(91956017)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7200;
 H:VI1PR04MB4445.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l6tuzCOUmqfczgobZN22Lt6IM+m/HfuydCggoXywn7hjAvfb1XLshRODJG4u0SHpugL5CdAjx5Ro/c6VPrhIPlkCL/MxTEBK8ckIX4btlEjtRE5y0aGQqLcZWdQhO6p53gZo2P90A81SoumNCf7lcXQUKKR5HI2CHllB5ZH5ArLS3eBwBKF5eb28ByJ1eOK5YRoTti8/OMTMJhWqaajH0Pux6l0qejdGr9owPOrBhOXXC+biKCKowQosL1DFEFN15hLX+yW9HN/699nX/92KAUflAGikuwBtGGYuZcxv0Zlw1Dyj9LqO1fI7QhzZUvCgHihSj0mxqfWhgE5YIRs05N4BqorOaJhcRPcMrbh/0lzH/9kA5NpNTPXK5kKCmX3OJz6UdcSaQBO728USIzJRVz7183yLdUPZclnTP9Zci+H+0w/gU3tTxzzLSy8dJmfu
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b32e820-2dc4-44ac-09a4-08d79b6830a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 16:13:28.9934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X2v7iEA30IpudsRBvfQytitMgjkij35NKRRX/Nq2OAmzyL1obMlj2B7K8VqgGVbynb6ZeWvpocJme2AYdS9Zfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_081336_653910_0A50F68F 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
This should be in a critical section.

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
>   {
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
