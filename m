Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C61287F3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 08:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4aFoHlTDxSZU6IhBgagTtfoe4nD7rzSgnBiAvhFyCw=; b=OAF3wF2ROTzEhE
	TBuit+kBy5DJ2ncPFlD7+wEoRRWWZhdC3eR27G1fERuSIpPgHSdZbo9fjWUHt7r1YczUCCBPbTP+i
	ybdNtkBslnUHf7t5dCkj/sWfHnMHK8yYHnQb974PPuD+BxYzPkAxxnE3r1aNo8CwzPnDP9mpFww4H
	N6NA1g4bAxoSH7gJ4szw6P/VFYdtAnyTYvJaeOQnlW/eKfg14+p1Icfj7mz8gsomJcaYII9IdgxQu
	uhhX51Fwdsl+6D7+X5XlMJBQtLErxRiq65JBqcSsaVawYhxny/ei65o7u4I4S1u6PpvSYiJ7hbPbB
	l8kzoyZFUt3uB+g9GpAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZF6-00075P-LV; Sat, 21 Dec 2019 07:32:04 +0000
Received: from mail-eopbgr40068.outbound.protection.outlook.com ([40.107.4.68]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZEy-00074h-8E
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 07:31:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIh27T0C/hfWXnVvNzX1VqWQ19PssK/ZFz65R02LYp5tlQZZrxa+AiYi+EdgDiZFeAZXzoGXvu5IFmMkKYgNK3fs/hC9HybMJMy8bTLJweJk71KCl41Orp6OURxi5+Ai5+Jitr//vSyeD6nzPZQh/zuZcH//NHru+GFe9X3Tmy9vX/5867qGB8xt9qhkuJYwGm+AUcu+X0xU3FEmStqj3O++ylGEvW9jyejZe52/C5n8uv1/6F87PKOgYo+wVPycJGkNDcv9oxEyZUUEXUtO10d08HK1tYqbyNv6c73NHIQMQgkwHtI/RgV+ipldVrDG9WC2zqOd4PfVhx4KNoozNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yhf3XcdwsJSQW4xZnXHrN9g6QU2Uudf2i+3vTJiR3/g=;
 b=J2g8c/AaibyYblz8L+6Czi/gX8dz/HFH8uCeSyMrHw9q2OiACe47iSgwGy0TjRaduhb0epMaS9Qb7IVEku8UAWAkatTYT8E/M2TH2Cdw/8mvjBcJjGfpJZYAgIDdkzXo4zksY5iOGV1cdXsofhTJ15HJu7LwQzoczPu1ddF6BHL9vM67tjaUdXp54NXPqbZ3br4bYSvAT7tv9z2ilyL4ykURmyQGUVO/Hfx7a/hkk8iwrA+2N6Cen+GO4stEvx6+om+4X81DiEkDsJLOMS06J7ghaWnDTM0Yllzk/bBo0Rkv8UobEgeCBJ5f/A5HIGawfHtfYmwAt9T0qjsJj621JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yhf3XcdwsJSQW4xZnXHrN9g6QU2Uudf2i+3vTJiR3/g=;
 b=c7ftrnsLko9Y9y0ittXSGhsWNoTkd6c+TLsO2lurqOKLzcn1aRbF3m8YIx8gRAUpi8JkgnJCXjRg41oZaNCgw3Mc3tYE2iunBTOCynPo05Aupx3tZw0XQF7iygk0RnEtrNhFXp+KpC3FfVS5UXY/CihM/5k5g4FWrQjDM4TK9GU=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.3.146) by
 VI1PR0402MB3917.eurprd04.prod.outlook.com (52.134.19.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Sat, 21 Dec 2019 07:31:50 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::18c:4d15:c3ab:afa6%7]) with mapi id 15.20.2559.016; Sat, 21 Dec 2019
 07:31:50 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andre Renaud <arenaud@designa-electronics.com>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [EXT] Re: iMX6/UART imprecise external abort
