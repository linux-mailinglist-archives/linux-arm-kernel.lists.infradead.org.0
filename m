Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BB489979
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrHS9KPJqrbY8dULFT4lFIdKtJhD8tcgcdnbaUH3nmU=; b=NKbd2Wfwxzls+M
	02FbiReWzHVKCh0LXx+4ObwHx4CA4eovSoJGV8J9cGFIH4vGb8l88tbxHdkinhzyYTQw447Za4NKD
	SZWnQOJWc9EUcGekfPGmFgaEN0XXm9LY5vTk75TAImQoYRI5Hfo3aKEh5kFO5U/4Chpt4uWIpTvE6
	DWjo2SxCdp5Kw+XF0IPKSPjUzTgBgNjDSAS6odzuQoTUiK/qVHrjE6v16bB9orPQJhB6AVJLBzItp
	dagXciMnxnQM7kGFGmIEwrI6701YCOK4jSY4nwAoDTU5idxcouvh0t90neTna6DDgyvvCKl2wkhxx
	PbJpWuOwd9oV/5qQhoTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6KJ-0004Xq-6F; Mon, 12 Aug 2019 09:09:15 +0000
Received: from mail-eopbgr690071.outbound.protection.outlook.com
 ([40.107.69.71] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6K7-0004XR-G9
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:09:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ay7u6b9MletrAMoUMclpvOzkT/1RiR0esnqsTN08e8LygOXMm30DMhbcA0LkQkCFAF8/yw2gHEGkfW+5YVbB3V/RHXB8sFKwX+Xmhgj0Ykijhw/xd/J8vp2ISGDeGo9kJsvWN5EaBjMEyvx2a8Me2Tl4QB8X+IWAecEVgBQi/iAuTVo2kZEiB8/WTqAf7zt9D2LULBdmbBZLGoPph38fspxKHry7lUHOaACNeDQFTlQLY5bL8UONX+BJcsjzZNBd0y1xotEX7Fxc409XToGpUeRXWGkT9uKqAfXVrkdH6mJM+Z9zDZajl4MWweJDHIvdhOZasUuRZml+vlru8kLCQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BiK13efeEm3dlZeHqPRjqCDNvU9HxRAs9HcHrtRxLhY=;
 b=Ficay3cfLvAwT2zL3w0TvZSFKyYjhR0PgOfCUX28o2S1+FHmxxTKt6b+eWF7V+PeKDpRFB/VHdVU8bTwUQEnMOiYeX1qScFbLsT+8uAGosYshBPX7jb3s0dOrSt4zCPYJ9wsVW6JDoIlPM2RP/qT4nT1w9W+wZuoGPDBpJQxTCOT2qmHulVD98D3gWw2uKcHb8AvPNkuYY1SyNUnJ3BjtTF3uwasypFOc7TIBk+lFHseOL/bvNS+mapaUaiCR5Y/Q3rnn+IQnEfJNaiHCO0hQ4O8Oz9P7e/sz+MOV8PzZD/wpnYQ7vE2H5FvBMufj/k1rolfw48JVSDstdgYJRt5rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BiK13efeEm3dlZeHqPRjqCDNvU9HxRAs9HcHrtRxLhY=;
 b=kypAAZs4Ayh+PFCzyaLCoPbXB1J9tDZp6lif3/YrDNrPLvij5H3O5XlJeCc67lyaFvUnIhAFsm6HNSDr2xqvZI/8hN+quTudOcwQegTL8ZCgMkbsAsdvE9DtUHt7tbJJNlm7BlaUTUh4RF3KOqugJnsh0+npLOOcO7TnBTQL/I0=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.175.209) by
 MN2PR02MB6159.namprd02.prod.outlook.com (52.132.173.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 09:09:00 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::51c3:4e3a:8313:28e7]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::51c3:4e3a:8313:28e7%7]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 09:09:00 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, "wg@grandegger.com"
 <wg@grandegger.com>, "davem@davemloft.net" <davem@davemloft.net>, Michal
 Simek <michals@xilinx.com>
