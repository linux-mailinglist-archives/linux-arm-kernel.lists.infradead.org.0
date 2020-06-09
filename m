Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B971F497F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhXqGnwlkbMqgng5LeDKThUucMA8pWcmMYTVYTXmvd8=; b=BwUsrWGB6qhBSK
	v/GWPOKXLU89Qodk05Hzj+ByczSsxKrUZmuGwmLGqzPf4UoXMw16aYFHG3xOHyEBQjsb+uaohbpRN
	EVadcAwEpob+WeYZAKij4ozT+knczkEJwAXkMIOYxDNNiqGko6fxQh2TeweRNBw0Xq/EdX+XOCci4
	vxLbIgihVoC0l2Kxe+SNKGhTYIdScwDmgMkYao0Z9lDoI7A3SPCG6ARt+bNoogGXm8P3/CDce0Stp
	9shSB51/oVA+p3o3cOTusFUukkVmWTcRIdlmaZcGyt1gHvdWZf8hZCevNjIDl23nLvE9VIwUGlwqd
	HXFYwd9WGIGPKOwczbRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jimyF-00046x-Fa; Tue, 09 Jun 2020 22:43:51 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jimy6-00045o-3e
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:43:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ETtyLwsIxfBLQU0eF9kTzBMlzO6fzf8+J+v39M42MNQ7Haz0+fs08qrmWkdNIyqqSj+d6mDiKFe6Eo0RdHBF5v0jeKwfbLSeCcXKInVcdkA6B6rXPo1vTdEUt8bIt31nJl8sX+66kCSq48Sa6BFGyFLLUPncMp7JuM/TmN8zAdY0tMVU7qyLi/wxYy+OVIEV4zEs9hTzBiTzIRMp08uvMmCRsgWXWcOZfdkhU+xxFaPG9iX1KyaXCa2IBJRvmVuiIcATmYWFh4uGCU1LkPQMnPhuSm03ECCApqbAOhccbwNz/ny2uehZrG5l09hKuGXX4OyBLfT2fYfBC36uuNyAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=76pythL2MHjwVGj0gi9EC9u+OlMwtLiL3GKiFmOdKVs=;
 b=MIOi6Zf5z8MryG4uMva7+wPeeJrQFjwvbxXElB1gCYUs7YzsWTiREr4bR+F3njzp/9xxher5gEv/nhea3kHv9NFFaRx8YGzkvXjmbB4Xoh3gPOYeX0jtckyI9mas4yK0EIy96Wau0Kalf1aS86KhHUWagLgzmHNAlUAbrKSjPxRywF1nFWGDCbVVUvo9dCW+HtfgsT+90EscLvv5cVYaVk1mwl9zU8Xch2L9uw+/sQalhhSM8xJEf9ePX2CBAxq9RrfJsTl7htFJyUARYm2cALX7Ex2H77fMw69WUoAXGGih+yYjPJN0zf1U2Jn95hXD980P5ul+PVKgCBttwe24KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=76pythL2MHjwVGj0gi9EC9u+OlMwtLiL3GKiFmOdKVs=;
 b=DceBcZ1RaOpDsWWTZAZ10fSWql7PPVlJBWuwvf4lIKMi317ojh55zl/CAVutTGvxqs5vxvc/DMdNEZWunf6dtHThOI+WxQwtv/X1YHWYfig6hbvvlnPXu3rOaWhWn8EQUmfd3KAmIQgN06ILl2a2zkid3WwEU1BV9it7Nfok0vw=
