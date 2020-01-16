Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080E613D90E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fuCcrOcJDSUe+7PD1Wn9WF12+cm18TvTZ9+atxT8FkQ=; b=TpP2sVJfZV4q/R
	RiDW+MQSs5sLkP0ancQSgMBkkwIiFlOJYCJSUtVJLbl8LMJroaq+rBOYiFaUaQBBUf329NPWNIL2h
	nFAMou/jkv+KRjQkDqjgX3gW2Bwzxt/gfFaFq14OBMm+YYmvE/1T/xZMC9FAlsE3gHL9XX07o+RWN
	hqDxaFofMus0LHBBWngLf7Tu7CCAbdIZ0i0Cmu+1HuckXqSmKHe2USyjsa1zgINIy0ra24ARtiAmc
	JlRo5X1dk31uChdFa5W3UaImo5dWmZQTh1JEHplaryQUp9wr6iGdvWRtZdPMMbsvaicNXS+JVINj1
	V/tZ+xyg3Hw/4QpV6hvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3PI-0007JT-Ac; Thu, 16 Jan 2020 11:33:48 +0000
Received: from mail-eopbgr40077.outbound.protection.outlook.com ([40.107.4.77]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Oz-000789-VC
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:33:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Edu6f/hMSugDEcp4T+Z+5CMddYosmPjiCB7/KsPcwBEcbept+rv0WwgWieUcpwt3Bu13dH7l/syNzw5ZnhseUrTv7XH84x6tcbWr6CSydM7uV1gDBXRks030aiAMx3rtjgPPCHkGDK0Wk4rkBF0fSzetyiqTkotrN+VhoYQ4bEzWxx4LeCzKMHdp+SK8LoaKe+/Kp/en1UBYBb1BeUoeqKi5jlCa1qdJbqWeUfm7SUJLT2AHOKmJnW6CNPVZBIX8df8zjleEiYH+5xw0aYeVntPaRHIdJKAN+L/eQxYc6nfNg6NPgLGyZ6wbTOF2ip5/B0BXl0GhIadZpRJ6949Gvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLK4dptaKQ7CadUFhnoUfi5mD3Sn2STd3SBpHB3BJxg=;
 b=egbtlWqPRIfil3uL0B+QgbcDjbfovAi5+ETWoZ1DqmzKOULSRX4R92jEd4vJsnoWCwpaYI0dpe3ZTGYrwUwTVqMrfHlPEKG/6Jx34gRyZxLMIFyGuppKyhkjB2Uq6ndGcdN8+PBqo2WbXA3j3KcsHacf5V5caVjaEdJIn+6Ypmi4FM/1GoigceqzvaKhEltBHgamW0MJ+lTcoMKBUhoM0+RBFyf4RNmReW2hrXZ4fmp1n3YWHaq5M3cVfyw2hNSw9jbnlbpJKhencf2c2sjH7gn55K7pB5AuDyN/4nbRrOw0roO9Ef5aPV3QdHhG4SzpaLAFhssN7/48nFBKDbWUiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLK4dptaKQ7CadUFhnoUfi5mD3Sn2STd3SBpHB3BJxg=;
 b=fXmXB8iLXO/qXlqJyD8qOK/2i/SAGhu1lXb8hFbXRnpsddwt7UXmupzfEvKd9E8/K7pi1IA5Jt1kDlv3AdhpEOuljRRkiolMx+6mZb6Tl8LMOljXAgIr5x6F/xTEXVfMnXriL8Ntlspz1EW7RjysPWcmXgHg5HYB2yf+qsbSe8I=
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) by
 VI1PR04MB7184.eurprd04.prod.outlook.com (10.186.157.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 11:33:24 +0000
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0]) by VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0%6]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 11:33:24 +0000
From: Iuliana Prodan <iuliana.prodan@nxp.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>, "alexandre.torgue@st.com"
 <alexandre.torgue@st.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "mripard@kernel.org"
 <mripard@kernel.org>, "wens@csie.org" <wens@csie.org>, Horia Geanta
 <horia.geanta@nxp.com>, Aymen Sghaier <aymen.sghaier@nxp.com>
