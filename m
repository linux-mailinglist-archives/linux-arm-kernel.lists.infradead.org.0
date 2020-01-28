Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FFD14BD41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=p3BOxxuSn86inTW3PV6cG3obN8PMd5EIR0Ot9EE5zBE=; b=VnnuDL36O5GS1h
	BIbgkoj2KExB0RtWJVFf9DtPIJutNtPjbQzwLTQ3YtrrXjWUnopHD5Ow/hARZIl+YwRrKddY+ugPw
	NgkvMFhWMf9rgVjr10N3oFMC0SKxgsdi/bAqDGM5DtuUllvdxnM5B4bkfV+uyjbxVMzgLZ/nwbjQq
	DEz5CXXMpRkidR8XoMBM/1yi6HnyBdgpohocsKIpAKrh8xLI8dA7oODEjZxpE1DgJkCvl32NNRwqC
	MpRe1aC3FiQFVg0YUUJPhvlnoLHHdajnbEZH1gQ1ibAyAUUzQ0ZJVjqrcEvPe5jN3pcA9Hzkzal7y
	4L6I9niz+WUvR1KqM/mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwT8H-00034R-VP; Tue, 28 Jan 2020 15:50:29 +0000
Received: from mail-eopbgr140080.outbound.protection.outlook.com
 ([40.107.14.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwT88-00033Q-5i
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:50:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=By7BIZ2shaqK1TwbdlkTf/hJIg8KAgQFtGb/v18GY2OfVgrZyhlC1Hawfy004cCsY7Qg1cck2b34RzKUUSwy1P0TeEqCh/28VSSETuOJqH/scFzJ68PjgOie0cJvadjjUa8C8ayCyDpcDtNkiweerWKEtL7j4CI+zmeSOl3PyU31NI805umdIWW2ikdkvhPZwb0Aif9XZWFRBcoDNL1eLEzqx5SFBlVlHplHh2Tt4pCyVzz8VL0ot5zCw1trTnadYZjEC+g8H4MkXieATZa5oMSi4w1vybO06QeRKwPK8P5BQxjML3jYdLQFCzNqPJuvdCQ4vjmuhPczeafEvaWg9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mOzm/0tavGiYMUY2uMY5N4bzxWJs+ul+QnJrYXCt4AQ=;
 b=Dv7XC6hm7KGWSfUPG2k3yJXzWbOCtAeFfSLxke7hp6oZLVZL+weh5fN7H/726cqCrMK/66Wg1ayN8gNqFKKBcHAEMKnZ8UODj9CY5Ll7FUzUiEGWQr2Gu15Gl9m74cX0n1GofUi2s5p4rVfr2yModQaL0aShJCmOSd6XEJkkZBMY1xuwxwu5y7iPEdz+bVZO863p4wBUl3fr7ESweHgtS0MWYOKcFmLEwWBe64tVdPu5VBk5fnAGy7P+UF8XwxWE5pyk6tKmZkTN8VBT+RiAzlYTDw6lBMlchChEzDPmBECZ+J8AgzJzKfoi66WqlC8FPNrP2rS5Mbhbdshd89NnLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mOzm/0tavGiYMUY2uMY5N4bzxWJs+ul+QnJrYXCt4AQ=;
 b=l/3sqy9mBO4B+AQHUcuw0b3TuOiu974cH5DM/EBpTYbIeowyv+1ws0miirO6S09PTWO5fuXzcnC75pzvlvGONVL1S/iWGMppxxkhrhT1BS5HpZfhfqETMhvUDegqhKfbCQCPu3IcBU9cbKnRWwAS3l23YQLQWbK9M2409KM55m4=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3758.eurprd04.prod.outlook.com (52.134.14.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 15:50:14 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::85e9:f844:f8b0:27d]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::85e9:f844:f8b0:27d%7]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 15:50:14 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "herbert@gondor.apana.org.au"
 <herbert@gondor.apana.org.au>, "mripard@kernel.org" <mripard@kernel.org>,
 "wens@csie.org" <wens@csie.org>, Iuliana Prodan <iuliana.prodan@nxp.com>
Subject: Re: [PATCH 1/9] crypto: engine: workqueue can only be processed one
 by one
Thread-Topic: [PATCH 1/9] crypto: engine: workqueue can only be processed one
 by one
Thread-Index: AQHV0RErU4XkhL83r0qysobyMlLYdA==
Date: Tue, 28 Jan 2020 15:50:14 +0000
Message-ID: <VI1PR0402MB3485B787EA6BCDD5A5600BAA980A0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
 <20200122104528.30084-2-clabbe.montjoie@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f11a6f60-1b53-48d3-4620-08d7a409c41d
x-ms-traffictypediagnostic: VI1PR0402MB3758:|VI1PR0402MB3758:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3758AA4CC3AA84A217F2FC9D980A0@VI1PR0402MB3758.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(189003)(199004)(5660300002)(7696005)(26005)(186003)(44832011)(33656002)(71200400001)(2906002)(8936002)(55016002)(53546011)(6506007)(64756008)(66446008)(52536014)(91956017)(478600001)(76116006)(9686003)(66946007)(66476007)(6636002)(86362001)(81156014)(54906003)(81166006)(110136005)(316002)(8676002)(66556008)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3758;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5HLvYAl8kq+OkduLeeWErPQ75E2C3JzpZaNoewmoJawzV1HHYXMotZuGCF6/A00A9d4qeVZV5c0m2nu65ngKx9jz0DthFeqdyOs71Dxw9QZ1U129Jt6cVgdq7iF6nFL25OtyCw8BwCnd4pqWsm0kFQOWBb5ftYtBEGV7TS8Bei4v8Ss6Z7U5MbP7z2zVg+3/iYq3hbOMX5YwIVpvRn75j7xdfLDgEqDMt5agnh0iu0ooVpNLqzZQ9GieamMX+omhNoXg89/JUogZbqxoEbuQrzEPpStaEJQQnca+3f2TBaJz9l3yaJHcI+AXAGxkT1XOGx7Upfn8GTvKbkTG73dbFf/+a33OFBJ5dNBnHKAi3DPZw+k3HkzH5XYjtsdBOMi0Jsh4RCr1PXZub7V7iW+fZpAb1qOC6rXq8PfxWK3nBQbmt2NHzQxT3XyDh5abI6Yo
x-ms-exchange-antispam-messagedata: H0VihkBo2rCWd4HjHzTDJSbeKrCARRGiQBYiZxXbZZ0NsqtgEtzMdhRSSs0NteY1k9H9AFN6tDs261g7d7d9lrxK6y80T/FhoxQjT7dVParfo3ovRV2+cAalSXRQMyRwBx2wBpeLvghaV2kDPCZQkw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f11a6f60-1b53-48d3-4620-08d7a409c41d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 15:50:14.6441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +kNzlJIgiV16h0AQ1A94J101UrsS34r1J0/QYd5oOQ47SUGR89DSHG7vRNFc5hgL4I+GIhzAIqLwu2coHHW0/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_075020_325787_146CC864 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.8 LONGWORDS              Long string of long words
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
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/22/2020 12:46 PM, Corentin Labbe wrote:
> Some bykeshedding are unnecessary since a workqueue can only be executed
> one by one.
> This behaviour is documented in:
> - kernel/kthread.c: comment of kthread_worker_fn()
> - Documentation/core-api/workqueue.rst: the functions associated with the work items one after the other
[...]
> @@ -73,16 +73,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
>  
>  	spin_lock_irqsave(&engine->queue_lock, flags);
>  
> -	/* Make sure we are not already running a request */
> -	if (engine->cur_req)
> -		goto out;
> -
This check is here for a good reason, namely because crypto engine
cannot currently handle multiple crypto requests being in "flight"
in parallel.

More exactly, if this check is removed the following sequence could occur:
crypto_pump_work() -> crypto_pump_requests() -> .do_one_request(areq1)
crypto_pump_work() -> crypto_pump_requests() -> .do_one_request(areq2)
crypto_finalize_request(areq1)
crypto_finalize_request(areq2)

This isn't correctly handled in crypto_finalize_request(),
since .unprepare_request will be called only for areq2.

/**
 * crypto_finalize_request - finalize one request if the request is done
 * @engine: the hardware engine
 * @req: the request need to be finalized
 * @err: error number
 */
static void crypto_finalize_request(struct crypto_engine *engine,
			     struct crypto_async_request *req, int err)
{
	unsigned long flags;
	bool finalize_cur_req = false;
	int ret;
	struct crypto_engine_ctx *enginectx;

	spin_lock_irqsave(&engine->queue_lock, flags);
	if (engine->cur_req == req)
		finalize_cur_req = true;
	spin_unlock_irqrestore(&engine->queue_lock, flags);

	if (finalize_cur_req) {
		enginectx = crypto_tfm_ctx(req->tfm);
		if (engine->cur_req_prepared &&
		    enginectx->op.unprepare_request) {
			ret = enginectx->op.unprepare_request(engine, req);
			if (ret)
				dev_err(engine->dev, "failed to unprepare request\n");
		}
		spin_lock_irqsave(&engine->queue_lock, flags);
		engine->cur_req = NULL;
		engine->cur_req_prepared = false;
		spin_unlock_irqrestore(&engine->queue_lock, flags);
	}

	req->complete(req, err);

	kthread_queue_work(engine->kworker, &engine->pump_requests);
}

Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
