Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37BDD0633
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 06:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fxhujps36vJW/N1RFByw1OQvVFwFNsfWGJnY5+hM3U=; b=hC011aBYgxHW2H
	LVZXIKzQ9y2RDuVQlnA0UNzINFLsDEpiO326l3aFmnhHzuIdYKFdrvOnkWZ5xsO5h3feMDeNJ7yay
	GepTWY4uJYy0mwMdcNiOhyG9aHj5AyRsXARPuTY2LLuOAu080TUhgKKlcOK0Z7ZSjJY3WBF825oOb
	jo0xa++fZwgD/oYk6SZsdyRnke+ijK/Q0FHmF6UqfXwC02+BgNxOG89mcMoi6FIHWZppapRNGU+5b
	xC9UPSC3LnPvbvMRgHd+/Jzdm/Ar49x4HOyN+S4ZhB5AEz3HWDenUuxXnZ6UnHkT9JxGeWOJDRrGs
	QzKQEPPYt9AYvhxS6VvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI3An-0006vo-P2; Wed, 09 Oct 2019 04:02:01 +0000
Received: from mail-eopbgr700069.outbound.protection.outlook.com
 ([40.107.70.69] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI3Af-0006ua-94
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 04:01:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xz9BOPl6Ew177J9PQnLn8hyH7R3x8gbb9TSBTkLiXoPn1b0YOfve5C8RxAFBTcwXkOVVrk7AiMxs6lafeyG+AoeTrdXGLnIqH0xwjgCBIrTHhtfrelvwm/2rfVoyORQxwoPJiPPIm8wogQ5w5b2uien9QcfeizKBN+Vf9idlbGs3/XBGmAuptkd/raraKX5AcPx4FCOolDjOHo1GakUj11tuMkUU7d+xcQcYmkrTNoBSHIlwvIWOHewYiwo05FNGYVRHqr2ikd5xpEP5++GNnR44iwBfcHz8Og0672CUQSr92cIHPp9sWuKPlC0rpTlABSTmNELTTioiFhy2LNXb6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ly8G9LcrcvsETdjgjuFC5NZAcfqXX/l7tuhYYBMFK5s=;
 b=CmOMpWhP2QYAIVXXPsY0aLP79VcMhjehqI9fkFwiDXwA7TEl7RauF1uPX+mnSz9ULR/qs4OyAUO+814uF/HZSk+ZZSqZfyP8oPU6c6weYN15pnmBsc2TPnnPxFJOLKHp8CpTktJP6XQI/maB654Vvn+h4AaWvgcbkxssB6F3fub41aH6ybluYdOibuXSAEsoybqlm8RqgognVr6Logexcv92Xwq1Y62DenfxBcsVG2O1cSxHz1Rg9dm9Hp3xp2WpVaQSRrrJki+L8om5vMonXm+4lC1VCVAekDlS3dG1lOVXgXpqZ8GUriOo+yUvSJ2CVBHpzkqjLdLxeX7MZ49DIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ly8G9LcrcvsETdjgjuFC5NZAcfqXX/l7tuhYYBMFK5s=;
 b=EKnmGtZ0FILycPL4gQmBVBWeaaP1t+WSsH2vV38kCJ/cE8StFp6LCDQo+QDJuiu8E8gvCsrP8T47FiDPHbVqp9mSjtwyWVwhbq3SC4/w887Es90e9eQCyIf/rCxQarcdEu5gFtc/OGynH5HThXgz8FoMaBehRN2iVlfYWpmlSuc=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.173.155) by
 MN2PR02MB6237.namprd02.prod.outlook.com (52.132.175.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Wed, 9 Oct 2019 04:01:47 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::2490:5890:f2e7:14b3]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::2490:5890:f2e7:14b3%7]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 04:01:46 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Anssi Hannula <anssi.hannula@bitwise.fi>
Subject: RE: [PATCH 2/6] net: can: xilinx_can: Fix flags field initialization
 for axi can and canps
Thread-Topic: [PATCH 2/6] net: can: xilinx_can: Fix flags field initialization
 for axi can and canps
Thread-Index: AQHVesCfvo8HLFt+ZUeAzSH0lYp+g6dRtjlA
Date: Wed, 9 Oct 2019 04:01:46 +0000
Message-ID: <MN2PR02MB64004059908C95EB5E16746FDC950@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1552908766-26753-1-git-send-email-appana.durga.rao@xilinx.com>
 <1552908766-26753-3-git-send-email-appana.durga.rao@xilinx.com>
 <d1bedb13-f66f-b0fd-bd6d-9f95b64fc405@bitwise.fi>
