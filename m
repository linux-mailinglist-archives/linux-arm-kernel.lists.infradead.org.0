Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31108BED04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDtFRRJulOm57GZGWth2seZQc2pfj65UrpWtT1hsFEo=; b=juFLm+eErWFR4k
	Th0TAYVevUBxX3lqy6WqT1oayQYFbH3YV7GC8RewmwcPhFnSy9f9uN+Kla62rOHAWP8usubcG6Zml
	GR0LJJa/8zS0iIiDAeKqt9VcXSFk18ReBoc4AW/Sa/QepTrtpMgY7VXjXTi/Tjs+sF/IH2yupAJnV
	PsysYq358fHEISmKFdS18/jLHv+ROBCS4T5mS8yzlN13h20SHaBGDP1ApxUXr6sB5V/eimsEux2PT
	fqjr8ZMa6CZzu7CeGGwGZzmZhm6QZN/5Tbnv6la+Cz0SIQSVX8EL6u+qkBAPyfbhFlcSm9SjNXEYu
	ZMHOTP/1tAy4ZymVt1xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDOkR-00081b-FB; Thu, 26 Sep 2019 08:03:35 +0000
Received: from mail-db3eur04on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::625]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDOjz-000812-Fp
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:03:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcluinXr5u9LX5+Ep/9bs9cdmdoHe56653zEstnmSC7Q3EBf0//PIsvXQPV8dFtlLZpKSpjSxUzuJSEEsvj8DWfXM1hx+8TaZTvE+/i4aLC40dzrGMNglSe9idZuaBjL14Jbmuz+bx6HUIyPM9+dkGFpop/x5QyqCDqU40driYF+fRLzEuT7TCHZdOg7G/Jtt9rfIDSLjkTjFY2BYIxg6F1F0j4jhXjLE2ttPncVWQ9h4SaxX4nP/J9eJlgAyoxDzXqhlRASE0+tY4CEVrqOTB84lgmTz92k9IVTIrS2cJEzdLrl9+X+eZ4i+KNOkNXwl/Wqew6gRYdQa1yNhDRADw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUigfO2G3aNApvlxY6j6Lppk+xtWZGsqgemnc1PXHn8=;
 b=Lxj0inqOVVCnskhrVefzm3Ep394XbJc6Mr7BZANYdsPHzO0iBf/AjxWZ+Ds8tmqVxAuM4cykkIPA5ZowLJZrb+1gKGTnHLmkWRHVBmkQ4Ggriy6Wos1jCv5plMdw6FDLi/r+8163qiLg+VfSA/04P65HPq0pkqKxrN+SqJZDOlFMQuJ6nsohVDCZhFMokQ3nfpnddUql4MknPfmUstulKsuHfPCXZGHGultxidpGgWg4zNYPLsq7vHp+Y3AlkWRzUWScAyuMtVojenoSnk5swzyhS0qWRUvf3vMxpomxmHUlK4SviKUvWyixCSf4ZuJisPQWTO3Jd1w7elqZOOJNzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUigfO2G3aNApvlxY6j6Lppk+xtWZGsqgemnc1PXHn8=;
 b=mBz/EbKrZqeFAMnydEyKkh2Cw55NhLo5GtXOaOVINPOzNORgOoraAsYVd/lrE/FKf9SMwSeqrclao1geS562gvPuvNCftPL2bZJP+OEPgUCRlMfd0U6EqGtBODBah5u52Yi7wxXrtNSYkvyflzkI6UE3mr2xpjb5M3hoIHcKl64=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3900.eurprd04.prod.outlook.com (52.134.71.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Thu, 26 Sep 2019 08:03:01 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 08:03:01 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lT/ErvPybCJUCbZ2x7mLGjsqc9mYAAgAAANtA=
Date: Thu, 26 Sep 2019 08:03:01 +0000
Message-ID: <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
In-Reply-To: <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61aef425-6e4c-4215-0bba-08d74257f3b7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3900; 
x-ms-traffictypediagnostic: DB3PR0402MB3900:|DB3PR0402MB3900:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB390041FEE4C5C2B6F12C0536F5860@DB3PR0402MB3900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(189003)(199004)(76176011)(8676002)(4326008)(305945005)(66556008)(76116006)(64756008)(486006)(2906002)(71190400001)(6246003)(476003)(9686003)(74316002)(45080400002)(6436002)(55016002)(44832011)(52536014)(66946007)(6306002)(66446008)(66476007)(229853002)(7736002)(71200400001)(66066001)(256004)(33656002)(478600001)(6116002)(3846002)(81156014)(5660300002)(11346002)(102836004)(86362001)(8936002)(186003)(966005)(54906003)(446003)(6506007)(99286004)(14454004)(7696005)(6916009)(53546011)(26005)(316002)(81166006)(25786009)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3900;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GyEdOr56flwaxBF0XfzC/fw4XoeC1HDEtZ/2pwcRtmqTvANYRuFnq+lqBJvLlQFugtrc4f8sfEqHvWy7CWQG5vYbSIBBc46amiFJ0WjLaJdf7ZZNRBIP5M/bka9Sm0o7escSe1c/bSA9nZ8LwluM1fGeehRMAOx9VbvgyUifsaTRYQgYywCbiLsM/xEQBlTRgmxAq0Gfw7oxEK7Ho/UIDVpEZ4EChlZARoEVWuQ/6ocHV74biOyhEkEmyYIrDL8A81cwWyNAUaDGnczdkir3reZPljVCnO2JQS07kV0yXR8piUfTmRRUbbPM0XHOfGidhrn8G0jSOfxyXpJ5oLRsXb1kpR5LDIFFcE8Gqf7+Hwq4/0oYLUouV9I/gB10Mt/VtA/MtcqqILCvWKVJlXsXNXDPYbWaFJqqhQuAPsdQLro=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61aef425-6e4c-4215-0bba-08d74257f3b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 08:03:01.2993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Nh03er2WrEVRcbQfYNxfidMLhbopbXyURiJZJ+LasWKJkh9NMxn+c9X31+EhLae+jXcl8QnTsu/2YcTGGRoKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_010307_645900_CD656BA8 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:625 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> On 19-09-25 18:07, Anson Huang wrote:
> > The SCU firmware does NOT always have return value stored in message
> > header's function element even the API has response data, those
> > special APIs are defined as void function in SCU firmware, so they
> > should be treated as return success always.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > 	- This patch is based on the patch of
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> huang%
> >
> 40nxp.com%7C1f4108cc25eb4618f43c08d742576fa3%7C686ea1d3bc2b4c6fa
> 92cd99
> >
> c5c301635%7C0%7C0%7C637050815608963707&amp;sdata=BZBg4cOR2rP%2
> BRBNn15i
> > Qq3%2FXBYwhuCLkgYzFRbfEgVU%3D&amp;reserved=0
> > ---
> >  drivers/firmware/imx/imx-scu.c | 34
> > ++++++++++++++++++++++++++++++++--
> >  1 file changed, 32 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/firmware/imx/imx-scu.c
> > b/drivers/firmware/imx/imx-scu.c index 869be7a..ced5b12 100644
> > --- a/drivers/firmware/imx/imx-scu.c
> > +++ b/drivers/firmware/imx/imx-scu.c
> > @@ -78,6 +78,11 @@ static int imx_sc_linux_errmap[IMX_SC_ERR_LAST] =
> {
> >  	-EIO,	 /* IMX_SC_ERR_FAIL */
> >  };
> >
> > +static const struct imx_sc_rpc_msg whitelist[] = {
> > +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> IMX_SC_MISC_FUNC_UNIQUE_ID },
> > +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
> > +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
> 
> Is this going to be extended in the near future? I see some upcoming
> problems here if someone uses a different scu-fw<->kernel combination as
> nxp would suggest.

Could be, but I checked the current APIs, ONLY these 2 will be used in Linux kernel, so
I ONLY add these 2 APIs for now.

However, after rethink, maybe we should add another imx_sc_rpc API for those special
APIs? To avoid checking it for all the APIs called which may impact some performance.
Still under discussion, if you have better idea, please advise, thanks!

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
