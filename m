Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAE822D42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CP8NCfxLeDAik/runH3UFeNMnduDTy97/wdV9Wr8TJE=; b=HUWZclVb6RtBHW
	6Yn2RoNvarFjfcGNi7TLim8ffRCYRJbpvz25pa/X58hSc7rrXB29igybrNBtpGRmu1i6ckjsCg6t1
	GPgMxRNg4AVKQyDM4+jShrTgbU3GCEbCn9GxkSMNB0vX5h9VJiQt9j5A3pvQ0o8HdouvgRn9kIX2c
	lFi/Tfwyn6BHbFmPFgL7WJtM0qczlil2I2GPhSuXj48mm0L3gSnX6koO5HTin0z7yYhUd5tx8d1le
	KVXd2fJUHHohMUHml0lauTglrKxqXnVtTdvX2epY6sje8fwKV8qiPKnpVdw6XEel4vfsNdlKhlvKw
	NU9pwJsan+lI5nQYdoNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScta-0004YZ-La; Mon, 20 May 2019 07:39:42 +0000
Received: from mail-ve1eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::613]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSctS-0004YE-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:39:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77zTwIuPuuuKBpj8chyvnGVXgAxU/Dzl2XPvhGZ52kQ=;
 b=V5BnSzhsPDglQyVlUL1lazzLGiV6YRFSXFnIzit0zMf+2S24brvz0u0jWMhaJBeaJcvfIaOZnqQ3rlSK5TUL65sWkxPLhMQya0PUhg/2bnt315im/st/T9PCJQu7mtm+1IHG8bPXRd8DbrtJu/GdnIwTvAd1oEwlbqf7G5YutOs=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2769.eurprd04.prod.outlook.com (10.175.46.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 07:39:29 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 07:39:29 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Pavel Machek <pavel@denx.de>
Subject: RE: [PATCH v3 3/3] soc: fsl: add RCPM driver
Thread-Topic: [PATCH v3 3/3] soc: fsl: add RCPM driver
Thread-Index: AQHVDtkxsC35JTlHSUaXSC6F++m+MqZznP0AgAABClA=
Date: Mon, 20 May 2019 07:39:29 +0000
Message-ID: <AM5PR0402MB2865E57004468965FF2003A2F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
References: <20190520065816.32360-1-ran.wang_1@nxp.com>
 <20190520065816.32360-3-ran.wang_1@nxp.com> <20190520072630.GA3674@amd>
In-Reply-To: <20190520072630.GA3674@amd>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad2f9331-cc42-4956-765c-08d6dcf64aea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2769; 
x-ms-traffictypediagnostic: AM5PR0402MB2769:
x-microsoft-antispam-prvs: <AM5PR0402MB27696651D7F99F6A0D103932F1060@AM5PR0402MB2769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(189003)(199004)(8676002)(6116002)(81166006)(33656002)(81156014)(316002)(8936002)(14454004)(3846002)(54906003)(256004)(14444005)(478600001)(476003)(486006)(2906002)(52536014)(68736007)(446003)(26005)(102836004)(5660300002)(11346002)(6916009)(186003)(6506007)(99286004)(229853002)(7696005)(76176011)(9686003)(4326008)(7416002)(6246003)(53936002)(55016002)(6436002)(25786009)(74316002)(66066001)(71200400001)(66476007)(76116006)(73956011)(66946007)(305945005)(7736002)(86362001)(64756008)(66556008)(66446008)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2769;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IxLiABcay4Wnda4BpGKbub9oBLyDcwYrRP0W+GmYtxJ3trxdfC7M7IJh0vxwTSgORGas3JBXzm79wZhEb0LPjKkjycnNNTcXbvC6u4s4azod69WYp/PNLWeFSyWC74X0NgKOYZFwadpg2vWwaoHzFwJ+RFhbaPVBYI1pKFQEFYy4kLAdrjbK4WpfEj9s3gVQNV7VBrD8bGB7C4tgujm602dI2Is6H4SgAcs00j73iBtH7cDn7hSpQbis+Zi/wMGr6Mc1rSACG2lsPOJkjWvhiizxcyTA3Zq2Y+iSE0KBoGfeGMO3p0RgLiLro6WzXqCBSE9r6lwv5rvaf3nSTW/EeD4q49M3MaYkurj+3pnub5b6uieIU7UtLSpQ2veIu/2Abmzh4fMggdi0fGYIWWvuf+F3XT/x70oXd+RKIHTktyM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2f9331-cc42-4956-765c-08d6dcf64aea
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 07:39:29.5598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_003934_706263_7B0E40F1 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:613 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Monday, May 20, 2019 15:27: Pavel Machek wrote:
> 
> Hi!
> 
> > The NXP's QorIQ Processors based on ARM Core have RCPM module (Run
> > Control and Power Management), which performs all device-level tasks
> > associated with power management such as wakeup source control.
> >
> > This driver depends on PM wakeup source framework which help to
> > collect wake information.
> >
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> 
> > +// Copyright 2019 NXP
> > +//
> > +// Author: Ran Wang <ran.wang_1@nxp.com>,
> 
> extra ,

OK, will update.

> > +	rcpm = dev_get_drvdata(dev);
> > +	if (!rcpm)
> > +		return -EINVAL;
> > +
> > +	/* Begin with first registered wakeup source */
> > +	ws = wakeup_source_get_next(NULL);
> > +	while (ws) {
> 
> while (ws = wakeup_source_get_next(NULL))
> 
> ?
I just answered this in v2 mail thread: 
"Actually, we only pass NULL to wakeup_source_get_next()
at very first call to get 1st wakeup source. Then in the while
loop, we will fetch next source but not 1st, that's different.
I am afraid your suggestion is not quite correct."

Regards
Ran

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
