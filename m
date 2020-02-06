Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FAD153FBF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxBimb6S0tuTq4U99lPWQwKoRs0Ee5pHE+MY1Xai5JQ=; b=IQdY930PSprvrU
	SMvR4A/Tzt6T7bmfajSJ7Ip17vRHMhP/eVaG771f/PvHpoJkKhcXA2QQ0wTsdcGxczKBjwY9SiGiA
	I14Kvc/VnEMrS8LsAJQ1N41851GXDhukrN5NCYGWjahn8TSlNjXFQn8wgsHPlGVg3cRI7GTPQ3gqJ
	YMcRaqL6caRB+4yHiMHTV2ByEuc7hio+qhFDncBuePnA8llyQcgrLrsnPY5+3eYNGXAiAPohThdJE
	F8R9X1ovQoj7fsOgOis6eAZ9D6jgAlz+aCEcoGNgIh6ifqsTJjOPXk/2s3lBv3HVnIhf+UgoQUq0V
	pl7/4Dgm4ZL3YigxzqRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcBv-0004Kk-JD; Thu, 06 Feb 2020 08:07:15 +0000
Received: from mail-mw2nam12on2084.outbound.protection.outlook.com
 ([40.107.244.84] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcBo-0004K4-6q
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:07:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTD+MRzqHbuE3BeXuNA2b05scDfp1ALkt/RCAfRDGjcGlgNrvfGAsVdD5+M/tGbE6rKpNcDEGUr5lP7dS0ynxegeEPr82/nZF5nPzNrcMluco7rEGP0E1IOsv7bPfTt7gUbv59T2/2ns71KZdKUzkMpmbiXnM9xGsCKJhjVqLG4NltNy4ynMGLLcHEEPUZDpvb2zdEn1t6obaKw1UYAMeijJR5hm5u3qM0AFs1XVw1nFtBsGXak/Z20Eka8uPeJ5GgbiTlCqXaKywZKB/otlDEqn+wsQbarqqDB/yuOKyeEIioqLV1rQsHEnoFrzhHEhUIo+sf+SEsB5kO1A2gJmYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqRw5X/KuYMAxZMNY2EF0oSUTXRToiN4F8o+Bl239JY=;
 b=NF2yQIZk15jcuXPLUSqqukCk/oTP41EjlqXIODXoP2RU5hOINiAaVtObI6FDHCHP+5CbjcRoMf+VHwY4FJ2zHSACggbv8iMDE+xfAj3IKnDOZDdbae46FR2Vm9X4yqwcaOqiF3lSZoGaBPFvUrhme+m/VEDo0PsROMyPdxRgJAYAdSFdrPtlMF/L9G8t461LA1B9loFjJH3m7Z8jkBbCVi07tGNoEn9kgQ/c+92SzR0o8w0WT9kClDAnh7mMvkhY/d2DEZVi4qfmytdw/iAl1ZYCBqtu45nquU+uM5h0txIy4Fk2DT2cYmgf9CvJxBSrD/lVXAoLW4TPKNFikRIdOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqRw5X/KuYMAxZMNY2EF0oSUTXRToiN4F8o+Bl239JY=;
 b=ZevkhdQ74J5pzv9M9kmHyHwNPt4YaufcjeKNSJ8fln41uJsoHx+ngGGRHL7UeWGUcfQWX5ArjC58KeRxQf71UHFToppc/c2Ecrw9poSL+C5Pq7f/xenxJht8OvWxzhNOCarKt/um9p1gL3KJWeaWiDA1BsabUnJSQcBY2ISUs3Q=
Received: from MN2PR02MB5727.namprd02.prod.outlook.com (20.179.85.153) by
 MN2PR02MB5935.namprd02.prod.outlook.com (20.179.86.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.34; Thu, 6 Feb 2020 08:07:06 +0000
Received: from MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::e09d:a160:5349:8ed0]) by MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::e09d:a160:5349:8ed0%6]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 08:07:05 +0000
From: Mubin Usman Sayyed <MUBINUSM@xilinx.com>
To: Michal Simek <michals@xilinx.com>, David Laight <David.Laight@ACULAB.COM>, 
 "tglx@linutronix.de" <tglx@linutronix.de>, "jason@lakedaemon.net"
 <jason@lakedaemon.net>, "maz@kernel.org" <maz@kernel.org>, Michal Simek
 <michals@xilinx.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Thread-Topic: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Thread-Index: AQHV3C2hje5zExnZvkGSFN2foWGvfagMpPiAgAAK8gCAAR9x8A==
