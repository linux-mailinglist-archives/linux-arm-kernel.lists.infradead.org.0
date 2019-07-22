Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DA26FA49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8ITOuVyXssbObxNWguNVNp0s3o5AyNJhl4nZe4WFkE=; b=GKghQZ9Wp7/mIX
	c3hRNR8P/vOm8pSXLQwn3+UKup3fn9gRJht4ywZdTTq0GWaGyr5r5XIrqYD3M848tvMg8u7wATgLo
	5ULT6/F5fqAg3gol/1wSkSWZT1yHTg2HTg8TLYyg0tdnJrl4U84iLt+wce3KPLJITK+xrBupR3E2Z
	4GqZcRlQdcMaK8/4Jokd6fbrv3kyZlyMVcEArX4eDXteifW6drX+vNSdEnCuSQztoTeSCHab9V9a3
	pWRzMa7g1I73LRG0EwZJG8WLZ5DrZMidO+5wO7iSPRFeAXxwoAj+tQrfgPYI4ZIknbzM0iVuPYFDj
	/C9ZdZUY+WRqXVki8/gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSgB-0007si-6k; Mon, 22 Jul 2019 07:24:15 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSfU-0007cc-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:23:33 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9A2C3C015E;
 Mon, 22 Jul 2019 07:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563780208; bh=ZDI13eRLks5BhdqdBMUPilHlm2dHvKCGDWuFYoI5+kI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=WdEYAW8yFCqa52V5gkcGraoqvr0HYJy59fUAOVxX6fesqtHac3EPUB6VCQ29Fo/8z
 hQNkCzgxPo67bYW5AEMZ+bqPJJvq/B1s56sw8XUALA1t14zBSlNlMURIcr0hQkwe4J
 rvXy46jlLuy4sDvgEKURVlkCAZU2iiZPfjDjz7YpSvhrnp4FwVnMB5PJx5GkPoVDh7
 8k4dGbMmk9LKPZxH6zQytfKHsaX3RWWi4BCuX3up6u9IDDh4TgqquhDG03d0vpT//V
 XnzYWlppwK99Ay29xbQRMRzG2MP6cV6i4bQcpYYfkWx2l1eNJ0eUo6XouHn7p1F7xt
 LYm2+JGpSsEoA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D733CA00CE;
 Mon, 22 Jul 2019 07:23:20 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 22 Jul 2019 00:23:11 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 22 Jul 2019 00:23:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqOYpwj8Qj5fwp8U4Qi2rKs/z2Z2m4wZedefMLt1fcA8sXPacM2fc9ZdubrkVv3k3vzYb+FGvOG6a/RgnHcthXYYbPIMo3mCNQKdjGpfj/tfk1ivpbw9tDGDNx8hIbvTmZn/70WLVD0eUIZSp+K/3UYyhgTTV0o1p13p937JeSNE86LVTmam1bztT7BHOkMCRJIBu666Jtmmt/b1OPjGWxWWvYRrxUlGPv7JsBEBKkVVoVJvSRQHdwDQJFHhyqWbB75TudhclzIPRVQxO/fpdPAw5NssLHFEH9TXYwF0iZYR90Q8u/3sZZvpuneaRcW7lZs3wfL+DmFjpa8bn2KK0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDI13eRLks5BhdqdBMUPilHlm2dHvKCGDWuFYoI5+kI=;
 b=TuueUv5EpHoCYhpdiyOEl4ZTAAbRlJ8XYjUwhw89epDWHTu5JJJe/TNuP2p/ToNIHfS/ZWp1L+268KOy7Xq3tRN6pXkblgo7DM5KEfsZfAIwuhbKv93MDkHTy7H+fbs3+GJrkvm1ariJlaqw9BUXLrBRhVqDD5RmHbKcvZrvnEe8r9Yzi+Ia9kwFUXxhjfL5UfdB5PV6+iCUNbH+IgJjrBMIVO6kHzF0adcmqgrWgeCmUJz7wXVkKzWwVRwNzwSPFR7FY4l0/RouEJte1Qwj40wDV9zY+e41gAtoQNkoJIW7P4pSIj3XVYd7tZ/lfjYp4RuFY2rdefHzcU0TbQKl4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDI13eRLks5BhdqdBMUPilHlm2dHvKCGDWuFYoI5+kI=;
 b=uw6JUkIurOIkbZRUMX03yDqilJalguCOhTAi4paXUCOZ2eUUGc2rrlNLJpquEZhRzgpT3rgIz5NzZbzMAUAFll7DG+q64wUJeeyYIWx+BHaIZOVKvEy5bE2ALNJdYNMaMwm/SXQIJrg4g5xKTG38cAOlL232SzTlo0Rn2ACV2ng=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3347.namprd12.prod.outlook.com (20.178.210.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 07:23:09 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 07:23:09 +0000
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
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CAABvLAIABeX5ggAAOFICAAAG4AIAAAXQAgAAaB/CAACO4AIAAAIsAgAAR0ACABE5q0A==
Date: Mon, 22 Jul 2019 07:23:08 +0000
Message-ID: <BN8PR12MB32665C1A106D3DCBF89CEA54D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <6a6bac84-1d29-2740-1636-d3adb26b6bcc@nvidia.com>
 <BN8PR12MB3266960A104A7CDBB4E59192D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <bc9ab3c5-b1b9-26d4-7b73-01474328eafa@nvidia.com>
 <BN8PR12MB3266989D15E017A789E14282D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <4db855e4-1d59-d30b-154c-e7a2aa1c9047@nvidia.com>
 <BN8PR12MB3266FD9CF18691EDEF05A4B8D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <64e37224-6661-ddb0-4394-83a16e1ccb61@nvidia.com>
 <BN8PR12MB3266E1FAC5B7874EFA69DD7BD3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <25512348-5b98-aeb7-a6fb-f90376e66a84@nvidia.com>
In-Reply-To: <25512348-5b98-aeb7-a6fb-f90376e66a84@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fa84088-1c66-47b8-72f4-08d70e757288
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3347; 
x-ms-traffictypediagnostic: BN8PR12MB3347:
x-microsoft-antispam-prvs: <BN8PR12MB3347C98045C2B45C76C3A2ABD3C40@BN8PR12MB3347.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(396003)(366004)(136003)(346002)(376002)(189003)(199004)(6506007)(53546011)(102836004)(186003)(305945005)(7736002)(99286004)(4744005)(25786009)(74316002)(2501003)(53936002)(33656002)(7696005)(8676002)(71200400001)(71190400001)(478600001)(2201001)(26005)(6246003)(229853002)(55016002)(76176011)(4326008)(9686003)(446003)(256004)(52536014)(66066001)(8936002)(14454004)(2906002)(66476007)(66556008)(64756008)(66446008)(6436002)(476003)(86362001)(11346002)(81166006)(81156014)(316002)(486006)(5660300002)(7416002)(3846002)(76116006)(66946007)(68736007)(6116002)(5024004)(54906003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3347;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pPzcdhVJokCMzQdj+1o8nrxr2bJ19r3LngJf+/CfUHdU9D69r4Iqv70CZcTUAU4HCryIJuSDOX3q2V4KDbMIq5obhU5c94cRGZOmfH+a4YSr4fjexYBcM9aJDCP3170aLhnuSQ8ai8E6soDNKlHXINdrF1Jp/6fXekNOV9txwlFhTmgz47DhIkVL7oTDTo8ink/PVQbQxwtE1IlDXNGAlwU3YMz1CzIGMaPIWFMsR/+fiXM8xgP68tDSlTyOv3E9+T87M+st14hzojuywfd3+4qT+QfHxV3OD++qRQDNGk259Z/XGFzUwJF5um7OCTwW4st+prctGLmyp6bwSpHPsgVyl/DdG0a0dZftKZlvFbTiGp3d6HVj1diltFUiWRpnlXa9O0ZsWIZTtOavH5e8RByu5rjNUyRvkX2DxCBmCho=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fa84088-1c66-47b8-72f4-08d70e757288
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 07:23:09.0282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3347
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_002332_285736_BE99C50A 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Date: Jul/19/2019, 14:35:52 (UTC+00:00)

> 
> On 19/07/2019 13:32, Jose Abreu wrote:
> > From: Jon Hunter <jonathanh@nvidia.com>
> > Date: Jul/19/2019, 13:30:10 (UTC+00:00)
> > 
> >> I booted the board without using NFS and then started used dhclient to
> >> bring up the network interface and it appears to be working fine. I can
> >> even mount the NFS share fine. So it does appear to be particular to
> >> using NFS to mount the rootfs.
> > 
> > Damn. Can you send me your .config ?
> 
> Yes no problem. Attached.

Can you compile your image without modules (i.e. all built-in) and let 
me know if the error still happens ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
