Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EB1B56A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=kxqadAcXmhKY/BiV6A8nY28YXx1te3WfK1XjmTemHZA=; b=NM2J4wPn6VPUmU
	OaRFBpI/ZIjxVIWRx8rJi7+667/FbwjCt1SX52lvvXghFn3x/3LT31AjgfPmcLun4oUn7NHIieOOA
	hKsVeoB4mIhwGgf3aW7fm8L3laFj8sC6FvMvHZQUlhYtvC9SxZ4pSHUZ9DbShHA7ZVpVxMOebdv+0
	UXGL2+Gd/VYG6RZF9zl9pe1mHG8toZnNWSj/hm7zkGYHnMqqcgFx84fVJBuyDR3pAOWGfLaJi1aFv
	Nl38CusOQXrWZIApxA1Jn2IZuPkGECyDi79HKT8HpQaNUX5dqEQhpoBPLrykmM3nw/1t+8ouX6kSF
	M4bhs09pZ4L19FZiLMVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJl3-0002Np-VV; Tue, 17 Sep 2019 20:07:30 +0000
Received: from mail-eopbgr10085.outbound.protection.outlook.com ([40.107.1.85]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJkp-0002NP-9M
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:07:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQIOqHFInF8xEgyPho/UD8X47msaD79QdgdNsrmf11NHd8T5gQUi4QcuEWeDCao8BzSpYCCiJKExl3FAdYHweuByQFxGNVYUtOI4PdmXzpniHucHkVXWAiQ1RIDXlqgkuD/7nIHSwpyjMWLhPDtM6KO/H8lis79WP8sc5exwxX1nYbuwNy/L6AqRLuxTnOJNQBt7IAkwLV2Eap2n5HUWblUCUCsww+IvCkXoUWceQTI4A1XanB+HS7PFfusqzedX1dGhc0zMYbbAI1qYI1LRTFGv2HZd8qoT5Gv6lYiMPf89a5OceBkeyM+FS4RpXaCoIogAvs9TdH2dFn1qNh8JKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnAyjC3Aob1yhpFk02csDqSG/+w7mX1MaNs1jwVzHjQ=;
 b=P5uObUmQ2sVlXqls1R/QZN1nmLCnEYGgCWGmlLwFPtL01ya2DoxYr4Qna7jjb+bTEibQ8aqioeXIoTkwA/f3aGEa/BfZyJJS6/sU2CcN3pRwNzM3xBwFLKy+Yvtj6wb/T6pdZKFRp0+L8hnIx2ysQdhFAQhJRzhb3GGza2rReXscpF3yvqE+LxVVS5p9AjAiNhtqpNfwtOcCinzr+mkXLRy+4i7KhmwHTKgN3nyQlzgV5Z8Lau4ClqZRouIVU1qKi7D+jxoQPV4kluU9vdREDSJmCBXtZxxJqnf62bg3g+5L1uZVG3J7C3csdXGEEz7bab4qfX/D43E9UoNIhMCX6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnAyjC3Aob1yhpFk02csDqSG/+w7mX1MaNs1jwVzHjQ=;
 b=VNds1ZzAih133BfooedxLtRfJycx/bTrhHLCLUb716l7cPKjp2zGkB8nQJTZFXIG5bPw/Rz4XVfSpqBbi8hJheBACF7KxbvNvY7mAnhgK7eeb40/biold+9EpwhJJE/y10cL45dLkCCVvJCfGKJKwKj8Jm78azIaBOo8UDc6TFA=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.246.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.20; Tue, 17 Sep 2019 20:07:12 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 20:07:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>
Subject: Re: [PATCH v4 1/6] PM / devfreq: Don't take lock in devfreq_add_device
Thread-Topic: [PATCH v4 1/6] PM / devfreq: Don't take lock in
 devfreq_add_device
Thread-Index: AQHVbRUAgHQh/XUwK0KEOpn0GYjB8w==
Date: Tue, 17 Sep 2019 20:07:12 +0000
Message-ID: <VI1PR04MB7023542CDF1707E04E7938BAEE8F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <CGME20190917050135epcms1p15ba77f52d2a34db0236fd81107dba07f@epcms1p1>
 <20190917050135epcms1p15ba77f52d2a34db0236fd81107dba07f@epcms1p1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3fa435a2-93db-4c6d-3bcb-08d73baaa0a2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB6941; 
x-ms-traffictypediagnostic: VI1PR04MB6941:
x-microsoft-antispam-prvs: <VI1PR04MB6941F3D6B586BA03003D641DEE8F0@VI1PR04MB6941.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(366004)(346002)(39860400002)(199004)(189003)(53546011)(446003)(476003)(52536014)(305945005)(2906002)(8676002)(102836004)(186003)(6116002)(81166006)(256004)(66446008)(66946007)(76116006)(14444005)(64756008)(66556008)(66476007)(6916009)(14454004)(5640700003)(478600001)(6436002)(81156014)(71190400001)(3846002)(229853002)(8936002)(71200400001)(33656002)(44832011)(25786009)(7736002)(86362001)(54906003)(26005)(6506007)(74316002)(6246003)(76176011)(55016002)(4326008)(2351001)(91956017)(7696005)(316002)(5660300002)(486006)(99286004)(9686003)(66066001)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6941;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: msMyOFFwXc9ZzXG7rQDVUkOaogQXBPF6kS4dxqfbp99/7DVjmGrycPikDFIBtGWY6iJKsmzFuNfP8ef/ZkbTP05CGwkbZhncDg2DxGbYs2M9fpY1UxcyTkIgnl3Dx3HLfyQQzmCN13hzLuE91hM2pRxaY3F1a/WppFHO9IsbfCpfKbaEPRLDZ/2QXp8YYZLf7NpcCQ6nFvTJ6JHT+cIQG9UQlYdtCXeb7d8jxHNfsHB+k3/dD/yw+MCeRiDFeuz95HRXpQDHrq1GNURt/yLf8ysPjI+Am9SB3Rf2RYW9MwJIBAiowjCTD0rQRSRPOUqI1GugAwMsuOkK1CfKyDu85Z9Mfac8sUwT2Ly72Z1niDMwHvD+IujWBKww/QWjb/d757OtUxmcaZt0j9n8VRkkfJaaQKha5ocBpncQK5HrSnk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fa435a2-93db-4c6d-3bcb-08d73baaa0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 20:07:12.0379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: meEmwYdqHOCmI2EmrNfEllTlQ5XQs2LtXJb5favkBju6ja7ZNgt4NF19MwOYz2qIqFci4/asBaBSQpw10Tm8yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_130715_399254_C29BBE74 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.85 listed in list.dnswl.org]
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-17 8:01 AM, MyungJoo Ham wrote:
>> A device usually doesn't need to lock itself during initialization
>> because it is not yet reachable from other threads.
>>
>> This simplifies the code and helps avoid recursive lock warnings.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
> 
> 
> 
>  From the line of
> 
>> err = device_register(&devfreq->dev);
> 
> Other threads may access the protected values.
> Thus, if there are recursive lock warnings, we need to resolve it without eliminating lock usages.

The following fields are initialized after device_register:
   * trans_table
   * time_in_stable
   * last_stat_updated
   * transition_notifier_list

The transition_notifier_list initialization could be easily moved higher.

The rest are for transition statistics and in theory if a transition 
happens his early (how?) or trans_stat_show is called then something bad 
could happen. It seems that trans_stat_show doesn't even take 
devfreq->lock anyway?

The code allocating transition stats could be moved higher by dropping 
devm usage or spliting device_register into device_initialize and 
device_add (but that's more complicated).

Further on the governor is initialized and started after device 
registration but (even before my change). This seems fine, a NULL 
governor is explicitly checked against in various update functions.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
