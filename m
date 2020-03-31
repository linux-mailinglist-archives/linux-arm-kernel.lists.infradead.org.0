Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACB3199AE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFU9AHO7WHKvwxTdDBVPtb7LFlPt6Zl5ud5lgtqC7ko=; b=Ek+FvDDM8ZahkB
	iko3KisxONNjv5SeotNpT4qsGExigxVEYbqPF0p3iv3uCYalM2E90IANXX9wfuLg+Y6mi98hOUoqK
	UNLfdXZ8wN9tdjHvvA7evH+/PTovDQLRf5EHtoE/wOqxOFdSRzdDSUxRfuUzSDxiek7PzXprMNK0Z
	0TA1sUPlLFpdsxemUSKc4RdsHUapuuRUEgwUwDhk7MO0RCyTMMowUBhLxbniVp4682bRtsZrHEUcN
	oQo3WfBgbGFYCSuKLsnJqF/Sdn2fGgsAu+K7xHsHuy0jC6RUWvFEV27KAiv+tcOcMeT/Zu7d6XIWG
	VsuIsoP7MUdayiNR5UJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJOd-0008Il-FX; Tue, 31 Mar 2020 16:05:47 +0000
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJOU-0008I4-07
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:05:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ex9SXIDjfYjWVHHqUmEXe3SZbghmn7h4jpsd3WR1StSU6dDUXZXZ5Pak3YG1f5mDYt4ztrGZuRI44UATmA+YDEYi0yUVFcYHe1KP6DzgScIS3UGLgp0wjR4HSnQyVf6sXsm3NPPgCmNM6RsW2KSfZTvTYX2gtv1LptmKnGZ+tKCXdSbQswawRw3RzDLLkPCBYLmU7w9WsFJ/hqNEXJ6kMXKSRC4NuVS3lKDrKfiq8kFJ9YjZGPohChswwAvJjXQe48bYP4Bpc37pnKbYCXdjnHqzAHFxg4jiTiL1CrsH/TMrtujb2wZh8sjzMqyJYcjE0k0wI4gGzE57rv31Y/30ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yD7B2H06Szm00r020+lb0A/YC73HjDQjw0pW0D8jGZU=;
 b=Wc7tMPgXU/oP14uwzYoF7RDH5e0Iu4jaHgV2D7MZnhDf4/u9VKpabRT10gvm2xeaZqAH05RF/cj9REIInBJGFHw0rECKKZDCKLZuhRpaeNVFT6NgpNdsuqF76PMshLBKvePCMCLHt99bfg90Mf6weNMSkeuBSWbnO1q9OL5ZrsJruwqfl/oU55SOpjBYVvgudQ+CqwJHlAkcM07YOHc/zdjUXmzanXhT+OXx9iobeYloeOXMOwq7ZxtzJ0xQK+wJtPwdh9yutiBK717eR05jxtGCHbeGGe6DAhJ0G3jhEQC0BCVujpKf0oOO1Xd76AvQEXOXMOlIpphJZ35kk324ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yD7B2H06Szm00r020+lb0A/YC73HjDQjw0pW0D8jGZU=;
 b=RCsqIan5IAOSng57+ExHChtp2BQI2vzojmvnT27iA+exiHpyUw84rTZj9TrHy3Y05eRTsnNfhDYCfN5dK60Xc/Be+XLzKrJYqoFWIYuJ7Qib/LUmWGEwQR5QUDINNFlDU5Y5kDH0u6kpYfEgS5CKsWlGJy0ozjSDjKXdkBkCfVE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 13:34:42 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 13:34:42 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Topic: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Index: AQHV/cQDu85ufqDAx06lOMhNtamjbahaF9Qw
