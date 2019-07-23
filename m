Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83DB716E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2N6IF4LLw6Qb8hcAPc/i3Ij0nRFImjeHhidKg7rL2v0=; b=kvMTrb0yh871N/
	tzDbaqrDLzKaaZnnD3kCiemqBdhx68ze1reUfxFrmqeK/u1K0+iQvSOyZsb7Xf/52dUZHY5fqQIDj
	R/XHCTNvC2jkuOWgW6cE19KnmyVSOwEZZy12gMrpd04jxkXAEP80DS0OoNOKzNTy5mHyDZR6N2bLV
	5t+jtPQUBBjV/ufSMci9dZIGsWFV3DWju7uqup1co4Rqs7OJ8mqknEUUCivpgXyCvaJ47JxvsGEog
	IlM3driUAnjVYzIrZxDyw/kHhnSrwGqLkS4zJfbtjYD41GqZlNHT2mlcvVJL0iA6+V/kZoLWSGqgk
	oGUcPi3UlS5/VsifCPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpstE-00079v-GN; Tue, 23 Jul 2019 11:23:28 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsss-00079X-2T
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:23:07 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1E752C0138;
 Tue, 23 Jul 2019 11:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563880985; bh=9UW9/84TwIUIVuYiPPzMsdPqkNq+dXf/epk2GQkAG3w=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=f3PAgNQ3t9TP3mHbYgDKoR92GyXyZgYU0wzuPnuRSIxC0vW+ikcdC3jIDutzjtKAU
 SR+E52HMDBCpYpLWg5zRkHfo5fJPfh45Qe96Njmjg9aEa39eOrFYWVIZjlqe4JPnF2
 SbX4jWty9hznpSZB5DVQBE5bWjabiV4WQVsxBbO0+1degZ8CqZahAmGvg5DKjOs7aB
 4AP4gH5/0QYn4w/veQqCZ88GImThj08ODNNhgnxGecp7fNIKft+jFg95Q1sVqTs5Ol
 SfIbjpYEY5+uBO9/OgikBaAxw7JGzKk/72GOd6cQj2KlLEoWQdZU8ka3u9gh1ermhg
 yrL+jsNOEOYjQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id BA33CA0067;
 Tue, 23 Jul 2019 11:22:44 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 23 Jul 2019 04:22:42 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 23 Jul 2019 04:22:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/ORiRDwIKqDq9eU+FFbL7KCqkD+3IhrrbY75YIhJbyGtXd4L1aZM6YVW2U+Bt0AIBxIvACyQ1A/ykc3hQxffg+/EO7CcGnu39SBjdyEvSux+edamNMdYjiAb4qfMq8iZm4R7xCdXN6SfaC3nU5YVIa1SBNGQ+ddiuOAEH3DdRjQ0bBkA/FIYUhSRuR99rXrZxVmpadHEuaD7QGSX/JsRjUzk2Zd8HQwX8t2BYNZE1RPphIefTuwOsoEiMMXB0fItDNrx3o2A/5j/tStpowpLH3mcIt8XxmCLHQXJftlHJKKaDKpvTPq/WMuByCL0D1qgLJai69FS6eAoFbkKu9ncQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9UW9/84TwIUIVuYiPPzMsdPqkNq+dXf/epk2GQkAG3w=;
 b=AcoJiAayhA8O1FMqTdpYGtsilDg2DrgCUsNhKJYOH0AY4i3mZNabYGBmLwTaG1JFrcF6qPc71dJDqEcvSZy24dMbPPyYdWhO1iaDxglz7+aRECKaGo5KRyUqZS/apiixSdm3tifzIU71ramOSOhycGyaRwGAxuy4/g/P4AvYs+NlvP9ddrm+PagSPNF1qvtZzNNmI+84n9c77iWyw+9CRmddnINL6cn0XDw0KPDM68oNwEvwzkOyEn1Ad+bRzvc4pgt3/ddUuLXtVnn8GWkFKSWJU0fgqYNP4nYdfnQHlfORKhUnVWdYRPaQOzHakUGuTxSsS7oz+YZJnhbd5VSV2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9UW9/84TwIUIVuYiPPzMsdPqkNq+dXf/epk2GQkAG3w=;
 b=JT49G9CEs8/9JNctF3dgafxaL2tyIGehczr/YsoKAsPBJPObvDAtndEkVOMv+zzLgqM+V3kJQTCSCP/fNY6f1uLh20qZswcbvd2cnaxuy/6QxQG/d+DtDvsegyEWRMFnclQojl1Cg9lCnQRnssohZwFzwOhhV8JBw/LqWqGI5kg=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB3109.namprd12.prod.outlook.com (20.178.54.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Tue, 23 Jul 2019 11:22:40 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 11:22:40 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Robin Murphy <robin.murphy@arm.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Jon Hunter <jonathanh@nvidia.com>, Lars Persson <lists@bofh.nu>,
 "Ilias  Apalodimas" <ilias.apalodimas@linaro.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CABnZ9AIAADuYAgAAFQOCAAAnIAIAABLTAgAFMy7CAAB4gAIAAAO7wgAAG6gCAAA6iEA==
Date: Tue, 23 Jul 2019 11:22:40 +0000
Message-ID: <BYAPR12MB32698DC13D8D531F3FDBAC5CD3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
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
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
In-Reply-To: <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97803c52-c8ef-413e-7052-08d70f6012be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3109; 
x-ms-traffictypediagnostic: BYAPR12MB3109:
x-microsoft-antispam-prvs: <BYAPR12MB31094C000AF17BA791461961D3C70@BYAPR12MB3109.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39860400002)(136003)(346002)(396003)(366004)(189003)(199004)(186003)(478600001)(6246003)(26005)(53936002)(25786009)(5660300002)(2906002)(52536014)(76176011)(7696005)(66946007)(4326008)(8936002)(76116006)(66446008)(64756008)(66556008)(66476007)(102836004)(6506007)(53546011)(81156014)(81166006)(8676002)(68736007)(99286004)(33656002)(71190400001)(110136005)(54906003)(486006)(71200400001)(14454004)(7736002)(256004)(7416002)(74316002)(305945005)(14444005)(316002)(6116002)(476003)(229853002)(11346002)(446003)(86362001)(3846002)(9686003)(66066001)(55016002)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3109;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0RF8Opg4NJJmZSpkFh0ZlWKfiBK92ACBS3W4JjXXRmdgdrWN+3g7aWU0FC3GrAHV3IolS0pgne/vN16Jl902n7+TNyWv42YIiYhKLGIjR8MpguzvRc68i8uWQNdNxOQBndzrPNg2Tz64NQ/WcGdDExuRxVCeFYZwFxMNoZ/PLsINXyaqIZdcy6hqCVXT8icXcp8fgt/NragkB9CSUv9Als8Psi/IwnET/npzVkKwREKiPHu0QA7q0YOiRxGq0zchB0vJ1KoCWU92KiVyJxgrqm7wzYPB9TiSwyr6GfG51V7/Nhylb4W28hDL1+0cQ4xc+XYFzd9U8E2XiZ6pcz608fpn5PiMXsbcPcJLxij0yoWhd5cUCyIvPvrUX/NAU+QQnxGtD+l0+pccAMbkEqsATHl1gsTiIN84FntjFgVGrY4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 97803c52-c8ef-413e-7052-08d70f6012be
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 11:22:40.1032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3109
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_042306_122468_8EB81AFD 
X-CRM114-Status: GOOD (  20.49  )
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

