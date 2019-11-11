Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1244DF73B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 13:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAhyHDgQKSeOeeo2Za2CgGQ3I0U2K7PqXFYLcSV0+F4=; b=bsTiQYorh9m6dS
	WhVv/Cet04nLPeNGcg4veH0UIbnXceebO5nfXyBy2PEZJVAHWZg6ek/H/TMjgjcQiXML99eTOeaKY
	V0kvuLRCKfpnsqPTmkSG5nMa686mYqg8wbpbXu8UF++oAJXzs/WaRaSNFlr1AUZxCQEniY67mhbH3
	jl9hIEjAkm92DQITNVZ3kKLsolHrI+Mjt/DB16iOz+CSS7eBmcsJXEF1uOe0x6NGkJkSX0BpAOMv0
	bUiI9fMCWz2ZN8mCJYWsdCTeWDYGnZvCxJ+mqZMh1e08sQfRCS9+UEn5rf0uQC77l+FL083rv80PH
	Vcq+e49Y/5mdjAG1PS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8fQ-0006OV-UW; Mon, 11 Nov 2019 12:19:36 +0000
Received: from mail-dm3nam03on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::600]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8fH-0006Nx-N6
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 12:19:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JpKoVjs84rhfeCmAyfIbx0Af7CGABHhz6r855meB9Vjy1EIVOBpO3iNSSR19VgVZKzO0H3KuBJ3s7jdGG1fHkel8ZHlJDB6IlVCu92lF8tZrRe1ZmbXfEX7Nq5958vX6VSFK5pmSXS7Krwif9Dm21ZMb7yZLcxl41yXkFfAqeUyDqJycKR5GIPISu7ut9uRP2kQCGkuAQuuBgt+LfYtmPJd0VYV6sidUUdevLeww1k0+cjVdPaTh/KOarzBNO0zyGIzx0svi65YuGcO/qwaQJpMqOuvP45VLhUnSq3Nh+4+H/3I46W5ugNX5wRpyuYd3KG4kwbmykxpXJMmsSLjiDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KI7psLc+KipriYCBSjka7e03nAsGcSfEMa7hCccwIPc=;
 b=QltYyAPCP4ENaYw409Uso+/9tEs9PVsESMIg12gY7ZAQlndhdt+HxtnrU5EzMJttERacFIIVkOQvdiPxUlev6EF0j4Mc/CZQFL5bEZe/YigkZkRxFNjgkJ4/liKhW7PJEjZIkQyfQ8XuS5Z8ODtHB9mHqcBOhnnp+sYiTs1HaqYh3GA68aIQooL7el10l8ZRBnxlkfOB2wSwhl1I+bmdgXzd37QKmyuj9Du4WtHHwYSAPZmSp3QVSTgro1hKDZl4y1BkNDxDFbbHR9rwU/UzfyuBYib7jqDaAG+LhmZmamD4dBh6GuIagChLUgOxCglMYc24mRtd2NzMx2V4P1/QhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KI7psLc+KipriYCBSjka7e03nAsGcSfEMa7hCccwIPc=;
 b=fu03YDwIZrgJnr3XGpoToyZjOu0hGy2RCgfX2D8LpEH5DzvftBP3ZhgLJZeYmCMqpUctfB3QUN5KVn+TFb/JrYbP2rZsb97MJgOHDlUojNNjd0a3d/PXBDdK4xIEWE53X3VYzRQVseCPCb41O6fut3dO1I1zWVYctdqcnnYUPNw=
Received: from BYAPR02MB4055.namprd02.prod.outlook.com (52.135.202.143) by
 BYAPR02MB5191.namprd02.prod.outlook.com (20.176.254.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Mon, 11 Nov 2019 12:19:22 +0000
Received: from BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::fccc:d399:e650:9a9e]) by BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::fccc:d399:e650:9a9e%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 12:19:22 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: RE: [PATCH] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
Thread-Topic: [PATCH] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
Thread-Index: AQHVlUkv/SfvLcaY5E2Ze3HWYusTcKd//yyAgAXQRjA=
Date: Mon, 11 Nov 2019 12:19:22 +0000
Message-ID: <BYAPR02MB4055DF3A4FC080C746C21825B7740@BYAPR02MB4055.namprd02.prod.outlook.com>
References: <1573116902-7240-1-git-send-email-rajan.vaja@xilinx.com>
 <20191107185751.4bb873d9@litschi.hi.pengutronix.de>
