Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B831866F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m68mfctFZj2yqD1nQjMaS0NqCudiWZiD/AZmqmbJsRI=; b=tBuLZpxh7pM1CD
	hUtzt9VEmLluAoKWZWpITqk0K0FHT+CfbfoGurnszIoMzYVXdUDGJ3A4fENW2G6I7H6dGwRciADaE
	dzkp1ZNTw9IjLHPpq1LNuBVLjYQc0hC3zcVUzX2tXlJG6rDMa5qLnHObq6MRteAUEXP6kxEHx5Ivy
	I9ptsaXYwIriD8kDeDLxU0XeF5N/27laQo4T1fFDxO7cfADuSEthlK5ZkF4/UWB0OYMeU5z0Jg5PI
	I3LuWv6quZQqzn1d29Pvv9qLdqMtpu5CAMYFOFAnGF1Nb9WqKpg+TUY+1lZxrUKp1gbnuEuuav2I5
	2aTT/Oow/fGwf1KCi+bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlTv-0008NJ-1c; Mon, 16 Mar 2020 08:52:19 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlTk-0008MZ-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:52:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBi9wcMEV+apFn79Cknz49AEve4Mawbcgi6U4kllTA4h8FrXY34pEPlZ4S1cf3oA+FHxm43xJp2xMrOAOdn+6tziU2Ow/Bbcnqnfm+M9HVMI3Du+LITisyC1Ebeq5k2uEP41S2o+Fe+xuI7USnY1Zr74iwSGjHcP18iw2tFQRr4ryeYfdF+w2Q+Z0WWrjMgLjZiBVECSGz2wEB3ZQ9rY8YHGg0c6UGlSNJ7EkvtJraTP4HTxaD7ZqzBg7yDjlpE2d8OsGENmHduJcMBkzmliGtFy5m0Zj4E30oBZ2N7vqQjku7fslT2iuzi7xCyUhOmg6kYwJMegxFVDOpKLz3vd5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fyqpx1hArPMlgTojJG+OAiwvwbY9dFbVXdyvn1x5VmQ=;
 b=mAazhZjSfD9nw7I1+wNJ7y4vRG1+VI+9nyKTFK+BVb0002EJVPbL+U2P7arSktm04Yebq/o98xi3OsdsaoCA6tbnDL6fXNL/2naPh5UxXj1HgOWBnC+FYbI/sDmXuno4m427e5JxFmZLBvH+Dw9jKTa0FaC90+Pp0T+GSlF9WJUqNT9PULK0aO6a79CcLzShQuPrs4eDGDRJY5dWT1LEHUPIXc4Lfer0aANVVI2uZabVOnW7BdbgoHfXaWxcAXP3iOmrPIwFhxip51Ozl/na10zUK4WuFzr98WalAyGNwqICz54izxVafchyBHRcW77awfTjlGlkRcE0cVzDKc/FLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fyqpx1hArPMlgTojJG+OAiwvwbY9dFbVXdyvn1x5VmQ=;
 b=XKaQ1tmdUlK64lPGG0JsKZTFWiAvZQRLoymO3KTkWOAIh3JXCIlCTt1DLiloNO30IIQHKRIeIWXfeZ7er9Yy4K2RyxJ1iOrcJUbbWcSB+eEWgtCqU4hVwjyrNi6A/afQpgRlVHNmpLARfJe1MOi5kifsGkM6FAYqzyRlz4dbv4Y=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4529.eurprd04.prod.outlook.com (52.135.152.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Mon, 16 Mar 2020 08:52:01 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cb2:6bfa:b5bc:2ae3]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cb2:6bfa:b5bc:2ae3%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 08:52:01 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
Thread-Topic: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
Thread-Index: AQHV6Ar2+ns546NUFU6ZA9rx2mhDYqgsJ6+AgB7nvLA=
Date: Mon, 16 Mar 2020 08:52:01 +0000
Message-ID: <AM0PR04MB42111CF54405CD3492248AF580F90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <10e97a04980d933b2cfecb6b124bf9046b6e4f16.1582216144.git.leonard.crestez@nxp.com>
 <158264951569.54955.16797064769391310232@swboyd.mtv.corp.google.com>
