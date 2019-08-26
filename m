Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F30D9D657
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=GTtLriEmMCnT6UDJ5JKzYNO9IwuRislZfaPDgjkjOCM=; b=j+NLgWDj7Mk0/N
	KOgaOwqle/S5+r/w1z0QT0FbPjHvuDZXwVbXLfBgscGmvNUz3K0SHvYVCU/zP1o1aQqFgE2poMg/v
	Vev+TSWMYtrDETOxb0uPqUmJmR2Db2MFCs5KUKarT1q70yj4hJFNcWY1nm3cTEHlA92slH4kk8y0D
	A4Omn12SZAeNy5DvDiDdtDgGJO2Sg118TjppHxd5oKZy8+SELj63QSrkcyldEIdUBebaWC3YBnkLv
	3wPw8/MICIw6PFgfRSn9bZd0aPjE9pQvJK3QhPMicWaMgMaTOrjA8OcjxDSX33+nxs/SFOMSEOzRj
	WbD5jTFU1JfeQ0eE8NUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KWb-0005xI-Af; Mon, 26 Aug 2019 19:19:33 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KWP-0005wy-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:19:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4vnbF3LfC0Er1Cwg7P/WQxWrYgqI1oVhtHluiYdy1g4mYEY44k4VUIa6z7ZyPIQtsd3PhzUjN7xqll1GcSWKeXbAxRZRZ3ybi7kiWAbz+DrHWLs5WW53FEczgqwzLDzmV4plmvlteUIsLGAeh1cO4TsACrTXqeGAGOyKcr6CPfBNErek6i7wCepk52EI1XFRPL8Ca+Cjir7epFPWFNVShxtYpDwq0T/erdD9rrdeJxbX87VJ9B1S3+X3ZyLsEyOq8qkKmaJD7L9cTWactnfoLp5b8x1n0h+/OpGrHcHmCiBp0UsOTRY+9R8tJNOPm+FzXs0dlKAl94TFEAIH787Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRspqHGpkffkgwELhLGwHdRPcZk7T7UDa07SdIKaT7k=;
 b=SGPBbGO/n5Fdb9TqzGH9WK6Y2/dx9geZmZkwJkwmqCJbjd9uD95xLuQdQsMhq3O/laB2ZrOr5CmP5dUdiUJQ5hZXzdO1n4Kk3rcjqREsC9uEmrFEZFyHiWMlAKEEqEz8QsyhTEXD17NWsYL1J2h5kDzQZLZv6dx/Sc2csyBD3gteZBcAPaMbjLlS8Xyz0jbCWPu9dYBAxA1l7GtVV0O3ORnNVJRWpSr0XZqpF41bTb81lqffbQhmOWSgBet05srtR5PgjdVdyo0F3jApV8ulQYohdP8Q6Y/xBeD+FhzDq6yavMRgjNT+dqvZ4coGafCY6x+PtWsSQYzz8dUJwW0T6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRspqHGpkffkgwELhLGwHdRPcZk7T7UDa07SdIKaT7k=;
 b=sGqVGdMRxcnVmcqZTgCw9KK36VaP3l9qWhGTpVT+WV7rzcyU1NLjB9YltCQxEj449ngrplCYfJk4QNtdVpgTBfleD6lqL3bP5Jkpt7UO0iYnAzx1gf6CvWRQPn2fbBUOzAndxyBDpvRLb78mG4SrehpxUPmcIyy/FgwJxHsLGnA=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3983.eurprd04.prod.outlook.com (10.171.182.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 19:19:18 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 19:19:17 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stefan Agner <stefan@agner.ch>, Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v3 00/15] Improvements and fixes for mxsfb DRM driver
Thread-Topic: [PATCH v3 00/15] Improvements and fixes for mxsfb DRM driver
Thread-Index: AQHVWAl4KWfQYrgkMk+Db70gagBB/g==
Date: Mon, 26 Aug 2019 19:19:17 +0000
Message-ID: <VI1PR04MB70233374E91F85119FD21FD5EEA10@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
 <20190826120548.GA14316@bogon.m.sigxcpu.org>
 <3bd35686e046048d35cd4987567a13cf@agner.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d0d5059-de07-4019-3e3b-08d72a5a4a67
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3983; 
x-ms-traffictypediagnostic: VI1PR04MB3983:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB398315D6AA1CDEA1C549CBFEEEA10@VI1PR04MB3983.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(189003)(199004)(71190400001)(6436002)(6506007)(55016002)(71200400001)(66066001)(86362001)(186003)(81156014)(81166006)(9686003)(8676002)(5660300002)(6116002)(66556008)(66946007)(66446008)(76116006)(3846002)(8936002)(33656002)(64756008)(91956017)(7696005)(2906002)(76176011)(66476007)(486006)(6246003)(476003)(26005)(25786009)(7416002)(446003)(102836004)(110136005)(14454004)(99286004)(4326008)(229853002)(305945005)(52536014)(74316002)(54906003)(256004)(316002)(7736002)(6636002)(44832011)(53546011)(478600001)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3983;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ch1vJqoVWK787E3WK3WIHLNokRfeIUs3naTk6FihbNJrRWegFVTKIk50RuJYtrvPwEBB56DUJp9xvG75mcmUs7Y1zrP39/qui808I9qwKKMDMRvCpNlhhSQnENETg/17+aipkq211vR8zoRIvKFYJZtVo2xVEv3r8v9eMWdcnHHRBY5hg/co1y/yTLxC5kOscOE8oElKPe006K8Y6mAQcnmtnAlMht82OQOHSThSpGDnDjwFs1SVWILJicLGmK4xH2dnQ3PV7LLeCvYRTvlvA5+ZavTock5mZ+3dVvTJA1PqrOXKKRT4WenTVLQsqTxfqix896PmQ6oFe2j257OJDdtbCOvEbZgNZ9gaq8S+8mBs07fs+kjQylqgQ10XUlFrt+kMAR+2QDK9FwUgbgdk/7W+Br2iG0MtbfOY+wzMqho=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d0d5059-de07-4019-3e3b-08d72a5a4a67
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 19:19:17.8817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TTdibkanzX+uGMNpOCROORN3vgeGTN/WE2CdgK6JgQT5iuFHCRu28ZfrgUORoJY07ETY506M4rPXmQF9/i009Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3983
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_121921_384344_51CE9643 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26.08.2019 17:35, Stefan Agner wrote:
> On 2019-08-26 14:05, Guido G=FCnther wrote:
>> Hi,
>> On Wed, Aug 21, 2019 at 01:15:40PM +0300, Robert Chiras wrote:
>>> This patch-set improves the use of eLCDIF block on iMX 8 SoCs (like 8MQ=
, 8MM
>>> and 8QXP). Following, are the new features added and fixes from this
>>> patch-set:
>>
>> I've applied this whole series on top of my NWL work and it looks good
>> with a DSI panel. Applying the whole series also fixes an issue where
>> after unblank the output was sometimes shifted about half a screen width
>> to the right (which didn't happen with DCSS). So at least from the parts
>> I could test:
>>
>>    Tested-by: Guido G=FCnther <agx@sigxcpu.org>
>>
>> for the whole thing.
> =

> Thanks for testing! What SoC did you use? I think it would be good to
> also give this a try on i.MX 7 or i.MX 6ULL before merging.

I did a quick test on imx6sx-sdb and it seems that [PATCH 07/15] =

"drm/mxsfb: Fix the vblank events" causes a hang on boot, even without a =

panel.

If I revert that particular patch it seems to be fine: the new pixel =

formats seem to work in modetest (checked with sii,43wvf1g panel).

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