From: Robin Murphy <robin.murphy@arm.com>
Date: Jul/23/2019, 11:29:28 (UTC+00:00)

> On 23/07/2019 11:07, Jose Abreu wrote:
> > From: Jon Hunter <jonathanh@nvidia.com>
> > Date: Jul/23/2019, 11:01:24 (UTC+00:00)
> > 
> >> This appears to be a winner and by disabling the SMMU for the ethernet
> >> controller and reverting commit 954a03be033c7cef80ddc232e7cbdb17df735663
> >> this worked! So yes appears to be related to the SMMU being enabled. We
> >> had to enable the SMMU for ethernet recently due to commit
> >> 954a03be033c7cef80ddc232e7cbdb17df735663.
> > 
> > Finally :)
> > 
> > However, from "git show 954a03be033c7cef80ddc232e7cbdb17df735663":
> > 
> > +         There are few reasons to allow unmatched stream bypass, and
> > +         even fewer good ones.  If saying YES here breaks your board
> > +         you should work on fixing your board.
> > 
> > So, how can we fix this ? Is your ethernet DT node marked as
> > "dma-coherent;" ?
> 
> The first thing to try would be booting the failing setup with 
> "iommu.passthrough=1" (or using CONFIG_IOMMU_DEFAULT_PASSTHROUGH) - if 
> that makes things seem OK, then the problem is likely related to address 
> translation; if not, then it's probably time to start looking at nasties 
> like coherency and ordering, although in principle I wouldn't expect the 
> SMMU to have too much impact there.
> 
> Do you know if the SMMU interrupts are working correctly? If not, it's 
> possible that an incorrect address or mapping direction could lead to 
> the DMA transaction just being silently terminated without any fault 
> indication, which generally presents as inexplicable weirdness (I've 
> certainly seen that on another platform with the mix of an unsupported 
> interrupt controller and an 'imperfect' ethernet driver).
> 
> Just to confirm, has the original patch been tested with 
> CONFIG_DMA_API_DEBUG to rule out any high-level mishaps?

Yes but both my setups don't have any IOMMU: One is x86 + SWIOTLB and 
another is just coherent regarding CPU.

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