Received: from AM0PR0402MB3905.eurprd04.prod.outlook.com (2603:10a6:208:b::23)
 by AM0PR0402MB3924.eurprd04.prod.outlook.com (2603:10a6:208:7::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Tue, 9 Jun
 2020 22:43:37 +0000
Received: from AM0PR0402MB3905.eurprd04.prod.outlook.com
 ([fe80::bde6:6e57:8c23:79ae]) by AM0PR0402MB3905.eurprd04.prod.outlook.com
 ([fe80::bde6:6e57:8c23:79ae%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 22:43:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Iuliana Prodan <iuliana.prodan@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa
 <abel.vesa@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Peng
 Fan <peng.fan@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Topic: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Index: AQHWPmGaLCVYIW/uG0iQCSK/g/UPiajQZy+AgAB5hxA=
Date: Tue, 9 Jun 2020 22:43:36 +0000
Message-ID: <AM0PR0402MB3905F42A025BF12B1D6B26A0F5820@AM0PR0402MB3905.eurprd04.prod.outlook.com>
References: <1591708550-14058-1-git-send-email-Anson.Huang@nxp.com>
 <7a4091c5-dc57-31c3-3445-c6b16a565928@nxp.com>
In-Reply-To: <7a4091c5-dc57-31c3-3445-c6b16a565928@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f4c9a603-a203-4da8-5e1a-08d80cc68c4e
x-ms-traffictypediagnostic: AM0PR0402MB3924:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB39242E70E461B1B83FA198CBF5820@AM0PR0402MB3924.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OcoR3ZrsVGs/tlHik9dXnnD40lF/3eNPV8sHqYGyFkxbLiMJQsTsIuXK9QQlB9iRoOVcEU0a9fCDKo1bh2zH5aat2JVU7fB1NrvjQpgy24DXm5R3EFhKlJlVEtcPKYK1IykzpbvxgHOZoV1dJgZBV+Jmt7XLXiacHWUhZOTLcVi1+AGJFVcpgcK+Z3uF2sGst0Wzup8IMMWfQInwOapEKRkmxJs3Q7ou0YAU+QGbpr4gEOoPUZDjD5tmv5aNYVH5aryK8qdAQOdiNWLghF1fk4wWYb2CJotSB1iVIU05RVtIRpXOp6HDMobltnbkiB4wL0SMGjpVZawR81BdRWEFtwaBcw8GUEml/A/nPmdiWMSnwvuoSIUIgeb69q+tb96uxWMM6JWGuLYPE1cu3ttZPQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR0402MB3905.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(478600001)(316002)(110136005)(71200400001)(33656002)(52536014)(2906002)(7696005)(66446008)(8936002)(4744005)(44832011)(66946007)(5660300002)(4326008)(8676002)(55016002)(6506007)(64756008)(86362001)(9686003)(26005)(186003)(53546011)(76116006)(66476007)(66556008)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: uRwW5wXv0YFpFOTxecBEwmOa9EilqqfYEorYrZoaocl7yHgIbSYyx+ywt3EoNGJFZmdV8oelvCw09d5ehFzxtprpB6gKes3yNuobC/v0q21uoCX7zAbybpAAN9sg8rqUpaeO1rTlrlcdvQzyXucr+OiSX4TpbbYpEhASTS1+jyus0h+Ipb4mDT/MEqa8z7kOzkTQjTbp+KUVkVydOsudSpQ9Hch3WhssQnxLq1cceXycAnBe4Ii6hC2cNPdogboKDX9mEt4P75JhCH/snWZmWah5DiRlHUSJBoA7LraMCRg3Mnmlalbc/yp1LmBhHqT0NzE6BRzOrIHhLuquQ+h4Ql4vrLHWu4CyZs7JkjER080lTFlIXRk4WOFJkNAuTGQWxf4xX/7ynOdQKZnRKJbD0EASbW9YhhIxh9/zQdf9y7DQzpxrrkZlV/a4JMMak/YJKgbkw5Uyv/HYSwhHVbug0mOFS2iySMqLu1dCo5YBpbMCXi9QM7Sn6IKx1+C0u7EZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4c9a603-a203-4da8-5e1a-08d80cc68c4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 22:43:36.8370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eWVskxgNnwuKfam1ZGQTAGEdkkzfu5hp32xs2pl4LbAmeXXPhXbprjacDTxy6/KX4AwRgh9rjQH42Oif/V+7NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_154342_150650_14143024 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.80 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Luliana


> Subject: Re: [PATCH] soc: imx8m: Correct i.MX8MP UID fuse offset
> 
> 
> 
> On 6/9/2020 4:15 PM, Anson Huang wrote:
> > Correct i.MX8MP UID fuse offset according to fuse map:
> >
> > UID_LOW: 0x420
> > UID_HIGH: 0x430
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> If this patch corrects the imx8mp UID shouldn't have a Fixes tag?

I thought about this, but I was confused that this file name is changed
by commit fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver"),
so if to add fix tag, should I add the tag to point to first patch of
drivers/soc/imx/soc-imx8m.c, or the original commit of supporting 8MP UID
in drivers/soc/imx/soc-imx8.c which is no long there.

Thanks
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
