Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C884E14A420
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA6jbuMuhp2jAB48mtX20bEhJKn5sTUdZHwLeVPenC4=; b=VRmRyjo0QXpQ5P
	2hO+nfRn3Lw5mO213EVxE73ICKz5dqVX/ghGHeZTwlD4/eZeA8ZDDdtBMXjOP3urGUKpInA9seV2H
	Blg5ods78KukhWga05AXnTPGObl3BriOSJWOqZpqcWtk7xB6dVyBrWdT44v/Gj7WkbX+z6lwHVPGK
	5blKQYvHhbp9Oryo5svkspA4O/ylQo39JQ/1pN8lFmSkYS9LlLBSbSDWM5DHrBegsZKXlOij3MTGI
	YALXBllO6fnYYp9dlVwa1ScNgtN2HTNqSaaPF0Pp1byBIFIQ1xobzqgcXIopJP3Bu7+T5RxHGqyYE
	Gf3RFdAA9oluEXdUOSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3rB-0005PM-JZ; Mon, 27 Jan 2020 12:51:09 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3r1-0005OT-UK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:51:01 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8C6FC40686;
 Mon, 27 Jan 2020 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580129458; bh=yD8bGTDRn2KQdx9mjml6eNaQvDpGuafLl7fe3izDByk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=DZsm73OvyTLDwpbd/atRe6k8aeiD3A8Rbv3nbujZ5joTowPmpdK01TTx5tvTEyCVG
 mzQgoQsZcUuodxPaorxITPaXZEI5l1IhQBtomPtpV2lWgqCq05Pq8PGxy8G53XFC0C
 XIvl47wyx2v+G6yZ6ONbHxGl1UvIYsiYi1m01e7zz1aPFf9WdrhDjSqGxw7S87TzAm
 Qxbnhw9l1FpzMLhuSS0EkKaGLh/OoFTzeaBcAkGJhVPeZgji3j6xEx1FMj/hAQSkzn
 cKlbv0VIboZlV/bRsIL9GyZiFKxxfoX3QC1zlnLG4Toow1fndCR80UzN+9BbWjoXvp
 M1NCwUYIaLkVg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id C7313A0083;
 Mon, 27 Jan 2020 12:50:56 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 27 Jan 2020 04:50:56 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 27 Jan 2020 04:50:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXSbUJnEYJUFW1xrzq0Ms1vGc9c7o01Bb/zm3GVCW028vhI3ejAMNWwDUx/bHzBOTdt1HaCKOiCQpFkHtpW02SSsdpNZdIDbhf+05nkJSK6fDbN8C2DWQm7vTBGhkaeSfq5nTwKP+meDdSpTW3KpmZ3l1Kv/x95034qMue6XF/5at6s5y3zS+WxUQuJ+1eSHelzEz43yubIfmPq35lyyGTr6va69sR64j2klt4VlDsvzbW0vlgbkyoA69JiWYATSI90w3g6YvTvmFY1F7eEOZjEU9zAZA14iAuZaDSyXsaPSJml6UNZNY9Z9ExOg729PpREV8NgFCbm1u9w4Qu+Ppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUxZbgOVKlZEoSoqyu6Wj5egb/s5vPoLAN/v20jCgDA=;
 b=mEFNFy4o1/82fX0GKV3HI2L+ENSHADMf5nRyK9fWHgYflhkYbkFFtwd92j/reV5E81vbcB38SQaF829nKUcBLrOTJfwXOII/pXD2FEJqeT3t4kIKPWKUTzGZQB1q4tfS6cyl1YT9nEw0BFb4ciiqZXUsZxcqjgk7PHfYZFaRwg8rWmqtRkF3SRuOJsFwP0tyyeYaK5+WflX7t66Nr7B1pwNkZmdzvkYF1PGMG2Lx2qzILOYiY9o/O8LPXzgTtEp6sWbHBOa/x+oI04MWmyLcdNqWzyoho6MLLMDBumQp6ds6qq+WcEnTMK0psKWJ6a1pDAjFxWo21O5ncmAKFMe9xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUxZbgOVKlZEoSoqyu6Wj5egb/s5vPoLAN/v20jCgDA=;
 b=BeD61Bt5Hw25FObOv4+cIBuKn6i5ALtwGEiL07MFf07GlPweRVTFK65PzfLXqAU3AVGOkgiMqmUV/5w6UC0qTZcTYRBT5/UjhgDXdaVUcMjE1d05/GSj5YjjsnjIY76vDDvYy1IsFxqx3XpP/QMyxKQH6JpNeidROxlkm8fClpg=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3491.namprd12.prod.outlook.com (20.178.210.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.26; Mon, 27 Jan 2020 12:50:54 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 12:50:54 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Thread-Topic: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Thread-Index: AQHV1QJR/2IdLzxcIUOq2qgDmVwJ/6f+XbIAgAAEH1CAAALaAIAADuww
Date: Mon, 27 Jan 2020 12:50:54 +0000
Message-ID: <BN8PR12MB3266A7C976B4E63466B5FA35D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
In-Reply-To: <20200127114600.GU25745@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 601a0064-bec8-492f-1b27-08d7a3278c1d
x-ms-traffictypediagnostic: BN8PR12MB3491:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB34913A2EC9B72F9C9537C778D30B0@BN8PR12MB3491.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(366004)(136003)(346002)(396003)(199004)(189003)(33656002)(26005)(6916009)(478600001)(54906003)(316002)(8936002)(2906002)(186003)(86362001)(6506007)(71200400001)(8676002)(81166006)(4326008)(55016002)(9686003)(81156014)(76116006)(66946007)(7416002)(5660300002)(52536014)(66446008)(66476007)(7696005)(66556008)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3491;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5HGYGna8QVzM4CE60UoRA7YrBtu14dryKevKO13QwTYnH4nLiuy/CJ2JEOgzzacKemRhZhy56TxMh3TlKRuZQ/UL1+3Rca2rc7+klc1HbIdH3DwUbcIbjAb6OPBYVmxdFu5JPFEp4GeduUsrmOkeZRke/VdedtDm6UToKgeE3fqpBhg1aoTWSbRZzrI8wIkGtUH/hmUroYITP9NyxQ6tOc5pd63whaNTZCz/mJmCCyX7cqfsgree3pO6BX8Z0IG6VrHtKY184WvmL3xFVvG66g9HOQDgOIfshyz+fyiVGidYp69D+yS++DYKjoUTYZMUx6+fZ9cQ5mg3rlzqu7q0MwsrXwUNef63GtngF1JF8OyqYEE7FYg9/GZEz24FShdc0tXRaDP/olvlbCoSUSbH+quMfz9ktonevoYXyiZLTsAyxEIycM7eo4Aq1Y2yxMB1
x-ms-exchange-antispam-messagedata: 4A7/fXeQvAhgzBmlXoaqQflCsZqHg7rP6xPmvoQWQLFx8t15DlTCfsldt+1FYQ8THjLC8SNdUAx50A2qZd/itPR+WFriUQC3MrKUmacFbszri8oDSQnphIOHLZ0FP0oadnarJkbZ2iKZOnt7Q+aaPw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 601a0064-bec8-492f-1b27-08d7a3278c1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 12:50:54.4255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AE9OmnPymAvgFrxYqZQloVNXYG14KvB5p19BvGKtvRJU/AW0K5w4mQohBgdGrmrou8XogrXh7ZQDt5D69nKFJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3491
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_045100_572148_98479BB8 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Jan/27/2020, 11:46:00 (UTC+00:00)

> On Mon, Jan 27, 2020 at 11:38:05AM +0000, Jose Abreu wrote:
> > From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
> > Date: Jan/27/2020, 11:21:02 (UTC+00:00)
> > 
> > > On Mon, Jan 27, 2020 at 12:09:11PM +0100, Jose Abreu wrote:
> > > > When we don't have any real PHY driver connected and we get link up from
> > > > PCS we shall configure MAC and PCS for the desired speed and also
> > > > resolve the flow control settings from MAC side.
> > > 
> > > This is certainly the wrong place for it.  Please hold off on this patch
> > > for the time being.  Thanks.
> > 
> > This is actually the change that makes everything work ...
> > 
> > I need to configure PCS before Aneg is complete and then I need to 
> > configure MAC once Aneg is done and link is up with the outcome speed and 
> > flow control.
> 
> Yes, I realise that, but it comes with the expense of potentially
> breaking mvneta and mvpp2, where the settings are automatically
> passed between the PCS and MAC in hardware. I also believe DSA
> works around this, and I need to look at that.

OK so there is one alternative solution for this that's just saving the 
last link status on stmmac internal structure (if applicable ofc, 
something like an_complete is true and link is true) and then just use 
that info in mac_link_up() callback to configure the MAC when PCS is in 
use.

This patch could then be dropped.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
