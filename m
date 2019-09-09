Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453D5AD8DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MLc5o9z1+Mf5y7IgjJl5dZMW5QKFEkkB3WnLaOGTPI=; b=bZY0+L28EacgHl
	WaeWLUmXPzjHZzg4D76ZodSlK1ZDFkwYOZWF1mRbguWZjBug6CQ/8+Y2GFNhB3+LzfiWZ39JrCcmI
	Y98uD2FMSII5Xeuv5FQZ0zJyI/b3twQ3gKK9KLBta8yM+VhAwdYFRpLajWkpEx52gnSZevez7cRRm
	nLdShbjg7MABza+BXI4N/QIWi4Ycpvg/foIaaHi30x2OtmfGmA2NagkiFNGj2Ji44/+s2KchSpis5
	jY1//IFojIbnu/cijwFb2O/k2yU3jbBRwHmqRzSfKh+WAXPS/mOYM6w64MO2uJPV8nVWIxa5jGk/s
	QhNpXZgY4gV3gFWQNdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ifo-0002ZY-Am; Mon, 09 Sep 2019 12:21:36 +0000
Received: from mail-eopbgr150045.outbound.protection.outlook.com
 ([40.107.15.45] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ifh-0002Yy-Nc
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:21:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LGgKaM6M6XD0HmE8eDCFbcn4dkqUvrldCU0ajV7LJmEOGd4dbFJ87BysdExsoFfBHQj6T7Br6dD80q2GRBGiO2AAlFZCtGXj5L+jem0TTjt4mPkllasej2X5DiWqSS9t/gl1MEsvbnT5xqKGQfsLT5b+/UbNI1HuKCA3NGKqsH2yREZbT7F2SWl7BGgGqxxZL1WDkSFMKxJ9/n634KC5i906NP3kBlvjCKjXHEb6xVslQ47uCgf0ofvglW2NK1p1bJFHm1kpPAP+mVoqepxhCkOICgC8bNy8+17Zfi+ul/FiKISSvxQJYldiu/Wx5mnlyfcpqg+sv4k99j/ixmiekA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Ths7aw49Dz7G71x/+Yt2nUTGsa3JQBSWY7SDM++IFo=;
 b=gzxlbUbsot/do7GGLhyg1O++rdwYK5WWDkQ9VSmIUDmk0YzWpRrEtteZheH25SxjIVzdcQ5N94RUXHj+vXtISD6tvZthFlOr/MsHPyoq4r6jnpiTfSr3Vj4Kzbfg5X2GJIGaWLmel74sgeGgACy2KUWWInKvrEFGlbC3wphT3xYJleC+siw5nveKAaxSRk7wOIow152XcVf8cc7zcrfLifij+N9HJIvamiXQDtPK455dYbtqO9cdMw+wfUxVY64PPP/BvXpp7UDAyIae+Q72euKeFsoyqdwP5endY6pJiuBdezl3VA/9CrPyLFT/+mlIPcHPrNQ4C8ze7rA3j+NImg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Ths7aw49Dz7G71x/+Yt2nUTGsa3JQBSWY7SDM++IFo=;
 b=MMWBRd+d0MHyLDPKluehIensgWOBjxNAoXV1xtY/rmCyHrYbKPyWp2WyC057uWObbFoIi//cZ3YGl04Q+WlS2Z132KDtSgETza1mGZSQIe5f6t7TzeJh0fDw3SQJqQx12Kto7G7inT7iTpivwo0vd5h70uaf/V5/v0PdX+8LQHo=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB2135.eurprd09.prod.outlook.com (10.170.212.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Mon, 9 Sep 2019 12:21:25 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::19cd:2f16:89cd:67cb]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::19cd:2f16:89cd:67cb%3]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 12:21:25 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH V4 00/11] clk: imx8: add new clock binding for better pm
 support
Thread-Topic: [PATCH V4 00/11] clk: imx8: add new clock binding for better pm
 support
Thread-Index: AQHVZwkY6bbdexqsRUit6qY6RV3jGA==
Date: Mon, 9 Sep 2019 12:21:24 +0000
Message-ID: <20190909121451.GA16292@optiplex>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0129.eurprd05.prod.outlook.com
 (2603:10a6:207:2::31) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58d2419f-2cf5-40df-0d6d-08d735203b3c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0902MB2135; 
x-ms-traffictypediagnostic: DB6PR0902MB2135:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DB6PR0902MB2135CD879DD79094CEA02E29EBB70@DB6PR0902MB2135.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(376002)(366004)(39840400004)(396003)(136003)(199004)(189003)(446003)(25786009)(11346002)(14454004)(305945005)(99286004)(4744005)(53936002)(44832011)(5660300002)(33656002)(1076003)(486006)(66066001)(6306002)(102836004)(386003)(6506007)(476003)(33716001)(316002)(256004)(54906003)(26005)(6116002)(3846002)(66946007)(2906002)(966005)(71190400001)(508600001)(4326008)(6512007)(186003)(8936002)(76176011)(9686003)(8676002)(81156014)(71200400001)(52116002)(6436002)(229853002)(6916009)(6246003)(66446008)(64756008)(66556008)(66476007)(6486002)(7736002)(86362001)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB2135;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IVLbJrridZoCZTS9vbfVydDQoaw8/39moJwjvJQ9lhZsq7N2252SkHwZ9CM8mGq9MavO8HTCYCnbhbLkzPUn4KQsRKXAp+S6CSplOmSjjnkqyCfpZN4iIir2lmvHTn+Au577l/Lqwm0cQkMODyY9omtPzkvJjmQ6gaZyrKoQ/2p2DdkaASf+6cDH4+PO9VdJvN1E+2Lh3WSd4esf+bd86z4F1kYt4GUBoDsslmc9G0hT0zp3V8kOonNMeY0Ng1Rbs7a0m8u4WPClq1TyfJKkmbJdOGZp1A5CSqdg/5RzMQacsKCWBxnMxXxseiHWEea4jg4hQx/eR/81zL0s5FJ8Ul9x8T5YQWjLU0atOPONcZ7nWIJ55DqXq1VTafxsE7O36Y+C6NDo8NhbL+B/1sFONoQcqfWP1aMvBZtoMowlYLI=
x-ms-exchange-transport-forked: True
Content-ID: <A672A91056B5264A9BD51966A07075AC@eurprd09.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d2419f-2cf5-40df-0d6d-08d735203b3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 12:21:24.9199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2TxH0vIoad5i+yqCVFBWryGbwBCXMirHv4SMYZsmHiN/ma8MSvjHximwXC9iywl3+ky8I3tzWYueqJ3iJZS5ArjhggNlmORorSKzusrNG7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB2135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_052129_824394_CD067555 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/19, Dong Aisheng wrote:
> This is a follow up of this patch series.
> https://patchwork.kernel.org/cover/10924029/
> [V2,0/2] clk: imx: scu: add parsing clocks from device tree support

I would like to test this version (v4) of your series on my imx8qm
board. Last time (v3) I need this patch series ontop:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=146521

Is there an updated version too? On which linux-next branch should I
apply your changes?

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
