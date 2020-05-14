Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9DA1D2559
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 05:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayBtsnEeFfJWOAeqVPneyyn+JlOGbxCtGAg/d9rG+YM=; b=Bo9aRnLG1m5G31
	r1cXcR3Fz2d4Yss+pwKTG6RwpltfkdghS9vSteKbbkOZsNZnzGq3FdoZMasvHg3wpat6E3y91WFiJ
	8iw4AphfmKrMS1FyS0M5G6tgS/rsQhf/bL5g7UyuDidStvgcAYwfkzkN0FdqVyCPhoxUshQnKOymH
	jx5o47S2P53mKYfC/5Q1hgdTnkxBJMY9D777YqWlkUoTjXyAdzO1DcETbqxo/R9oy++a9iklYNyKl
	lXzLpBQ9Ka5TxwrfLGFq9h7Un5anqtT8GbA1cn9E5vM5/sYELbYGMTvG8JdBp6ZBi4HMoGVh+WGSP
	UjfKBWPelKkuHZbXbddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ4Jr-0000mB-Iw; Thu, 14 May 2020 03:13:59 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ4Jj-0000lc-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 03:13:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dt1Yj4OF4fB9mBiaxHPbPGyxBIXoiYYjh6eGeGMskdKZcMqXnF5Z1WVCX400NDKsQ4FonIq1Bt2SS0FZyTyTh+qOaiQucqsVsUvDnazNhYuHVm1UfCYGiPN4peOFOZ1iAeI1OsiBjrxAuuFRhZLfPfq0Ujf9plbtk8FNUADAgPV6jmcHvcKC6BAIU1bxfsnWPxlhcP49+abQKrSbJiTmqAwSy2YCxIJw7TOgYdhN+xTj3O+QV4z6OJNPF0OChqv+E700GO9D7SzY17+BBk1IcBB9PrN+Pway1Crnk6gYLZnN4Zvce/vJeStNqWRYEvgho98Y8CJ7YQ45oDb1+TORwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E7/Isezmdd0F8/mq0CSIKYWBnkIU3hZCC/7aMkKv55k=;
 b=Za+H9BpdAl/j2mYxcskQvCaizPRI66NKxrT97KKZHzPPscN9v7fW+Zfj9zNP7yebgs4yrl/ZTVaKu7voWnylJzAXP/f/tmM/NemTolpyZg2tAd0usfkAHXtSAqiRPmfX/q53TjZSHSkov0a0CKZNgaraAQr2irRoxH/YsA7546gjjocoaUuH3ntycJqkFgWW6YjqWzykhoN3RlzyICxIEkRL1pfSj9abDrg1WRpXDU+dUNQrQ695I4EeaM85L/g1jzGzFunr7CKbmGRHXKUvcT37Sq22epyWHb5uvZB8UzC0yHCnNn2hev0C8+5UZ5Im7zehTm8/LBdcnZIvl+wxdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E7/Isezmdd0F8/mq0CSIKYWBnkIU3hZCC/7aMkKv55k=;
 b=CjoiHqR9qEVpD5UvXa2iFJXvskMnijMg3stCdFJUOoWzUO038/s3fBJLKXx1StaQ16107JNkH8ZmqfwZRreSWe7pGtpxreVw1EQ2u7MEj8aJ2ViwvtbZNMr4V4Q7xwJdp9aL+hSey+lkGet6FKBqrDcSm4yzo+pK1Xf52twKLj4=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7189.eurprd04.prod.outlook.com (2603:10a6:20b:116::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Thu, 14 May
 2020 03:13:45 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%5]) with mapi id 15.20.2979.033; Thu, 14 May 2020
 03:13:45 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWHEiBnWxAU4L90kC2ffOlL+Ll/KilxtUAgAE6YvA=
Date: Thu, 14 May 2020 03:13:45 +0000
Message-ID: <AM7PR04MB688584E51D49FD4A7761734DF8BC0@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200427035655.18157-1-yangbo.lu@nxp.com>
 <20200513082254.GE26997@dragon>
