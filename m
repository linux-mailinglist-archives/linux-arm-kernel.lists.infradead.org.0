Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1117183D0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dHeEtYf4oUFpEQQE2HEbPGiqQ76r3OJVgFBKuoHby0Y=; b=IO2+qILHKgwI6b
	6gy+ZEgybfSngznzld2yh0ox+djxYeeef837ujbgon23TfA4S6WwF/7WPba+so2Nh4YcLVDe5JTue
	VMVXjOdefuxkwL1LmCGPi65/4ll3QwrzNIi1R8pQvvy/gIpQIfHVwgf2o0xUVNoHtNN1T7+rH8MmS
	viUHQf/78deGwdoptHCLPqAUFK03Iz+h0nfx0Tmtwm/TKDfRIAk3hem5fFzbqhszBsVBwq7NaDGT4
	k5VN1rF9hH/mWTCB92gLWxrWXL9KRAf4B/B3GQgIkSlxJxEjI+C72LQe8+aG+8Ay+OV5iyv6D3g5E
	7UqboaqR5sEhLMyf3xmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWxh-0004nV-1M; Thu, 12 Mar 2020 23:09:57 +0000
Received: from mail-eopbgr60077.outbound.protection.outlook.com ([40.107.6.77]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWxR-0004dV-Bv
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 23:09:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVbzjEzXlteIgwIGtq9aYf6jhKnhFCISC7rTg8z4uD2r08mXHYSOJgdUq4vzwdJ2BI6p+v4bz1KJ88kC4euY4uHZo/xXNOnQgph4yzRVyanxyBldLBgJX6QmUY4jjCoOeLBRx1lYyDfvGDIp3ZnOIuw7fhs3ae0faX/Kq/BtAsKT4Vc51j8zQ1OxdMLIJuUuqA4mo7SUBs6gbAQ3CMZQ5U58phfVHnqqfwI4o44X25CfJyGG3zOkVT0nj0CzrSRaQoWred/wy7ufyjyp8HQLhpjxGOahiLZoEAf70wEVVlHjPkJwh5hqhCZ+v17EExX21D3Kc9uCegtJ+GzdgnLSSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5G3f1ZSWQim2VgkIcoEGon3kvv5YkNfQ7NAK/0Q0ibk=;
 b=WzKtGKLhQLj3FVJJU9DdJuRbJdh7yABh7Ko81L2MWSd8fab/4LTUkKAygHGXpMtoJaNlj79SYm0dlhTYktTZwr7sgt95bmMHIfpo66cZLVsa7zdM06PvTrb0eFKrlbNcKuO1iaYX7qzc5VqlcidhiS/8orBRkhM//cx3U6jF/FivxCCaccVFSSCQNV6E9RQXZAQqZl07o4Mtsr9Lq+scEQbVfLpfst9cyh6lHAHG9o05lLDZqG08twypQvrJeS/6u+MbwlIKUY3ZmViHy+fwFm2AbzWMbNkjWLboTQmtH8dizJhLSTcSrmeWYuyt3y1ojCn4rlWa9KoOJpplcAcBdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5G3f1ZSWQim2VgkIcoEGon3kvv5YkNfQ7NAK/0Q0ibk=;
 b=CC2uiJS6GYALpBzrRw2dnd1bJfITH1+bRfhfIgZ7srq5qVoz+rkIDjpDdhiew390hWdUZ+HF7/4qJNj3QmKrQ+XlyQkSKHXxv8cTy65AIWswQJu4LKFCABItdzG39vApp9wZWQax+Mz0lGFDC/FbDADPn5vpF13YimZo4wkV56w=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4685.eurprd04.prod.outlook.com (20.177.56.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.20; Thu, 12 Mar 2020 23:09:35 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::7526:c459:a627:493]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::7526:c459:a627:493%5]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 23:09:35 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>
