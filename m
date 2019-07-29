Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBD3786AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxADadrmz5ByDRYjS9rFwjJkQ1iEkbqUSVOQB7AgLVE=; b=hgrriR60V0me06
	jgpUNvRAzESHsZzXblsD4+mlTvLBHJEloP4C0l9kt/OzmJb7bbOAmx1APcJruGl+fPQ0QBsOVH2Ed
	ZdGAPaqI0955JCqdmK84Hi+msjuvoHIBfz/cN4AT/RzqrhuxYkSW3CMzRdYdfQFsUoCIIZqwa+L8h
	TfVZLLDCXPk64q7YaqpBdzKnrzfWDn3mCt481YnuJruCOtu7qNZBkqahAVN1TDksGTSEsjAyWxl+K
	RT4w5T1mI5/+ue/1vdWFm69qd4vZTDqWo1bpK+JwAk0CWU4K5U9VvRnEqKXoylzuEwYFD8buDKCHQ
	S4CiATIe3KLuKJ+WAjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Q1-0004GO-VM; Mon, 29 Jul 2019 07:50:06 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Pk-0004Fv-9A
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:49:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ki1/D6WtsSogiXvtv4PvCJCyAVSpniqnMNJ0hWxogBLAJe6HQ1TPihTmkBLjF0mPFbYVB7HFoLQY8eoMkKGGvmtUm31FhSFzxgPvoDAjyRgPe3C/9tNMdhIgHjws/9KnrwpqQqCC08ltPh9zdfXQ0qWLbOS0ueJXjm0EaCt00i8t8IcngLnakgqldpmSrdPc592wcKhdS9F7p1TbI/F9DMFS2c4xhVbuw/0ie+K4mUHiTYuTU9q75XuEKT+Gvf6aX4JQpGiHpeOmCX+6yPBzemOGtJ9l7bml1RDjp7G25WG1OEC8ZsEha+5UYXt5w/U/FqBDTRlVI93dyUmfxt5f1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xTvtcN/CLQs6tL8Y6bdfQsZg7VVWDqgB2ZU02nYsfNI=;
 b=MW2dg8gyzHYzHKrHhJlTV38vk6GxuYE23agZbiYHLHNgfibOU5aZ3iFAJnVB6fxMu/jYLM3TtjY2AKb0cZMB57i/bg1UI6Zl+2qnryGuDLbJOoc9lo5FEK8PjA7vcERe/eim/p+7VNic5eab1C2ItwvNbMdJIhpuE5/pB3us1s34JyoFIBhUEt3aVlWRUE/STHs7lUQxOFoS4SXwT3kODkmjPZXtQ3Rb8zvcuUB0frJqFJ8aiJFnevZ1fR/zU+ksDK9pmBKD4XZuUP4yv7LCVgexAByz5iU/rO0Q6qOUfvOFPyIvhOYpVqijaorhKHrSRX1cCks1rLT6yZ/M4O6ugA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xTvtcN/CLQs6tL8Y6bdfQsZg7VVWDqgB2ZU02nYsfNI=;
 b=AQyT1gIO4fHwutwRXp8IJ/4a5PiEE2/Lo4uKtFpJKMXY3/OhBSRNvy0nunT46tqB07OJC4Sl5ffhpr+Bk81wL02n4apncS8nLHuOaCrGkIC9zKcxeuGzTEeW7Lx/5HIQYuqbJ1+J/eUhqNM0XTPH3hfG0ImVSEtuBOdeJcfXT9g=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3897.eurprd04.prod.outlook.com (52.134.73.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 07:49:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 07:49:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Thread-Topic: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Thread-Index: AQHVMu9Qagn4ZAj9sUKncGzfKuws0abdnJEAgAB74HCAAAwBAIAAo0oAgAIrlTCAAFrfgIAABfvAgAACIoCAAAA8AIAAB3VQ
Date: Mon, 29 Jul 2019 07:49:43 +0000
Message-ID: <DB3PR0402MB3916F32F03E542AEFBD39A43F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
 <20190727161736.4dkfqgwftre67v56@fsr-ub1664-175>
 <DB3PR0402MB391600891BA75DFFA9674058F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZB6tmYFA8wwh0Fm49LTTDuCLq-SWVfrcUkRWWBo=0U13w@mail.gmail.com>
 <DB3PR0402MB391627F725AA7237BCACBE87F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZBrmikenTvnh7syhy=PDPcTL3fn2TJ+ya=ToZ+SFmH5tw@mail.gmail.com>
 <CAEnQRZDSjmcU8Q7+kMeFf12tx0NuMNjrcsgnXayvHpu4ChwHGA@mail.gmail.com>
In-Reply-To: <CAEnQRZDSjmcU8Q7+kMeFf12tx0NuMNjrcsgnXayvHpu4ChwHGA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c879750-2cc1-423d-a2b0-08d713f951e0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3897; 
x-ms-traffictypediagnostic: DB3PR0402MB3897:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <DB3PR0402MB3897E8708A7E4BFF1F69D450F5DD0@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(366004)(136003)(43544003)(189003)(199004)(486006)(3846002)(76176011)(33656002)(71190400001)(71200400001)(44832011)(446003)(76116006)(66476007)(66556008)(64756008)(66446008)(316002)(66946007)(229853002)(7696005)(6116002)(6916009)(7416002)(476003)(99286004)(53546011)(26005)(25786009)(6506007)(102836004)(11346002)(86362001)(2906002)(8676002)(54906003)(5660300002)(6306002)(55016002)(966005)(478600001)(74316002)(7736002)(14454004)(305945005)(81156014)(66066001)(81166006)(53936002)(9686003)(6246003)(68736007)(14444005)(52536014)(186003)(256004)(8936002)(6436002)(4326008)(45080400002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3897;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: smg9KVH8T0GIkC9PwV3yRgI8jCLuQByiYl6/hGIss7QYu3f32EAA0r+lK0MS5rf8Ti+7JzfS1YgqjFqqxWUS31snFTficf9pkI3f2n2kePRTeBYcrkXLi+uGk/TtrWLu0bMlvhlpnCf5hkQ7InVVbIuXCfKKNAmrlPw70/LrSIAUjE+KPbc/K+hnkd3srAX0LM+waF2B4n1Bx3WN0Cs/Jqq0mfDThdemgUFMwFfHJu14hZTz6FVvHCyFtTCWiHwvM+PLQ7xlg0nZVuYspIG63Sv2Axitan0ELyQyIxXyn32h3DwxLYTJq4qoSpUsBIEO5ikNymbpegnXthZZscHWK3I7kGlGmlhJs8CW0MCWPM3/aAJyEF2Cfatg32yh65YLK3kZ8hWQV48WUlLvUFcf55lcELf0jIrDNbQ4bsEa+Rg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c879750-2cc1-423d-a2b0-08d713f951e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 07:49:43.6465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004948_327273_B7A5351B 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?utf-8?B?R3VpZG8gR8O8bnRoZXI=?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> On Mon, Jul 29, 2019 at 10:20 AM Daniel Baluta <daniel.baluta@gmail.com>
> wrote:
> >
> > <snip>
> > > > Your explanation makes a lot of sense. We will take care today of
> > > > Abel's patch.
> > > > What do you think about Fabio's patch? I also think this is a valid patch:
> > > >
> > <snip>
> >
> > >
> > > Hmm, when did Fabio sent out this patch? I can NOT find it...
> > > I also have a patch in this series (#4/6) doing same thing on July 5th...
> > >
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpa
> > >
> tchwork.kernel.org%2Fpatch%2F11032783%2F&amp;data=02%7C01%7Canso
> n.hu
> > >
> ang%40nxp.com%7C048d8695b3dc4ceef6bd08d713f55e8a%7C686ea1d3bc2
> b4c6fa
> > >
> 92cd99c5c301635%7C0%7C0%7C636999816880118674&amp;sdata=1HIMQ0l
> iKpEFS
> > > 6P2WSG%2FH9evspxIdxAvFmaklH1woDk%3D&amp;reserved=0
> >
> > He didn't send the patch yet. It was just a request for test here:
> >
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fcode.
> > bulix.org%2Fpd88jp-
> 812381&amp;data=02%7C01%7Canson.huang%40nxp.com%7C0
> >
> 48d8695b3dc4ceef6bd08d713f55e8a%7C686ea1d3bc2b4c6fa92cd99c5c30163
> 5%7C0
> > %7C0%7C636999816880118674&amp;sdata=p70mgCDucCgLJ8TTRMn3a%2
> Fk68FXGQeiR
> > FR0fVSV7Jlo%3D&amp;reserved=0
> >
> > But, now I see is exactly like your patch here:
> 
> ... pressed send to early.
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.o
> rg%2Flkml%2F2019%2F7%2F5%2F19&amp;data=02%7C01%7Canson.huang%
> 40nxp.com%7C048d8695b3dc4ceef6bd08d713f55e8a%7C686ea1d3bc2b4c6f
> a92cd99c5c301635%7C0%7C0%7C636999816880118674&amp;sdata=ciWj8y
> WPvkIZ5ni%2BohZuaqAXf9Pb2FCWhp9GQhpMwAY%3D&amp;reserved=0
> 
> We are all set then. Thanks Anson for clarifications!

Thanks, so we are all clear about this issue, need to wait thermal maintainer to review
the rest patch in this series, but I did NOT receive any response from thermal sub-system
maintainer for really long time, NOT sure when the thermal patches can be accepted.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
