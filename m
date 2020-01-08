Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE63C1343C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdIbXLKqQq7osB72cCLum5xwpJKggKCVQGR9GCY/Oes=; b=sR2TlOOOLv0jvT
	soRHHc+uzt48YdVM+HtiVRZ3QqNxquGDR7mKZJaDdN63r0mJmDtie9iAbE1xrpARMwuuFf854aQI7
	zstY11T+99jHTvZLHYOvpxuqjN2BhPV+q+Dvq7IWxB4YWZOG1ULjCl0klVoDPLUijfmxkLkdPoyRo
	WxZNPqwq164S9z+9znF7DTNTqnLzp+LgLJ6zaYkoYj/zv6s4GqKDyQUtiyY0NlRAgILL+LsGcra/m
	mz4UQ7PbqczyE+A88ce9rUfYW30/9/5FxltNoB9ONxg2hi4mHMXI8zgXzihgsy5X1FqSoFMO35bhd
	LZfYTcalBzH63ZsqNrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBLG-0007GF-Ag; Wed, 08 Jan 2020 13:25:46 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBL4-0007FL-CO
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:25:35 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 881A8404CE;
 Wed,  8 Jan 2020 13:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578489932; bh=uii8S55lkyXF530tXve56vi1H/yL7N+3SwH2y7gLmn8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ZWi06K3DqNIYSvfPZ9NWNB+UykrHiwB9I61yostoUglY7F/QR7LUYrB/sctnoLgx+
 a/xeBjUKC86tPFabxdQJNvoDp09GO+9hd+rZqCYiC2aUloxQId0amQzKmGhC/K840A
 C/oNIjlzjfR8KqK6MPsSs6ZjLsOP3NHelAvSI85qmsxeQyM7OXADWu3IEsrJFjnmSs
 o6Xa8FMSyQtDtGfVNLViXmp50AvueBj8jqr/DV0MWYG5kxSAe6LFJmlvx4+QuTk3ei
 fPvPtftnuCU61nCAo1j0k5ycchkGo/sqG9IjLiyCpkkYuQVSfFjtQD/KNWyISVD9G7
 2FcHxghTatZ0w==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 18F99A0069;
 Wed,  8 Jan 2020 13:25:24 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 8 Jan 2020 05:25:23 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 8 Jan 2020 05:25:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikLIopKqcRJ8g7Ks2/IkgUlv+mUyNpZqj5V0mwtq+kJjpc1eq9oK3ro0WgAVzCpIz3hS9wClr4JVCrMUvZ43z4KsG996rRp2CrAeKnKyJgWAR1FIEQkoE8td+AURmgTmBylfYBdZHoVHYG6cI9BlEEXesWn/zJh+14hqR/hEE8IX+bKXJfAoZ3bVOPIjRz55gXNm5eeW9rRMtUlSoVLriL6TKLxAR4WGqemMoymNaa7TXo9cMiK+Gl1azSs1lkFntzcW8Q40uL25f5gYbcr9gqf5JwFEi3mm/mDXobmrZD+iALK1S+Nj2js4bogwB1XbudjyZI1PUO0/240IsqGCKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hleNpS0fHQ1LqzJ/Ih7ary9XjeItZY6tcm8lcdghJxE=;
 b=JJvOpX4HWMpv0XXZawck+8yfpAFG2ESewMQJPno4inMWAbaZTa0ds8Awtc4l3O7um9ci9tuCHJy8CpvJGRPLADRS50HJUAl/KOqsfnohgKea4tFOgw4F7oWxfULCeCAWafkacLxWJSconyQJCcG/IXHi5Cn5eZqgJmTykj3vnO32DM/DQOeVgwkPrihawgOw8PIvWEx/R+w94k9MorILNjhj89YKBxq9rYYeBY21K5T15qCPwbspR9DY61PHUu1C1I2gzvLCLsXb6/VUTkvln6Gl5Z72dYQpW2rR4pUUir7b8f8Rz1YgZt4zdm+lbmAyuVcpVFGf2i5A7bN3vVQyIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hleNpS0fHQ1LqzJ/Ih7ary9XjeItZY6tcm8lcdghJxE=;
 b=Ti/rx/0G5wMvr29PKzWmSjrtrvXOqVtRns5/sooiC78u6ksFGQ7wn4Gc4hN3INcDLYLIb/t6ctYSzM4Vk1pek212SazwTEzfAsUOwI5mgBDG9uVDU0Tuh419cPHhjqRM4WxtJf9EdCcCF1uQCRO7bSMO2xWwrIt1SjMzr5L13Po=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3075.namprd12.prod.outlook.com (20.178.209.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 8 Jan 2020 13:25:21 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2602.017; Wed, 8 Jan 2020
 13:25:21 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Dejin Zheng <zhengdejin5@gmail.com>
Subject: RE: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Thread-Topic: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Thread-Index: AQHVxfUGgqwdWhtbcEaMF7LHLdtnx6fgZjWAgAA67QCAACDesA==
Date: Wed, 8 Jan 2020 13:25:21 +0000
Message-ID: <BN8PR12MB3266601BC7BA0F414BD60E19D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20200108072550.28613-1-zhengdejin5@gmail.com>
 <BN8PR12MB326627D0E1F17AE7515B78E4D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200108112652.GA5316@nuc8i5>
In-Reply-To: <20200108112652.GA5316@nuc8i5>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 647f51b0-59ea-4571-b86b-08d7943e366b
x-ms-traffictypediagnostic: BN8PR12MB3075:
x-microsoft-antispam-prvs: <BN8PR12MB30757FBCDA46D53EA5FB8A81D33E0@BN8PR12MB3075.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(396003)(136003)(366004)(376002)(189003)(199004)(2906002)(81166006)(316002)(81156014)(7416002)(52536014)(86362001)(5660300002)(4744005)(55016002)(8936002)(9686003)(8676002)(54906003)(66556008)(66476007)(64756008)(66446008)(76116006)(66946007)(4326008)(186003)(26005)(478600001)(6506007)(6916009)(33656002)(7696005)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3075;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GfwNb5DxBXQiEMbkSHfptl+bmDx4mmEPmft75Z0/Lk9uvs2VYIV6mURElhCMMGfHVHqeTP0gAyArinqmnb+WOwMUaxSIZ0dJ9V0yhL8jKwaTQJb3SQPKO/0KTE8AAXIN6PlE8E6rfUjOdYL1/fQqTH6V7tX265A2AtuudTQ594bcCLbkinv2p5+eKjA6KbJmEB7Qp7+q6th2fxtkkpYW7rlsviKDPRGZTnjw49rTuf0s3eRJHS1tw8efuyiB7Oo/ONjMHuCojFc87S8Rxp402+b0FTfeJKermJqRI2sBs+AwEzVuPbDoQqNEnn6LBMUNbQKUUEM4Yo8GtXya/fio3ij+FQoyBRit4qdH72LDMD+qxqmVKYvcJUGoDqvqz2cWTxsNeMREYSLk5ycfkuC8SzXMExUDXlS0TCkWsSYyJwkcpvUXYG11jUkfxX+tajil
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 647f51b0-59ea-4571-b86b-08d7943e366b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 13:25:21.6827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YzcUUzTc9nsSJRMyiKdOzzSl6NAYODc6NUkheSXreqRpv76DcbmPH2kBT1O/k2Jd1u11XIQ6CiUSCUmbkeLgAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3075
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_052534_569672_F800D7AB 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "weifeng.voon@intel.com" <weifeng.voon@intel.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "treding@nvidia.com" <treding@nvidia.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Jan/08/2020, 11:26:52 (UTC+00:00)

> On Wed, Jan 08, 2020 at 07:57:14AM +0000, Jose Abreu wrote:
> > From: Dejin Zheng <zhengdejin5@gmail.com>
> > Date: Jan/08/2020, 07:25:48 (UTC+00:00)
> > 
> > > Changes since v1:
> > > 	1, add a new commit for remove the useless member phy_mask.
> > 
> > No, this is not useless. It's an API for developers that need only 
> > certain PHYs to be detected. Please do not remove this.
> >
> Hi Jose:
> 
> Okay, If you think it is a feature that needs to be retained, I will
> abandon it. since I am a newbie, after that, Do I need to update the
> other commit in this patchset for patch v3? Thanks!

Your first commit (1/2) looks okay so you can submit that stand-alone in 
my opinion.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
