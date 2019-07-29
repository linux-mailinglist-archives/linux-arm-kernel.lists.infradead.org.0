Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48378A95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTlXiXdZ6Z71tyb4ufr0PLxB2cbv15lkQqRRvyilxpU=; b=I4QSZbRbl8Fsea
	dnZH6cGSFRRUa2afKxA0UHEG5j7TFVb0kp+bkHMoc0/b7y1hFfZTEj5aTWeb0KuAZLzhDxHMmcm8A
	55gv/1tosTSrQc+DQo+ocLrgDPzXa+tbqNFHkItis9iFyM6pE2ti0p+cSbVHnJ8MBUQ1CzlHnyy4U
	4aZlVTsBz1gp4iq9NFnPlxk9ybA3SdQfCXZ0K8+LRbK+dntWPU5XCdjcD1G85micR2MR16J/g/PZO
	xG5IeSp5BhFB7AHGGgJSn/QUtGKiorfxiTmyDH7FqMY+BWRWaXDV85u4WNaQr53L0pEwG1KBGQj0C
	/mxfsE4ioW41x5mNKo0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3r5-0006IM-9m; Mon, 29 Jul 2019 11:30:15 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3ql-0006Hv-Hg
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:29:57 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D20C7C21D4;
 Mon, 29 Jul 2019 11:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1564399793; bh=1AmAllxgnxHuY2mFSN+Q5zImnjTIrx7ksfZnG1anoBc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=LpH/Wsz4gcmIS3b0qRU9LNcDow69zdbnOh3F8LEZDV68/OAkQmlex1MzYbJXcaZzV
 KUnAtLuoQ3PgGvXZeZSdF1IVlX8VtprYtbiwbxq27Gn/jhRAO4PDDC2KS2t+b57NPY
 5ZoEuL0mnHpZTs+k7Q4oLx1qRrQFUNJ1T8uRvsxjeLnWuh1SsGLyNAJyiRwslBXFoh
 sBYKgOUaauneb4G9QGyzJCAt56lfwmeqeNfRYiiGjfuqLTMEcd7ZY9iCaWz9R/Il4z
 NU05aJaY0Ke9nfQYWqZbzmt0nENTeAPQATxkFiEjZHnR53zuXx+nHJFVvjn5TLWkZu
 yGCIdUFMS60uA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id C5100A0093;
 Mon, 29 Jul 2019 11:29:51 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 29 Jul 2019 04:29:11 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 29 Jul 2019 04:29:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpoCHARqylHq0WLHi9y/WWJm8E7Mo0FMIt22N8PP8Dgd7gCu7yHlkniILU8X552toKhIIOs/1IwH7LMO0qQyFZ8uUFDsq/Y3m9FUfm3p7E0NhdpPRs/ZZTFR8nawWNVhmyfqKblDVWnJ+i5w7Fz1Ohmy+PEcJ7gfvMd/qopXhLHsaR/VjZ99TDMOGAZOpzbzAHkYfRGGacKqjidNXUqhxNMDkCQQfMoF3ZJ0LR7rNJwgGiofepz1/oLnoPi68P+/o6G91CmjOYQrge70YRC+HAXWTh0U3FSzt5mXb5SgTPZXTPfYqfo/yI92sJ5R/juOVfEjSjXZ6FYMtU9FgzkvFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AmAllxgnxHuY2mFSN+Q5zImnjTIrx7ksfZnG1anoBc=;
 b=KP/A5M5HvzJMRICYb1mIxmCgRVsUfGqQU7Ocb6JdTlIgkTwx+pfeqI94xeZQiX7+bNkhZEd2n2YGWYzK9nX5GOVai08da5RBwZ4rU0Afb3OWIYv7lSUwXu86kBOoT0lJJ6WguaSEHiwAStB08SbjPZ/mKhfjuoqeYNcDifqbMOLytbqWDWKU0xxOnvOnEMWAz/CxPmDstSBhfBokS73BGxS6RpNK3wry7QFA3gea1nKkQ+Y9Ti3Y4JSLo1YIdSnNgobkiArB0XMTOtvg+c2U4S9OGtBR5OihxJwZZC9tya7OXMDZaaWJuFJ0QDJ2w7+BhxbmxB2gW0hk2D7bEaIj2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AmAllxgnxHuY2mFSN+Q5zImnjTIrx7ksfZnG1anoBc=;
 b=q2w+OUQ1oW19gLRbgA8WEsulr5zFxGzX6VtJ4uBbDX6+NSxOz7vWX7jYSKtygQK3A++xLL5N1Q/f+SnyNbsnv85gbdn5hqWDQ6euaEZaQMM/6uuqHB67QJsjRRj2MDo7Oqj3OqZ41RzMtKp5jyCodq+8PmevmwLUc8LrOdOI9IE=
