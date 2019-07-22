Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4F0701DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGFdZibXQ1GKXgOPFGHip2nZkOA794Qt/uch1HmaDrk=; b=STk4qfIsreY0sz
	WLqOJDMM4Al5XIxeIl297PTI9KMNw84cXclC55r7IZR/0njrwqWJ6ZM7lORbAwN+9mqftpS32rfLm
	5DqRghwRbOMz6Au/muibjMNIL5923o88Nh/EV2N53WlxdO1cjpDIVqxz2vdkjOQv6bxAVHAt1gy+c
	S4WcqUasUm1l473ime1JwaxT0ZAWY8qNcG8SLETsWg39+n02xsNFWs5rYL30P1pAcqRkg89MFAab2
	rik1yXWWXtgKDecBxQz17OiBmbxEWsqOwGxsYHpx2I6KvDaaUo7KXhOpu/B+9Y34ZFzqkJETGvhTQ
	GsadIHGTxzHqoq1jrxkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYwI-0004mY-2Q; Mon, 22 Jul 2019 14:05:18 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYvv-0004mA-Sh
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:04:57 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 997B6C0A8A;
 Mon, 22 Jul 2019 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563804294; bh=6SshQAV11Iu3QdhIPa1HwhiRSC4UC02at29tT2+52jg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Sv110pmicouavIAZUjJIaVeQoWWC5ASgoFwBTw2oUjFrKGs7D9UdiI6FSBxFNebMN
 PeBvMWnaRvldMHoeBae3ouuiRy0G+KMAYpdkyvUHJVCKsmQ/x4ohOoa9mh+Q/MNnUG
 jJHb7hbzQkL7s5Hajf427QSns+ph2MCDNfcUCz4WPmXoL1453ewZLQlkkAsf8kK+hw
 3Za609X32+JSNxvXaCW29LJq2VVy/iXgh6zfLQ6SoG/lCHaCRRTHRv9ETctTOh1P5u
 5rsSPH31XZNxwBceb9aybznT7lLOu+adtFa9xDCvxYSGcQ3fRpXUkutHnvMM3O6wZz
 8Ba9SMPAsn23A==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D55A8A0091;
 Mon, 22 Jul 2019 14:04:51 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 22 Jul 2019 07:04:51 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 22 Jul 2019 07:04:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqoFRBNrhuz4pQB7doi5z0bg3N5Pv3WTwVOFkRX6uDVUar90/Fv3KbwpbftJwJ57B8sSQJ14AmVe+OVPjBboY/tIMREZYLVm2XMRUURD0TdVPJNSsPKsEMK06A8okDuCdeO88GjyzfJIEykw/U2cndmqdmn0G2w0QxCJQm9E1JjWVCdOIQMu3FGJvk0VQOXpRe2z/z/JRYpcsfvtTWLubgeF0wMqd61uCsg/FVo0rHB08zM8cify+MpXRzfv9LwOvO8a6YX2xE5JaqPPvkRIiX26pV5L08B/PgWVjQkUE69F4rUs58gqH3553Am6q2VpMSP2AO5cqpV8GktzU4KjVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6SshQAV11Iu3QdhIPa1HwhiRSC4UC02at29tT2+52jg=;
 b=DcPkRPpVN1+VwONl99fqV0gnTvSg2lZEe2PngsymtHM9cn1KOfSEvBjqI7Ets3ewqR011nR9rh1erGw+4tMW1UnYpUJr4r2ZFkep5aEMT5lLgkjlMbCITFUhhTYBh+QJ5NMLCeH5DK7447Tvl1sKQF9LooKIPcAo5N7UQS1fyF00LcnOxFUVVlEgu94Gr0gd6YXBQ/HTey7G0OKuHaz2amqgAEux5zwWxIDs2AHeC+rApQrB8qz2lgwfM2UB3od/ibVhVCFR2g06GTBltWlYYNKytGnjSm0CQh0HBRDnZQaHGYQmbJrfzo7HV3lR89UOuFyBbNz+DPk8ZKf1PhVdDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6SshQAV11Iu3QdhIPa1HwhiRSC4UC02at29tT2+52jg=;
 b=DBhK9U55ri+atPPNYzVks2a7h5SKfJQ0XTc2H4izCW4BoTLo46FsVnGs51yC5Et4YL2+gswgurl+XTuXbqYIw1C2srv1uy6v1SDLNqGynSpLzQejzEOZWo5O1S6GsCKC8QnXqACitn/epuMyk96Bc3JMKriX4n8yoqFcuLP2f2A=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3122.namprd12.prod.outlook.com (20.178.210.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Mon, 22 Jul 2019 14:04:49 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 14:04:49 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>, Lars Persson <lists@bofh.nu>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CABnZ9AIAADuYAgAAFQOCAAAnIAIAABLTA
Date: Mon, 22 Jul 2019 14:04:49 +0000
Message-ID: <BN8PR12MB3266664ECA192E02C06061EED3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190722101830.GA24948@apalos>
 <CADnJP=thexf2sWcVVOLWw14rpteEj0RrfDdY8ER90MpbNN4-oA@mail.gmail.com>
 <BN8PR12MB326661846D53AAEE315A7434D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
In-Reply-To: <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45ba71a6-c102-4321-d9f1-08d70ead8f77
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN8PR12MB3122; 
x-ms-traffictypediagnostic: BN8PR12MB3122:
x-microsoft-antispam-prvs: <BN8PR12MB3122E8CFBA7CA98D07B89891D3C40@BN8PR12MB3122.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(396003)(376002)(39860400002)(199004)(189003)(54906003)(8676002)(8936002)(81166006)(81156014)(110136005)(6436002)(99286004)(256004)(14444005)(5024004)(316002)(71200400001)(71190400001)(76176011)(53936002)(7696005)(33656002)(55016002)(478600001)(7416002)(25786009)(9686003)(66066001)(102836004)(14454004)(53546011)(11346002)(5660300002)(446003)(2906002)(66556008)(66446008)(76116006)(186003)(26005)(229853002)(68736007)(6506007)(66946007)(64756008)(66476007)(7736002)(6116002)(4326008)(52536014)(74316002)(305945005)(486006)(3846002)(476003)(6246003)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3122;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1BM5mmwA7lkdSNah+01UdI+N/idZv7In5dAzEuosJ4fw1qua7O7m+GQxqX22dnkDhJUGxOapH78MvMCE7cWmI5M36zhmFaxAsuQS0/weM3+ocJZ6zWoy6/vMveYPZ6DZJpyexgmI3EiUJPV/afcKEkyPJ0XxOP1S4kjaBDr5wmMDHP4rLu8zhZf8pY9Cz55rvxivzQF7OQ7tUYWjwRyitVm/6layEyyCa4lKz2jZLfAwPz8sb44UwQZFdAIhNli77cjSSOFjX1xCeXdM3BQgu4prPudmxLtsDG7U4ZzZJ65gLD16wp0jL1pIEMCIjRMvH0/2S1qRGQzudj2xgP/HiPTHfsb9m+fshoj6vwTmrASpvI/3+GFdhEtXP0aB1grMk4jRq8l3OSFQIMsBe26FSbyUGuaw8el00D8v+ef6R/k=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ba71a6-c102-4321-d9f1-08d70ead8f77
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 14:04:49.3882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3122
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_070455_961114_D519D4A7 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/22/2019, 13:05:38 (UTC+00:00)

> 
> On 22/07/2019 12:39, Jose Abreu wrote:
> > From: Lars Persson <lists@bofh.nu>
> > Date: Jul/22/2019, 12:11:50 (UTC+00:00)
> > 
> >> On Mon, Jul 22, 2019 at 12:18 PM Ilias Apalodimas
> >> <ilias.apalodimas@linaro.org> wrote:
> >>>
> >>> On Thu, Jul 18, 2019 at 07:48:04AM +0000, Jose Abreu wrote:
> >>>> From: Jon Hunter <jonathanh@nvidia.com>
> >>>> Date: Jul/17/2019, 19:58:53 (UTC+00:00)
> >>>>
> >>>>> Let me know if you have any thoughts.
> >>>>
> >>>> Can you try attached patch ?
> >>>>
> >>>
> >>> The log says  someone calls panic() right?
> >>> Can we trye and figure were that happens during the stmmac init phase?
> >>>
> >>
> >> The reason for the panic is hidden in this one line of the kernel logs:
> >> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> >>
> >> The init process is killed by SIGSEGV (signal 11 = 0xb).
> >>
> >> I would suggest you look for data corruption bugs in the RX path. If
> >> the code is fetched from the NFS mount then a corrupt RX buffer can
> >> trigger a crash in userspace.
> >>
> >> /Lars
> > 
> > 
> > Jon, I'm not familiar with ARM. Are the buffer addresses being allocated 
> > in a coherent region ? Can you try attached patch which adds full memory 
> > barrier before the sync ?
> 
> TBH I am not sure about the buffer addresses either. The attached patch
> did not help. Same problem persists.

OK. I'm just guessing now at this stage but can you disable SMP ?

We have to narrow down if this is coherency issue but you said that 
booting without NFS and then mounting manually the share works ... So, 
can you share logs with same debug prints in this condition in order to 
compare ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
