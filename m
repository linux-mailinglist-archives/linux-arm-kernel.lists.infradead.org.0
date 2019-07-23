Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80E8718B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4tqbgEL90Ea2Hlq9Cnt5KmrXZVLaUOdhfcYmjzYzR8=; b=CdoTODUatHp6RY
	6ZhLDwzORK2C6aElQjTTId+vi6MTGppnF0qgQnMquofOSoJJ6aPMiqsqFU0e1tNO4o706t6rVcPBh
	2Y3j8BZAIfr6llkUQ3U++nsZZfkYDnmlTf6Di36k5bUNVCORTptphDysdSd30i6IDMd8zx4D8soTN
	Gn9/YMEWAvCnSEXQ7EkvnM7r7YBwHVeIkRBIzJia+gcGGpWIlLt6425m+hiAn0riJBHNMvnKpAweP
	uMuWQBwGbutRmTC1qBoCASOQjRTolHBaPtgy3FMSCk35jJ2zJ5/fCIWpjubzo29ugCIPVJ4qoueZL
	I4JQ07oPIi8OZQvFDgfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuGt-0001eB-3Y; Tue, 23 Jul 2019 12:51:59 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuGZ-0001dM-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:51:40 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 64A50C0C83;
 Tue, 23 Jul 2019 12:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563886298; bh=V87JN9LEseKfBYxM4rdU6g3IhH3kGCYSc1Jjz8Ika9A=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=fwjZSuSLZv9BRouH2dNS/AQnLZiRPE4tg+NvbBro22KNX8jxjMbnR7+9nBt5/2Tsb
 vTcG68wUEd1Bm7nFedOSH00A4YUu7krQ5UF+8uRMVvZew6tD1k8bLHVlTYSZncJK72
 PDtVbLsPKyhp9Y5uK4O6pg4o46SlHArLqcooN9KMsd/b7PaBN31O7WNFvC/BkaD3Lt
 5FgbeujHgjmUCf8xKmPoJSgFbWH1udn6CzvsMUGM+FYKBU5BBglFXL2IWK5IG6sOEx
 l1Cw97I3dpD6Nh2roNK/jmpQUhFUlD/B60dzqqJf1UsPqPXiyTgM3zjdiQpjEvmxfo
 U4q/K2eDzN4SQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6D260A0093;
 Tue, 23 Jul 2019 12:51:19 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 23 Jul 2019 05:51:14 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 23 Jul 2019 05:51:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GqQmOOcfQN/Zq+GhrXIgArEkixr8v3BHcANdNy1+Tv3cz9Go5QEQV1j4Q/VknSrqA2xgNrOXcsIWND943U8O8kF3/J5FxbEMqrjRnD7pGw4z3oRCEryK+aLhBizArYPIW4/qHSKGjh2n/b5a/8VriHa7OwY5q2oyQf7eVDqruqRx60C9qSe6p91Qf+Op9u0SJy3RSQy8YnDWtANNdAegDMaQizT5zAeMdJbhJC3akDMQ5KjQ+72HSAxkddHJ4uxpoV1Z6vB8b+3K3O0csBWa6zY9ab/gh8gH1f61CxnqyU43PnFSDKAsZ4VhOw1WhuNy+PU4zkVDrLFBaBVPRwSD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V87JN9LEseKfBYxM4rdU6g3IhH3kGCYSc1Jjz8Ika9A=;
 b=OLhO2ThltD3TZ50+FaGiAV9jj3zyU2N2UNkAdht60reukkfFJzAz15787+iS5gNj/PtJ+jWnvogRt+zU4mizwOqcHfT+9Tvjl9L87wOAT/0XctyLfcTdqjF5h3UKO2nyPKUh963Qgp1iBuj24VJR8idF2uHMX2E+zVKblHzVrlsOYCULiZcScJNxIaTQllvitr5DXVkUca5yO5gUDyBHlXI6S85VAUmGSKqNyg72Qfl8dirHFXicjnIy7y07uPpVo6IDPWrtjJkPt4snXOubuItXHHLY8opyD9Iy1duGcJjaGTK9H2n3X4pVMC6teI9aRdhhzk9PJrEyTrqRfCF8cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V87JN9LEseKfBYxM4rdU6g3IhH3kGCYSc1Jjz8Ika9A=;
 b=KRh3LQFBrGV4NiXhc4o5k3p4WkPrSy0lqUk252qdI81dg3kaQpUSYOcq+14uK5oe+8Pmmh6PKdyGAvTZEMpOeZWwE4fejeZ2hsbMZzfG25oDezwoOavgxs8Q+vQrs5MEvBoyIUWmzUUhXhds5cICHZUVdpjuA/frrACQD0hZqWw=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB3221.namprd12.prod.outlook.com (20.179.92.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 12:51:13 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 12:51:13 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>, Lars Persson <lists@bofh.nu>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CABnZ9AIAADuYAgAAFQOCAAAnIAIAABLTAgAFMy7CAAB4gAIAAAO7wgAAJdICAAAG8AIAAFLiAgAANh1A=
Date: Tue, 23 Jul 2019 12:51:13 +0000
Message-ID: <BYAPR12MB3269EC45ABAF8F279288B003D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190722101830.GA24948@apalos>
 <CADnJP=thexf2sWcVVOLWw14rpteEj0RrfDdY8ER90MpbNN4-oA@mail.gmail.com>
 <BN8PR12MB326661846D53AAEE315A7434D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
 <BN8PR12MB3266664ECA192E02C06061EED3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <BYAPR12MB3269A725AFDDA21E92946558D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <ab14f31f-2045-b1be-d31f-2a81b8527dac@nvidia.com>
 <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <2ad7bf21-1f1f-db0f-2358-4901b7988b7d@nvidia.com>
 <BYAPR12MB3269D050556BD51030DCDDFCD3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <8093e352-d992-e17f-7168-5afbd9d3fb3f@nvidia.com>
In-Reply-To: <8093e352-d992-e17f-7168-5afbd9d3fb3f@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d16edd84-76dc-4d67-a171-08d70f6c71a7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3221; 
x-ms-traffictypediagnostic: BYAPR12MB3221:
x-microsoft-antispam-prvs: <BYAPR12MB3221D435F8A804E63A270443D3C70@BYAPR12MB3221.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(366004)(346002)(376002)(396003)(199004)(189003)(186003)(7416002)(6246003)(25786009)(86362001)(26005)(476003)(2906002)(53936002)(76176011)(256004)(446003)(3846002)(6116002)(7696005)(478600001)(11346002)(81166006)(81156014)(102836004)(229853002)(6506007)(14454004)(5660300002)(8936002)(316002)(54906003)(110136005)(9686003)(71190400001)(71200400001)(66066001)(4326008)(99286004)(68736007)(7736002)(66946007)(66476007)(66556008)(76116006)(8676002)(64756008)(66446008)(6436002)(33656002)(55016002)(305945005)(53546011)(52536014)(486006)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3221;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LTxK766yTGrE5Dz8nu2inO1XAfdidqNvR6rQEiKtssbUl7OblwlWdNdToR2S/CaVS1OxGLrUeQ/Vgh6pDBuoiJZVVPWdYhCLT9vBXJIGQC21ZqJs8baDq7WmtX99ePhT9eJvP2a5uiYgwZxX6T7URGW4lKlEG0qLbG74sWL5KjV5uK75auIHBmz+w3YCwO4BmBYhrZt26sFrX1PqS9D6rRDq/LmU3klLwvCJF6j+U1PczWaiGpcIa3oAweTIwftUOyi+jiN7RMJ6ioIepPGKo1Gw5zcFHFCYPTnSkis4NST9jIXdnjdZVx+kogMHTqyLQketezvBE1CSlO+7wPSo+dF39hnb50X5s+L3W2N8cZBpAL+fOiTmDM/49LzXqQbp4+OgKahu+T123QEgoMzc4HTktuLnLdudQU3kSLsyvJo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d16edd84-76dc-4d67-a171-08d70f6c71a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 12:51:13.2581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3221
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_055139_367486_37EF009C 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/23/2019, 12:58:55 (UTC+00:00)

> 
> On 23/07/2019 11:49, Jose Abreu wrote:
> > From: Jon Hunter <jonathanh@nvidia.com>
> > Date: Jul/23/2019, 11:38:33 (UTC+00:00)
> > 
> >>
> >> On 23/07/2019 11:07, Jose Abreu wrote:
> >>> From: Jon Hunter <jonathanh@nvidia.com>
> >>> Date: Jul/23/2019, 11:01:24 (UTC+00:00)
> >>>
> >>>> This appears to be a winner and by disabling the SMMU for the ethernet
> >>>> controller and reverting commit 954a03be033c7cef80ddc232e7cbdb17df735663
> >>>> this worked! So yes appears to be related to the SMMU being enabled. We
> >>>> had to enable the SMMU for ethernet recently due to commit
> >>>> 954a03be033c7cef80ddc232e7cbdb17df735663.
> >>>
> >>> Finally :)
> >>>
> >>> However, from "git show 954a03be033c7cef80ddc232e7cbdb17df735663":
> >>>
> >>> +         There are few reasons to allow unmatched stream bypass, and
> >>> +         even fewer good ones.  If saying YES here breaks your board
> >>> +         you should work on fixing your board.
> >>>
> >>> So, how can we fix this ? Is your ethernet DT node marked as 
> >>> "dma-coherent;" ?
> >>
> >> TBH I have no idea. I can't say I fully understand your change or how it
> >> is breaking things for us.
> >>
> >> Currently, the Tegra DT binding does not have 'dma-coherent' set. I see
> >> this is optional, but I am not sure how you determine whether or not
> >> this should be set.
> > 
> > From my understanding it means that your device / IP DMA accesses are coherent regarding the CPU point of view. I think it will be the case if GMAC is not behind any kind of IOMMU in the HW arch.
> 
> I understand what coherency is, I just don't know how you tell if this
> implementation of the ethernet controller is coherent or not.

Do you have any detailed diagram of your HW ? Such as blocks / IPs 
connection, address space wiring , ...

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
