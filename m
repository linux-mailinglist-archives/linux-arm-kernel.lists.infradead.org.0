Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5C57168F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XG4xAsT0NgGqPYCpdvvrr6RKsMC1l1OFBRDnX8X1Es=; b=OXnjF0xBCWNRzy
	V+wddFCmWU6jqv0Wk88SFv5TuRW+A7JvPf79vZkcRhtOXSBT4YdNv/mv9okpcuizLx74UgvFyjJ6H
	MPBIcWPlrDTaJZdtf9+fAxXLRgfM9fR1Clhib3Wh9SBcIkAa28N+dtNF9rNLvvjxsaWfGgYt8+aQR
	DKM861PiE0l8XkCJ4xlAZCRde20JmBnf0VUE8PkfhuH4AQPa/uMzv+fE9adqcbWByMkR5QEgpGXtm
	PJZA+vk0aIWX6n9ja6PdZ/qTrOszx6hO0fO844xmouLDeCxFxtjLw9ledkC04TKwIXWz24LIEUeld
	GvLFarNfE5YSmyzlrZrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsNN-0003T1-Ud; Tue, 23 Jul 2019 10:50:34 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsN3-0003SH-SR
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:50:15 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 19AA1C0141;
 Tue, 23 Jul 2019 10:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563879013; bh=3mkM3M0f40d6a+V7LkMD7dR21gv8wo41VcJOsox36Z0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ja3PUCfnxXGvkrt6yAsuM3K1flFn80vNc07wEkjPMVsfCuErbH5LvraC1SQpWJQmM
 7zGB+w1GB/GEt8MW2HOuGwwAJbx947pr4IYhOr7LjVTaKXQG5YKfmRNTTWAEqFsnU3
 SnyMFjY9aucwGU9uT0ahCGWUFuANMoznwLUy+hS+yHpio5O70xfDEK06frFklAwnk3
 tmifih5zyKiHeDjeYtL+LKqtDRLRHuCNyWFB6ZaeQTzIM0+JEzLfPI0j2r7sIiOW+O
 yPxpxH1brQGQiONvbFIj31EO190pIBxo6UUYk8TaWCpx1hR+4mfvM6Vppz998pMnYn
 9oHvTQcM2v1FQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6574DA0093;
 Tue, 23 Jul 2019 10:49:55 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 23 Jul 2019 03:49:52 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 23 Jul 2019 03:49:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=keQKubvtCkA4oQwi1bxVHZ5/2/0FHBBLeJVRxaot9wfgJantzQOvk948/voQJNk2njzdPBQezacPWp+w8ORxGpSFOg4tlNEWgaBokvkDfnC6tD7PKh15S4MbzTOei5a6H2uCtOxcVXz99Q/fhpkknFTSrnwYRjUzsOSdMytK08cUyKvfY0FBHwEMaoDE2BnLOeICai6V8Ee2gPb9cZYk46U5ecAA4Gj0MCBBejb5nX7BKspTjPRoaHfbcSGf7Iq28A/L/CByhE537rA3lRq0pjbgOPghQJ4FjSSU/8ocgCE/v9tzVlLyESusq7LNsgmCrSlsIPCt7sZFud3KnA5scg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mkM3M0f40d6a+V7LkMD7dR21gv8wo41VcJOsox36Z0=;
 b=YAmro6jMRczVsLv3JnOr5HaR/c75+ugvuv0TOo1WLj2JtDJViWMCRxypqCuQ9gtiFM4roJc3ddsXHRf4Wl79f36iSuWpnMNTBw/BseQpBGT/2XvAgl9SfymNs6aU7XFhqDMtykUThcFrXahEJVw8uebhNAJ44j2CVA+kxXOC6yOVmoxwLb/IXfcbbidelRP4VGCR9F9m5ZOWm9tBy+xN02MIf0e5eWeCbfbDb1Zd9FyWXIvwQMEbQQgfAflBGbklyhYkJZTxt+Zxybm0JI7/QlGWEQexmDPKusz+KCUbAARsGIZOzEkB3vLE9J9+03eXJ09q7jQCL/ICtu2WkInKBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mkM3M0f40d6a+V7LkMD7dR21gv8wo41VcJOsox36Z0=;
 b=qdb5JCSo7peH4NGoAbSsMmz3iosxOEq229OtgOUzNtdDkaOJoOLJfxtCvCRWI/gHBdcEtchToqHjbvG3svExMItrL/0eOEjHk1lM4WYI6O3Okij1X2ccMJDvywBMDTeVXa1IbrG1Vq7c09I1/suMUUYiC32PhbiwMVW5rzQsivU=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB2695.namprd12.prod.outlook.com (20.176.255.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Tue, 23 Jul 2019 10:49:50 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 10:49:50 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>, Lars Persson <lists@bofh.nu>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CABnZ9AIAADuYAgAAFQOCAAAnIAIAABLTAgAFMy7CAAB4gAIAAAO7wgAAJdICAAAG8AA==
Date: Tue, 23 Jul 2019 10:49:49 +0000
Message-ID: <BYAPR12MB3269D050556BD51030DCDDFCD3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
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
In-Reply-To: <2ad7bf21-1f1f-db0f-2358-4901b7988b7d@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 558eb7de-5c07-404a-b392-08d70f5b7c73
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB2695; 
x-ms-traffictypediagnostic: BYAPR12MB2695:
x-microsoft-antispam-prvs: <BYAPR12MB2695FA4E9E874926B15A35C2D3C70@BYAPR12MB2695.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(366004)(396003)(376002)(346002)(189003)(199004)(71190400001)(7416002)(33656002)(256004)(305945005)(7696005)(71200400001)(74316002)(102836004)(7736002)(6506007)(316002)(186003)(99286004)(486006)(26005)(54906003)(68736007)(4326008)(8676002)(11346002)(14454004)(446003)(53546011)(25786009)(476003)(76176011)(110136005)(8936002)(6116002)(81166006)(66946007)(6246003)(64756008)(3846002)(81156014)(66556008)(76116006)(5660300002)(66446008)(66476007)(52536014)(66066001)(229853002)(55016002)(9686003)(6436002)(86362001)(53936002)(478600001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB2695;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LOwEuxdiQ1uOAsthaaEN+J44Tt7A/gEQ+I2nyD+8jvkvLebEq3ZmgEfT+//FE4JRMtAqmvR0n0xg88YTuiC5P/h9h5SBiecKb22NUaUPGgj3CeOq873m7zKBy47bRZoeQjVmjcB41OQcSbwgbwzDsGpXcxM61jCObkfWLVTwZ0dUMrX0LemFfx0tj5wao0orZkyC9mD8Ow9xJ+pl2QVDLJVvXZ7PKQSJNdoc0amy/u4YWu2+GIIciVoFEF1/y030ct7MHVWbrRl/B2XNB7ugmpvUxmIx99ag2SAR9O+I3WGfdqcGFZFLqNT/rhC6zW9xRp0aM7e6Harhw68avNSNuM1gShmsMf3VXg31JWOw22Ms4sxwg50AkKfP+9iVFEjCiCSVG7BF5Eyqwr2K39NX+vF0sDXecmdl5K7of9d6b24=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 558eb7de-5c07-404a-b392-08d70f5b7c73
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 10:49:49.9693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2695
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_035013_989614_1F3AA1F4 
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
Date: Jul/23/2019, 11:38:33 (UTC+00:00)

> 
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
> TBH I have no idea. I can't say I fully understand your change or how it
> is breaking things for us.
> 
> Currently, the Tegra DT binding does not have 'dma-coherent' set. I see
> this is optional, but I am not sure how you determine whether or not
> this should be set.

From my understanding it means that your device / IP DMA accesses are coherent regarding the CPU point of view. I think it will be the case if GMAC is not behind any kind of IOMMU in the HW arch.

I don't know about this SMMU but the source does have some special 
conditions when device is dma-coherent.

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
