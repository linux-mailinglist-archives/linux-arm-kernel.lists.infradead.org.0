Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C8F1B8C14
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 06:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDzwJhtLL24e6KxXmY5BQJ6w5Zjc5tyWgMOJf8lrC1U=; b=oVib7cfNmoxPNO
	ytPSTmQcOIA0NZvZBudi7sBiSw091I4I+sybpurart+V3ZFZS20rcKySX6yplmuoRD8VfXUP0r20f
	Ne87u8IhUkCUnOWhcVoOYO8V5ejRKryib5A8QWOI7tQRogInpakLZfMVDerxI+6mB0LPT2nBKhigR
	myJrzA0wHCSss2Y4ysyG2RR4UTDbHRiLkIRxE2kAzYrmcEHvmhZWHGjpZfuhjnHlfkGQRJtmOFa/B
	cY9LfAYtMmHkIlH1lgUaMt2UjZbdPCIK+EfX+d7lQhcDroBwAX03scGKpjVRNEL3kTC2+zsBJ8Zhj
	O0M5/loofHHbMmEFWEQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSYuq-00051H-F5; Sun, 26 Apr 2020 04:29:16 +0000
Received: from mail-eopbgr140075.outbound.protection.outlook.com
 ([40.107.14.75] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSYuh-00050J-Jv
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 04:29:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fw4wDm/93kdCzKnlVNdw4e8pKJitKAaoye0bY6uejfv32H09a1XTXpaJHNov3uH8A88OrDvtt9Ckd+yxmErtdcw6GF6Xdgi/A4cz6gNkWpTsF8eEgvGgt+S2Oi5MEtI9X4RjmXvELBR+AeafQqAIDD5qVw6Oy3wfYA3fg04Jeq5K63ktftd6nkbUU5LntKl3PLYoH+iKKELEvalZDIFuZ9k+MbdU7nLtDT01MPBfQA4JmXaHSBsfnkrrQm42I+N9anL2nRrwnm2AwoCqvGlmpp0+7BxUTvqP1COo1tuELeotVehiVO1jfdeqsNnFSW0qqs89IIi148pF6/VEoLbMZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhRx8a7vkivhsbgc3VhCwX7FaaSYSKJFtKDurRDue98=;
 b=aTg1V9AicwLJZj+jzacUVkLaaZlXh4hAaDgnXpbUHluWoGVt8ZNo6tLi0259A5s3oEfQKGpcjaX/UbKgdLT8TW9RbcaQ64cnfRTD5eGWqZ4NVT1ddcHd0ynaW8vzzRzRikpm+A9ZnfAfB+ux5Op352gLe8fvopWHwXSqFUiVC1kD5wCCn4UuSM7+BVi5Y1xe7cfWkkrzEq705AjPUsBetuBHb9NSqfjZGlrEazDWDNyq4Oclvitwa+W4ANGWq+ndQ3BfNPS+l9hyVl5EleNT4koekmYkdxSFiCynUQOyq1CRF+rV1YGyr7srDK+Op0uEFMZ1ij40k/kJxHxHi7GdTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhRx8a7vkivhsbgc3VhCwX7FaaSYSKJFtKDurRDue98=;
 b=UtWRcrbe6riDbI+nkzid9lAgMxUO6SJdDpDCYlPoPFRJyYy1zeYcLv697hF7G1PtcWHsLMCUJvSaTf3+OV0m7+Y+NP7xYUhIVQau/6GqSOVtgq9LyCjgtG+GCQskavPASltTy1MoJWd/dRYJPbyszk/KeliPdZOvTmpEwP7UfMA=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5397.eurprd04.prod.outlook.com (2603:10a6:20b:9c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sun, 26 Apr
 2020 04:29:03 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 04:29:03 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 04/10] clk: imx8mp: Define gates for pll1/2 fixed
 dividers
Thread-Topic: [PATCH V2 04/10] clk: imx8mp: Define gates for pll1/2 fixed
 dividers
Thread-Index: AQHV+FjDliBavkXAxE+a4boWx+ac7KiLFZLA
Date: Sun, 26 Apr 2020 04:29:03 +0000
Message-ID: <AM6PR04MB4966B828D06FCF3C42C5AB8D80AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-5-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-5-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1fbcb1b1-6f3c-4dd5-a9a4-08d7e99a59c0
x-ms-traffictypediagnostic: AM6PR04MB5397:|AM6PR04MB5397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5397AD4FA4A574081C604DBD80AE0@AM6PR04MB5397.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:632;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(5660300002)(6506007)(7696005)(7416002)(186003)(478600001)(66476007)(4326008)(33656002)(66446008)(66946007)(64756008)(66556008)(76116006)(71200400001)(44832011)(86362001)(54906003)(110136005)(9686003)(4744005)(81156014)(6636002)(316002)(8936002)(2906002)(26005)(55016002)(52536014)(8676002)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /+5p/hn62v51ETpOUn5hB5a0Imar4O/iJEfQ1luCHgqmJj81uuCrb2+ocVVscBfZ4+Mrr23TWrgZHzV7WUm/L5EEs2tWMM+Au2rUwEmHk+rGPdQk/b++gz89wiJw0FN577lhqmYHK07jr4nJEWwEgViF6Fm4t51n8Ph+yhq9W6bq6iIBhCqRrRj3AoAijv0bT+od7hMzn2kpFHxXUxhnQUbOIVvrV+R2MuMjEfYSFAbItpWbAHDx2C+v28W8woN5jV997Iz8dtGXvjv/auQSi2ZUjrcxRaOimld0/hRcGYvnWXSQnsVe1qRU2IxUFzdcGgnnlUX06tx0N7qTdm7Zw86YYdrnLwA0C/vE0krSIBNC1zi/6+bf62LxHk2NqrOrGF9HmIW23o7mB39Zlpo4Or17X5EeU+qn21WQ4rP3IxJ6N0MNAhC01d0HnLl73ylCkAkGGxQzQOeVzItx2kV4WT1xI65fbiF4Awf7SVs4LA7sRSinOfaHZwXXGHJNaFFW
x-ms-exchange-antispam-messagedata: b7iFLyrw1vz9rJxOieovX8bW/BqvHfi5nqSvZOuxkcilLdUy7mBFIOlEsrgCimLhZnUoaqxEzQmmYK3lDLX3Bh1cjv7rurpygyn1/h8nTdbWEDOd7HLxe1ndWunLfQ+geaTqIdQhEaY5DRNtRhXQJiinLIMvRu8hbyJ3N53ZvUgLxEWNmniqreq35fz2PNiqHodTY7NUdcOevAkf3gICPKwb93OG7DpFpdxiOzl1/NkXoHTFd1GtkBBWOpre760vMVBjjzNrEJW5AoKp7qWuI9RLSH8ZBv6zsha4KysXpCrJDzfyjijSu4Rbsfi7P543nS5v3+1POvZbRdO91ptdxeGMmLMxygn5VMJ/11ju/v/bm6WWskOGJyYxRXTQB0rusInJ+TKgBvr/16ozOBsLExfINOa9K/CacSTZGqJvMLTBsvdRFN6Wk4VFFgA/1W5gS4Bz5yx+9mZs3hlyClUUUWJ3PFDgCuabKMCwMUsEF/RAEvekpqlnYb48WllwUOhbEe1DmHAT/qW4dZxab4RniG0zMu1PEpG+7rIrxRmHYScOuj/jzrHU+p7qJgmEUEeYspxEF1UKhGaXODtUUzbBp++/DoVSzcJOaorzsAIM/Aai/zjIYDWyEvi1rNtffTWVXvUNomv7S9mkgMG8Grs36q9Uyg7gVv4IOogkvNha9JSkwH0V1etHn+zQ4lLRnGl6lVZKer7CzQvYhgChE4WXeoYt7OAobjLA68i9DXuDnrhGmbrVtx98gR7wK9P8OEXdteMQ2c/5MmjoTNglwXfY9Tvtfigh0qQNgL9lsIZsmj0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fbcb1b1-6f3c-4dd5-a9a4-08d7e99a59c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 04:29:03.4949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0dou9BbAdQ3YJYVB+oQoa3pzkqzkiqSGIOeKArhWok4kYHptHZTTt0KgmW50r4ekt4FbuNNZf35cmvv9sJg9bA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_212907_655700_D23FA6EF 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, March 12, 2020 6:20 PM
> 
> Inspried from
> commit e8688fe8df7d ("clk: imx8mn: Define gates for pll1/2 fixed dividers")
> 
> On imx8mp there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2 each
> with their own gate. Only one of these gates (the one "dividing" by
> one) is currently defined and it's incorrectly set as the parent of all the
> fixed-factor dividers.
> 
> Add the other 8 gates to the clock tree between sys_pll1/2_bypass and the fixed
> dividers.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
