Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E44622B99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 07:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh337Kd93kZbPG9at7hBHoLydtfmhZfTzlPsQYML5oo=; b=tsH+40JWpbw+JV
	AsJXmNtllV320hv5hfo1DYbQfIUCZvNob7Eo6km6G56ryzPV4i9VIFZlvGMVhnHJB2LOZ0iBc5mfw
	AwuZbfPJ7NjyQ+gA+4GIG+gAomiCMAJ/dZexHv7sxgpx+GyjjZFgfW8Z3F9/vFl1t+LEjOd/q6egX
	EsLZhPZbpwUPk4x3TqegENtoGkvoY7Kddlq4EC4HWoS+cVaNNH9D9ZRcTJo4E7WxstfZmVHXjg7wh
	s/+UtOaiY40tfHVq6eVZMbQh/Ssz43EnIHJbvrxWpNq+p52zSdTZdapmSjgD4SMuhlehlLPUpETcj
	1tLVK2yHpkdEsPwVaWBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbKj-0007nE-JJ; Mon, 20 May 2019 05:59:37 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbKG-0007FL-P3; Mon, 20 May 2019 05:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558331967; x=1589867967;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a9/bHOgFnUreMHZBG1vGYSgMpDREqB1bSYrKhGziPCk=;
 b=m2/1m0BpfINLZD+kmZ029WOMMRChJCE8PfkRDWpxtoI/0bRG2R61Dp2V
 JM7m+OyM0syfVeMZmPT6JKeWAW6WcrXcNW4PVJhE/7QQ30KfgLBK6rgG5
 o+NTTdTRYCdgzzflXmlMaR88vGOinpAGRLKHsjQOqzKiMgAd/jRUIC4IL
 iSlKXjBMEjOjWXFKxq28Y2F7e6P7NiA1pb4aMMiiL6FFM7CiBRerVL9TN
 7F1q5UeUqUpoVPf65+foiAU77/OUBaEO92q7obbChUUVpZNAkDW5O1LL7
 PFCgnCfrw3A/pInSfhFqsSjLH90b5Tg0Vy/vdZ3kZ9K7KqdLVz++CJlmg w==;
X-IronPort-AV: E=Sophos;i="5.60,490,1549900800"; d="scan'208";a="208089286"
Received: from mail-sn1nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.51])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 13:59:24 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a9/bHOgFnUreMHZBG1vGYSgMpDREqB1bSYrKhGziPCk=;
 b=HXS5oGK97z6e8lQsrhckoN9iYZfFquG2R7tnfMgo1G93BFsRt+SvZOdT0F6f6hbqhuNHjvbLvJnJOUD9EJBJr/dcwT+8JH3HfpBB7rvbNwSdTfEt2O8TDJhcRJZCwNH920q5vzpYQTjWWsOotX7aa3Tz82vRL/HmmrciGpzY2WQ=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB5261.namprd04.prod.outlook.com (20.178.7.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 05:58:59 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 05:58:59 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, Stanley Chu
 <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v1 0/3] scsi: ufs: add error handlings of auto-hibern8
Thread-Topic: [PATCH v1 0/3] scsi: ufs: add error handlings of auto-hibern8
Thread-Index: AQHVCZlLHLuK5SjZGEupOZN+OiGKg6ZpI2EAgApptQA=
Date: Mon, 20 May 2019 05:58:58 +0000
Message-ID: <SN6PR04MB49250CC0866546DB50F446F8FC060@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
 <55818bc4-d464-bb35-25bb-9ef87af8224e@free.fr>
In-Reply-To: <55818bc4-d464-bb35-25bb-9ef87af8224e@free.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38df3390-6524-4983-d9b4-08d6dce84076
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5261; 
x-ms-traffictypediagnostic: SN6PR04MB5261:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5261DC16B065001FCF1276AFFC060@SN6PR04MB5261.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(136003)(396003)(366004)(346002)(189003)(199004)(316002)(66476007)(7416002)(2906002)(66066001)(7696005)(76176011)(25786009)(99286004)(53546011)(6506007)(5660300002)(110136005)(54906003)(6246003)(9686003)(6436002)(66556008)(68736007)(74316002)(71190400001)(72206003)(71200400001)(229853002)(478600001)(55016002)(14454004)(33656002)(186003)(2501003)(86362001)(476003)(6116002)(11346002)(446003)(3846002)(53936002)(486006)(305945005)(2201001)(7736002)(76116006)(66946007)(64756008)(66446008)(8676002)(73956011)(4326008)(81156014)(81166006)(8936002)(52536014)(26005)(102836004)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5261;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fMD/lsWZMS9pWAR4s5Btv2J81EmE/P8J+9ZNe8Z9pinMiu2MaE8fOr9SH3L8HlJ9zT3DYncqAQjv8pA0OWOOhqHxy+FVLBKtTCgEVQowlWXABSppNZyDqPo1VrxfMk3tTjXe0GR91O6iWBF5WFpWVIHNC8beWavgp3d+ojbVZXqTKadeUb2OQkzG6BOuRgEgGYD5kMQpQXlqqTNwe+y5Y+dv2z+bGhuaXwJ9+NyOVuZlCTquwWRYtRuFaxxeMrlQkSrh2sRxuAV/jiY40PY2qYn5jKxuri/Or/7gUmc2AWOW6Jmf9iDZLd1qWpUBkMxKqjBcqKYj9YTbgWBrKK9ba9+lA98Z4oSkioNVwflg6p/VGJor56it79KQHPOedB9TXU+/amCWQcR2E9FPdJ0ZvTTOXWTfxEnScCPGYd57/ts=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38df3390-6524-4983-d9b4-08d6dce84076
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 05:58:58.9669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5261
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_225909_602593_52C3C25D 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "sayalil@codeaurora.org" <sayalil@codeaurora.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> On 13/05/2019 16:36, Stanley Chu wrote:
> 
> > Currently auto-hibern8 is activated if host supports
> > auto-hibern8 capability. However no error handlings are existed thus
> > this feature is kind of risky.
> 
> This last sentence is not very idiomatic.
> 
> I would suggest:
> "However, error-handling is not implemented, which makes the feature
> somewhat risky."
> 
> > If "Hibernate Enter" or "Hibernate Exit" fail happens
> 
> I would suggest:
> If either "Hibernate Enter" or "Hibernate Exit" fail during ...
> 
> > during auto-hibern8 flow, the corresponding interrupt
> > "UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
> > according to UFS specification.
> >
> > This patch adds auto-hibern8 error handlings:
> 
> error-handling
> 
> > - Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
> >   auto-hibern8 feature is activated.
> 
> I just want to take this opportunity to ask a rhetorical question.
> 
> Who in the Great Heavens thought it would be a good idea to call the
> feature "auto-hibern8" ?
> 
> Was it really worth it to save 2 characters by writing "8" instead
> of "ate" ?
> 
> This bugs me so much that I just might send a patch to fix it up.
As strange as it may be, this is not the product of the creative mind
Of the original driver's authors, nor even JEDEC guys which uses it in
their specs (both UFS & HCI).
This strange amalgam dates back to the mipi-unipro terminology.

Thanks,
Avri
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
