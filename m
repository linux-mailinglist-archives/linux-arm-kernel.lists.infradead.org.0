Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D75A7CF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ao3LNzhsmapSLpl6fFr+vcIyMhYEXWErtgt9GwYe0pA=; b=n8Rkt3aRyAuWCr
	nO+7oLZHO1ECk1jLG1OYkSbZHeiXbBvDRVCttgkONx3WjWYLGmUV43rtEiGmny/IIxb1IljPc/7p1
	wVSDSl5xNu3YhtnDZTdEogaR7X67+mMuFThHLIYRrYq/8PtERuqn1cMRscvKCNXYS+DUSuOLH4RB1
	8A/Rj8rnd/eZ6ORUb9Gw5X5smRNlVzltd1RyXeSr8pRDl7w33R34E4M53wN4Q1BkMYjsRnKs7h9q5
	YJ6386InuyO1D+32QGV9X28Z5egxw6icqGuyAaNJkVc3kRyZgsjlcres/Q7Uw4ml39NdVuRKRMmM7
	XxL/cjkFBixhDUMaxtqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PvW-0008Rv-E2; Wed, 04 Sep 2019 07:42:03 +0000
Received: from mail-eopbgr50082.outbound.protection.outlook.com ([40.107.5.82]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PvA-0008Qt-7t
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:41:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7PqqbywLGP6XEDHZZWTUdk/i4gFYx0kV2QF9N/2pcQfuY3qaPmaTqDNWEWR+ZcQeJ5JVb8nNraNKXfbzqSMzQ6/datuVFAY4Lq0eYOGFftNBc7LR4Xf0wA/G9ps5EyL5qsV1fesTzgQKR7m7hi8ebE4S335vInHP+zUki4Z3+Ow80GUN3kyx5Hln4MYugJdflQHXXBh1J1IM99aIeui69YQfmSTyJcmbVlujaJqFYuKS6LFhvnROmAJ8+yFArEsYYp2oIO8BvRR0wBrgOl7LWfS7eW7rXb7HZa+0L7khI8w7IaGbtvnZBn6++wx0xvsFPuVnqisvfnj2EqFCyk5Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e57POvpSM9H0PzRSbfFnEAZ8gGdG1uilFOYeNZV9QLo=;
 b=b/j6CExGuLXiGlyvpDqt/lni5BMw8gQ6WaNVXBKcVLV/GTn7HnrRclW+R3cUrwXff6h24Fx7tml7KVTpmLvpQt9ODzx+9zPgolxCbc4s8W58i+nhRj8TfGNo4UUVvQIMJ5vc4QLdk/RWjUaxKFwz7wHzl0fk0jY7cu3Hu3LDBMKPg30baBW3DxKY9AepwTanoEdviDQqfXTztyb1Ys53OLFaep6e72Dnaz8seG5pjR1SAqK1mF7pSSEUe1zZ/x2BMRWjbIDeRwjBWUDFXFp5ixX4gARwRju/8DXp32+Azpzis4IYM+58JO8W0G9HGyr6hsScLdrh9DLm9n8q398Qaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e57POvpSM9H0PzRSbfFnEAZ8gGdG1uilFOYeNZV9QLo=;
 b=NVXIjhvfiYjaIF+hp7zVVuLrYidAYW4fFyWn5BAVxA0H8bT7Y7pxPOybrRQosdk4z+9cPjZ3G60ggDUtvHIeqobvle8IpyKdfdrQW/lVBrqhjW5NbqjCiUWwiG5a5aAEOW9GxxA8uBVqL2wks7RbNF6p0UTNv9tgPF8T5BYf6eo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3833.eurprd04.prod.outlook.com (52.134.67.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.21; Wed, 4 Sep 2019 07:41:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Wed, 4 Sep 2019
 07:41:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: RE: [PATCH] soc: imx: imx-scu: Getting UID from SCU should have
 response
Thread-Topic: [PATCH] soc: imx: imx-scu: Getting UID from SCU should have
 response
Thread-Index: AQHVYvBaKeS5E5gU7kibbz+lazsBqacbIMgg
Date: Wed, 4 Sep 2019 07:41:35 +0000
Message-ID: <DB3PR0402MB3916932DFC5401F3573F13FDF5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567624394-25023-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB7023B9C325C54AA8112F1AE5EEB80@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023B9C325C54AA8112F1AE5EEB80@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af507150-4f5f-490f-453b-08d7310b4fe4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3833; 
x-ms-traffictypediagnostic: DB3PR0402MB3833:|DB3PR0402MB3833:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB383327016AD9ADCD1133F1C4F5B80@DB3PR0402MB3833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(136003)(396003)(189003)(199004)(81156014)(8936002)(478600001)(54906003)(71200400001)(71190400001)(81166006)(14454004)(305945005)(316002)(7736002)(74316002)(99286004)(8676002)(66066001)(5660300002)(110136005)(52536014)(14444005)(6436002)(2906002)(53936002)(66446008)(3846002)(33656002)(6636002)(64756008)(66946007)(76116006)(6116002)(229853002)(76176011)(4326008)(476003)(6246003)(256004)(66476007)(66556008)(55016002)(11346002)(102836004)(26005)(186003)(25786009)(9686003)(44832011)(7696005)(6506007)(53546011)(86362001)(446003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3833;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fnp6emNhLfcbHBjHlfgy5m8ad+xW0ABM0mTf9fuuSSEgsrEJ+yVdRweB+wdKb9bY46OyZA/VFNSRbwQx1xfwork/ErtoiJ46kFyTtURF7v9k69cM5UXpzfIxMn6JfonkCBeZZAECWgcOyPbT7mWnssYnuCzYnZRMHoLnRE+VlLPasmWbQEwe80DVRR5+5C9b/VCW9TPVsH7yjSaUvdkYYNOkRacM2H7ovIMfo+mAKqdD4bFmC+WKUUBc22ZiijbkxE04Vtl3VnFIJ9Z47Pk8sJksGz7ydMboYZF4g65Is0iJ9M91mqhHhLTwMv7UaVkWlPbHHXrdPgSGR2ULMGpgHVFkubvrlRERvk49EkaGDah+np5m5LdweY90PIFXslyFJjG9gcGqOLRj3j8XEABKZMiNK1rkqbNmTRyxbECWlQg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af507150-4f5f-490f-453b-08d7310b4fe4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 07:41:35.0246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NqWd2vnbus3SAzBJMaPe1/dPa0jMWnmZsAhr28JOiCQn74lxCW+rCeivA2oqde7NUyo9/qNtXscTSIvkeN+vQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_004140_316467_74FAFA6C 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abel Vesa <abel.vesa@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> On 2019-09-04 10:14 AM, Anson Huang wrote:
> > The SCU firmware API for getting UID should have response, otherwise,
> > the message stored in function stack could be released and then the
> > response data received from SCU will be stored into that released
> > stack and cause kernel NULL pointer dump.
> 
> This fix looks good, but looking at imx-scu code it seems that passing the
> incorrect "have_resp" argument to imx_scu_call_rpc or just receiving an
> unexpected message from SCFW will always result in kernel stack corruption!
> 
> This is worth handling inside imx-scu itself: unless a response was explicitly
> requested it should ignore and print a warning on rx, for example by setting
> imx_sc_ipc to NULL when not waiting for a response.
> 
> Holding on to arbitrary stack pointers is bad.

We noticed this issue recently during the development of ON/OFF button support,
this UID is lucky, the stack is NOT released when SCU response data is received, but
this fix should be applied.

We talked to Chuck about adding return value for these special APIs, response data
needed but no return value from SCU, so very likely we will need a patch in imx_sc_ipc
driver to enhance/handle that, will do a patch for it later.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
