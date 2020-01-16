Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18B713D918
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=I+43d7arIvntNIQRiulO8TjRT23HGIE0NQ0pECbx6lA=; b=YCpkhl+xOV/eib
	3SsTFdDmxQc9E1KaMe33lzuSiaf75vX0EVq2wUrs2gGhdzeW6eMhC4kdR63kgx2dZIJgLRVZAtVoM
	W6iaNNHKXCzV8T1nsoTukmTrqgt4hSSeyDSixpq4RKe62emMoZ7kGQoMEjLc1o4L6MeHwktzygWiA
	JxBnPTFKAO/qbatLV23DGQZO7l6CF0HpaxzzXhlCKiUo1mOTbB8ZX2w1iD1aTeU3PU0EWQh6ooBXW
	PM5yK3Hbv1o2M+a5eWJ5tgt4113UMuCtatV70hCCZofaV443Ms5wXWT6Vu+uBZOjNggOpZPjZwaCg
	pJAJlHUt/hThVBfE5HAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3QG-0007r4-Gh; Thu, 16 Jan 2020 11:34:48 +0000
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Pq-0007dx-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:34:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYwjU8IMDuYLntjRCDwswlEsNoBmkQ70+O5jcVh7CyRichM3xcONv+BLVHFizRWv4Kg5Ua6oShtiXSmtV4z5+iOKLQPzL0V4I01SRpNWHvGFOu2R0lbT176eXolW2Zv3K0W/LsCalMoz4qx8rPj2daIJ2QiXnYukkypku5LztS2naLwP9FbnYWSPo408wEwl9GrFA/LD24j6R2pKnS5ykSeIpi5CDrgBEIRJqlUbDF7yq9GmJbsLb89H2BcPKconbF1/8pl2SwY2a7f7/G+q+5Lj9AWLlpcPu7851M8QwwT8EmAzFsPTtAhvX/I8gABkT5cVp58ECamg0eOMkTADrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7vftZODp7N45v2I6k/5mp68xKFfdE5FTVnZFi7YVVU=;
 b=RkQAkr5P2KxTXE1ElrzpsNtXIMpSoq/4MJ0PFRqEhk0bZ/TXKne0O8CFgrreGwhDYUThWzZCuh8hS9EeAEjwU6BHJx7g0ARTnWokmqu1r90r8jjsj8PMqES2+jnUanZL09tiT5EJkSWix3ItzekwO7WTy/8Dg5BtQbvj7a4LTI5yzTZmAadXoCY9JuyWa9qllgkVsISsjx07I3hvlF0uHK4oQUTb9dQZzwxN1CqZfGL8j5ctSlGRMtHxwUfAVMXMVivc5VBIB25p7yeGEh9MnMewmDVxNYBjbMFZK8q3xFQouJfF9Ebu2r8svMSWfiGUUKBDXIxuzseQWs1Y/ocoCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7vftZODp7N45v2I6k/5mp68xKFfdE5FTVnZFi7YVVU=;
 b=mHJ6roZzWDplPjZEBjIoHsbggZ2qM9rZtHnAnqUPWWvrdm8J8anYjE13VqIMa83WWKDWzwOWTYOOGP0A2hV9wKB2CsxTLNcWUwf/onojGgcT2u4OKM49GdOpqtgpn8w57M8dOhOEHoC/jdeM0qG8NMzrMPuHiy1Lgkyxd64G9uE=
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) by
 VI1PR04MB7184.eurprd04.prod.outlook.com (10.186.157.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 11:34:19 +0000
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0]) by VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0%6]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 11:34:19 +0000
From: Iuliana Prodan <iuliana.prodan@nxp.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>, "alexandre.torgue@st.com"
 <alexandre.torgue@st.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "mripard@kernel.org"
 <mripard@kernel.org>, "wens@csie.org" <wens@csie.org>, Horia Geanta
 <horia.geanta@nxp.com>, Aymen Sghaier <aymen.sghaier@nxp.com>
Subject: Re: [PATCH RFC 06/10] crypto: engine: introduce ct
Thread-Topic: [PATCH RFC 06/10] crypto: engine: introduce ct
Thread-Index: AQHVyuLpwfJViqB/TkiZAIjgROs28Q==
Date: Thu, 16 Jan 2020 11:34:19 +0000
Message-ID: <VI1PR04MB44455F7F7830159B6ED336648C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
 <20200114135936.32422-7-clabbe.montjoie@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=iuliana.prodan@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 951b7343-9be3-449e-05a6-08d79a7806e4