Subject: RE: [PATCH 0/5] can: xilinx_can: Bug fixes
Thread-Topic: [PATCH 0/5] can: xilinx_can: Bug fixes
Thread-Index: AQHVUN+Ueujr2fKcnUmbqsrZYQu7V6b3OIQAgAAAlIA=
Date: Mon, 12 Aug 2019 09:09:00 +0000
Message-ID: <MN2PR02MB640099F65EBB5A6805B94F9ADCD30@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
 <7ecaa7df-3202-21d8-de93-5f6af3582964@pengutronix.de>
In-Reply-To: <7ecaa7df-3202-21d8-de93-5f6af3582964@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c55f5c00-c0e4-4bd2-3977-08d71f04b6e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6159; 
x-ms-traffictypediagnostic: MN2PR02MB6159:
x-ms-exchange-purlcount: 1
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB61594F5DDB69DB7C83E792EBDCD30@MN2PR02MB6159.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(189003)(51914003)(6116002)(7736002)(74316002)(305945005)(186003)(229853002)(26005)(25786009)(3846002)(966005)(71200400001)(6246003)(52536014)(71190400001)(66066001)(6636002)(53386004)(99286004)(6306002)(316002)(8676002)(9686003)(5660300002)(7696005)(2906002)(81156014)(110136005)(76176011)(54906003)(55016002)(4326008)(102836004)(53936002)(2201001)(81166006)(8936002)(86362001)(6506007)(53546011)(478600001)(6436002)(14454004)(486006)(446003)(11346002)(66446008)(476003)(76116006)(64756008)(66556008)(66476007)(66946007)(2501003)(256004)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6159;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rCcyrkyu7LXBt6BBKGeZbYQpPK7k/erKzFBFz/HfPgOYN1CiRLpg5VipaySZ5oSuok/uKtPTrTgILw48L4Jq23+8YF3b2biHrOWYrQYLFfhSJKnrFcN+Iwmo3sbZ9OzTtYNQnfEATuZR8HcAhisSsHZl79ROavjbAushAEg5b2lqFMLiB76aL6fM07P8FPoCdwkaln+ZhQD4iW7S4thSaiLa8RXLx1oz35fhads6AtmNm7hhXQeouJHcPUUyXhHYrYhqnmAZfVtFzO2GcQCwkfrq4QNVSxwiVER6P/hm6LmbZZC75BizRSLo/T+fKhSzAGY6ABppRE2eQMc5PqXokAQoSLpT9eBvyhVhxgt4YfeGFaV7+/nCvXyVxNJHbUVA7FrtPNXoU++DLvQ2y4ECBigjh4xEy9IsrS1VJ/ncMqk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c55f5c00-c0e4-4bd2-3977-08d71f04b6e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 09:09:00.4413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jzcp1GjVXRZhCycnJtU8KaXjVBfCyyYpVDU+8AbCnmabUoL93FpIOqaLQ8z1hxNCHBVrYhN9i8ZLdiXz+8e1hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_020903_535994_C1877F12 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.71 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Thanks for the review.

<Snip> 
> On 8/12/19 9:28 AM, Appana Durga Kedareswara rao wrote:
> > This patch series fixes below issues
> > --> Bugs in the driver w.r.to CANFD 2.0 IP support Defer the probe if
> > --> clock is not found
> >
> > Appana Durga Kedareswara rao (3):
> >   can: xilinx_can: Fix FSR register handling in the rx path
> >   can: xilinx_can: Fix the data updation logic for CANFD FD frames
> >   can: xilinx_can: Fix FSR register FL and RI mask values for canfd
> > 2.0
> >
> > Srinivas Neeli (1):
> >   can: xilinx_can: Fix the data phase btr1 calculation
> >
> > Venkatesh Yadav Abbarapu (1):
> >   can: xilinx_can: defer the probe if clock is not found
> 
> Please add your S-o-b to patches 4+5.
> 
> As these all are bugfixes please add a reference to the commit it fixes:
> 
>     Fixes: commitish ("description")

Sure will fix in v2... 

Regards,
Kedar. 

> 
> Marc
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
