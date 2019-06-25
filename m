Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D605240D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUsBKvxr69winP30Qhkq54eozzQ1/WlTJJzWEmq29xc=; b=Fgs11+Qyeb3r8Q
	vrPxiRa3hK9hI3hBhAQNkIuO8LWvjR9TK1oj9ihGo1Er8qCtMylYh/T12bhv82i97UUzsCIriVtzA
	0ItS2CYmjFC5FN8/GBY3Zo0A8hb8hB3OFeUMeKyCrfrXkJSO1Q75yNw2ODHgt9O5l9XezIZBstkb1
	EX14zeti7+Inh9ggtBen+gjALnusr73SBfROnV0BmFja6F9mFr/Dh3Z9425VFC7CWp6E3G0Q4+IYX
	KNGs7DscH0fbjgupOcUftmaYx6XN3xx7VezrCx+31S1psXXlM3xkMfVhAjJSqa/2fbWOXkiurs1hx
	YXnC+ScZ6rxtOKHu26lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffZU-0003fJ-8K; Tue, 25 Jun 2019 07:08:52 +0000
Received: from mail-ve1eur03on0607.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::607]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffZ8-0003cb-CA
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:08:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RmcsshLhS5lUF4ks5ANSNG7Jic53DLLk836Qnq3u/s=;
 b=kPpOaLAHaNYoxEiWkLIGLHBSWYcAoP9OY0xAfYgqD12jv+EH0gVqHNJ0SCfsdyHdoWYaWCm6aTXROVGwnpo9o01o1GBZixxNYg1okzBnZYXfRsWv9lezTlQhI2+OszqcsmAAYbugIi+cBMqqsIAL1yP2JGkc55EoMz+wjb8qnuc=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.15; Tue, 25 Jun 2019 07:08:23 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8%2]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:08:23 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: RE: [PATCH v4 1/6] dmaengine: fsl-edma: add drvdata for fsl-edma
Thread-Topic: [PATCH v4 1/6] dmaengine: fsl-edma: add drvdata for fsl-edma
Thread-Index: AQHVIoleKbz2iEWQIkiDkkbU+hW4GKar00UAgAAvcZA=
Date: Tue, 25 Jun 2019 07:08:23 +0000
Message-ID: <VE1PR04MB66387F57FA3B625CBA5D23B189E30@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190614081724.13366-1-yibin.gong@nxp.com>
 <20190614081724.13366-2-yibin.gong@nxp.com>
 <20190625041216.GE2962@vkoul-mobl>
In-Reply-To: <20190625041216.GE2962@vkoul-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ddb5d2b-ed12-4a0c-8778-08d6f93be9b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB665603B6CC80439D1A10B5FF89E30@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(39860400002)(136003)(396003)(189003)(199004)(76176011)(316002)(3846002)(7736002)(99286004)(256004)(74316002)(6116002)(53546011)(229853002)(66446008)(478600001)(4326008)(76116006)(66476007)(64756008)(71190400001)(66556008)(73956011)(68736007)(25786009)(71200400001)(5660300002)(52536014)(66066001)(8676002)(8936002)(6506007)(33656002)(55016002)(7696005)(53936002)(102836004)(6436002)(305945005)(66946007)(6916009)(4744005)(2906002)(7416002)(81156014)(54906003)(11346002)(486006)(446003)(476003)(6246003)(26005)(9686003)(186003)(81166006)(14454004)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VpvYuqU/mwiWHzPj/DDNNjTOqAiSXPq8Wg/rmeQyimW4GGZNDbKiRg6XZPaqrXzO8EH0ZEYEd2FsVZCpuJW6SN9DDMQuCJb36zDApn7gGZc6j7X0s7t24+DNHE7mfCazrJLqduRjRgaj8j/4fssHPSXdI8RWrNi0G1LnPzuBGeC75Mh3atB0tGGctS+YewAUruqeoAP0o0bGbP7BLqLteHV5UDMZ2Wb1tk7PbSzIyU6Hhdh3Lf10TkxNuYAkHh4BwkxCIHPCbUwAGLpXOHh833mjj9Ht8AGWaWKEby4n7m6ZLrV9WUaXsN9DcRiKdvy4K9tQv8C0G+t3ykUdKTsNAxNXevC8/TwEyIZupkdqlj+7I0Hrtx5mAlvctlbipjICOx4vThu9fApIZJZCzK6zZ/gzQ7X/8NkQpQr7XN+i2zU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ddb5d2b-ed12-4a0c-8778-08d6f93be9b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:08:23.7577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_000830_419709_1B2460F7 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:607 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>, "angelo@sysam.it" <angelo@sysam.it>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Okay, will correct it and send v5 after rebase.
>On 25-06-19, 16:17, Vinod Koul wrote:
> On 14-06-19, 16:17, yibin.gong@nxp.com wrote:
> > From: Robin Gong <yibin.gong@nxp.com>
> >
> > There are some differences between vf610 and next i.mx7ulp. Put such
> > differences into static driver data for distiguish easily at driver
> 
> Typo distiguish
> 
> Though I tried to apply 1-5 it doesnt apply for me, can you rebase and resend
> 
> Thanks
> 
> --
> ~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
