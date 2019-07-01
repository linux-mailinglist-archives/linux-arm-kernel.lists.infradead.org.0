Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDCA5BCA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 15:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Wj1RnmXLRczw+2HNtAsN0/Cvn0NSWo9CJeR3F5wP89E=; b=C0umJkSs8IHVWp
	RtB71lX3kflCvX6EYGHeuP8TobHvSdmcTBeay8Iri0VphTTLDSZEm73wSfdNLhH+EqVtnOR+vg8G5
	PUJf5wPpVuqos/PacowlGXYN9x5U+w1MueGgTl6v0NEjnu8+d8seqAh9lx6vbNs2TwsE4RMe/gITc
	WY1OO4ajUp1ByixbFj6PSFDsQNAF2pKb0GeAKxdVnVodqXZdkmiKechDF0vio42C13Jo7AlFxHSUS
	YHzJEZs1BNEpNE0L1nZvpwoFYHnDSq6g+2VgX9jt6GIucI7EDA4k6FHk13Q+orFFmaxd9lr5VYTbC
	+gCYlRQBsVx6cqiR4GTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhw8K-0002Mp-Q1; Mon, 01 Jul 2019 13:14:12 +0000
Received: from mail-ve1eur02on060d.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::60d]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhw87-00026l-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 13:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2fueU2UwK+/gsfQtwExuuI6ZQTbXw3lV0Mpoy/e8Zu0=;
 b=QVMHP+mTT55Z2ZJmvmEhaxijb34dupKo/QYFdN/WiSvYagsfXIyursqKP4BBJ5yIuGJwbk0egXfj9SOKNiom8qSQwuBm+9KOON4H0B9wX0Qy0lWrjwNYRp5MUOoyruvtUWrvaIgL6fqF6pyCWBMnDLAQ+5kRZc8i9/pb/GI4T2A=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5136.eurprd04.prod.outlook.com (20.177.50.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 13:13:52 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::d83:14c4:dedb:213b%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 13:13:52 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2] clk: Add clk_min/max_rate entries in debugfs
Thread-Topic: [PATCH v2] clk: Add clk_min/max_rate entries in debugfs
Thread-Index: AQHVLajUq4SmNwzvekSbL/iOzo8zow==
Date: Mon, 1 Jul 2019 13:13:52 +0000
Message-ID: <VI1PR04MB50555EBAFE8CF34189635B18EEF90@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <0c12208398cadb7450b6b7745e99c55770c0ccf8.1561709827.git.leonard.crestez@nxp.com>
 <CAMuHMdWVoYPZFZPmfTWMU3pZc633uqkn70MyApcPhgUSgmCW-A@mail.gmail.com>
 <20190628193556.BC814208CB@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40dd0c26-23db-427a-796e-08d6fe25f68f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5136; 
x-ms-traffictypediagnostic: VI1PR04MB5136:
x-microsoft-antispam-prvs: <VI1PR04MB51362912B69052ABD788C92DEEF90@VI1PR04MB5136.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(199004)(189003)(102836004)(53936002)(8676002)(76176011)(55016002)(99286004)(5660300002)(3846002)(9686003)(54906003)(53546011)(71190400001)(6246003)(8936002)(186003)(81166006)(81156014)(6116002)(229853002)(316002)(14454004)(26005)(6436002)(7696005)(71200400001)(6506007)(25786009)(4326008)(110136005)(478600001)(446003)(256004)(66066001)(14444005)(476003)(74316002)(66556008)(44832011)(2906002)(86362001)(73956011)(66946007)(66476007)(486006)(66446008)(64756008)(68736007)(91956017)(76116006)(7736002)(33656002)(52536014)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5136;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SBTYgtpRajBVQzl+AWbogus3M3DNdhvBh3J/bQZwdiitgKbs0XjirHGoqg3DDoIZ9k3mKT6LZjyXo00+GhYjDFTxwIV9ot7+ss70MtuPQs2jX6HKnOWBHlpH54qMYRzfQuxqAb+diCiYFKJzD3wSQznU0bf/x7rXG9wmg0zogO52LiXtMdQDEUT0GVK8UhpZQqf5Ux5/n4cg7hjht2jM1SpPxDESt1V98ssE45makkoznWAmKZuiZ0phHxasdVR5LOa2uTT5P+5DwYa5gw9f3QoOcU9L2vG0HVr56j7r6jelU310mjNXVpG6pZ+CxyAzqPZC9VMmqpqlPcJy/pPpkZgzH4eP9zHzV7WUZ64FjuDsi8dpIHQV92XgfVgpJ1JjSluy/uAf5e7b3vmpOXGRH3YPF+cSvnlkt929VZ64t4Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40dd0c26-23db-427a-796e-08d6fe25f68f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 13:13:52.1887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_061400_055911_43C41F4B 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:60d listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/28/2019 10:36 PM, Stephen Boyd wrote:
> Quoting Geert Uytterhoeven (2019-06-28 04:58:27)
>> On Fri, Jun 28, 2019 at 10:19 AM Leonard Crestez
>>
>>> --- a/drivers/clk/clk.c
>>> +++ b/drivers/clk/clk.c
>>> @@ -591,10 +591,12 @@ static void clk_core_get_boundaries(struct clk_core *core,
>>>                                      unsigned long *min_rate,
>>>                                      unsigned long *max_rate)
>>>   {
>>>          struct clk *clk_user;
>>>
>>> +       lockdep_assert_held(&prepare_lock);
>>> +
>>
>> I guess the clock maintainers want to see the addition of this check
>> spun off into a separate patch....
> 
> Yes. I'm not sure we should have the assertion in there. I seem to
> recall that we thought it might not always be necessary to have the
> lock, but maybe that was wrong.

The clk_core_get_boundaries function iterates consumers so locking is 
required. Looking at other functions manipulating clks_node (such as 
__clk_put, clk_core_link/unlink_consumer) this is always done under 
prepare_lock.

In theory without locking debugfs could read freed memory if it happens 
at the same time as device removal.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
