Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5EF12EC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyaFiwozRrVqwNN87NkrPz/d6r4jlXI3gQekFuhKuCw=; b=qrRx11Jmh7Prs5
	Dmd6Jj1W67ZGWTsqyd6zjbvpp1oS/qTfizPg8aMQ7o/z5zok1XKeKjfSI5ONs3MgpHxled11M+yBs
	3YpD9c5RMwkUfluOSWlCgTmwmiX6zYUAOxAnJheU9zLgzo9hdAG/0Rt+Ih+8Vd3w/8Gjvv7EHaNZ0
	/hQBPA0efH2dDHJPvvD9nxAtt8MMgNJctBYXvpHbMoSIFlj/IliTsMAZ0KXrUtPby+HZK9hFKb9l6
	8o44cxXd3qWA2VY9Zgnyhp0I8T0w2OVxopcOIG3Pz6pYIYUa0Qcr2L4RjbKHBUIpaP2tWtrY5slXq
	7/2aQlzibtkGvgzGVPsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXr6-0004r0-Ag; Fri, 03 May 2019 13:04:00 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXoG-0000xc-Ai
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+bGCSRBedFExNob9USjPhrev+AeBnxxUlE1UwuDJV2g=;
 b=VoE5CMwA1qZqYzPaOIWfWDU3msZjKg2iEgHdFQsi/4W8Mvj7fqlOM7vHIWGURIa/lxCdjJQJx5NAc1kZX1CBvg4IvJNb1M7dsCp72RqYTcrqVEvlt6NksLoizhf+1hcDig29w8J8Czlxt7xNAHOyeVsKWxiK3VQpSw9szXy2J9g=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3659.eurprd04.prod.outlook.com (52.134.66.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 3 May 2019 13:00:59 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 13:00:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: RE: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Topic: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Index: AQHU/u+rfzNhsf6HmUqZui5Dk6oOlaZWxBSAgAKeEQA=
Date: Fri, 3 May 2019 13:00:58 +0000
Message-ID: <DB3PR0402MB3916CB92026E67F0D7BE045BF5350@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
 <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
In-Reply-To: <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e74dbac-2209-4e79-700a-08d6cfc76360
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3659; 
x-ms-traffictypediagnostic: DB3PR0402MB3659:
x-microsoft-antispam-prvs: <DB3PR0402MB36595F2C2B82A00660A6717AF5350@DB3PR0402MB3659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(376002)(346002)(136003)(199004)(13464003)(189003)(81166006)(8676002)(81156014)(52536014)(3846002)(8936002)(6116002)(55016002)(9686003)(7736002)(6436002)(316002)(305945005)(6636002)(229853002)(53936002)(110136005)(6246003)(5660300002)(478600001)(99286004)(66066001)(73956011)(102836004)(66946007)(76176011)(53546011)(6506007)(71200400001)(71190400001)(7696005)(76116006)(66446008)(64756008)(66556008)(66476007)(256004)(14444005)(33656002)(186003)(2201001)(4326008)(25786009)(86362001)(14454004)(68736007)(2906002)(45080400002)(2501003)(11346002)(26005)(476003)(446003)(44832011)(74316002)(486006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3659;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zXjDiLjeG47ZlMy1yeU0mpdvEBjHVPC1zwixJ59d+jEIZCTVuhNeus36GkSCuUBcEM2egO30gEqs9ZN73SeiDh9H/1QMaaEIkJNzrNXdTSBzSt4+BvH1htFB5MU5bAohC7x7kG1ANzaGnQU/6ptxbCaq9WypVmgOsISt2x1VdNn87293OXBb7TZqLsbz4GKaj26pTNeb8wk9T1KK5YIjakDaH+9Y+J58JHsF2BqOKVVdZgVvQBx0qsthn8lQFVdJoQeZL+0NbMfCYaFzusrS9yXMwNoglP0wdv2aIHAAuj+5nWot4tzJWZPNDleEeuVS8XJFQISMC9UwsE074+LtaJxs06GdQ6d5Uefng+s+/ppk0H88+M5rehItr3kUsAbumBBkmXQXUIUulkrdxwiZKpUfgUUTr8YCeDV3+ZYDod4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e74dbac-2209-4e79-700a-08d6cfc76360
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 13:00:59.1159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_060104_980374_4827C2D0 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> -----Original Message-----
> From: Stephen Boyd [mailto:sboyd@kernel.org]
> Sent: Thursday, May 2, 2019 5:01 AM
> To: festevam@gmail.com; kernel@pengutronix.de; linux-arm-
> kernel@lists.infradead.org; linux-clk@vger.kernel.org; linux-
> kernel@vger.kernel.org; mturquette@baylibre.com;
> s.hauer@pengutronix.de; shawnguo@kernel.org; Aisheng Dong
> <aisheng.dong@nxp.com>; Anson Huang <anson.huang@nxp.com>
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
> 
> The Content-transfer-encoding header is still base64. I guess it can't be fixed.

Below is my git sendmail configuration, the encoding is set to UTF-8, I don't know
why it is still base64, let me know if you know how to fix it, thanks. And, will you still
review this patch? 

Anson.

  6 [sendemail]
  7         smtpserver = outlook.office365.com
  8         smtpencryption = tls
  9         smtpuser = Anson.Huang@nxp.com
 10         smtpserverport = 587
 11         confirm = never
 12         assume8bitEncoding = UTF-8


> 
> Quoting Anson Huang (2019-04-29 17:57:22)
> > The pllv4 supports fractional-N function, the formula is:
> >
> > PLL output freq = input * (mult + num/denom),
> >
> > This patch adds fractional-N function support, including clock round
> > rate, calculate rate and set rate, with this patch, the clock rate of
> > APLL in clock tree is more accurate than before:
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