In-Reply-To: <158264951569.54955.16797064769391310232@swboyd.mtv.corp.google.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4e7cd80c-9c43-4b07-9893-08d7c9874b47
x-ms-traffictypediagnostic: AM0PR04MB4529:|AM0PR04MB4529:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB45293DE16436EFBD668AB22680F90@AM0PR04MB4529.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(346002)(136003)(376002)(199004)(55016002)(9686003)(26005)(478600001)(86362001)(2906002)(71200400001)(6506007)(4326008)(7696005)(66446008)(76116006)(44832011)(186003)(81156014)(8676002)(81166006)(5660300002)(54906003)(316002)(110136005)(64756008)(66476007)(66556008)(66946007)(8936002)(33656002)(52536014)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4529;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O6Ni06P7OtXj/NWsEI8iO6W3n/fbW37AUiE48LlFlrHws04Ygeorb0FCQZqpiaX+bTW5F3mC0vPoI6vTgqlWfkju1bS7JQUJTNRGiTMzQgEkzndCfvcnU6pGXYexI9vAdyMYC9Eg8en1jX7jx9EtraKwkGFfWq/QnsDxjUI7cxCDBjZ4cMpsCPb0grKN+3o9w+n4SFIVrOTtO9fGKJNWIjzIvVRVLm3Q3RXXNYGxUA62ZIZ5iMvSCSBYZnXEZrKf+x78cZHG812VsQpmAymV1D02o5o1qaYCoo5wX3h/CAcvY5UJsm1Hy8u3QPGjP9XkC2NPaHUF8Zjzbx1T7GJ0+ffcCsUynEsz14wiq/5/HY4grC27EpzKYVTwWqmosIY6QpwAtx22uZrVCk9tITvBCzZEOJO3HuAFaFw0vi5Y4uyO84NmXNGRB3POfai/2mOY
x-ms-exchange-antispam-messagedata: cNqN8oyw9Xez5vG8vMvB+Qc/7U0dZEut2IksI7/87gUCVBpNhm6KaKo3m+8eft/LSbXqQ4zDCU0bPJvCUmBoFMZBev37ISjXdvD4ZHEW+GiMFES3I048XfVwymYGBmNaLLnW58GYm8djjpvr+hBLRA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e7cd80c-9c43-4b07-9893-08d7c9874b47
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 08:52:01.6016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qHMW7OkFyEiq82vHOfaIu6+pHaDzpHFLYfOyUoW/WtlONxCD2ZKXpF7x6GW4vmfv4HDSaWKidYytLlydHBo34g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4529
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_015208_578301_7F8DF140 
X-CRM114-Status: GOOD (  28.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Wednesday, February 26, 2020 12:52 AM 
> Quoting Leonard Crestez (2020-02-20 08:29:32)
> > The imx SC api strongly assumes that messages are composed out of
> > 4-bytes words but some of our message structs have odd sizeofs.
> >
> > This produces many oopses with CONFIG_KASAN=y.
> >
> > Fix by marking with __aligned(4).
> >
> > Fixes: fe37b4820417 ("clk: imx: add scu clock common part")
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > ---
> >  drivers/clk/imx/clk-scu.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> > index fbef740704d0..3c5c42d8833e 100644
> > --- a/drivers/clk/imx/clk-scu.c
> > +++ b/drivers/clk/imx/clk-scu.c
> > @@ -41,16 +41,16 @@ struct clk_scu {
> >  struct imx_sc_msg_req_set_clock_rate {
> >         struct imx_sc_rpc_msg hdr;
> >         __le32 rate;
> >         __le16 resource;
> >         u8 clk;
> > -} __packed;
> > +} __packed __aligned(4);
> 
> Sorry, this still doesn't make sense to me. Having __aligned(4) means that the
> struct is placed on the stack at some alignment, great, but it still has __packed so
> the sizeof this struct is some odd number like 11

> If this struct is the last element on the stack it will end at some unaligned address
> and the mailbox code will read a few bytes beyond the end of the stack.

Hi Leonard,

Can you construct this case to see if we can reproduce the issue as pointed by Stephen?

Regards
Aisheng

> 
> I see that the calling code puts 3 as the 'size' for this struct in clk_scu_set_rate().
> 
> 	hdr->size = 3;
> 
> That seems to say that the struct is 3 words long, or 12 bytes. Then we call
> imx_scu_call_rpc(), passing the pointer to this struct on the stack and that
> eventually gets into imx_scu_ipc_write() calling
> mbox_send_message() with u32 pointers.
> 
> 	for (i = 0; i < hdr->size; i++) {
> 		sc_chan = &sc_ipc->chans[i % 4];
> 		ret = mbox_send_message(sc_chan->ch, &data[i]);
> 
> So we've taken the 11 byte struct (data in this case) and casted it to a
> u32 array with 3 elements, which is bad. This is what kasan is warning about.
> Adding aligned sometimes fixes it because the compiler will place the next stack
> variable at the naturally aligned location and thus we get the one byte padding
> but I don't see how that works when it's the last stack element. The stack will
> end at some unaligned address.
> 
> The better solution would be to drop __aligned(4) and make a union of the
> struct with whatever size number of words the message is or do a copy of the
> struct into a u32 array that is passed to imx_scu_call_rpc().
> 
> For example:
> 
> 	struct imx_sc_msg_req_set_clock_rate {
> 		union {
> 			struct packed_message {
> 				struct imx_sc_rpc_msg hdr;
> 				__le32 rate;
> 				__le16 resource;
> 				u8 clk;
> 			} __packed;
> 			u32 data[3];
> 		};
> 	};
> 
> If the union approach was used then each time imx_scu_call_rpc() is called we
> can simply pass the 'data' member and make the second argument 'msg'
> strongly typed to be a u32 pointer. kasan should be happy too.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
