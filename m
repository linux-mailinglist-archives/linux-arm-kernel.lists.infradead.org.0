Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D498689974
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPREeugc89hDu0P4WDhQEAx9L/NEVBQb5sG+5U6F4TM=; b=fcXJxI/oSDLQ04
	JCHlQ5gL3sJE6Rnlf1A5fFQ8mXdKBbsnxG2OyS4YASJyFj4kVjAd4YoVmXRIlqQx06SVL6OwzdPZR
	ZLlsP0rHDOH41qUdA8ruroIBgMX7jwzpeFqnnM9wvK8wqVXbeEFcLM3BgGJPLgUx+r+QzewKj3TH8
	5egFh0CwkajCC0FPabpGmHhXfW8OheFovrYQedbgLjTvgw1Nt0PeiRa9lA3QdV6hKuEKvhQvDL/3S
	xB5PSbTs6T5wedUpPq9wQ0oNcfnKMme76VyKehzxpEO3vq4QCzyd6HhnxA91P7dbpoDT6bX43nOWs
	b1wwSzugGFrK/DqSyCeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6JA-0004Hu-J0; Mon, 12 Aug 2019 09:08:04 +0000
Received: from mail-eopbgr690062.outbound.protection.outlook.com
 ([40.107.69.62] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6Iy-0004HX-21
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:07:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJ3gTKyV0I4GHTMzulnj4kCD9Z1jjnGwHPjlLCiepIhmeJYoK4ft4jNfW2LKecUy95lzsrNMQYQ+7p/D1bg4LR9ycYbs+xaMZG9xVNVBfk4M3Cq7Jq4/Oit05z2qKwsZ8ey1M7r5HqX4uYjz8ueRtUpClzhFt7ogFhw7ekwI6gzCQLE5Firbl/zB3kiAwkMuclY6bcNvk25aDfkjOGN1Fbde59ZmLI7NM9m2vRqEqAaydrO+x5Ts1GH2mTzKgWBlwRN4JE40A+eJQji5m2uW4gC/P1EagxwEbMT67XjGN3lC6unuythPygu+jvCcv++/4aUy9yRkZQbp/AXPvYlbGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fnzR6td7kfoQXTg1O2h9LyVjbNA0Fs+TsWSO2QZ+bhw=;
 b=ko0302l8CeB432CWHYxgP4upJAMIHj2RsGDqqhdti/kiqOVYuzkDOvTaVYYQFfgSe0ct/+hQi+2jwcAxaigVfIIDPvmfypWx7q49uGHd5nqSJXTZoyWz4Qly+J3pTQ1wB3eB5D78o/ig9rAazU+JD0PJwRXMk+jEbrCSZIcvroCeF8tU4vRBKcWTLvPUz64Z5a9hqbTVIk42j26+05pXG+xAFAXToHQqker4w5EyB36M3JnH2Fb09nDKrR1wRF5GQj8fud1Pv7k06LM1SycIIV6KreYJrxEaVLIQFksfezROHtcrjWZyntXtk5NvvOnEKaynFXE4JE54bPw29Pr0PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fnzR6td7kfoQXTg1O2h9LyVjbNA0Fs+TsWSO2QZ+bhw=;
 b=Xx8ErFyEicOyMOdCOMSbCR7jyGFZf2gQ47gzm/TiefQ872sFmvHQvpZBo03H0JCREzhK2EtVuRlnKlwU8uPaZebLoaUNwwZVFvHRA3bX38VT50G7Id6urIyEGK1BkeeQJZNEQ1oDZ3T+HdppnaMld4RgKFA5vLVKT1xM5aZl9rM=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.175.209) by
 MN2PR02MB6159.namprd02.prod.outlook.com (52.132.173.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 09:07:48 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::51c3:4e3a:8313:28e7]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::51c3:4e3a:8313:28e7%7]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 09:07:48 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, "wg@grandegger.com"
 <wg@grandegger.com>, "davem@davemloft.net" <davem@davemloft.net>, Michal
 Simek <michals@xilinx.com>
Subject: RE: [PATCH 1/5] can: xilinx_can: defer the probe if clock is not found
Thread-Topic: [PATCH 1/5] can: xilinx_can: defer the probe if clock is not
 found
Thread-Index: AQHVUOzNGBkOMLLSYkukMJ5tsNAwwqb3OKiw
Date: Mon, 12 Aug 2019 09:07:48 +0000
Message-ID: <MN2PR02MB64001BE4B002AE2AE5790FC3DCD30@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
 <1565594914-18999-2-git-send-email-appana.durga.rao@xilinx.com>
 <144fdbc7-982a-f50d-3bf1-dd9ee2ad282c@pengutronix.de>