In-Reply-To: <20200513082254.GE26997@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8d960fd2-423a-45e0-7bad-08d7f7b4d002
x-ms-traffictypediagnostic: AM7PR04MB7189:|AM7PR04MB7189:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB71893BEECF2E646CE8AF22F2F8BC0@AM7PR04MB7189.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:177;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k7IylSFiEInMOQO/I7Hd8HYJdNiU1wUn63Z0025ic7oc5VFAYUfIk1Owpf3Bdscr6vj0LE6glHS6iEUxZ7EzfBAQzzMx7jaAs/hofxETPumWcCMJfQ0X2AyxVlM0MJ8vqc5+Odb++c3C3KNuk7yYejwlNw5ZLtO+Hgf1PMdDUO6q88jyJNeLxo2gNkYo69Y94OgG7OkQQCnEoG5k62d60+Mc9RXmCyayRdUHIXdxxrqebeiwvKT8YyDWiVAKL87Fu0HfFZZUyjZV9x5h3Ppr9PgfsePnT4vERNchS9lqGScb0f880gsEU50OJfCWusjsmlWv7pSsSsEAeKsRJSHZhUGyCsAD4XreupJhIcw3oucbORNm+c2MnRuVGQ4dhXvtuCbO945YK6ZtvMQVBHh7ezewgZTe8wgGVL6DI8XbdgaukLKmoo8UT8BIy8s0sPyY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(53546011)(6506007)(478600001)(2906002)(52536014)(26005)(186003)(86362001)(6916009)(316002)(54906003)(4326008)(71200400001)(66446008)(64756008)(8676002)(33656002)(8936002)(55016002)(5660300002)(66476007)(76116006)(66556008)(9686003)(7696005)(66946007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: th5Rozy2LcWIicyEwcqlH0lRkTE3RZEiejToU36XsNsIpflLamPyNFzylQJbyESRoLbiddD6WNrn/LwjdGMQVPPu7qDuqGUiIj9TSNVwK0nxCTKcCpjTTqR0Ni6mEf5HAD9V10KRl9fl8nZe3niAqF1tKq50tF0j844nPNsFhAontiOZKsnv2fbDemU+GersQBxqYy7zrM2wNOAbk8WGP2WMd76mY/wqfkY2bk8as9VW1ZWx+YzsXZTNV8hB8I3F67/WS+8BOuSuZaDEYXJhsU/EJNg6+Zb4wFHQ3uxXA2wAH3+NCxwfS1U8HkyIHbs994I1IlycRvYwPuxBucTG4ZZ/gPchOK+qd/ogeuoVgTOTqYNqP2n1KjAWuGyUSAegPYJxffScE+qw/cIZAUqJFFhUtBhjH39si4gx83rvwmCcXgWpbZF/rb4ABonGN0RtDEaRuGVCyxLe3mjiCAbiVk/MFUxZsX7Hew6u5ipjKOg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d960fd2-423a-45e0-7bad-08d7f7b4d002
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 03:13:45.1520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 496USpxEL6x8EV6zqh0FVCg5lSZnXn+vAQAiqDio1OjLii7dMsFS9h4A4zOGRzI8/VQapERCxAs6sNsuKfrZ5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_201351_778212_F54DA788 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.54 listed in wl.mailspike.net]
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, May 13, 2020 4:23 PM
> To: Y.b. Lu <yangbo.lu@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; Leo Li <leoyang.li@nxp.com>;
> Richard Cochran <richardcochran@gmail.com>
> Subject: Re: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> On Mon, Apr 27, 2020 at 11:56:55AM +0800, Yangbo Lu wrote:
> > Output PPS signal on FIPER2 (Fixed Period Interval Pulse)
> > which is more desired by user.
> >
> > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > ---
> >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
> > index 760a68c..b2ff27a 100644
> > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > @@ -772,7 +772,7 @@
> >  			fsl,tmr-prsc    = <2>;
> >  			fsl,tmr-add     = <0xaaaaaaab>;
> >  			fsl,tmr-fiper1  = <999999995>;
> > -			fsl,tmr-fiper2  = <99990>;
> > +			fsl,tmr-fiper2  = <999999995>;
> 
> Not sure code change matches patch subject and commit log.  The change
> is about changing fsl,tmr-fiper2 setting from one value to another.

The calculation refers to Documentation/devicetree/bindings/ptp/ptp-qoriq.txt. It looks complicated.
But to be simple, to get 1PPS signal (period is 1s) on FIPER2, the value should be set as,
fiper2 = <desired period> - <tclk-period> = 1000000000ns - 5ns = 999999995.

Thanks.
> 
> Shawn
> 
> >  			fsl,max-adj     = <499999999>;
> >  			fsl,extts-fifo;
> >  		};
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
