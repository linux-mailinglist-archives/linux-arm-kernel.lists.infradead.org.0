Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC765175BED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSX5E9MHl3hHPstU917XmY1DmPHQsV0ysmF0Tg/jUX4=; b=VEi0j05GgUvQZF
	7yURrXB4hVdbYzVMTURPFo7NxueCHErbLaMSMRPFFTOyF6maD3DpGH8BKKcz5wv+B30qVtGeRRJQt
	PWreQd+5ILddKiFyDlaecJEaTVpeDqSkLxIp9MSLjuniLY15wLnZs4wQux/E2R3cqLKhF4Lyxv1OB
	DuxPd5AfNks6bZvZKVCinF0HMKIT7GZFi/m+HfSdVxhorG5mjPUSGgrzCQ0aD7gDrqMTEZSoZBroY
	r4EdOXl2x+GNlmF9Jt5I2e5a74FeREJOyL3BNgZwQjjM9WOqvKcCJvNZyFPYhH5UhrNtH/0KTPAgI
	bxj28PCa3dpko7xpXRYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lJI-0004Ae-2J; Mon, 02 Mar 2020 13:40:40 +0000
Received: from mail-he1eur02on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::601]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lJ6-00049m-Cf
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 13:40:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hHzXqXgk8tXXA3O/eQeyb7HpAHt3n3fJTdQRzTmY+MePsBAGbm4jbnpl0bygc3R2Nvfh2xqmnzVo820ZersKEFANm9UQHOKcDNfGt7QZpnctzkDv9w8j8+fLpDbjfffzTTHDbd4b5bR3stEG0UWxyWloX3mmYh2BWlcr7WqCk6ccmgm0rWydCxh69MHlVaQiPiNLTMPBvd4p5ksaIvqNWwiGosXPVJN49NYEPWpRiIRs0XwPFJBKidgoDS9uAUpjgVVd3m7f2H28ByqTBFQ7n5Tc9EcXp92QN/5ouzDWcVSVzJmcFQlsMhRymtkTKBEWgnNu+qo4N5VzXtkoKniIxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tfSaWXeF1M77kQjQ4QQhlx7fPzwLafm1kdV0DD5L0nw=;
 b=AvjLRvsodrFK/kulLlmmZTZTOUJGhim0k3FXwBRuer6U6F4tiyzOpBii5Godp1zwtwzFgTpUYTRCHYsRJ8Nt/n8UX9WnFs59DkVGuO7/AocQuAROil2/kFN9acW+P6DzDnHCb9kK5dma0THvLyW2V1rT8PB/c37hI8BL1bsBBDcUQxmwVqhngRUC5/gqM9sAiXfSQywymDz6Kzco4Io/ik5jYUn6/x5kLmHBoadXsyQCM05IjiEhEMgI2wvlwkOTUwZCU5a5xguC3L0RkmRTueXua84wDQri/GFv3E69Az18Sn1go+dfxa8RsafRyXawZnzLu5iN9XXaGNXI53t5Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tfSaWXeF1M77kQjQ4QQhlx7fPzwLafm1kdV0DD5L0nw=;
 b=WckjyUSBwdcVJrLa5dm99UxuYFvzPwNxIjmPZP9RWm3yAOrd+piadCOSJUBcHBrn5LTjAa7APN0CVM1qgJCkUDFigT4klgFuGM6clLm4yCZP5k+jTAB5uTl/8aTo70BNok8RV+mKhoq6c4j86VE8Zxg+T7xkpzTFvV2d7Sm3Kjo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6001.eurprd04.prod.outlook.com (20.178.115.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 13:40:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 13:40:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Topic: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Index: AQHV7HUEw4K6S9kW+0Sj3fQlJbhvlqgwzHcAgACkEkCAA7/ugIAAJmXQ
Date: Mon, 2 Mar 2020 13:40:25 +0000
Message-ID: <AM0PR04MB4481CDA8B8A84CAE5D08858488E70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
 <1582701171-26842-3-git-send-email-peng.fan@nxp.com>
 <20200228161820.GA17229@bogus>
 <AM0PR04MB4481C79FD4EB32E6F111A22588E90@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200302112117.GB16218@e107533-lin.cambridge.arm.com>
In-Reply-To: <20200302112117.GB16218@e107533-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6350c5ee-ebf9-48b5-0ab0-08d7beaf434f
x-ms-traffictypediagnostic: AM0PR04MB6001:|AM0PR04MB6001:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6001DAD211481DAD396500E488E70@AM0PR04MB6001.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(396003)(366004)(136003)(199004)(189003)(33656002)(66556008)(66446008)(64756008)(71200400001)(66476007)(44832011)(81166006)(81156014)(6916009)(966005)(76116006)(52536014)(66946007)(8676002)(8936002)(5660300002)(2906002)(9686003)(478600001)(7696005)(26005)(55016002)(316002)(6506007)(45080400002)(54906003)(7416002)(86362001)(4326008)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6001;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gWxuj84h82DHDkTIbEjsRAX5YcggB6bafOK2+kxvLzCxEuoi5hLnQtCqPXKc0ptdMQRyqSq9btO2MZWtOX7c1ghVHy5kuYWS/n6T8KQE9MaaRsCxHZb7K9gBD0zNxQV8onzBtxyu0IO0Mgz0WuCq/bmJ9+dNMAB35YSs4npAvIYEBF+VWJh1HBDud/ix6NKccEG4M+iS1Ry1NFLo2N2O8kOPl3v57VaDZxq0WlZgqUPQ+oBqaEDyh7jIjHwReIkDxm3C6z32KwPSSpRBrbIHmnRlFvuqQcbiEfkohdiGb0VbFfogHCkN7HBVNxFkdLWMzxeO3xHBCioTloIyXE66CEYGzCdX5xkY3T78Y+qiE30Os8LA3LyiJ59Aw/pD2Okg18zUuMAtYA3F0GqQaAoNxMV4q8LhWUh/vOPqZ5jLra7oy95FbwddFWaFSxB+IiGgPo9EQZtqFCsBA4+BtLFoNG+8I8Rq4G2idp1BHGQKjRtbkEJtjMXNXQpJMZ34jzySBCUmGIqma5FStPJ5Vx5zNA==
x-ms-exchange-antispam-messagedata: tB58/1ldg1Y/Qp0JpP5qYGyt3vdT7aKAFnqnshth1/lxSe6FyLjFpE66PbFmhdVQ7hwPUZwLss4dZc0sgox2tKq3Bw91c+HU+Hnl8FO7lIRBnR9zA+7tyh7BI+RbyUtdyaSUIQNJj7cV25eRvqjtGg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6350c5ee-ebf9-48b5-0ab0-08d7beaf434f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 13:40:25.1453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5wgx+Z1rdRBAWIVcoO2WPWyiWAxEmR4xunUcIwi9K1N8BRmNS7275RHZ66G5GvZF5RchiDKKkUvbAZSd08WqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_054028_535158_B40F8AE6 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:601 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
> 
> On Sat, Feb 29, 2020 at 02:07:30AM +0000, Peng Fan wrote:
> > Hi Sudeep,
> >
> > > Subject: Re: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc
> > > transport
> > >
> > > On Wed, Feb 26, 2020 at 03:12:51PM +0800, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Take arm,smc-id as the 1st arg, and protocol id as the 2nd arg
> > > > when issuing SMC/HVC. Since we need protocol id, so add this
> > > > parameter
> > >
> > > And why do we need protocol id here ? I couldn't find it out myself.
> > > I would like to know why/what/how is it used in the firmware(smc/hvc
> > > handler). I hope you are not mixing the need for multiple channel
> > > with protocol id ? One can find out id from the command itself, no
> > > need to pass it and hence asking here for more details.
> >
> > When each protocol needs its own shmem area, we need let firmware know
> > which shmem area to parse the message from. Without protocol id,
> > firmware not know which shmem area should use. Hope this is clear.
> >
> 
> Not all platforms need to have a separate shmem for each protocol. Make it it
> separate transport.

I added that in case somebody needs it, but actually my platform not need it.
I'll remove the protocol id change in v4. If others need it in future, they
could add then.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infr
> adead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01
> %7Cpeng.fan%40nxp.com%7Ca9c9201db90749d46cfd08d7be9be1a2%7C686
> ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637187449022127405&a
> mp;sdata=mwxo5a%2F4jW5ram7%2BRyHpjJ6N9ngPn5SoT4L4uq1tJ44%3D&a
> mp;reserved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