Date: Thu, 6 Feb 2020 08:07:05 +0000
Message-ID: <MN2PR02MB5727F7A38A05B58C84672623A11D0@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <e0d01341ac5c417982da48074972f470@AcuMS.aculab.com>
 <06caee69-38a2-13d2-d7b1-d882e7438057@xilinx.com>
In-Reply-To: <06caee69-38a2-13d2-d7b1-d882e7438057@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MUBINUSM@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9fa8e24d-8c2c-49a7-2163-08d7aadb8e67
x-ms-traffictypediagnostic: MN2PR02MB5935:|MN2PR02MB5935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB593529B8BB7A2FEE4989A976A11D0@MN2PR02MB5935.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(366004)(346002)(189003)(199004)(5660300002)(52536014)(76116006)(107886003)(4326008)(33656002)(71200400001)(478600001)(66946007)(66476007)(66556008)(186003)(64756008)(66446008)(316002)(53546011)(26005)(7696005)(6506007)(81166006)(8676002)(81156014)(8936002)(86362001)(110136005)(54906003)(55016002)(2906002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5935;
 H:MN2PR02MB5727.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MK5UQM/XKYvke1UdBu1ziNh9CyLgH7+L0jh0j4lEej8aycrPagDTWQAHXKJt2a+6y/ejf2P1EX2ZCqRBO2cf/ceaB9WqYw3lQ8w5SKtzPqXMaBWxaocC1RELFWe8/D2zJooM/tUvm3SaZ7gBqTw4XSuWCsGqC6BNt3Z+0WOFTW3XX2uNfXvYuSBUVwmfeV+NY0rIY6rnZ/gE0OMQDPcWxvQyJm/jBeKoAqkZ7qaovVNusD01GudgeW6MEf/E5Nd7q/jiQrTL8r8P/9SBENJrGNkluo+7KZ74L27QgFwnMvkcMX3L/wFpJETwMzZ+lHVlYZrgxMUEgrzukIu/XaB3Ci3lNNcsDlzYj4EgbhTODMnWqSIsg93E8CcAPJSWiz5Ycgyswh7zZAvROwicVKPLLPn14tpZ07QV1lTMwLpRUiAM7Qqc++S4/46PKnQoZi46
x-ms-exchange-antispam-messagedata: LAeYgdbg8NH3nUSsgSpz1XyPLdGn76iILfGjaEKL8TLG0Op7G6pTM+/yjQxGzANw37igHzklsI16LHzy/47cbQQXkobsscXtKN2JGRmm7SyL0soMDGkIP/wALv2Cbt3nsqLZ3flKJ14aKMAVA7yvIA==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fa8e24d-8c2c-49a7-2163-08d7aadb8e67
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 08:07:05.6249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MdtnjIwG6XSIYNlEpnhFpdgy87RM+IYOhjDS5ClTe8Lg3CTUkONfnxcIHUaW4VEUt+LdX9XqU7xMKqp6NvTxrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_000708_251229_571AD83E 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anirudha Sarangi <anirudh@xilinx.com>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


> -----Original Message-----
> From: Michal Simek <michal.simek@xilinx.com>
> Sent: Wednesday, February 5, 2020 8:24 PM
> To: David Laight <David.Laight@ACULAB.COM>; Mubin Usman Sayyed
> <MUBINUSM@xilinx.com>; tglx@linutronix.de; jason@lakedaemon.net;
> maz@kernel.org; Michal Simek <michals@xilinx.com>; linux-arm-
> kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org; Siva Durga Prasad Paladugu
> <sivadur@xilinx.com>; Anirudha Sarangi <anirudh@xilinx.com>
> Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
> 
> On 05. 02. 20 15:15, David Laight wrote:
> >> This email and any attachments are intended for the sole use of the
> >> named recipient(s) and contain(s) confidential information that may
> >> be proprietary, privileged or copyrighted under applicable law. If
> >> you are not the intended recipient, do not read, copy, or forward this
> email message or any attachments. Delete this email message and any
> attachments immediately.
> >
> > Deleted.....
> 
> :-) I got two copies. One without it :-)
> 
> Mubin: Please fix it.

Sorry, I missed to  fix that footer,  will do it from next version.

Thanks,
Mubin 
> 
> Thanks,
> Michal
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
