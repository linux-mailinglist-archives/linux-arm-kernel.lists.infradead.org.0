Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B54312487D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23a7NMdVGFKUr5meD3L6/4h2h9A+OfQdQvxGQZQ2X5I=; b=Yzid40+SYAX3ei
	QRZcNlsEJTL+1T93Fcor/eqQFvsa0pbDQQIXX6FO640INOCdV726qJODvp5Ku+3v6iXPPT4UJiIzu
	I4U+6JwOTBa4m05pK1AP29YAUo+Rav/4sRIe5rhtw8PcoKHPOXPLrPJI4QO6wxEh0iLo19WrttMJh
	RrguvsBunFtL8ct9DNJWPWfF2BAv4DxNv6xFiCxPfF8+xQ8l0QvmsQP3qBM3WbXZuJtJHqx+c57tu
	MI9+CoMiK2igspx0VKNkcnXSjWkMQgxUcBUE7nvP3hzN88J5C6rOwN0cEH9mA50jAQQVQoYT2syGS
	F7j2eGsT2x7NtPp+n2tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZTu-0004ZJ-B2; Wed, 18 Dec 2019 13:35:14 +0000
Received: from mail-eopbgr680047.outbound.protection.outlook.com
 ([40.107.68.47] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZTb-0004Ys-Gn
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:34:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZS5k9QUFGUYnNuxA498he9d+DWpP5QGfkQkeS626lguheHMpDsaDEqrlp3ezuj1t4/3sWVnuA9wOlOmEr5b3r5mySI02rRUph63amMPAA88PPVDBUDPeqG7ZaSufE1V6iSCVCokMd97KzNTkLTwOVzpiqC/2HYa1/2tZIXthB8mgM72pBZJn4RoFgUynaR5pZIgaYh/6pTOyLVRhDZ1UTa9GusqigGUco4OUHYBxjwJB6IhnwZ6I5QxbZsSRvv31r6copK3V7UteAI3rmItUJ4Xv1Laj/6l13Zvabn1PGrFxMh8B1dgTNs/oF9vtocTZgWfQc0ZoSBoXlZPnWQA8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WRCkxkSeAlEZ+IpDcwbYjkqEqMjcZs4FSpuv3vinLGo=;
 b=CsM8C7OPcFmUeSs+I9IEHvWwqeo0zAOuhGtCZh2WstUr4f8Gj8kUGDH2FDb+gN7OSYwQSBzXl+4YWF2csmkboxVudviTZhbsmLmaYmju+QoiH9BTsNw2o7vLEvZrJB4hIKnHrZ2p0YJV1fpIV1Rc5QbXopgFCF4Oovydzo2p82LRkfyLdc/lr+9rcqNRMUFGoYs1UCnIs8jh25eqXUwz3GekB8D8jCGbesoXgi3conH5QWrWit/X/86qXr8tupYiQSkevBGDhmmfGptqQdD931qIDdiFPTyIEiMaXr9GKBSJWq2PD9gYRyamY3mWcT9bPJyf+HClab8+2wI+qa2L+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WRCkxkSeAlEZ+IpDcwbYjkqEqMjcZs4FSpuv3vinLGo=;
 b=jgCkmWKsueg0QZAg0o2NnjglaG2WZH1EvxEAT+n453TorK7QwHhlcyzSS3WrEj6YqF4XIlwUftmm4a5V0HNlZwVqJ0I0aq8asKzSDh2Ay7FpFwuPe9qxEhVpYdxuy7GDuGyoybva8TX40vJ6QkAu/oFoFZRbzXeYl7D5UjLrQCI=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6421.namprd02.prod.outlook.com (52.132.231.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 13:34:51 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 13:34:51 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: David Miller <davem@davemloft.net>
Subject: RE: [PATCH net-next 1/3] net: emaclite: Fix coding style
Thread-Topic: [PATCH net-next 1/3] net: emaclite: Fix coding style
Thread-Index: AQHVtAmigeW+a78/0E2rrUrIsSbtOqe+4eCAgAEC3CA=
Date: Wed, 18 Dec 2019 13:34:50 +0000
Message-ID: <CH2PR02MB700048BB28C0D3625B1B7AC3C7530@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <1576498090-1277-2-git-send-email-radhey.shyam.pandey@xilinx.com>
 <20191217.135729.173497629676380262.davem@davemloft.net>
In-Reply-To: <20191217.135729.173497629676380262.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5ee4ea42-c942-418d-7b2e-08d783bf0f11
x-ms-traffictypediagnostic: CH2PR02MB6421:|CH2PR02MB6421:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6421ACB0AD05743D835575F9C7530@CH2PR02MB6421.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:499;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(13464003)(51914003)(199004)(189003)(9686003)(86362001)(26005)(64756008)(66446008)(52536014)(7696005)(5660300002)(478600001)(55016002)(4326008)(33656002)(107886003)(316002)(71200400001)(186003)(66946007)(66556008)(66476007)(76116006)(6506007)(53546011)(4744005)(81156014)(54906003)(81166006)(8936002)(8676002)(6916009)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6421;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G+9CqJBmxIkJSG+FXytzM7ZGM0ix62KuGib+yt+5O7dqIQDG6+fqVolg+fm2JJm8cC+HJvrxKAIdPt3p9EfO9dZe4ZTKub2tMUfN9b/nyPdZhokbKb/fCk2PcHnFPXhBVTXDXQHV5xrdxxKyn5kNSoHlFYwX1gR3c06yAM5dHZA9+ZlHXgV9MYdgW5zNDAnnkBVZvs9+g7jl92yatTGZ0dDlSkFQwe6bfiBEMTtQ9HjCUVKELjvL+Sqo0mu2fQEVnMMZ4hq3vfIpv6EuEyIuL2QwUy/0kZSITqa3WCScotz0Ac+tte7XSP9zRrkXpnZ7t5998G146OIj+T8uZOvY5nRkxs5wxNvRzr6qXVBYPKyC62im9Da04iPeGK8XQglu7munNMUWlbUVHPb1kzpOsvNJNX1Kcu2qvEF/LBDW/4JFQICFECs3SuLQbfsXPxiKEAQJKWm3KwBYVd0hv2EEWinmxeAylTCTFWFwxPn8JJ/zjylqezSZs78nf0313TggsVF0RmoW7oYHM92CGuKleQ==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ee4ea42-c942-418d-7b2e-08d783bf0f11
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 13:34:50.9995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y+GUkKY3XIDiQhuQf2+bOwLy5eercbmZ/M2Z1qfDdhxbirgNuzzWdPMzz4cNyJaFfAH7UHbfYL1VDCQzE61Gig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_053455_560405_3D2FA8DA 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.47 listed in list.dnswl.org]
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
 Michal Simek <michals@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 git <git@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: David Miller <davem@davemloft.net>
> Sent: Wednesday, December 18, 2019 3:27 AM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: Michal Simek <michals@xilinx.com>; netdev@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; git
> <git@xilinx.com>
> Subject: Re: [PATCH net-next 1/3] net: emaclite: Fix coding style
> 
> From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Date: Mon, 16 Dec 2019 17:38:08 +0530
> 
> > -	spinlock_t reset_lock;
> > +	spinlock_t reset_lock; /* lock used for synchronization */
> 
> If you're just going to put the comment there to shut up the warnings,
> I'm not applying your patches.
> 
> You have to write a thoughtful comment which explains what this lock
> actually protects.
Thanks for the review. Sure, will fix reset_lock comment
and also its kernel-doc description in v2.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
