Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F1E17CF7B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 18:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eyn36nRyj1jHWKo7D/IgnD8JOqYRiq0aO0GQG784I28=; b=pmFWTA2mFuJZMU
	S7y53NuKtB/AYuaooTNfNYBIPBN83Hue6QaSEd2cxBCXAv/aFWrQp4euXmunjWcpfjn5lVpotKlpm
	1Mh5UE8sCRRF/oQk+8V8wLbOS/pYe8kN1pFysC2HgfR3Q7ryE4p/J5JPLyJPJ2w7siPhBhN53o2Ya
	ZhCqLp1Mw/o9NmbYg3UFwDOvqMbyYa+HIbyJDLQ6G+LeP1vQA4mmYZSnfDTAKbntxsibXcloaRmQg
	/QCJqqKoVKKTUbjbjXIgycmAUj97+aIn5yEKAh+smCEESB1dks7s7ae3QmMugXUXkHBCP7mgALiYK
	xUhQki+dPqnQ/TVGzzfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAdM7-0003Hc-4e; Sat, 07 Mar 2020 17:35:19 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAdLz-0002Yf-CX; Sat, 07 Mar 2020 17:35:12 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5ED85401BE;
 Sat,  7 Mar 2020 17:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583602503; bh=oCzPvbHQiibVBfhs90+opD7H0lY7frDyHGkEf/KJLQA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=LNHgkSBREIXy7eJ4VL76D7NIanx5b1vx/BxU+FglxEc7nWl/yb1bhyWX9WrgxsQO2
 gWd0Jb38IVVRAVvseECJrl2PkQLDWL9vNS8uPqELKZXMlW1WDHfJC2uYjoMkumT2nk
 PM3QS5O4gqz0vPF6k0vbkVnwjb0sjw2pu7/6Kywz4qNbvYeSJRfJwevm1m8SpZrRGu
 FwwPwVWts4RtKkokUUJyLFQ+H5ArhtizWCe3zDKwJOub1Q+eO4vLvEdis8fhg6i2vG
 evRnmBMofLW3nbWjalh8NmyylvSv4XNNB/Pk9djLXPk7QvRg/hocI8eiz/PgOk7nmi
 3PstlXlu5e4gw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 57137A00CB;
 Sat,  7 Mar 2020 17:34:51 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 7 Mar 2020 09:34:30 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Sat, 7 Mar 2020 09:34:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQBdYKc1wqL6oqEe327xRxu1JuMD9hiLftQdWtZTD+jjssu+SSb6EXWI/zfeTPXTbHHBDmuNlRouueJsCbNMXVHVU8/04uNV4Ap8698her1cld8owOlEfJehh3Dgc6EILXrLaRDgRbtZxuyf3zeJSVUVn7bDyZwUGDxpJzFC7VYbwAon8bqW55YmyiSVD71tpJdZJF/qU7H0i1nClOgsnj2HjRoiI0ZOI2hY1cPlSzlLtZ8KVxG7nlWVXX2POwtfCdwvp5ZBwu7YhcuHn8Uj5y3oZAAAE5Ag/0Hnq/5DAajIFuKIR09E+NX4bM/XbK1Um9aUE32u6hYfM6qxWw65lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/W8eKsNb9a4Oqz+ep2wzWObcnF6HhwhTGKWuQubUxg=;
 b=g4l/xZDYU17c+LpTmnYmpd3+drNefR2UXCya5lmoxxq1DcwLYXfeTztFBUUL2O0MuHidxnB3zx2IycPYkIh+6ug23R+PiG9iGqn711XdaA/ylk2eC/j1Ofggk4qTb3sQ5vUrQj5WSAfTOZDz490hLsXfBTh4m2FDsnecHdHxBt0CIxL7pJ4VXpWTN3M9z4Otzj7UURjJ48HAeUuG5qgbFBQhm5gb0zy9KTUdunUJ6cQ2hS9KYpTtqwrFuk26FDHLy70o/VJn7JopAgaT8h/Zsb972c9opoVy7fJ1ymaUS5uVZi6Mj+X14WLbzn2meQZeqPueg1TJJ2ULkp/rvCjwaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/W8eKsNb9a4Oqz+ep2wzWObcnF6HhwhTGKWuQubUxg=;
 b=GAvfUkL5g8z6Jqzw53ytI134gLATwd4TcTL1ISef5inaKnc1uWULRuCfZQlG+u4mbBfVyX5JQrmbFaUARAo8Co7w3LVUStPypBIcfFD8eag9D7gxmKjgt/Si8mXkNQ+MNPW6QURGYGg8bZAWvAL+OkUMKuAeXNXNixkB0qbVvxA=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (2603:10b6:a03:12f::27)
 by BYAPR12MB3528.namprd12.prod.outlook.com (2603:10b6:a03:138::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Sat, 7 Mar
 2020 17:34:28 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::c1a5:b1b8:1df4:ac6]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::c1a5:b1b8:1df4:ac6%4]) with mapi id 15.20.2793.013; Sat, 7 Mar 2020
 17:34:28 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Remi Pommarel <repk@triplefau.lt>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: RE: [PATCH] net: stmmac: dwmac1000: Disable ACS if enhanced descs are
 not used