Received: from MN2PR12MB3279.namprd12.prod.outlook.com (20.179.83.83) by
 MN2PR12MB4078.namprd12.prod.outlook.com (52.135.51.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Mon, 29 Jul 2019 11:29:09 +0000
Received: from MN2PR12MB3279.namprd12.prod.outlook.com
 ([fe80::3128:f343:a3d9:41a7]) by MN2PR12MB3279.namprd12.prod.outlook.com
 ([fe80::3128:f343:a3d9:41a7%3]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:29:08 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abbdEOAgAAAgcCAABHmgIAADDMggAGB8wCAAa8dIIACpFiggAAs3ACAAAdb0A==
Date: Mon, 29 Jul 2019 11:29:08 +0000
Message-ID: <MN2PR12MB327997BDF2EA5CEE00F45AC3D3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <7a79be5d-7ba2-c457-36d3-1ccef6572181@nvidia.com>
 <BYAPR12MB3269927AB1F67D46E150ED6BD3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <9e695f33-fd9f-a910-0891-2b63bd75e082@nvidia.com>
 <BYAPR12MB3269B4A401E4DA10A07515C7D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <1e2ea942-28fe-15b9-f675-8d6585f9a33f@nvidia.com>
 <BYAPR12MB326922CDCB1D4B3D4A780CFDD3C30@BYAPR12MB3269.namprd12.prod.outlook.com>
 <MN2PR12MB327907D4A6FB378AC989571AD3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
 <b99b1e49-0cbc-2c66-6325-50fa6f263d91@nvidia.com>
In-Reply-To: <b99b1e49-0cbc-2c66-6325-50fa6f263d91@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46e4c96f-17c4-491f-9b69-08d71417f8e2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR12MB4078; 
x-ms-traffictypediagnostic: MN2PR12MB4078:|MN2PR12MB4078:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR12MB407890A93A7CB58F3CFFC20AD3DD0@MN2PR12MB4078.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39850400004)(396003)(376002)(136003)(346002)(52314003)(199004)(189003)(5024004)(14444005)(66476007)(486006)(110136005)(66556008)(102836004)(66946007)(2201001)(64756008)(2501003)(86362001)(478600001)(446003)(76116006)(476003)(11346002)(5660300002)(52536014)(966005)(7416002)(316002)(76176011)(6506007)(7736002)(7696005)(53546011)(66446008)(186003)(54906003)(99286004)(26005)(3846002)(25786009)(229853002)(6436002)(68736007)(305945005)(8936002)(74316002)(4326008)(33656002)(81166006)(256004)(81156014)(2906002)(6116002)(8676002)(55016002)(6306002)(9686003)(66066001)(71190400001)(14454004)(6246003)(53936002)(71200400001)(440614002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB4078;
 H:MN2PR12MB3279.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HcfYRvidqxqcqKmvc4OJYwpHW9//N2U3IhvOO+0F5a7FR9xHweZ5X69aWrakosmtei9oV+Y57siURotlmhwEGuinh4Hwgm9AYrxZzIkfsbG3EZ1yfpWMm3npJBEnYK/a1qaD74hhDH+DNODzt340iEf9/M3Jpp7OZL+aZrYu9zLUurFpyEdsUpTWaRXOF4edh65U7Lvt8S6Cst5K25KVgM8kPHRxPYV0Hnd7H1vUVW4c5OneZn1sAEqg6A87I9zXeofQgJwdK1NYdF7/+Jy/9c+y+twQchCEdcCdU3kBg/PqBeKkYHdW6XGcNDQysTtQSJkLDkuSpBz9x95Mmq880+X6S3m7C3Y6ry604KAxXonSxdlqld0u43Q5IooZVzFxoQNX2bxSsPKoGtUidYKisa5CWP4Pqylkqwv9RB8EUyk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e4c96f-17c4-491f-9b69-08d71417f8e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:29:08.7838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4078
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_042955_649795_263FBCF9 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Robin Murphy <robin.murphy@arm.com>, "David S .  Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

++ Catalin, Will (ARM64 Maintainers)

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/29/2019, 11:55:18 (UTC+00:00)

> 
> On 29/07/2019 09:16, Jose Abreu wrote:
> > From: Jose Abreu <joabreu@synopsys.com>
> > Date: Jul/27/2019, 16:56:37 (UTC+00:00)
> > 
> >> From: Jon Hunter <jonathanh@nvidia.com>
> >> Date: Jul/26/2019, 15:11:00 (UTC+00:00)
> >>
> >>>
> >>> On 25/07/2019 16:12, Jose Abreu wrote:
> >>>> From: Jon Hunter <jonathanh@nvidia.com>
> >>>> Date: Jul/25/2019, 15:25:59 (UTC+00:00)
> >>>>
> >>>>>
> >>>>> On 25/07/2019 14:26, Jose Abreu wrote:
> >>>>>
> >>>>> ...
> >>>>>
> >>>>>> Well, I wasn't expecting that :/
> >>>>>>
> >>>>>> Per documentation of barriers I think we should set descriptor fields 
> >>>>>> and then barrier and finally ownership to HW so that remaining fields 
> >>>>>> are coherent before owner is set.
> >>>>>>
> >>>>>> Anyway, can you also add a dma_rmb() after the call to 
> >>>>>> stmmac_rx_status() ?
> >>>>>
> >>>>> Yes. I removed the debug print added the barrier, but that did not help.
> >>>>
> >>>> So, I was finally able to setup NFS using your replicated setup and I 
> >>>> can't see the issue :(
> >>>>
> >>>> The only difference I have from yours is that I'm using TCP in NFS 
> >>>> whilst you (I believe from the logs), use UDP.
> >>>
> >>> So I tried TCP by setting the kernel boot params to 'nfsvers=3' and
> >>> 'proto=tcp' and this does appear to be more stable, but not 100% stable.
> >>> It still appears to fail in the same place about 50% of the time.
> >>>
> >>>> You do have flow control active right ? And your HW FIFO size is >= 4k ?
> >>>
> >>> How can I verify if flow control is active?
> >>
> >> You can check it by dumping register MTL_RxQ_Operation_Mode (0xd30).
> 
> Where would be the appropriate place to dump this? After probe? Maybe
> best if you can share a code snippet of where to dump this.
> 
> >> Can you also add IOMMU debug in file "drivers/iommu/iommu.c" ?
> 
> You can find a boot log here:
> 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__paste.ubuntu.com_p_qtRqtYKHGF_&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=WHDsc6kcWAl4i96Vm5hJ_19IJiuxx_p_Rzo2g-uHDKw&m=NrxsR2etpZHGb7HkN4XdgaGmKM1XYyldihNPL6qVSv0&s=CMATEcHVoqZw4sIrNOXc7SFE_kV_5CO5EU21-yJez6c&e= 
> 
> > And, please try attached debug patch.
> 
> With this patch it appears to boot fine. So far no issues seen.

Thank you for testing.

Hi Catalin and Will,

Sorry to add you in such a long thread but we are seeing a DMA issue 
with stmmac driver in an ARM64 platform with IOMMU enabled.

The issue seems to be solved when buffers allocation for DMA based 
transfers are *not* mapped with the DMA_ATTR_SKIP_CPU_SYNC flag *OR* 
when IOMMU is disabled.

Notice that after transfer is done we do use 
dma_sync_single_for_{cpu,device} and then we reuse *the same* page for 
another transfer.

Can you please comment on whether DMA_ATTR_SKIP_CPU_SYNC can not be used 
in ARM64 platforms with IOMMU ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
