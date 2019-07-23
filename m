Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F59713B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Sl9uU2CLFeTVdnXzGJxKO/F1J6Nq3p5Yy0qETPiQGk=; b=Jlg/qCt+PdNZx0
	AdtKURU9iu/BxfVhpdRkyRfeBaYIiKVdUyzCF/ouvvL11UAWJmBlMFETUiuNuhAhTtsyPO5FXeCG4
	Xl22vTJjrnRvOFmBXvlbNX5tYAIKkfzyySMdX7KLgYvCuvxdKrGfJXkZNBBdKv+3Pje+B0WW8uaQU
	coGoY8DiGbo06OgHQRKCan/UDjn0218/q6qTTfIUzHYwfz44x+Dv4gReRl2wMIUZxQOtUSWB6tzJ2
	pPKdf4dyVePurzV2+ihk6UWoccO44OoOj+vDlDnCypdGAAdcTWBN6sXE3zY2Zr/o1iA31orNetD+D
	7kiaCyehmU5wP7hge+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppxQ-0001St-Va; Tue, 23 Jul 2019 08:15:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppx3-0001S9-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:15:14 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BBBE0C0BBC;
 Tue, 23 Jul 2019 08:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563869711; bh=RDHnLuXK1uZ9ij6RJMMQzzssqrjmVIDUreklGqjmkak=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=H7gp1jYxeMNAuolDDUDe/cAqXRl083HLI/uO9QkWZ1YBetc1S0OWlg7JENXlq1B3k
 hUliqgfoSQPiUfusnfw9LVjJZc6dQfhEbiHAWjDQ9o4X23NHm2196GxD9s8zzIvehB
 rpgoEmHkxz7KXhsCfFxnSyRFavWaS261MDaUsg2V1qFI30jCTau0Wx3O78nkxbonup
 GUb1v4jIl0k/0Ovh27E2MZrRRMBFau+P2Tt0vod54jmhsxIkvuEJCvy06po4makvtI
 hIBbz9azvJ+pSk2l62ukMNXE3bRUD0FXOK2QdYzKHu5COnDfP7ffn9uIO5p01ybf4s
 TLkpcRBMNQpBQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id C4A2BA007B;
 Tue, 23 Jul 2019 08:15:08 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 23 Jul 2019 01:14:59 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 23 Jul 2019 01:14:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlqoTYY6k6REzOmvvt5qUJpFN/HEGYnF5REoCXQcU+dwseHi0xrxUxN64T6qkN5HW/TGlt+1E4KljNj0ND5DPFgjii6C3ZZ9Dn0inzTf7XtlbYPOouqEy0BSU+IAI6+FjGe/ZPTkN/Cnm/OlvuJURjKYNjXMQw+PzLTFC9G6JFqpuNMgj4BvkjJQTc6y6s2M4VFPBqvPrq58VH9addYs+poo+CQTzxrO9BsAob6b+R6H/7Ba4ufvq1JzDNBNpZXwuB1ICV+JP3RjlinZY54DhigS6CDqYeujBVoP8lZoWj51VvhUjQLR+OPJJEqS+S+fpL+sqNtuPuhSXgZQRmf/wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDHnLuXK1uZ9ij6RJMMQzzssqrjmVIDUreklGqjmkak=;
 b=h16cKi2RAR2DIsfuOPdEJxMvSz8ThaJ4vn/HdmkX0/lTBsmWaedcd9VmRV5p060ZMDkQoX6c/N6eXdzxsIbY46DB+foqR9wahKQrH/2yreeXPHuUfxecWhIRWyAeVbmdDJAqwTc9mWvxlmnEKMyXVmpK8r7ZBpu0JpTXNduR1GvQmwH5YHkmoCwr20sEjbqquV/WuM57ti6z5ke4HuAy8b3nL9eG4ptS0N+U5IgYrNTWOT73wsYVpqr9y3ouVnKqa9Qbj1M6ISsHW+HGBsKv6R/sRXAKbwmPpzcFhKp+SMZd1te4J8T9Qi3fGnYsIQd1drtEtD0NdFVrm0KlHlqfgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDHnLuXK1uZ9ij6RJMMQzzssqrjmVIDUreklGqjmkak=;
 b=ZsA4OxfPW5kdvzDm/VDlhRa2Z4DfPJAqwFqMV5c0Fhz2GsMqQk0F3CdWo0hiiChDCbudIjt77k7FGfA42OgnXFzRekQILAWXykjdd3qK7LGowm8O3DlAmMEK7mz1Flm++KbzsK+z59xZreecFHQuBuuESEXlJGlBMs5RGWoPzqM=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB3014.namprd12.prod.outlook.com (20.178.53.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Tue, 23 Jul 2019 08:14:52 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 08:14:52 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>, Lars Persson <lists@bofh.nu>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+CABnZ9AIAADuYAgAAFQOCAAAnIAIAABLTAgAFMy7A=
Date: Tue, 23 Jul 2019 08:14:52 +0000
Message-ID: <BYAPR12MB3269A725AFDDA21E92946558D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190722101830.GA24948@apalos>
 <CADnJP=thexf2sWcVVOLWw14rpteEj0RrfDdY8ER90MpbNN4-oA@mail.gmail.com>
 <BN8PR12MB326661846D53AAEE315A7434D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
 <BN8PR12MB3266664ECA192E02C06061EED3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266664ECA192E02C06061EED3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9e27c6c-9962-4a2c-93b5-08d70f45d691
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3014; 
x-ms-traffictypediagnostic: BYAPR12MB3014:
x-microsoft-antispam-prvs: <BYAPR12MB30147B7D4E97832A7A4DB5BDD3C70@BYAPR12MB3014.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(396003)(366004)(39860400002)(136003)(199004)(189003)(76176011)(8676002)(4326008)(110136005)(71190400001)(71200400001)(7736002)(8936002)(476003)(81166006)(53546011)(316002)(81156014)(7416002)(305945005)(33656002)(99286004)(486006)(11346002)(446003)(2906002)(7696005)(74316002)(102836004)(54906003)(186003)(26005)(6116002)(6506007)(68736007)(5024004)(3846002)(256004)(14444005)(14454004)(55016002)(478600001)(6436002)(6246003)(86362001)(5660300002)(66476007)(66946007)(64756008)(66446008)(229853002)(25786009)(66556008)(52536014)(9686003)(76116006)(53936002)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3014;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ym365IrBkU9nTZ2ea/lZmJNwRX94TnWjJMXe0KWgMvwP6kdMuzxscxaMv02w20yDk7DfholtOT4KNHlr8pIVM5DnUsTqMwlj5LX4n5HwU3tRvj/rl5PAXzW8rPyr0bWdpCX9JUXgrwnux+NRVfZD3QQYFB0v0WeHNdGOsdnq8NQL4PWlyziV/ZgVUogmH0c9i8VAN2qhI07xCNRsnPByAXcUMOARW30xfwbckiTxJ+aGjajqHgMRwPL1Hyvd+At7XFo6tEdDzOzLmpYrh7uiOhtyZ0Bs3W86CUHwnuLbHGY3zFbWNvc+GSgYLMeZ2D/mTqeDYoh++28hkxCwhEU/lZeAliKjXRG8xoHUXSIFf50vRLL7F3rOoaUXVL6GnYeO+uvOcPCtZb7ozMbLoytNUJnly4Td/7wGlg5bEVpZzdE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e27c6c-9962-4a2c-93b5-08d70f45d691
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 08:14:52.1040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3014
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_011513_495480_B2618A70 
X-CRM114-Status: GOOD (  21.71  )
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

From: Jose Abreu <joabreu@synopsys.com>
Date: Jul/22/2019, 15:04:49 (UTC+00:00)

> From: Jon Hunter <jonathanh@nvidia.com>
> Date: Jul/22/2019, 13:05:38 (UTC+00:00)
> 
> > 
> > On 22/07/2019 12:39, Jose Abreu wrote:
> > > From: Lars Persson <lists@bofh.nu>
> > > Date: Jul/22/2019, 12:11:50 (UTC+00:00)
> > > 
> > >> On Mon, Jul 22, 2019 at 12:18 PM Ilias Apalodimas
> > >> <ilias.apalodimas@linaro.org> wrote:
> > >>>
> > >>> On Thu, Jul 18, 2019 at 07:48:04AM +0000, Jose Abreu wrote:
> > >>>> From: Jon Hunter <jonathanh@nvidia.com>
> > >>>> Date: Jul/17/2019, 19:58:53 (UTC+00:00)
> > >>>>
> > >>>>> Let me know if you have any thoughts.
> > >>>>
> > >>>> Can you try attached patch ?
> > >>>>
> > >>>
> > >>> The log says  someone calls panic() right?
> > >>> Can we trye and figure were that happens during the stmmac init phase?
> > >>>
> > >>
> > >> The reason for the panic is hidden in this one line of the kernel logs:
> > >> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> > >>
> > >> The init process is killed by SIGSEGV (signal 11 = 0xb).
> > >>
> > >> I would suggest you look for data corruption bugs in the RX path. If
> > >> the code is fetched from the NFS mount then a corrupt RX buffer can
> > >> trigger a crash in userspace.
> > >>
> > >> /Lars
> > > 
> > > 
> > > Jon, I'm not familiar with ARM. Are the buffer addresses being allocated 
> > > in a coherent region ? Can you try attached patch which adds full memory 
> > > barrier before the sync ?
> > 
> > TBH I am not sure about the buffer addresses either. The attached patch
> > did not help. Same problem persists.
> 
> OK. I'm just guessing now at this stage but can you disable SMP ?
> 
> We have to narrow down if this is coherency issue but you said that 
> booting without NFS and then mounting manually the share works ... So, 
> can you share logs with same debug prints in this condition in order to 
> compare ?

Jon, I have one ARM based board and I can't face your issue but I 
noticed that my buffer addresses are being mapped using SWIOTLB. Can you 
disable IOMMU support on your setup and let me know if the problem 
persists ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