Subject: Re: [PATCH RFC 00/10] crypto: engine: permit to batch requests
Thread-Topic: [PATCH RFC 00/10] crypto: engine: permit to batch requests
Thread-Index: AQHVyuLk2wbnW44m8UepRKaJfTtAiA==
Date: Thu, 16 Jan 2020 11:33:24 +0000
Message-ID: <VI1PR04MB444530675D82743E8AFFD8FE8C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=iuliana.prodan@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1d5a9d90-b3fe-4d22-6ab7-08d79a77e609
x-ms-traffictypediagnostic: VI1PR04MB7184:|VI1PR04MB7184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB718402F930445D0337809C4C8C360@VI1PR04MB7184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
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
x-microsoft-antispam-message-info: gWHsKfSsL91e+6s8YVjctFX847/SPxehsFV0sVqBu+sroqr3IPlcKWfU8YigJd2WZjAP3EFPfFZwNDDnFIuM7MOvEC+6O0swmOz435nb57ekb+xC2cQlYz/0vaTdBZPbGiocRGSPKzAckY/7A+mzPxEDwj3Dzru0n2o1vptGdVHX5yyblqYh4/y+QRLtZPr0xAWeu5IC3ogDqIWHcyM+TYne+OtzUqnB4Yx0H35gh++tMr3CCsthzsdQDpOazyaZeZW9RmawtZbZyykWduts7rckRtO+3MkMIKET3Tx/wnVsC3oPQyc3Af5+ry3DhLzR3TEZmD8xgg9gpjhoCP0msm2JUtNrZ4JHTFWhTaZAJpJo8C7r9llv+TV6wVbAsfiha8PuV9OFjudlVT2VN/6PNGdiUPwA5MbnqbSp8TxsCaT3n74OhCPA6dUyKsDz/nTx
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d5a9d90-b3fe-4d22-6ab7-08d79a77e609
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 11:33:24.6777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7RXfYQx2sYUXWh5YqK/16WWcX0Z7zMVcVhyGWBQkiM20TZ3jaYm3l7YuTWZbZvt4VeXoSO6OuFxiQ441c4v1jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033330_239418_53903C8C 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.77 listed in list.dnswl.org]
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

On 1/14/2020 3:59 PM, Corentin Labbe wrote:
> Hello
> 
> The sun8i-ce hardware can work on multiple requests in one batch.
> For this it use a task descriptor, and chain them.
> For the moment, the driver does not use this mechanism and do requests
> one at a time and issue an irq for each.
> 
> Using the chaning will permit to issue less interrupts, and increase
> thoughput.
> 
> But the crypto/engine can enqueue lots of requests but can ran them only
> one by one.
> 
> This serie introduce a way to batch requests in crypto/engine by
> - setting a batch limit (1 by default)
> - refactor the prepare/unprepare code to permit to have x requests
>    prepared/unprepared at the same time.
> 
> For testing the serie, the selftest are not enough, since it issue
> request one at a time.
> I have used LUKS for testing it.
> 
> Please give me what you think about this serie, specially maintainers
> which have hardware with the same kind of capability.
> 
Hi,

I'm working on CAAM, on adding support for crypto-engine.
These modifications are not working on CAAM.
They seem to be specific to requests that are linked. CAAM can work on 
multiple request, at the same time, but they are processed independently.
So, I believe the parallelization is a good idea, but the requests still 
need to be independent.
I'll follow up with comments on each patch.

Also, IMO you should send the patches for crypto-engine improvements in 
a separate series from the one for allwinner driver.

Thanks,
Iulia

> Regards
> 
> Corentin Labbe (10):
>    crypto: sun8i-ce: move iv data to request context
>    crypto: sun8i-ce: increase task list size
>    crypto: sun8i-ce: split into prepare/run/unprepare
>    crypto: sun8i-ce: introduce the slot number
>    crypto: engine: transform cur_req in an array
>    crypto: engine: introduce ct
>    crypto: sun8i-ce: handle slot > 0
>    crypto: engine: add slot parameter
>    crypto: engine: permit to batch requests
>    crypto: sun8i-ce: use the new batch mechanism
> 
>   crypto/crypto_engine.c                        |  76 +++++++----
>   .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 121 +++++++++++++-----
>   .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  17 ++-
>   drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  17 ++-
>   drivers/crypto/omap-aes-gcm.c                 |   2 +-
>   drivers/crypto/omap-aes.c                     |   4 +-
>   drivers/crypto/omap-des.c                     |   4 +-
>   drivers/crypto/stm32/stm32-cryp.c             |   8 +-
>   drivers/crypto/stm32/stm32-hash.c             |   4 +-
>   include/crypto/engine.h                       |  27 +++-
>   10 files changed, 201 insertions(+), 79 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
