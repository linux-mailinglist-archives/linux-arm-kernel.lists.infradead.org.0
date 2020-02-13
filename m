Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA8215BA75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:05:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=actz0fGAkycAIpWla3kQcqbQMUrBGEsGnEwUhjZUzDg=; b=HQG2j5UnPvR/4c
	1XjPLNg5BvgMWVh3iaPjMXS6vogSeIK4ncqeab1PtsyV0/+sUnLUAySzBsVchzq3r2nNEBv2p8bLm
	pIr29EKbJDWWIGv1AYdGnbDk7l8wQOqY6fuqTHSc4yMLD+zZu4rF2S97cnuyn+S2nDt1i8FPrP1iR
	zwIoB8cK3shbAldXkK86AgnbFoH15yeKyV6WsIeVOnF4oFURxGBemUuLHD08wyPw0CyM+gHLOeMve
	+E20XyFjiCXAXXaaiVyWagZWmiK7ub+7vjWbx+zMSxt8u4YJMIJm4Uwey6YT41MTyTyYdji4WMBmj
	B5+4V26/u4/0vN8MKZOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29UQ-0002vD-Bx; Thu, 13 Feb 2020 08:04:50 +0000
Received: from mail-hk2apc01on070f.outbound.protection.outlook.com
 ([2a01:111:f400:febc::70f]
 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29UE-0002uF-Am
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:04:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPcGZHr6oyB6qnbjImya6h1LHC9gh5vp9fPJa1sDl6WNqsZjhSyyxZKKRZ9V+bo6amrNIw9J8rcZiwSlCVUMdTzwoRLociC3vBAHMjtI+lvsrwbwqw4W2EHbuIpl0kQbRQC9sgKe71/BnUfCgNoI30o0za55pEceJrT1qd4WmYYT6xKi0eP8l9jCeQmL0Sv9CMRn9LwlpSv71iPjw6/0VOqv6+U8DXToR2Nmzs3nzXF0JDEbGej4QeTC0uD41BbRw+GnrZI9kx74mvyZewVM8EAqvLchQnMDFFV8tUiiLfRGk8FxH4JvSlTVVv9gl2YrVkCU1UGZRhrtkeoB+n9aLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/mCbT90+5LY4cNeeidnM+EpnH2dFZjdQ1N8cgb1s9E=;
 b=FWvtUOjpFQ6+f2JDunxcuFyBmO035K+nU1xCIz3jfxJFJbsZCiCDpAsGPEAjg0rxXdRdpnvmZL4HOvA+/XURDbmwlSERN36WV0Q/hVXsQq6OtnLUKu+nzrSV47OlFm29l8FBUguWOUNOoK20bZndgwbcIjmTgHPb6tmVmhbC+k0znvUyQOARxKD4AF5ZGrhY6QWkhvKhjcSvCsmnjFZjoAtDSV/l/LENwHrA/4Nng7sthQSj1Fs5Cxei264RCGUD16rCszbPLXCNurUkPrqM0rSK0ruYznWNgB3iW9ur1ZEXN7/+2A1d1yYn086wlmNTyg/1pS0eItH78DiLWunqiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/mCbT90+5LY4cNeeidnM+EpnH2dFZjdQ1N8cgb1s9E=;
 b=LPFbgF0sQHH4PvpbH45g8nuoYjapIXfgJ/vsh9jrdckL8Z8+UdLp005P99YwmQNuZpweQNGK4EPfkPE2IH9nc3aNRaL6BTu+IPucfYRfnvGI8bO4b3LfQVD+fI9a+A2lHQSiQkdZPArdgWNjydGmbGXhIT075IsxyE5qhpUDSP8=
Received: from HK0P153MB0148.APCP153.PROD.OUTLOOK.COM (52.133.156.139) by
 HK0P153MB0115.APCP153.PROD.OUTLOOK.COM (52.133.156.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.2; Thu, 13 Feb 2020 08:04:26 +0000
Received: from HK0P153MB0148.APCP153.PROD.OUTLOOK.COM
 ([fe80::58ea:c6ae:4ea3:8432]) by HK0P153MB0148.APCP153.PROD.OUTLOOK.COM
 ([fe80::58ea:c6ae:4ea3:8432%5]) with mapi id 15.20.2750.007; Thu, 13 Feb 2020
 08:04:26 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: RE: [PATCH v3 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Thread-Topic: [PATCH v3 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Thread-Index: AQHV38PcCYEihm8LGkypLG2suczj/6gYgpLQgAA7r4CAAApnoA==
Date: Thu, 13 Feb 2020 08:04:25 +0000
Message-ID: <HK0P153MB01481E6561405D6B5C71A226BF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200210033953.99692-3-boqun.feng@gmail.com>
 <HK0P153MB01481A125819FC7660E067AFBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
 <20200213072623.GE69108@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
In-Reply-To: <20200213072623.GE69108@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-02-13T08:04:23.2575250Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=8089e645-e97a-4ed7-b369-01c5ca63b1d0;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:7f70:c129:4d3:3571:d407]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3bac1703-98c0-4a16-65b7-08d7b05b5817
x-ms-traffictypediagnostic: HK0P153MB0115:|HK0P153MB0115:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <HK0P153MB0115428001D3A413EA49965FBF1A0@HK0P153MB0115.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(366004)(376002)(39860400002)(346002)(199004)(189003)(478600001)(10290500003)(4326008)(71200400001)(66476007)(76116006)(66946007)(86362001)(66446008)(64756008)(66556008)(52536014)(5660300002)(4744005)(81166006)(81156014)(316002)(54906003)(8990500004)(8936002)(8676002)(2906002)(33656002)(6916009)(186003)(9686003)(7416002)(6506007)(7696005)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:HK0P153MB0115;
 H:HK0P153MB0148.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XjGX6Nhge5pBzP2Tx+7UHLieYvKkTGbqlFuX4bRGKL4ISBsRpwnHtRVvHbcZao1Rlgc8T3vaTH2mFRbWye8ynSD74gvCMLmC7kJlsay5yMgTE0AOYg7NUGUTR9n1mZrEYQYz60T4eBTDYyFrx2M9vT4ap59nrjaaGUbX26yDD42yPdK+HfheEcU6Lnd1LFhZfjHgYE02A1mZf21XsIS1p0prkSCPEuxacBnJcXTebrs223iWihV7Qk7vn7ljo7i7+YUjp9ukk6S7vLPLr0EwG2uZJnwSoSyf38w77iyqqOV6hRmHiz7sX5aquvN/9KAIZrybmBdpKz1u8Ei2Zu3Q5RgDoSEeuqCFyhbyOfrz3NFv5cz3pkmxRoctRhx3honFru5KgAwB3MTpCS2btWsdQteJOM6DDO5iUObFILwINc02PqWT+SLffkw6s7zKvUW7
x-ms-exchange-antispam-messagedata: rTVynAoEWoDIYdySJET6RUiP791EOtbbKgP4jtWWtHHvkQL/eh9XY0kRZj5+TPVR4OViADtokvKmbcYk+MvepV52tONhcCy+/kZD7qO1ZiwjcbS86kMQIoe+Jmt/6HXTpIsXt2eGumNS3o6ufhQRhqdBbf5pPUIfTzPzjjXunNH1sSbFEPNO9f2I1s+DXPGZ8ligwMtc/tWcPkIzWHp5JQ==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bac1703-98c0-4a16-65b7-08d7b05b5817
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 08:04:25.8467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oTuuPzr+QtLwm7XbzT/F8hVI8WF8sJXtveOxcL5wJRG0LqjJnyVV+8q51umq7dE7aQJrno7v7jzAv9Dmjp8F4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0P153MB0115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_000438_526798_160ACB5F 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, KY Srinivasan <kys@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Boqun Feng <boqun.feng@gmail.com>
> Sent: Wednesday, February 12, 2020 11:26 PM
> 
> > Just a small thing: would it be slightly better if we change the name
> > in the above line to HVCALL_RETARGET_INTERRUPT ?
> >
> > HVCALL_RETARGET_INTERRUPT is a define, so it may help to locate the
> > actual value of the define here. And, HVCALL_RETARGET_INTERRUPT is
> > used several times in the patchset so IMO we'd better always use
> > the same name.
> 
> This might be a good suggestion, however, throughout the TLFS header,
> camel case is more commonly used for referencing hypercall. For example:
> 
> 	/* HvCallSendSyntheticClusterIpi hypercall */
> 
> So I think it's better to let it as it is for this patch, and later on,
> if we reach a consensus, we can convert the names all together.
> 
> Thoughts?
> 
> Regards,
> Boqun

Makes sense to me. Thanks for the explanation!

Thanks,
-- Dexuan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