In-Reply-To: <d1bedb13-f66f-b0fd-bd6d-9f95b64fc405@bitwise.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f817d37c-2925-4ae3-d3b8-08d74c6d678d
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR02MB6237:|MN2PR02MB6237:
x-ms-exchange-purlcount: 1
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6237CCE23E1B30DDF6C19AD0DC950@MN2PR02MB6237.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(366004)(346002)(136003)(376002)(189003)(199004)(316002)(33656002)(3846002)(25786009)(99286004)(66476007)(64756008)(71200400001)(66066001)(66556008)(71190400001)(66446008)(14454004)(76176011)(66946007)(6916009)(7696005)(478600001)(256004)(186003)(9686003)(54906003)(966005)(6116002)(486006)(305945005)(74316002)(2906002)(26005)(6306002)(6436002)(55016002)(229853002)(8936002)(8676002)(5660300002)(11346002)(476003)(7736002)(446003)(86362001)(52536014)(6506007)(81156014)(102836004)(4326008)(6246003)(81166006)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6237;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tdet2NC6j08bD+Ac/zD69NxVPx8IqaOLGYRtifzcbihgiS7znq4vc+6i3A2+K1rZr3Zdy9lbAblMeNS2dJrrh3NxQWeR1ZkSrbh07qAME5iXLTSYVxbnZLzBengxDnSAwp5LR1yjtV/iEPX4HMz35L5iSVASrNMx1Pmd41NrkoGWsWQSOjA50bKIUst+7j9edjW/5v1KjZmU9VPWtR17mnWsPcAIoxa78f8ChFIarUNt0Bgby8S7vQmg5ONHngdTgKY2js3GKy8AkIOFSXI5j2MJHr8RQQCDZ3VXwXNL9VSumY6MxNkoSnq24jTQgT6eG05nGIUQ0MKCUjeMLIV3/klzfCWo+hHjTyTN5IFvsNlQQa9Xkh/VWChjXVR/SRyR4PO0d8w9L7WCHsCFBwTNOsw4eBNWtZ5trSCWurNLBF9K3bGKQTf83pQLJhIot4oWyLPeLuNaDYuxh0DVuwHC4A==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f817d37c-2925-4ae3-d3b8-08d74c6d678d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 04:01:46.6080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AKLUxWvQmXHFpP/HCAaqg+lGtMUYnKmvsBQXpX5MY3mvAOUGBDjXSdcRCWlv2OJQ3rLFpP5ZhpYpEmYQagG1Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_210153_382523_54CF4B4D 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mkl@pengutronix.de" <mkl@pengutronix.de>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "wg@grandegger.com" <wg@grandegger.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

<Snip>
> On 18.3.2019 13.32, Appana Durga Kedareswara rao wrote:
> > AXI CAN IP and CANPS IP supports tx fifo empty feature, this patch
> > updates the flags field for the same.
> >
> > Signed-off-by: Appana Durga Kedareswara rao
> > <appana.durga.rao@xilinx.com>
> > ---
> >  drivers/net/can/xilinx_can.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/can/xilinx_can.c
> > b/drivers/net/can/xilinx_can.c index 2de51ac..22569ef 100644
> > --- a/drivers/net/can/xilinx_can.c
> > +++ b/drivers/net/can/xilinx_can.c
> > @@ -1428,6 +1428,7 @@ static const struct dev_pm_ops xcan_dev_pm_ops
> =
> > {  };
> >
> >  static const struct xcan_devtype_data xcan_zynq_data = {
> > +	.flags = XCAN_FLAG_TXFEMP,
> >  	.bittiming_const = &xcan_bittiming_const,
> >  	.btr_ts2_shift = XCAN_BTR_TS2_SHIFT,
> >  	.btr_sjw_shift = XCAN_BTR_SJW_SHIFT,
> 
> Thanks for catching this, this line seemed to have been incorrectly removed by
> my 9e5f1b273e ("can: xilinx_can: add support for Xilinx CAN FD core").
> 
> But:
> 
> > @@ -1435,6 +1436,7 @@ static const struct xcan_devtype_data
> > xcan_zynq_data = {  };
> >
> >  static const struct xcan_devtype_data xcan_axi_data = {
> > +	.flags = XCAN_FLAG_TXFEMP,
> >  	.bittiming_const = &xcan_bittiming_const,
> >  	.btr_ts2_shift = XCAN_BTR_TS2_SHIFT,
> >  	.btr_sjw_shift = XCAN_BTR_SJW_SHIFT,
> 
> 
> Are you sure this is right?
> In the documentation [1] there does not seem to be any TXFEMP interrupt, it
> would be interrupt bit 14 but AXI CAN 5.0 seems to only go up to 11.
> 
> Or maybe it is undocumented or there is a newer version somewhere?

Sorry for the delay in the reply. 
Agree TXFEMP interrupt feature is not supported by the Soft IP CAN.
Since this patch already got applied will send a separate patch to fix this.

Regards,
Kedar.

> 
> [1]
> https://www.xilinx.com/support/documentation/ip_documentation/can/v5_0
> /pg096-can.pdf
> 
> --
> Anssi Hannula / Bitwise Oy
> +358 503803997

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