x-ms-traffictypediagnostic: VI1PR04MB7184:|VI1PR04MB7184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB718406D5E0075A2B652C9D828C360@VI1PR04MB7184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
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
x-microsoft-antispam-message-info: KbYVuIPnPrrb+m7mEkr2F4fRlKHoxdg1nnjCv7U1IpeoXtL2mupxwKTt30I1TD4ptalvD8jpa99FOeMt3+j8/buAtqSnDaD5TXkpRQClqTRaVMWXUh1ZdrAaNeA7VQOtt8Se5H45hSG5bavNDjqcmBudsoh6CIRn6PqNYrHGJZ9j8XLRNk54QVALG/FWuTI2NvcHt9gYpD+tGULjiA/Qiv8Mpg8CDz9O68DlwrrEECrZmjWty/2QbL79zlanR0KVkuND8rSArh873+y0V053glbYV4I//S4DlxVvUTUlLP2f58U2FZJn6pIlKURrP6aVElmjNb+K2xI6SY2Y4IV8HBL80CZVKQydw1V3kDK9BNw2un+5UxUCJrWYQdKkKHwOQmYQN8sXYKUpMIUDc/tCUJzzqhFs0IpRRTnh42KWxTDf0ts5D1zF5TzTNjgqLgpp
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 951b7343-9be3-449e-05a6-08d79a7806e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 11:34:19.7385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XQ5imzjKGCbotMlIwqAkYw8oVvujyTv5ed/SwmjOwKcv5lA6Lbtvw60HNPot6i0Y1Ca8xZ4T18bfa6QrhhID+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033422_586720_1EDE019A 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.83 listed in list.dnswl.org]
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
> We will store the number of request in a batch in engine->ct.
> This patch adds all loop to unprepare all requests of a batch.
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>   crypto/crypto_engine.c  | 30 ++++++++++++++++++------------
>   include/crypto/engine.h |  2 ++
>   2 files changed, 20 insertions(+), 12 deletions(-)
> 
> diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
> index b72873550587..591dea5ddeec 100644
> --- a/crypto/crypto_engine.c
> +++ b/crypto/crypto_engine.c
> @@ -28,6 +28,7 @@ static void crypto_finalize_request(struct crypto_engine *engine,
>   	bool finalize_cur_req = false;
>   	int ret;
>   	struct crypto_engine_ctx *enginectx;
> +	int i = 0;
>   
>   	spin_lock_irqsave(&engine->queue_lock, flags);
>   	if (engine->cur_reqs[0].req == req)
You're checking here just the first request, but do the completion for 
all? Why? Shouldn't we check for each request if it was done by hw or not?

I've also seen that the do_one_request is called only on the first 
request, from the batch.

In your driver you do the prepare/unprepare for the whole batch at once, 
but not all drivers, who uses crypto-engine, are doing this (see virtio, 
amlogic, stm32). And I don't know if they can...

> @@ -35,17 +36,20 @@ static void crypto_finalize_request(struct crypto_engine *engine,
>   	spin_unlock_irqrestore(&engine->queue_lock, flags);
>   
>   	if (finalize_cur_req) {
> -		enginectx = crypto_tfm_ctx(engine->cur_reqs[0].req->tfm);
> -		if (engine->cur_reqs[0].prepared &&
> -		    enginectx->op.unprepare_request) {
> -			ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[0].req);
> -			if (ret)
> -				dev_err(engine->dev, "failed to unprepare request\n");
> -		}
> -		engine->cur_reqs[0].req->complete(engine->cur_reqs[0].req, err);
> +		do {
> +			enginectx = crypto_tfm_ctx(engine->cur_reqs[i].req->tfm);
> +			if (engine->cur_reqs[i].prepared &&
> +			    enginectx->op.unprepare_request) {
> +				ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[i].req);
> +				if (ret)
> +					dev_err(engine->dev, "failed to unprepare request\n");
> +			}
> +			engine->cur_reqs[i].prepared = false;
> +			engine->cur_reqs[i].req->complete(engine->cur_reqs[i].req, err);
> +		} while (++i < engine->ct);
>   		spin_lock_irqsave(&engine->queue_lock, flags);
> -		engine->cur_reqs[0].prepared = false;
> -		engine->cur_reqs[0].req = NULL;
> +		while (engine->ct-- > 0)
> +			engine->cur_reqs[engine->ct].req = NULL;
>   		spin_unlock_irqrestore(&engine->queue_lock, flags);
>   	} else {
>   		req->complete(req, err);
> @@ -109,13 +113,14 @@ static void crypto_pump_requests(struct crypto_engine *engine,
>   		goto out;
>   	}
>   
> +	engine->ct = 0;
>   	/* Get the fist request from the engine queue to handle */
>   	backlog = crypto_get_backlog(&engine->queue);
>   	async_req = crypto_dequeue_request(&engine->queue);
>   	if (!async_req)
>   		goto out;
>   
> -	engine->cur_reqs[0].req = async_req;
> +	engine->cur_reqs[engine->ct].req = async_req;
>   	if (backlog)
>   		backlog->complete(backlog, -EINPROGRESS);
>   
> @@ -144,8 +149,9 @@ static void crypto_pump_requests(struct crypto_engine *engine,
>   				ret);
>   			goto req_err;
>   		}
> -		engine->cur_reqs[0].prepared = true;
> +		engine->cur_reqs[engine->ct].prepared = true;
>   	}
> +	engine->ct++;
>   	if (!enginectx->op.do_one_request) {
>   		dev_err(engine->dev, "failed to do request\n");
>   		ret = -EINVAL;
> diff --git a/include/crypto/engine.h b/include/crypto/engine.h
> index 362134e226f4..021136a47b93 100644
> --- a/include/crypto/engine.h
> +++ b/include/crypto/engine.h
> @@ -50,6 +50,7 @@ struct cur_req {
>    * @priv_data: the engine private data
>    * @rmax:	The number of request which can be processed in one batch
>    * @cur_reqs: 	A list for requests to be processed
> + * @ct:		How many requests will be handled in one batch
>    */
>   struct crypto_engine {
>   	char			name[ENGINE_NAME_LEN];
> @@ -73,6 +74,7 @@ struct crypto_engine {
>   	void				*priv_data;
>   	int 				rmax;
>   	struct cur_req 			*cur_reqs;
> +	int ct;
>   };
>   
>   /*
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
