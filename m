Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451791F63B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8DsBlrpbjGJm0Y3CrcsTqv9hnlWzqo9bhvX8XE2Nb00=; b=TMhxrXw4qiPp734+N/YozVtGJ
	ATiTSdzI5ikYm42eQUwMhJsf9n8dGcYUKx00Xc9PLKkMgIpedTLvPblkmK9eN4B8kjJ1g//rKfDn2
	6xz0NbO+WAWNHdMW4lt79qgYzi793QLLztv++NcvrJnp/cRTRY6ZT7L1LbsTBdqVgGbHLe0EOAtWX
	5GrZQNtsPRrNQLnFfT4mDgCF4QGqS329MfWwFK10QPKmdALDm7pqTpnspgTarif0+RNbsqwRoWUg/
	gqiP37wpnW0oSH23u36tTrgIBVOiigRZ31Am71kRR9JJgOzyvTS+8srRcBhFa5uYUiKPpBAdH+IKx
	gvMa22RMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIfh-0006os-De; Thu, 11 Jun 2020 08:34:49 +0000
Received: from mail-vi1eur05on2075.outbound.protection.outlook.com
 ([40.107.21.75] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjIfZ-0006nY-4U
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:34:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R55udsL6zlDXwduLw6Y9H9bBaqAURlYPyLeKiu45FcD5iT3h/3y1psi9hpheNEvBJQ01bn/q4ql8JGfxRyFHCmGCPrXTwLbt5wxAIC1XsXzoMLd9Ui7lFOOOQsLD5EOGg9UEeYFrQSXyqGE7JzigH04XCmMf64m+70Iv0qAbBaL8SCkph1j6ipkNtzZ56Fu1VkttvePvjNjx12OvOx8XSZBuIBFQ0efriDpwXWoAfP20+bN8fthnpRkz5DOdST5SBwpVSHUNkVY/e7NmiPVEjZt4xPZ6W/8RE1LCYwp0yiobP0wJGBMW+A2/REN3aTBZcBbYxWEghV4yhg9HSQwGDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ETx5Dd8sTz943zVqBZvQ9vUea9KnbB86qk4neVQp18o=;
 b=DTTlphKI+WFjbzqunOFumACQtuXay+XFMMCPgM5+F2ZdWYzOXk8TgnK8pg/K1s5MRSU0skSsjbdRWIRtBl0hFWoYLXN5rFTxG603O6T+YCDgIGLrPDkHHnRsVJocqCG2UAquh5JYkpBqNLgtCfJ1D6GIGxOwQhqN6QxTLJoX82bxuhWalOpO4kexGtn/xjn68Rw2APeE8t29NqNBgxqbEmto1Au/Wl33DktQN5QjVV5G2b6iClwhjuWlN8AzUFdOgWZkRRjWM1/QIANwQmyxJg6bmL+YEWjA0rQ7u2URsvfmfsNvFUDzd4K74ru2D3eaIaJEOtK/ikiGnibCPHGbww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ETx5Dd8sTz943zVqBZvQ9vUea9KnbB86qk4neVQp18o=;
 b=aV8Jxp03Gj3Gd1ySzGTfh5fshfFodjWzeMxnYdZN+i5K8ot2p5jwgYfQ/DmvmREu/EaW8e+xq3SKA7pLCDxCdZcbkCD/X7/PCTubNj33eXaYjHfQgXyTDdil1GaM3u63rhJrKPNwGLc2ANehYYNHnmmfApvo4t+0EcrVtt6UxAo=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19) by VI1PR0401MB2575.eurprd04.prod.outlook.com
 (2603:10a6:800:51::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Thu, 11 Jun
 2020 08:34:31 +0000
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60]) by VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60%3]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 08:34:31 +0000
Subject: Re: [PATCH V4 0/9] Support i.MX8 SoCs pinctrl drivers built as module
To: Anson Huang <Anson.Huang@nxp.com>, aisheng.dong@nxp.com,
 festevam@gmail.com, shawnguo@kernel.org, stefan@agner.ch,
 kernel@pengutronix.de, linus.walleij@linaro.org, s.hauer@pengutronix.de,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@nxp.com>
Message-ID: <2dfc7a60-1e96-190b-7385-89a843312d80@nxp.com>
Date: Thu, 11 Jun 2020 11:34:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0046.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::26) To VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:2f08:560d:e500:fcf6:7c4d:8076:b570]
 (2a02:2f08:560d:e500:fcf6:7c4d:8076:b570) by
 AM0PR10CA0046.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:150::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21 via Frontend
 Transport; Thu, 11 Jun 2020 08:34:29 +0000