Date: Tue, 31 Mar 2020 13:34:41 +0000
Message-ID: <AM0PR04MB44812577EF272CA1D457A1F788C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [180.107.26.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 39770401-7a45-4acb-bcc3-08d7d57844a1
x-ms-traffictypediagnostic: AM0PR04MB4481:|AM0PR04MB4481:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB44814CFA2266BCB32121EC3C88C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(366004)(396003)(33656002)(9686003)(86362001)(55016002)(66446008)(66556008)(7696005)(76116006)(4326008)(66946007)(316002)(66476007)(64756008)(6506007)(966005)(478600001)(52536014)(8676002)(54906003)(5660300002)(186003)(44832011)(6636002)(81156014)(81166006)(8936002)(26005)(15650500001)(110136005)(71200400001)(2906002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J8AgW0++3BMcOmkRUeGp6G51KiZwn3sMtJZpNeTZAINRuKI+9HNO+tTU9xVupf6LrblJZIAmIKNthycgDWPjBo1x1tmvBhxFXA/26z5bSjkbzaEDoU0a/qBJijp5KcNKOsCmZKMfu5ADpmMoCQk61/SPIhkjyDmSeyDTJZa1LcoVpKfzUsCmi25zu4dNTYqnBWLUjRQCXM9xTNvi6v+oBeI+ya8TS5+42nBCLNnoNjipfcZfPzDsp9A2SMr3C/6Hpb7epVv0bifug/FBB1Vx3sne1xSvueFrfFSPMUJ9nPmlAGG8eDXqn8nHds5BcGaqRjN8x52iFBOhaWKUSSB+cPiBiCycRPloAT0Kakut7X41kly2ocILSBPWk5UYl+GT/g8hV9R1zKrQ2rspcmgP8zuhE75lCpam96tp1ZKE4Z5C86+bVhHGLaul/TMI7FyuQkjhZWM9jB3tnMTWj2DCPHEGSBpGOAXaLYNlDdBdBcZTPEOeaG6O5EY4z1jhQxUlfQOwnVZPVZ+wLpkCV1pKiA==
x-ms-exchange-antispam-messagedata: PN4i72DwulORkmzulB8AUVdQhoN4L2p4pE2doxuiFDlpPI7sKPN+b+J5LhQ6BUgsdhdu1XcnKzNjrqca+itLR/1jP6ULL3+z2HbeVtchLE3kd+HoiaEsINZ06lBQVuiISDnaSEys7BI48BlpqV20xw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39770401-7a45-4acb-bcc3-08d7d57844a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 13:34:41.9307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5O/h3SlPHCTvRVJmch8M5WJ828dm9mRLsCnfe34UMaUfZ9MmwFyj7RrxNvqJ7oCndGzL7msBZK6upQc0lCdrjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4481
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_090538_158699_ECA5876A 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

> Subject: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type

Are you ok with the mailbox part?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V7:
>  Per Leonard's comments, added check for TE/RE  Passed test from
> Leonard's https://github.com/cdleonard/imx-scu-test
> 
> V6:
>  Add Oleksij's R-b tag
>  Patch 3/4, per
> https://www.kernel.org/doc/Documentation/printk-formats.txt
>  should use %zu for printk sizeof
> 
> V5:
>  Move imx_mu_dcfg below imx_mu_priv
>  Add init hooks to imx_mu_dcfg
>  drop __packed __aligned
>  Add more debug msg
>  code style cleanup
> 
> V4:
>  Drop IMX_MU_TYPE_[GENERIC, SCU]
>  Pack MU chans init to separate function  Add separate function for SCU
> chans init and xlate  Add santity check to msg hdr.size  Limit SCU MU chans
> to 6, TX0/RX0/RXDB[0-3]
> 
> V3:
>  Rebase to Shawn's for-next
>  Include fsl,imx8-mu-scu compatible
>  Per Oleksij's comments, introduce generic tx/rx and added scu mu type
> Check fsl,imx8-mu-scu in firmware driver for fast_ipc
> 
> V2:
>  Drop patch 1/3 which added fsl,scu property  Force to use scu channel type
> when machine has node compatible "fsl,imx-scu"
>  Force imx-scu to use fast_ipc
> 
>  I not found a generic method to make SCFW message generic enough, SCFW
> message is not fixed length including TX and RX. And it use TR0/RR0
> interrupt.
> 
> V1:
> Sorry to bind the mailbox/firmware patch together. This is make it to
> understand what changed to support using 1 TX and 1 RX channel for SCFW
> message.
> 
> Per i.MX8QXP Reference mannual, there are several message using examples.
> One of them is:
> Passing short messages: Transmit register(s) can be used to pass short
> messages from one to four words in length. For example, when a four-word
> message is desired, only one of the registers needs to have its corresponding
> interrupt enable bit set at the receiver side.
> 
> This patchset is to using this for SCFW message to replace four TX and four RX
> method.
> 
> Peng Fan (4):
>   dt-bindings: mailbox: imx-mu: add SCU MU support
>   mailbox: imx: restructure code to make easy for new MU
>   mailbox: imx: add SCU MU support
>   firmware: imx-scu: Support one TX and one RX
> 
>  .../devicetree/bindings/mailbox/fsl,mu.txt         |   2 +
>  drivers/firmware/imx/imx-scu.c                     |  54 +++-
>  drivers/mailbox/imx-mailbox.c                      | 288
> +++++++++++++++++----
>  3 files changed, 281 insertions(+), 63 deletions(-)
> 
> 
> base-commit: e506dba69a5e9aaff20fd73a108639f84e2c39d9
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