Thread-Topic: [EXT] Re: iMX6/UART imprecise external abort
Thread-Index: AQHVt69z4K9VUksIR0CZH5d48DlS+qfEMPEQ
Date: Sat, 21 Dec 2019 07:31:50 +0000
Message-ID: <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
In-Reply-To: <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bd31396a-97d4-4580-c27f-08d785e7d816
x-ms-traffictypediagnostic: VI1PR0402MB3917:
x-microsoft-antispam-prvs: <VI1PR0402MB39171970904D6FF49FA3CBADFF2C0@VI1PR0402MB3917.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0258E7CCD4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(4326008)(9686003)(86362001)(316002)(8936002)(66446008)(66946007)(110136005)(55016002)(186003)(26005)(33656002)(53546011)(2906002)(76116006)(6506007)(8676002)(81156014)(81166006)(54906003)(966005)(64756008)(66476007)(45080400002)(478600001)(66556008)(52536014)(7696005)(71200400001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3917;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bGe6lG+uyU/sxDmJtZ0GwV4GIgGcQR4AK/kEUjevioMT967XUATeWVlWII9Y8XGHo/nusxfOmsGK4JLdfCQti5m839ZWXzx0a9XLaTpxS0qiflYo5IxrfIuDfn6A3ScDVPkTY+qGkbnahVa52sZhtyw3agrDFzFkJkQOiK2bPbg50lZ9sCUVd9aXrVNrFsIPd3SQo/xqI6cXutI7VQxhEDbKcl9QGwToPrNA2cmG0ay+Vs3dM5DG4aZO3kEt0ktZYubnyiExCKXsma/jpqAFJlrlOSFdBHC0D2Vd/v/ULo0wSJhz5CktfsEpu4ZZZ/FswxwzjMpTmODw2xlM8oXxBwbxeOFRVZIz8xacQKLv6UBOsDFfRaYfoLsfHit7NtfhxLzJ63yw5YTLHCAtgBkLk9X/nkVS4VFlxCKJSds9nLRKD4FYs1AMnfmPIKrik3SrkiJsTK+kR9r/yr3lFiPjFJ3qe8eo752+N8McacYXGJc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd31396a-97d4-4580-c27f-08d785e7d816
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2019 07:31:50.2536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fvL1mEfJUjjKDdq1oznjSrRs8AIvDLisWCzPxa66IrjIAg7dN4Fbrwz4olV4i4hofd/dfHbn1JGq7ohss6GLOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_233156_496821_85B8D8BF 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Renaud <arenaud@designa-electronics.com> Sent: Saturday, December 21, 2019 11:34 AM
> > On 3/12/2019, at 9:40 AM, Andre Renaud
> <arenaud@designa-electronics.com> wrote:
> > I am working with an iMX6Q system that is exhibiting a crash when
> > using the serial ports.
> > We have /dev/ttymxc2 configured as an RS485 UART, and are seeing an
> > 'imprecise external abort' after some time of use (panic listed
> > below).
> 
> Following up on this. After various attempts to replicate it on different boards,
> we found that after enabling the SER_RS485_RX_DURING_TX flag, the issue
> went away. This in turn led us to discover that the issue we were seeing is the
> same one discussed in this prior discussion:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.s
> pinics.net%2Flists%2Farm-kernel%2Fmsg564268.html&amp;data=02%7C01%
> 7Cfugang.duan%40nxp.com%7Cd14c378d3af74134754308d785c69a6a%7C6
> 86ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637124960361867595&
> amp;sdata=TXmXA2qie62qEReYMJE9AW2YPanEetDvwT8LWvzmmoE%3D&a
> mp;reserved=0
> 
From the old thread discussion, the key point:
"If the receiver is disabled while there are characters in the FIFO
then the receive data ready interrupt is triggered (even when
UCR1_RRDYEN is cleared beforehand)."

We should ensure the RX FIFO data are not missed since they are valid data.
To compatible DMA and cpu PIO mode, to receive all RX FIFO data when start
to send, it will involve complex code logic.
So I suggest to enable the flag "SER_RS485_RX_DURING_TX", and force to enable
the flag for imx uart RS485 driver.

Andy
> We took the patch there, modified it to suite our kernel, and have confirmed
> that this resolves the issue.
> 
> Can anyone comment on whether that patch, or some variant on it, should be
> forward ported to the latest kernel? It has a slightly odd timeout in there, with
> no error return value, but apart from that it does resolve out issue.
> 
> Regards,
> Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
