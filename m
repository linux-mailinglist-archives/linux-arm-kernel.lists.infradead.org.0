Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36FD1BF892
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRza4Zj3pkIwaSnwCMY0mRc8A8qtouwky9ZfjXptX4Q=; b=jbvc4ufSxJhqwv
	ViSjaj8bZtpiaiUwA0HS+xXVR4B2pPo45neHpJnuULX1luuGbgJC6BaaYdHm5O1rm/Zby61tvDDMw
	hyuRT0wUyPiPjfgjoa1PhTM+ozhPfxNIn6SKyTegE3K3yG22vfyq/Fpi3JNa9kKi1jnkTYywuLh+H
	3WcVOp6/R9L2+46D1Mn21NcAWuiZlAl2/dDlTc/e0Xb5j88/tNODMyXpZwgsBbTFRQzLy9KGNAs1h
	+0WYgg1eEYVh4S6BQuPx99Z1COnLrJJumFOSHLg9yYr/RHsr/AhKLOKxNMox2w3PEaoHtKhdLDJ4z
	aonecjWkxjZJDRMy+puQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8kA-0007sp-MN; Thu, 30 Apr 2020 12:56:46 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8jy-0007rU-C7
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:56:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mex5Yrlq29Kph6ug9HE2hpnCcu2nCJ84xqiTwfSDBqTkArVY0hzU3vARQuCDODME/ap/Rl5dOSr4JhEHvFgGBNUuICcmdaVBvxLxNPHMwD/RuohO28AFumuhrHhjPTj2h01sOJuhI9aQ3nEp3mLd5KZDQYp9CTe/OufnZEU2P+ORjo+IhR/RTCpHgHRuYEGbaWEfZF4guRt5PEqejMsnk/tpJ9HoJt9VOjWydRIOyEfv9egKzKitbKxQJXBHHE9RQApQNsItmdPD2NG7SPphiYt/507IsRe6sRwQRz9YlLPTD4smGU6RJMIJIIQMCSdCDq9c/xzLNinqqqwnT8GIWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VoqANuWtX4E5GMuWIBrWBEYG7iJVULcC1HgrZQckwyE=;
 b=JFTEPfGOFGkm74RweVv/a9sUf8TiXfAH4v5iGMo6OZOdqLbQGRk4oAUXH2xPlBzwxtWV/DcyMekWMi5zg0e+8yxq+EeS4kXRu3mXSbueXVtWPwsZfASF3lgukahL/kRa/XAhMQf5CBvUGO1dd9cVKXfcfQLMYomRFsEqdkt29ikn0kjgTYBftKBzjNQgTXwEmKUdM/ii+NDPg2ZLXlAHpDk3HJi28C3XCtMCdKiL8YHSbkUBtcG0qT4K3rPTVeYasLKkm2jWu/r1YoNw4SoVvK4lBgZPUtHYNQhgAsdADXaiAG2TNcW3QX2tAi9/OiaF3nOyLOAfcqq/BCnLBn+A1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VoqANuWtX4E5GMuWIBrWBEYG7iJVULcC1HgrZQckwyE=;
 b=MQgKuvPEe20ujfM+Vmwxcwr/NSAVhCXPy2xosl8+MeEaBVRXtJBe/Ppb2Cq+GyEufhPGcN+48nlLgqf64Un7x/Y5+O9E/EglLzijLM4R66ckUUQG/eZ1CpnavyyeCp+jZS32McDGV95UBour2JtFh7pv/hURq0f0+oG4hdAdaCk=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2789.eurprd04.prod.outlook.com (2603:10a6:4:94::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 30 Apr
 2020 12:56:29 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.028; Thu, 30 Apr 2020
 12:56:29 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Topic: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Index: AQHV+FjOyMJp4JjxAkWF8jtS4KMMQqiLILmAgAHSuqCABMhVgIAAJqsA
Date: Thu, 30 Apr 2020 12:56:28 +0000
Message-ID: <DB6PR0402MB2760925E380A8E5907F6EF3788AA0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966D0EF272CAB282BF72EB580AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276047141A63BE756B9C06D988AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <20200430100055.6rhec5rwtz2yyqbl@fsr-ub1664-175>
In-Reply-To: <20200430100055.6rhec5rwtz2yyqbl@fsr-ub1664-175>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [117.80.211.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1edf83e8-53e1-4c24-bdbb-08d7ed05e65c
x-ms-traffictypediagnostic: DB6PR0402MB2789:|DB6PR0402MB2789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB278926A45CFE2F4909C94A0688AA0@DB6PR0402MB2789.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ila3Eo5xOkhqMrZm5G/IWlDPO9s9gfxqIAZvw9ovTljxfJ2woRC4WKboIC7XH2NF14zgbrbfhtsyF1Q0X+viqD9VCkhd46OQbIHgQhNwqKGLufZTGEKbIf5eFtNwVIFRI7mrpFxtD+w53pyh0PG8Rt+fqF5PPosWdfVVqIaLb4r4aLizsZjrQ4s3EVcI0FVw8TQ5tHR9Ev2Fn05NswbthgsPSUNsUJwNBDi6IQhEaTdWDu5UaMB/qkrdp1qxdIBZHeDQsdQwkT0XHNK431VgZExhgtY/lCU9cTw0GxLvW8PBCFmgOhYiLkULkZ7nUkr6MJtPl5hVmappBK7DL586Mz05vfAkM2Ric3s38Apnr3tAloPM3bPz8rEwoilLk3luLzT6k6BZvvl95NkIvQG/onl+iiIcmVCuhHrKAxzK9ujzFe2ON7c7kjEZcFqXtafs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(2906002)(8676002)(52536014)(54906003)(110136005)(66446008)(66556008)(64756008)(66476007)(6636002)(7416002)(33656002)(66946007)(76116006)(8936002)(478600001)(5660300002)(9686003)(55016002)(86362001)(7696005)(71200400001)(4326008)(26005)(316002)(6506007)(186003)(44832011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ZJisakEVTiDNU0Bg5cbo3UXInzvk/tarMNIOveXvCgk6vpVXWcc2SS+h9IW3fQv6e5oTY6u6Eula0vr5bjBsGqjqQX6BmHMroeVdMTrlqeSehFq0Q3/JfjM1UXfMBl3j+dlUg9oMnpHCxqz2EMj9MltNNGDdgmzdguGXryPLAE+EEe3tXzlq6ko7t5SawIM0H7EngrwT2ZtEhjvsHc6JLuy+IBKUzlOjxgkNBEqkKrHFpZaRNW3zuQtdcBkpyjix7ndj/dUB6DREJBrp6CTcl+vJOMtztjirYVbjI2yBNN+G5PVlV6qhTwNRQctYYJHC3y9MmrfaSSpR7FasMpvddpmmDpRFHf90Db32W4gtZecBtC2/eXVWlx51jcAYURGbdt3SdGdlGuNVxL6tvqBsu/0IjsmOTepeOYH67RZ7UlavUcJBlUYprXD9lv1j3xlAyMtcV80lVTCU3iImWu8yACI9orpkaNQzKz3hNFORdtomV7u8+7PYnBIuFgtrTdvD2izh8s4ynB7GDWcTJr6PTZoYCAtFXxHX8qLgMuvbwntjYdlW9uDdK4EGcabQf1Xe6rMJIkbMXjDnm4qIndfS8AaCZbsGKYd2PoazhsxJqti16QI3Wxpw5kDwJigso+BT4nRtbsYG/UdgtUyeFVqU0fUzPYp8a2ftL1VxGsb9fnFxIgIdVESHder6SVEJAfW9cDyIZL3FWyKjOojmo25mnb85itnN2tposPDtPHjMy8sEYg2rAqhKO1vNCR/lCPCPajKNvvQiBnEGG/f7FMQ0hkBnxHpNL1SE0QqkztM696c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1edf83e8-53e1-4c24-bdbb-08d7ed05e65c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 12:56:28.9242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wAChpjwFz2SIj9ie9YfpGR7gQFo6a1kJnV1EBn3Q9DsEY6oBGnltCilOqYi7rZZR5ljWZjnnQxxGsG6G6BeiFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_055634_521527_B8654DA2 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.89 listed in wl.mailspike.net]
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
Cc: Jacky Bai <ping.bai@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "aford173@gmail.com" <aford173@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jun Li <jun.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abel, Aisheng, Leonard and all

> Subject: Re: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite
> clk
> 
....
> > > > +
> > > > +	return clk_mux_val_to_index(hw, mux->table, mux->flags, val); }
> > >
> > > You don't have to redefinition them if they're the same as clk_mux_ops.
> > > You have the access to clk_mux_ops.
> >
> > This will require export_symbol of clk_mux_ops callbacks.
> >
> 
> Maybe you can do here:
> 
> return clk_mux_ops.get_parent(hw);

Ok, will try this.

> 
> > >
> > > > +
> > > > +static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw,
> > > > +u8
> > > > +index) {
> > > > +	struct clk_mux *mux = to_clk_mux(hw);
> > > > +	u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
> > > > +	unsigned long flags = 0;
> > > > +	u32 reg;
> > > > +
> > > > +	if (mux->lock)
> > > > +		spin_lock_irqsave(mux->lock, flags);
> > > > +
> > > > +	reg = readl(mux->reg);
> > > > +	reg &= ~(mux->mask << mux->shift);
> > > > +	val = val << mux->shift;
> > > > +	reg |= val;
> > > > +	/* write twice to make sure SEL_A/B point the same mux */
> > > > +	writel(reg, mux->reg);
> > > > +	writel(reg, mux->reg);
> > >
> > > Why this affects both SEL_A/B?
> >
> > The internal counter will make sure both SEL_A/B point to the same
> > mux.
> >
> > > Very tricky and may worth more comments.
> >
> > Ah, I think RM should be clear about the target interface and
> > non-target interface.
> >
> > When you write once, saying use SEL_A, when you write the 2nd, the
> > hardware will use SEL_B, when you write 3rd, the hardware will use
> > SEL_A.
> > and ...
> >
> 
> This is a very interesting behavior from HW point of view.
> So every write changes the mux ?
> 
> Unless there is an ERRATA for this, we'll get a lot of pushback from upstream.

Let me share more details about this. Then if ok, I'll put in commit log and post
V2.

There is no errata, this is the hardware designed as is and it exist since i.MX7D.
i.MX8M and i.MX7D using same CCM root design.

It support target(smart) interface and normal interface. Target interface is exported
for programmer easy to configure ccm root. Normal interface is also
exported, but we not use it in our driver, because it will introduce more
complexity compared with target interface.

From RM:
"
The Target Interface is optimized to simplify software operation. Using this interface, all
clock roots are in the same program model with the same register bit field mapping. The
software does not handle the details of the clock slice and clock slice types. Software
writes the desired settings to the register, and the internal hardware logic generates a
required sequence to achieve the desired settings.
"

From i.MX8MN RM:
"
A requirement of the Target Interface's software is that the
target clock source is active.
"

We touch target interface, but hardware logic actually also need configure normal interface.

I draw a simple normal interface for core clock slice pic:

CLK[0-7] --------->SEL_A ----->-----CG---->|
         |                        \
         |                          mux-->post_podf-->
         V                        /                   
         |------>SEL_B------>---CG---->| /


The mux in the upper pic is not the target interface MUX, target interface MUX is
hiding SEL_A and SEL_B. When you choose clk[0-7], you are actually writing
SEL_A or SEL_B depends on the internal counter which will also control the
internal "mux".

Whether the hardware touch SEL_A or SEL_B, it requires the clock input to
SEL_A or SEL_B must be active. However SEL_A and SEL_B could have
different value. Saying SEL_A is clk1, SEL_B is clk4, the internal counter
controlled automatically by hardware logic choose SEL_A, then Linux will
disable clk4 because of no user. Now we write target MUX to choose clk5,
the internal counter will configure SEL_B to clk5 and switch to SEL_B,
however the previous SEL_B input clk4 is off, system hang, the hardware
requires SEL_B input clk4 is on, then hardware could configure SEL_B to
clk5.

That's why write twice to make sure the internal counter could select
SEL_A and SEL_B to same active input clk.

Please see whether this clarify the issue or not. I could post the upper
into commit log in V3. The fixes needs to be into 5.7 to avoid system
boot hang.

Thanks,
Peng.

> 
> > >
> > > Besides that, I'd like to see Abel's comments on this patch.
> >
> >
> > Abel,
> >
> >  Any comments?
> >
> > Thanks,
> > Peng.
> >
> > >
> > > Regards
> > > Aisheng
> > >
> > > > +
> > > > +	if (mux->lock)
> > > > +		spin_unlock_irqrestore(mux->lock, flags);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
> > > > +				       struct clk_rate_request *req) {
> > > > +	struct clk_mux *mux = to_clk_mux(hw);
> > > > +
> > > > +	return clk_mux_determine_rate_flags(hw, req, mux->flags); }
> > >
> > > Same as bove.
> > >
> > > > +
> > > > +
> > > > +const struct clk_ops imx8m_clk_composite_mux_ops = {
> > > > +	.get_parent = imx8m_clk_composite_mux_get_parent,
> > > > +	.set_parent = imx8m_clk_composite_mux_set_parent,
> > > > +	.determine_rate = imx8m_clk_composite_mux_determine_rate,
> > > > +};
> > > > +
> > > >  struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
> > > >  					const char * const *parent_names,
> > > >  					int num_parents, void __iomem *reg, @@
> -136,6
> > > > +193,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char
> > > > +*name,
> > > >  	struct clk_gate *gate = NULL;
> > > >  	struct clk_mux *mux = NULL;
> > > >  	const struct clk_ops *divider_ops;
> > > > +	const struct clk_ops *mux_ops;
> > > >
> > > >  	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> > > >  	if (!mux)
> > > > @@ -157,10 +215,12 @@ struct clk_hw
> > > > *imx8m_clk_hw_composite_flags(const char *name,
> > > >  		div->shift = PCG_DIV_SHIFT;
> > > >  		div->width = PCG_CORE_DIV_WIDTH;
> > > >  		divider_ops = &clk_divider_ops;
> > > > +		mux_ops = &imx8m_clk_composite_mux_ops;
> > > >  	} else {
> > > >  		div->shift = PCG_PREDIV_SHIFT;
> > > >  		div->width = PCG_PREDIV_WIDTH;
> > > >  		divider_ops = &imx8m_clk_composite_divider_ops;
> > > > +		mux_ops = &clk_mux_ops;
> > > >  	}
> > > >
> > > >  	div->lock = &imx_ccm_lock;
> > > > @@ -176,7 +236,7 @@ struct clk_hw
> > > *imx8m_clk_hw_composite_flags(const
> > > > char *name,
> > > >  	gate->lock = &imx_ccm_lock;
> > > >
> > > >  	hw = clk_hw_register_composite(NULL, name, parent_names,
> > > > num_parents,
> > > > -			mux_hw, &clk_mux_ops, div_hw,
> > > > +			mux_hw, mux_ops, div_hw,
> > > >  			divider_ops, gate_hw, &clk_gate_ops, flags);
> > > >  	if (IS_ERR(hw))
> > > >  		goto fail;
> > > > --
> > > > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
