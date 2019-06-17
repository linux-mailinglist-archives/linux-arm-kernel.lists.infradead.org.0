Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E74483ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuEZhgpBU6dwY8XmWL/ElDbvNiB2gepEhuJ/iSV0kkc=; b=sJaZCSovWUNYGi
	PAF84Rf7PB8h6nqiRVYpqcfzTad08+MfVzuUsHMEfImgPnmZV8dWB2P0MhJgGYKjcUMBzmNI2S281
	BjRjF20ye3rybzDZ3lulcDbd3hZQj6emxtfiSPJl0apjeacMMDlA4fc8C25DL7NsLbtuFhW8G8Hlt
	RGuh1AXuax3NjYg9c6yLqfScPmViEKv40b2Y0UnVEqTImdPuJBNLymw9MF/LhYO6/grOebXySrJrB
	kX+DkBBhLDa2QNIT33nBMvjPC2Hr6IE0RgY27DQ13uCAJVqawh39xMws3oY3vQSM2uHJDHA1w+G/j
	kVaulVpc0bLNYR+lU16A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrh3-0000DE-7D; Mon, 17 Jun 2019 13:29:05 +0000
Received: from mail-eopbgr130070.outbound.protection.outlook.com
 ([40.107.13.70] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrgt-0000Cf-3J
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXdEZOOKnezUzKmpFBaKWBJGd3nS04aFoTGg5T7Yass=;
 b=IMaulPYz1qZO9sxXIE33umTn91jfoosTLnsOv2rmpe9f7BAVLGqb8fTM/6O7CFkh3R1b7RBGRuRhwcpuLjVlC5UEEGjuqtwo3tNeqV8fqPA/MM1tI8NOmFJB0LRBRNY1dvTWhZFruou/TXzdNWjXwa8pvvDxFJK/dx71iM0UObg=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6734.eurprd04.prod.outlook.com (20.179.234.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Mon, 17 Jun 2019 13:28:50 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::9e6:e136:4c09:fe67]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::9e6:e136:4c09:fe67%5]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 13:28:50 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Olof Johansson <olof@lixom.net>
Subject: RE: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Thread-Topic: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Thread-Index: AQHVJQRRM+rvlXmln0KUqEroTyzJyqaf1DJA
Date: Mon, 17 Jun 2019 13:28:50 +0000
Message-ID: <VE1PR04MB668773AB42154134CE18A6AB8FEB0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190605194511.12127-1-leoyang.li@nxp.com>
 <20190617114948.7xxtpivve52c2jnb@localhost>
In-Reply-To: <20190617114948.7xxtpivve52c2jnb@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1941167b-0928-4a26-9881-08d6f327bbf3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6734; 
x-ms-traffictypediagnostic: VE1PR04MB6734:
x-microsoft-antispam-prvs: <VE1PR04MB67340C2E09B0606C1D9429728FEB0@VE1PR04MB6734.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(396003)(136003)(346002)(189003)(13464003)(199004)(316002)(7736002)(8676002)(53546011)(305945005)(14444005)(256004)(76176011)(6916009)(2906002)(6506007)(6436002)(478600001)(102836004)(26005)(55016002)(73956011)(76116006)(7696005)(4326008)(229853002)(25786009)(54906003)(71200400001)(9686003)(99286004)(66446008)(53936002)(186003)(6246003)(71190400001)(5660300002)(15650500001)(68736007)(14454004)(66946007)(52536014)(66556008)(66476007)(3846002)(6116002)(86362001)(64756008)(33656002)(11346002)(66066001)(446003)(486006)(476003)(8936002)(81166006)(81156014)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6734;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7M5msL7QeM2Q3txSLahmjLTuBD6OXB2ZwHcHFIzdGcDWXStkAFr2k1IH6G41dhVix9eW+C+IvIsiGiYRVhWtlWAv2umevBd2FJohRY0QDeSTt+3RW4qzPoVSheAjwGwikE7XtM1UpXZ3FLqBcSa5o2yMPHoatwMytlSRcV7VX6XHIDV8DUlZnMEkx4Kljir4In06RnXWuU6ccQUKK+MnQE2eplQ/f7rW49jvYGMwZnKHuMQpiPFcIK/aim3gGgLJ/+BbI/2rL7mqMcivQI+90VIHVMNg1yXLf9uIKN5XLFF9wC9X3rg3AZxCWloQQ2NOWBoqmv2ww9R80q2jjCjmtaiUYSD8Dc58eShLGVLnfcfNIp3+ScOkPA6B8DDU5tHR3HYilTGLKfpaN4k356s7S8p0W/KeuLirwZfm3sfUfk4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1941167b-0928-4a26-9881-08d6f327bbf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 13:28:50.0622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062855_205875_CF4742E1 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "arm@kernel.org" <arm@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Olof Johansson <olof@lixom.net>
> Sent: Monday, June 17, 2019 6:50 AM
> To: Leo Li <leoyang.li@nxp.com>
> Cc: arm@kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; shawnguo@kernel.org
> Subject: Re: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
> 
> On Wed, Jun 05, 2019 at 02:45:11PM -0500, Li Yang wrote:
> > Hi arm-soc maintainers,
> >
> > This is a rebase of patches that missed 5.2 merge window together with
> > some new patches for QE.  Please help to review and merge it.  We
> > would like this to be merged earlier because there are other patches
> > depending on patches in this pull request.  After this is merged in
> > arm-soc, we can ask other sub-system maintainers to pull from this tag
> > and apply additional patches.  Thanks.
> 
> Li,
> 
> You never followed up with a reply, or removed, the previous tag. So when
> we process the pull requests that come in, we've already merged it.

Sorry about that.  Will reply the previous pull request and remove the old tag if update is needed next time.

> 
> So, I've merged the previous version. Can you send an incremental pull
> request on top of that branch/tag instead of a rebase like this was, please?

Actually the new pull request is based on the old pull request this time.  I sent the new one as V2 hoping that you can see this first and avoid merging two times.  Since you have already merged the first one, you can merge the second pull request as an incremental pull request directly.

Regards,
Leo

> 
> 
> Thanks!
> 
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