Subject: Re: [PATCH V6 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Topic: [PATCH V6 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Index: AQHV8emRabKKTJAuM0OK7xtU5vZU9A==
Date: Thu, 12 Mar 2020 23:09:35 +0000
Message-ID: <VI1PR04MB7023455D0FE9766FFBE1EE5EEEFD0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 36489fec-7fcd-4b69-7362-08d7c6da6e6d
x-ms-traffictypediagnostic: VI1PR04MB4685:|VI1PR04MB4685:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB46858D0BFF0E5B4D958A70B2EEFD0@VI1PR04MB4685.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(52536014)(66946007)(91956017)(33656002)(53546011)(6506007)(7696005)(66556008)(4326008)(66476007)(64756008)(66446008)(76116006)(55016002)(5660300002)(71200400001)(15650500001)(2906002)(9686003)(110136005)(44832011)(26005)(8676002)(86362001)(966005)(186003)(54906003)(316002)(8936002)(81156014)(81166006)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4685;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WRelKZNrGIiPJ9K4xjHG2+VAJqWv9CWPUa0kAzCDFDIpbwezgkCnRtYr+b5bDT2kgbMrLnWpuDq9x4F2mWb++6qW+vq1/NVkged6UtP9bKtHPsdZWCNloclZdsCDoIfu1jqMCvp3gkZ7cEzzvXfTPU6YEWnpxX1tz6v476GM1a/2dcU8MrEIS/gs9Z3YBV+ac6VrCmRuDvgOxIyPax0r5AtAOrLKJ/KNfE3i+xXGZu02CpUnmv9JZHEo7F+SBm/8+SUpqB8VtNlsFffqLny6IlfbPkxvvOqdWahu347WDq95f9jYDxiHzWx8lbhEvKTEY9I+ziGUDDu5Mcl9snjmDh/hBj8OLBU0jdMZrB9oaerAJwNXuJ0GoMKw8ZwfEh5Eyh3fV6cB6VHMH02Mde4X6Jp/eheLI//u9r6GiB+80XvusfZkKpNZDfZY3hqOwA0Hn44i2nuJPKRzYbo4n87qOAjbLfa5fn/j5t68s/eiwhT1lJaR5kxf7SJfQ/qKFYJJIvY9lVodkKALnK1bYN3/7g==
x-ms-exchange-antispam-messagedata: 1P+8WVn1ABn1Qwke07SECptFyLKI2qA5U8ZjR2d3dvV3IjOTawg/1yxBPMweh7oQzXf7mf3ENUMv8v22As1XXu8wXM77DPOwaW5oXVWkBN/+mkPfg1VoCuW50TjypvqIJUgfLTFpsmX9cIyRrR7KNQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36489fec-7fcd-4b69-7362-08d7c6da6e6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2020 23:09:35.3135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hYWx5iE6DjW6BWalIKvOlqupQBY78h7TCfXF10J4HDbcR//+RpbIlJ19RAI0BOJndrotp43KS1AT0xotgiOSlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_160941_528767_50A17C58 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-04 7:55 AM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V6:
>   Add Oleksij's R-b tag
>   Patch 3/4, per https://www.kernel.org/doc/Documentation/printk-formats.txt
>   should use %zu for printk sizeof
> 
> V5:
>   Move imx_mu_dcfg below imx_mu_priv
>   Add init hooks to imx_mu_dcfg
>   drop __packed __aligned
>   Add more debug msg
>   code style cleanup
> 
> V4:
>   Drop IMX_MU_TYPE_[GENERIC, SCU]
>   Pack MU chans init to separate function
>   Add separate function for SCU chans init and xlate
>   Add santity check to msg hdr.size
>   Limit SCU MU chans to 6, TX0/RX0/RXDB[0-3]
> 
> V3:
>   Rebase to Shawn's for-next
>   Include fsl,imx8-mu-scu compatible
>   Per Oleksij's comments, introduce generic tx/rx and added scu mu type
>   Check fsl,imx8-mu-scu in firmware driver for fast_ipc
> 
> V2:
>   Drop patch 1/3 which added fsl,scu property
>   Force to use scu channel type when machine has node compatible "fsl,imx-scu"
>   Force imx-scu to use fast_ipc
> 
>   I not found a generic method to make SCFW message generic enough, SCFW
>   message is not fixed length including TX and RX. And it use TR0/RR0
>   interrupt.
> 
> V1:
> Sorry to bind the mailbox/firmware patch together. This is make it
> to understand what changed to support using 1 TX and 1 RX channel
> for SCFW message.
> 
> Per i.MX8QXP Reference mannual, there are several message using
> examples. One of them is:
> Passing short messages: Transmit register(s) can be used to pass
> short messages from one to four words in length. For example,
> when a four-word message is desired, only one of the registers
> needs to have its corresponding interrupt enable bit set at the
> receiver side.
> 
> This patchset is to using this for SCFW message to replace four TX
> and four RX method.

Tested-by: Leonard Crestez <leonard.crestez@nxp.com>

My stress tests pass on imx8qxp with this patcheset, however performance 
is not greatly improved. My guess is that this happens because of too 
many interrupts.

Is there really a reason to enable TIE? Spinning on TE bits without any 
interrupts should be just plain faster.

> 
> Peng Fan (4):
>    dt-bindings: mailbox: imx-mu: add SCU MU support
>    mailbox: imx: restructure code to make easy for new MU
>    mailbox: imx: add SCU MU support
>    firmware: imx-scu: Support one TX and one RX
> 
>   .../devicetree/bindings/mailbox/fsl,mu.txt         |   2 +
>   drivers/firmware/imx/imx-scu.c                     |  54 ++++-
>   drivers/mailbox/imx-mailbox.c                      | 267 +++++++++++++++++----
>   3 files changed, 260 insertions(+), 63 deletions(-)
> 
> 
> base-commit: 770fbb32d34e5d6298cc2be590c9d2fd6069aa17
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