In-Reply-To: <20191107185751.4bb873d9@litschi.hi.pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=RAJANV@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ebb6734f-7cae-4790-a78e-08d766a162a2
x-ms-traffictypediagnostic: BYAPR02MB5191:|BYAPR02MB5191:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB5191A757F9FA20FC707C354CB7740@BYAPR02MB5191.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(13464003)(199004)(189003)(5660300002)(6116002)(14454004)(478600001)(6436002)(52536014)(4326008)(6246003)(229853002)(25786009)(9686003)(3846002)(66946007)(66556008)(64756008)(66446008)(66476007)(76116006)(55016002)(486006)(256004)(14444005)(71190400001)(71200400001)(446003)(11346002)(66066001)(81166006)(8936002)(476003)(8676002)(81156014)(99286004)(186003)(74316002)(7696005)(76176011)(6506007)(53546011)(33656002)(86362001)(2906002)(7736002)(305945005)(102836004)(6916009)(316002)(54906003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5191;
 H:BYAPR02MB4055.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7NkyRJS5ZeaSqXOE96o+JFIsgjm6yDZcwlfpzFNXEXkvDwwjzEdZ6fD7NnenwdHfRhZ4K4PH5mhRUDkP9RFXZMIPr42Ao2zI3/Sd95HaG08+BsvhdeU8rCr1mqcJdQMjx9VnyoKOAly6Ch7NSPdXGWsQkSRJlCBvQ1l3KWZEEVyw7FeI/LFhAqHDOXCXs4c8K0R2ez/N7Zoct5BQShIdQpBK7m4PlQv2IeVRWq/XwjJoPhMlchBAiUiDI0Gc+Dfpp2m4XVLartvi5Po9ZYRVN6cvFJP2jm9UiJdbGTDc+26hFlrwY1H/yRXvZJ4IYiRiF8AQLl41LuHvixr1lumhj5kfzSL5ntZnVlyzFyQoUPR6lR1xqSCwYAwarJf8k+KZy7FeAR7I09r/qtrQrDZZ0qs3BRM7mzplEBmtMDm6HjfzQpSW54Ux3zAN7Ag1JMks
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebb6734f-7cae-4790-a78e-08d766a162a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 12:19:22.5250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wT+PecjJVOO9a1z/mZbU1riu72WjQ5Ln600eMP+rVw5J+J9DWP7tvBlRC0/o+Sj6OZTLJ9u1rfDmVjFcSVCQ0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_041927_909242_80F28361 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe49:0:0:0:600 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Radhey Shyam Pandey <radheys@xilinx.com>, Tejas Patel <TEJASP@xilinx.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

Thanks for review.

> -----Original Message-----
> From: Michael Tretter <m.tretter@pengutronix.de>
> Sent: 07 November 2019 11:28 PM
> To: Rajan Vaja <RAJANV@xilinx.com>
> Cc: mturquette@baylibre.com; sboyd@kernel.org; Michal Simek
> <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; linux-clk@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Tejas Patel
> <TEJASP@xilinx.com>; Radhey Shyam Pandey <radheys@xilinx.com>;
> kernel@pengutronix.de
> Subject: Re: [PATCH] clk: zynqmp: Add support for clock with
> CLK_DIVIDER_POWER_OF_TWO flag
> 
> EXTERNAL EMAIL
> 
> On Thu, 07 Nov 2019 00:55:02 -0800, Rajan Vaja wrote:
> > From: Tejas Patel <tejas.patel@xilinx.com>
> >
> > Existing clock divider functions is not checking for
> > base of divider. So, if any clock divider is power of 2
> > then clock rate calculation will be wrong.
> >
> > Add support to calculate divider value for the clocks
> > with CLK_DIVIDER_POWER_OF_TWO flag.
> >
> > Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> > Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> > Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> > ---
> >  drivers/clk/zynqmp/divider.c | 36 +++++++++++++++++++++++++++++++-----
> >  1 file changed, 31 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
> > index d8f5b70d..ce63cf5 100644
> > --- a/drivers/clk/zynqmp/divider.c
> > +++ b/drivers/clk/zynqmp/divider.c
> > @@ -2,7 +2,7 @@
> >  /*
> >   * Zynq UltraScale+ MPSoC Divider support
> >   *
> > - *  Copyright (C) 2016-2018 Xilinx
> > + *  Copyright (C) 2016-2019 Xilinx
> >   *
> >   * Adjustable divider clock implementation
> >   */
> > @@ -44,9 +44,26 @@ struct zynqmp_clk_divider {
> >  };
> >
> >  static inline int zynqmp_divider_get_val(unsigned long parent_rate,
> > -                                      unsigned long rate)
> > +                                      unsigned long rate, u16 flags)
> >  {
> > -     return DIV_ROUND_CLOSEST(parent_rate, rate);
> > +     int up, down;
> > +     unsigned long up_rate, down_rate;
> > +
> > +     if (flags & CLK_DIVIDER_POWER_OF_TWO) {
> > +             up = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
> > +             down = parent_rate / rate;
> 
> Maybe use DIV_ROUND_DOWN_ULL()?
[Rajan] Ok. Will update in next version .

> 
> > +
> > +             up = __roundup_pow_of_two(up);
> > +             down = __rounddown_pow_of_two(down);
> > +
> > +             up_rate = DIV_ROUND_UP_ULL((u64)parent_rate, up);
> > +             down_rate = DIV_ROUND_UP_ULL((u64)parent_rate, down);
> > +
> > +             return (rate - up_rate) <= (down_rate - rate) ? up : down;
> 
> The calculation looks correct. Maybe there could be a common helper
> with the _div_round_closest() function?
[Rajan] _div_round_closest() is static function, and yes there is divider_round_rate_parent()
which ultimately uses _div_round_closest(), but it requires divider width which is not exposed
by firmware to driver.
 
> 
> > +
> > +     } else {
> > +             return DIV_ROUND_CLOSEST(parent_rate, rate);
> > +     }
> >  }
> >
> >  /**
> > @@ -78,6 +95,9 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct
> clk_hw *hw,
> >       else
> >               value = div >> 16;
> >
> > +     if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> > +             value = 1 << value;
> 
> Not sure, but I think a small helper similar to _get_div() would help
> with the readability. Just hide the difference between the normal and
> power of two divisors behind some helper functions.
[Rajan] _git_dev() requires divider width which is not exposed
by firmware to user. So _get_div() can't used here. Also, there is no similar
helper available in linux. Correct me if I am missing something.

Thanks,
Rajan
> 
> Michael
> 
> > +
> >       if (!value) {
> >               WARN(!(divider->flags & CLK_DIVIDER_ALLOW_ZERO),
> >                    "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
> > @@ -120,10 +140,13 @@ static long zynqmp_clk_divider_round_rate(struct
> clk_hw *hw,
> >               else
> >                       bestdiv  = bestdiv >> 16;
> >
> > +             if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> > +                     bestdiv = 1 << bestdiv;
> > +
> >               return DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
> >       }
> >
> > -     bestdiv = zynqmp_divider_get_val(*prate, rate);
> > +     bestdiv = zynqmp_divider_get_val(*prate, rate, divider->flags);
> >
> >       if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
> >               bestdiv = rate % *prate ? 1 : bestdiv;
> > @@ -151,7 +174,7 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw
> *hw, unsigned long rate,
> >       int ret;
> >       const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
> >
> > -     value = zynqmp_divider_get_val(parent_rate, rate);
> > +     value = zynqmp_divider_get_val(parent_rate, rate, divider->flags);
> >       if (div_type == TYPE_DIV1) {
> >               div = value & 0xFFFF;
> >               div |= 0xffff << 16;
> > @@ -160,6 +183,9 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw
> *hw, unsigned long rate,
> >               div |= value << 16;
> >       }
> >
> > +     if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> > +             div = __ffs(div);
> > +
> >       ret = eemi_ops->clock_setdivider(clk_id, div);
> >
> >       if (ret)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