In-Reply-To: <144fdbc7-982a-f50d-3bf1-dd9ee2ad282c@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc5d4833-45e0-4f9b-2c31-08d71f048c1c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6159; 
x-ms-traffictypediagnostic: MN2PR02MB6159:
x-ms-exchange-purlcount: 1
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6159413E4259F348BDA21BE8DCD30@MN2PR02MB6159.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(189003)(51914003)(6116002)(7736002)(74316002)(305945005)(186003)(229853002)(26005)(25786009)(3846002)(966005)(71200400001)(6246003)(52536014)(107886003)(71190400001)(66066001)(6636002)(53386004)(99286004)(6306002)(316002)(8676002)(9686003)(5660300002)(7696005)(2906002)(81156014)(110136005)(76176011)(54906003)(55016002)(4326008)(102836004)(53936002)(2201001)(81166006)(8936002)(86362001)(6506007)(53546011)(478600001)(6436002)(14454004)(486006)(446003)(11346002)(66446008)(476003)(76116006)(64756008)(66556008)(66476007)(66946007)(2501003)(14444005)(256004)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6159;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jGKnjXFt0EEQCVgXPGDeWbYvB8UICzrBEY5Io4lwFcF/aDDhFHW/BmoShGyKcoS3GGHbg9CjEFwCnH6Xh3BknCvVJTIqYmJlu+KmfYCGOG+Cae1HMIVOpaV1fay+cOOYdw1/1hnZZcq/SEj86k1nyeeZmgwQaw0EAiJXoM72dDebibDPCwFou9PQ0ynJI1VzTRFrgPQ5tqe8bAw2V7G53yy/jyymkU4qE0m4tiaVjunHZkRIN8+B+Duq1xUGx9orpOkPgY4Hpxbqhw6W21rzNBSAcz+pTrEoXITCl4wBXbxSbzZYET37mLBeWn+Ty0Z3OWBYTB9ZR+IilPsLrrHPY2N1pSdgTYX4meI+oG3yLQxQlYqYAONOHq/SoWFTbzyXQaynRgomQvBPtS0bBTRYx5u4Acn6l5svyJEZw/C69n8=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5d4833-45e0-4f9b-2c31-08d71f048c1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 09:07:48.6002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0kngpIOeXUcpHrBDJoHvtxZDWUjCYbN6TALydIOiLVGKtkazI+vSYH4Ho3lXNDNpEc4W7hO1JDgXkepVzFTyvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_020752_097761_9E70AD39 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.62 listed in list.dnswl.org]
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Venkatesh Yadav Abbarapu <VABBARAP@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Thanks for the review...

<Snip> 
> On 8/12/19 9:28 AM, Appana Durga Kedareswara rao wrote:
> > From: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>
> >
> > It's not always the case that clock is already available when can
> > driver get probed at the first time, e.g. the clock is provided by
> > clock wizard which may be probed after can driver. So let's defer the
> > probe when devm_clk_get() call fails and give it chance to try later.
> 
> Technically the patch changes the error message to not being printed in case
> of EPROBE_DEFER. This patch doesn't change any behaviour apart from that.
> Please adjust the patch description accordingly.

Sure will fix in v2... 

Regards,
Kedar.

> 
> Marc
> 
> >
> > Signed-off-by: Venkatesh Yadav Abbarapu
> > <venkatesh.abbarapu@xilinx.com>
> > Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> > ---
> >  drivers/net/can/xilinx_can.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/can/xilinx_can.c
> > b/drivers/net/can/xilinx_can.c index bd95cfa..ac175ab 100644
> > --- a/drivers/net/can/xilinx_can.c
> > +++ b/drivers/net/can/xilinx_can.c
> > @@ -1791,7 +1791,8 @@ static int xcan_probe(struct platform_device
> *pdev)
> >  	/* Getting the CAN can_clk info */
> >  	priv->can_clk = devm_clk_get(&pdev->dev, "can_clk");
> >  	if (IS_ERR(priv->can_clk)) {
> > -		dev_err(&pdev->dev, "Device clock not found.\n");
> > +		if (PTR_ERR(priv->can_clk) != -EPROBE_DEFER)
> > +			dev_err(&pdev->dev, "Device clock not found.\n");
> >  		ret = PTR_ERR(priv->can_clk);
> >  		goto err_free;
> >  	}
> >
> 
> 
> --
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