Thread-Topic: [PATCH] net: stmmac: dwmac1000: Disable ACS if enhanced descs
 are not used
Thread-Index: AQHV8+yif3wDvAksFEuoTmQ+i9o34Kg9ZUDA
Date: Sat, 7 Mar 2020 17:34:28 +0000
Message-ID: <BYAPR12MB326999F850BD9BDD037D87CAD3E00@BYAPR12MB3269.namprd12.prod.outlook.com>
References: <20200306193036.18414-1-repk@triplefau.lt>
In-Reply-To: <20200306193036.18414-1-repk@triplefau.lt>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [188.251.70.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 367ca161-d6e5-48dc-ff2d-08d7c2bdc9bc
x-ms-traffictypediagnostic: BYAPR12MB3528:
x-microsoft-antispam-prvs: <BYAPR12MB3528A4E25EDF96D8750DD6B5D3E00@BYAPR12MB3528.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39850400004)(396003)(366004)(376002)(346002)(199004)(189003)(186003)(26005)(8936002)(110136005)(52536014)(33656002)(316002)(54906003)(7696005)(478600001)(2906002)(81166006)(71200400001)(4326008)(64756008)(9686003)(55016002)(81156014)(66556008)(66446008)(66946007)(6506007)(5660300002)(66476007)(76116006)(8676002)(86362001)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3528;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dh/xbBBkmT5HjTmkCdr2hRfSgT4/O31WTJrqBjavRm7vJFH5I297+4kV6ZlVzz1INEWkJNQ6S47Za8CMPLLPFQ23te/gEBY7FC5+grh7pnojSbKZaPyucuANqBhArQKgAOlu0RSdobig8TlaASu3qsyvXicPskQCQwJoY//+JcF8+znmYSRqnzfewpzR3QlmKUrErvlSj+A0cp9X/hGCB8vNOUUZRPSbmg1HiT1Xd+u6kBuQalNH0qsIiLPIddizb27dZTe/0mmyd9XvmB2kKOOuwGnFkaLAgfiYQm4MagbxbHw3T929LlxCjj0UKv7+FGwO//PgOpkH7BjCUn79bIXhX4+KEvKG5dOkLBE1ktP5Ieubrph2G+pfY10bunay+jqzwpJQPqbNgphDpiKLVfAVQpF06RVcP+QQJN63fQS2DSa5p9QoIDdLfmxAfNKY
x-ms-exchange-antispam-messagedata: oJWUNgcFUE7ay5NcyFaIrbwbu0hEeZch8e8OUmdyC/+l3KA2DctdPZnkjLAYgyXoxWX0+hS8pGB5o5sPf5lcdVL7fAcKcURTBslQZI7r4i/R4jaB8ClhEoSFivMvnWg/SWH/Z0sAPOFB2f+jRLMZKQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 367ca161-d6e5-48dc-ff2d-08d7c2bdc9bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 17:34:28.2800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y8QQahBsdvmVgOzDmSu04Szh4e7E3oHwUx+m6iMq3wati5cMWe7DCe4VF2uXNDcz/YRsxswxBQqAcwID0fP2xQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3528
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_093511_460893_0767698B 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Remi Pommarel <repk@triplefau.lt>
Date: Mar/06/2020, 19:30:36 (UTC+00:00)

>  	void __iomem *ioaddr = hw->pcsr;
> +	struct stmmac_priv *priv = netdev_priv(dev);
>  	u32 value = readl(ioaddr + GMAC_CONTROL);
>  	int mtu = dev->mtu;

Please use reverse Christmas tree order and also provide a Fixes tag.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