X-Originating-IP: [2a02:2f08:560d:e500:fcf6:7c4d:8076:b570]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 73adfcf3-4b92-4a00-d2cb-08d80de242ab
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2575:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB25752EE570A5BD96BE36FA57F9800@VI1PR0401MB2575.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QAlozSzh38Wo5H9Yf29wpqpcWGLuYIGUNvm375u+1WKN0oBnttb5FYa0i2lF+hTme0rDiFx91nkI2SfJ0ELHI64cTNu5sOvOPiDu1W3X4fXlOLqAlz4c9IlCc4iRzCfaEpB7e28w1zS73IEmJkJ/VWLcj2R/XQk6SKktYOE3dNecoy5MaOTsK232SjgRjTwmqFSUWAJg0aJKqOpzroMaD5ogSxjeBwVnpO0AqNPqhHt2m6FlXwNO4lASJnvQR82MMyD0tVDjhEsmuTY/ainzg0wy3TFZnUKNXKZ2UpaA3VZe7YVfINnxi3/dOTZpjrAAH7McW5apW7zTdWcb1MSUP73fm9Yuy8JbbDR75YDuCNCOGgn34e3gg5EZnfLV2vpwSeaZhcdxBwiEf5zwZUDDcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0401MB2287.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(4326008)(16526019)(66556008)(6486002)(316002)(478600001)(186003)(66946007)(66476007)(44832011)(8936002)(31686004)(83380400001)(2906002)(31696002)(86362001)(2616005)(5660300002)(36756003)(8676002)(52116002)(53546011)(921003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Z8IIyIi+ZcEElHByDKH6i3Gp6JxWuY7+36yzvOiA+9v56UD2jIcd4RDqi3DeTx1k5gbpqpvoeq4gMjA757xRnERnkPbVdxELooumcS6c+qlbWsT4MBLM7uI+VMSOVxn3dlwSsZw8WMeLtijvQwYClc6902j0Tdznclfed4TrS8UVnAy5pPX2ejyiqwZu2Fte17L/LMppe9uQ2m6LfDdqa6bUl8R61zKDSpMXXQBr8UD2YZnQk49XzAhp7pqsUxIliwHysMK9jmSQKqdD4/x7RY4icouCjazyH/p3b1hqfEJQhB6NVq12KOLQNOcq28knXbcfk6PONVirfBI1btpkWqz/m+lNGkKm+LRhRA+1NzJXaVUkGmA76RaG3EdoZ13GqLKWDgiNJzhHYS21Kan0j14rQ4vvvkxXqOzL0Fr6FdGkPhDARfuhmmO1NuawJUEpWJ4E3+suJFtRJhW3UjDIM9zTuPX25paMm1HxSUMaV8dn+dPne02KPlCDLghfdMPGIQikxkD2mWSP/AEuJgu65921cb25To8Vg8Yj/J7A8wtFQEnFELuzszTi+cLrlxj/
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73adfcf3-4b92-4a00-d2cb-08d80de242ab
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 08:34:30.8050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N4uPxu6FJufNKrJlE2cB7xPmBcIiChiwx3Jg7gACR6gOi9d90UqOklF4j7XqB7OnmDSAdpnbBcIXRkEF34Xleg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_013441_176032_D5779799 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.75 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

Patch series mostly looks good to me. I have a comment about adding

the MODULE_LICENSE. This is a pretty important change.


Can you please add this change in a separate patch with a proper explanation

of why it is needed.


Most likely it is because it was forgotten in the previous patches.


thanks,

daniel.

On 10.06.2020 10:57, Anson Huang wrote:
> There are more and mroe requirements that SoC specific modules should be built
> as module in order to support generic kernel image, such as Android GKI concept.
>
> This patch series supports i.MX8 SoCs pinctrl drivers to be built as module,
> including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also supports building
> i.MX common pinctrl driver and i.MX SCU common pinctrl driver as module.
>
> Compared to V3, the changes are as below:
> 	- change the config dependency back to original;
> 	- use function callbacks for SCU related functions, and all drivers
> 	  using SCU pinctrl driver need to initialize the function callbacks,
> 	  pinctrl-imx.c will check the SCU function callback and call it when
> 	  it is valid, then no build issue when PINCTRL_IMX is built in and
> 	  PINCTRL_IMX_SCU is built as module.
>
> Anson Huang (9):
>    pinctrl: imx: Support building SCU pinctrl driver as module
>    pinctrl: imx: Support building i.MX pinctrl driver as module
>    pinctrl: imx8mm: Support building as module
>    pinctrl: imx8mn: Support building as module
>    pinctrl: imx8mq: Support building as module
>    pinctrl: imx8mp: Support building as module
>    pinctrl: imx8qxp: Support building as module
>    pinctrl: imx8qm: Support building as module
>    pinctrl: imx8dxl: Support building as module
>
>   drivers/pinctrl/freescale/Kconfig           | 19 +++++-----
>   drivers/pinctrl/freescale/pinctrl-imx.c     | 22 ++++++-----
>   drivers/pinctrl/freescale/pinctrl-imx.h     | 57 ++++++++++++-----------------
>   drivers/pinctrl/freescale/pinctrl-imx8dxl.c | 12 +++---
>   drivers/pinctrl/freescale/pinctrl-imx8mm.c  | 10 ++---
>   drivers/pinctrl/freescale/pinctrl-imx8mn.c  | 10 ++---
>   drivers/pinctrl/freescale/pinctrl-imx8mp.c  | 10 ++---
>   drivers/pinctrl/freescale/pinctrl-imx8mq.c  |  9 ++---
>   drivers/pinctrl/freescale/pinctrl-imx8qm.c  | 12 +++---
>   drivers/pinctrl/freescale/pinctrl-imx8qxp.c | 12 +++---
>   drivers/pinctrl/freescale/pinctrl-scu.c     |  6 +++
>   11 files changed, 86 insertions(+), 93 deletions(-)
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
