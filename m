Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFBE6E1FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmRJC59ZgMVjv/lWwwrqgO0DWugjg6DLoayCtRp3oZw=; b=FP7gxQAZI/RWf8
	k0QDeBbeEFfW7l3IEbwxvrbPrnsvByIP5zf0Ui9wykkEptttOuwA1n4ixFMGxJRL7+fSIQraDpNLa
	4ZELJ9lXVwQlPFLyeYa3f3EpeKnOF02KOpcQ2rkTCi5CIobCOS890jB/Oe35cWei/9a0/3k9do96q
	dPaME2DCZipPkwYpYo2TDuxKw6fOIjKMYlz+WGJ5SLUArFGRA2HAQtZyk+ybaSexax6YVOxPQeYy4
	Je0dM9ApVMVunUA4geW8J7100EU3vbLFRDKS2Xrfa0zn5sXMaO+qUR/iA2k69B+6nRAsRGyL48MY5
	N1PNIc/0n/WI9qPXW3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoNgh-00031I-QT; Fri, 19 Jul 2019 07:52:19 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoNfz-0002vg-Pm
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:51:38 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0D6BFC0AEF;
 Fri, 19 Jul 2019 07:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563522691; bh=HxqED4y9EylyQ+j0jlMmu2gWC2EhaU0l0QwmnH8Ds/Q=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=hgrkQZ3aOQRxDVqJOcJUniIVj2nz85hOXkji0OM/Ndo76NvcdnStre6gTJKNsLEn/
 kZsiAEs7zAZoY8Vi2z5Kto2IND/OOsuQWTzvrfLyGTIgrzhPy/YTY22G9qKyQMPNqA
 5l4xfW1DEAQFvpedz4V2JRI0gZOe0yNSmgYsV5yJBvWlKOdctHfB5bFCcGSjzlKKe9
 G0SVMvii8zT8jO4j/IBHpWsh1MkKTmdRZpQvD7pExa4mPMX+JQXBGdlWCgckEHKe+I
 q0oRO64E/8xLU4L+lo5htIaoLtpVOtZDtjEDBX+P5D90z6CMlpsH6t1s6JflzQJJaj
 aLvggx5XHKumg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B4702A023B;
 Fri, 19 Jul 2019 07:51:24 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 19 Jul 2019 00:51:15 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 19 Jul 2019 00:51:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsdAXDobrymd/UTErCKqie0EZ4myVSKXO63qS47iyq3U1HxN7ozoCA8jJV6AOQ/tfR/v4WXZibWkmpm13TYSxb4UhH8NX51BjfgtcZFpoNmHDrysWH0RH5XuS2P7vH6zcyvfE6mumlQVywTMWhRXFrOrCH+j1FCaZpq6sZofKvv/DaPP26MzyQon7WhwbOXI08TuWQ/uu61m3A/Y0bdgId+mt+nR9MolinJQB0OLRDFh8vmeeINI/Wm8MUopvHHbTEX1wOcICuN8JCp6fJoOVflb+L9Ax+fhXsE2Av895dAb3/BqHXa5DCpHOLkvJMKr+gpwdDuPEmQXmiZTUmnXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HxqED4y9EylyQ+j0jlMmu2gWC2EhaU0l0QwmnH8Ds/Q=;
 b=DCNTr7K/49AjOJglqIDXsRK0gr3H/uOrHVRdArQlTItdueXjqwrK2hWNJAS2uAi7aN6pGJvpRQ5Ijqqq3OiVPr4zwI/7wg2vvKYv/yf5KRyWyscepMWBoltm9p9PT8QliD136mEWTcYcRkAVyRu3GtTq1qcqgVqSZ0z5L3lp280ijLRf2iM2y6FVJygfC5AkpD510aBtWovpw3RFLQp9MAr/bTT2Cgtkx1ODej+bZkAAeRPFHYGDjtpYb0hoHy0utk4jQEJINyC0uvkcSrbKekNKL1TZ6++zNTZKcy4RpQWluqGMPbLMme1YCsgZqTenrb4lQZmrJRLf5YyDxVX4ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HxqED4y9EylyQ+j0jlMmu2gWC2EhaU0l0QwmnH8Ds/Q=;
 b=fMGqmBAGnhUbQMZOZWalE51VxxScsEup9VQPtnwPXytbhUFilzzeaDFwDmFL0fkjdUm6gO2P8dTURJaDV0SAYR7y+fsd2YRuC1ItESKH4PCDEjq6wEV/iH5UGSOiP1ceFPqGmm+excpfIU4H2uhn5UG85HxhHWvRiZ+DAvwTX3Q=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3426.namprd12.prod.outlook.com (20.178.211.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.11; Fri, 19 Jul 2019 07:51:13 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 07:51:13 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CAABvLAIABeX5g
Date: Fri, 19 Jul 2019 07:51:12 +0000
Message-ID: <BN8PR12MB3266960A104A7CDBB4E59192D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <6a6bac84-1d29-2740-1636-d3adb26b6bcc@nvidia.com>
In-Reply-To: <6a6bac84-1d29-2740-1636-d3adb26b6bcc@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ea94c97-b1a0-44ab-e4c6-08d70c1ddf01
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3426; 
x-ms-traffictypediagnostic: BN8PR12MB3426:
x-microsoft-antispam-prvs: <BN8PR12MB34269876D4B8BE437EDF11A5D3CB0@BN8PR12MB3426.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(376002)(396003)(136003)(346002)(199004)(189003)(68736007)(305945005)(7696005)(76176011)(316002)(11346002)(66946007)(14444005)(486006)(256004)(446003)(54906003)(110136005)(2906002)(74316002)(66066001)(52536014)(99286004)(5660300002)(4744005)(26005)(33656002)(6506007)(7416002)(6116002)(478600001)(186003)(102836004)(7736002)(81166006)(81156014)(8676002)(25786009)(6436002)(66476007)(4326008)(66556008)(64756008)(66446008)(76116006)(476003)(2501003)(86362001)(53936002)(9686003)(71190400001)(71200400001)(14454004)(3846002)(6246003)(229853002)(8936002)(2201001)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3426;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CVbDGFbkln/9giuEhyX7xLULd2s7WlnW+iyq0ofhYhyDX93vZ2kcM8BfE9zRf0ovt0UxPf2fwct4vKxrpDou/2/Uou4t+N2stznSzVFi8lcDvF5Rc0Yj4pLz/sLkRaA3Jy3BNmVCzwfXQOaVNpZHcYhvhjKsFIFPVLTe+NCb6VHYPEvRPcBrhsjcKiowKPVqyj/P1uZTBBDDRstkPbFLgk8kvyKZfs69/0wR9HMiOvDmcZ+5YuCFodUcBxHR4Oj5dqUaB5lkOUXWwxuBdLjVFZmQT1LZ1IBVKmipJBxPgAKgkZNcXw4iDDcPkhOMJlE8YYieABdxxJLa0JcyGj7kAt4IiJ2Q6l5NFft/IIQBeR3evNMLH2v/aooUZCQM6Fz7lBD7PbqpUDfqDQI0g6oC9gBELGBkLks6phK+SeF4Hik=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea94c97-b1a0-44ab-e4c6-08d70c1ddf01
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 07:51:13.0722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3426
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_005137_049557_42034422 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/18/2019, 10:16:20 (UTC+00:00)

> Have you tried using NFS on a board with this ethernet controller?

I'm having some issues setting up the NFS server in order to replicate 
so this may take some time.

Are you able to add some debug in stmmac_init_rx_buffers() to see what's 
the buffer address ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
