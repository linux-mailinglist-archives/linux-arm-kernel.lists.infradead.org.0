Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6827975243
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBMSY4fHyZNyGvxU1SPb5G8a2yyrG86FrQbiKEXAAWo=; b=BP/udDTyxitwYf
	qgMWQxq3BioBluUgnQPcurr1GO0mtS7VTw1n8EB3DVt4XNmN3W9sV3Q80AjLuRmHjUb+Joy3X0DOI
	G/dcjLcAtof8Dbs4kjZAfvaXff/50lrGPoJWP1Eh43YXJvoBXJFdN2oFJi4RyVvsumQ3ySZ/vufI8
	mlKoKd+TsDmIyPPqCEkwwG8e78MKjkQA3A9J84oMMkHnFBzeGZtPcaEBTjn4b8e+7oh9B+E2tRI2Y
	+t+GAI80XvF3pltERgO3z32yID1C/+v0Gs3VQdveYTN/nhk02OxTnLQsOy9r98c2kYBXdI8zddWHd
	8RicKlR2IhfLW7PBqOPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfQj-0002b1-G4; Thu, 25 Jul 2019 15:13:17 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfQM-0002ZY-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:12:56 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 43B15C1C1A;
 Thu, 25 Jul 2019 15:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1564067570; bh=CPGA2FpyGuZLv84v2O/aHQ+ZIaWuwHQWeXM1BdijTSc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=BEkoAuxfn8If2zfQsmsxpn0KW1K1y9qEx76Lm5xCFiBmopQOsxorAxjH/RpvuYisn
 chufpGWPKnuJ3KFR9lvOT0vgxBH6UF8hjNtICmSA64OMstzVtW8HMGXPf3aP0N1/3m
 UlqBEU09pok8EBMmJGf3JgPbb3NG1LEVXG2wHYCYN/iA/DxmTS12uaJStU6gfljz0E
 qHdhaTQew030hUHyu+LA47DaCxDpcbPKIP3kUUNI9S6TxN8h6dnnv1HSz318fDn938
 oMbU7sNZ85uf9Y5EFT04UTYU4xU3c9oZAXfaVeOH0fxwyn2hfO4161jTkho79o9oXO
 jzTZEd+thOl4g==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E29CCA006A;
 Thu, 25 Jul 2019 15:12:46 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 25 Jul 2019 08:12:46 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 25 Jul 2019 08:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TRMY03N8XRoR0UNzHwr7T20zN3sBVBFpdQhBn8Z6zrmR3cC1bI5biXGl0OHYB0ChAx7cV3ahv+0IbqS81urrhZqbnzmpAbsWtAqBYwGZ7XQDvesSRwVf9z7HNgBqp8XrdhGpQY+buJy5LSefEU9scUkxnH57wIqLVoorIWSz/dS8uZO4Wcs6tVVO4upugufktFnKUi9ThipX5yB770WDYqNyRNu61wz/1ruJaaAQenLkPrJPE6Z/uChZ9JTkHzt79GGNoCoJDgvZCdk1Uw5Bw4mJeJ90Y98jCB+IZv4KpSnpg+xhL/xy2hjWAmwQuF7NJdjWl19qEQTSZhjeTZURGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CPGA2FpyGuZLv84v2O/aHQ+ZIaWuwHQWeXM1BdijTSc=;
 b=Jpg/LFUX7tTMmTN+ZAMQC9dpGM35Ar0qyk5g+YY+l9gEmDQ14dRgP9obtwcT6br7cMeejINPgEKlJhZfiyCtpX9H3mF70Qx8NBofsZab1a1APC8v8AI0feX5+Chh0yJsQjBzQuVRu/F2zArQ9hhXVPCNtd9g6jdfvOZVQWens2nIWxHcK2D9oIbiRqcRx+9jSVa0WFRkFqT8U/dkV4/6ONLaK0++m2oSVPU3kcWefHo37F7v+H5D7jySjVOvokpiOa4sGn30vzTonDxuLi6xetHHdaPHmnwh2pkhnjf7+XqCnmiPJJ27YapdlsYiDja3/lzkcHg86XSEIYFzkvmCeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CPGA2FpyGuZLv84v2O/aHQ+ZIaWuwHQWeXM1BdijTSc=;
 b=X8+eQefiolazXMNPyy7S+pBw2OIuxMex4I1ChYqDv8c4LxP3dvQDdiVdA5t8wMGQ9kUOMl1LsOCca9+tHgUD4gP0+vxt4LD1eOHrBUvajOK4YiP+6vUSVg5XGtdbwHgK74GIXQ0S5Ad3RM1yitSG0y2n5IRflXcdHHh7CWqE2+M=
Received: from BYAPR12MB3269.namprd12.prod.outlook.com (20.179.93.146) by
 BYAPR12MB2774.namprd12.prod.outlook.com (20.177.126.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 15:12:44 +0000
Received: from BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c]) by BYAPR12MB3269.namprd12.prod.outlook.com
 ([fe80::f5b8:ac6e:ea68:cb1c%4]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 15:12:44 +0000
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
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abbdEOAgAAAgcCAABHmgIAADDMg
Date: Thu, 25 Jul 2019 15:12:44 +0000
Message-ID: <BYAPR12MB3269B4A401E4DA10A07515C7D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <7a79be5d-7ba2-c457-36d3-1ccef6572181@nvidia.com>
 <BYAPR12MB3269927AB1F67D46E150ED6BD3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <9e695f33-fd9f-a910-0891-2b63bd75e082@nvidia.com>
In-Reply-To: <9e695f33-fd9f-a910-0891-2b63bd75e082@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28f4ac83-9f92-4e6d-74a6-08d711128ba3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB2774; 
x-ms-traffictypediagnostic: BYAPR12MB2774:
x-microsoft-antispam-prvs: <BYAPR12MB2774DBB4B8D61D9B8097B196D3C10@BYAPR12MB2774.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(366004)(39860400002)(376002)(199004)(52314003)(189003)(99286004)(256004)(66946007)(76116006)(33656002)(66556008)(66446008)(7416002)(316002)(3846002)(2906002)(71190400001)(6116002)(486006)(66476007)(8936002)(81156014)(81166006)(4744005)(71200400001)(52536014)(2501003)(478600001)(26005)(7736002)(9686003)(25786009)(186003)(5660300002)(476003)(8676002)(305945005)(54906003)(6246003)(66066001)(2201001)(53936002)(6436002)(53546011)(446003)(102836004)(229853002)(4326008)(68736007)(6506007)(74316002)(14454004)(76176011)(55016002)(7696005)(64756008)(110136005)(86362001)(11346002)(440614002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB2774;
 H:BYAPR12MB3269.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 01aYrOaq+R/cxmHSSkyFrP3+ukr0hyghq+UCjzWUiJOGExzzltDgKikj8r6u3U2q3MTd6bgd+WsaHBayVWhWO4IIpUFXS3kXj7EvQicuvPbutfpGbW21zKJpQ0bGSewheSudDa6+sljcELme+dTVIf+86tv6J65GYsAbTJjVJbQOuQviMSztYLBJsCtY+cG6KVdotiDrqiWLPT2qz18ffMh8LMo8IhOgCXsy6cOmWj8s2rTydnMBI1N4wHzdzXmT0VMLn29hrsxOWDzLKi+PXVv4MQeBjfnOx702jG7WI7Bc9XSXNE4jQ51WlVDknvjs+dt5+znMdPr1DSR6AC2bfH9OIEroCMlNzncSQASWL+iIGSscs6UyLxCSw+mHKOrbludqyM/AShmvJdKqV8K0oW1lUttKcDWidTw94JEROv8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f4ac83-9f92-4e6d-74a6-08d711128ba3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 15:12:44.5023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2774
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_081254_758468_66522F76 
X-CRM114-Status: GOOD (  13.08  )
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
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/25/2019, 15:25:59 (UTC+00:00)

> 
> On 25/07/2019 14:26, Jose Abreu wrote:
> 
> ...
> 
> > Well, I wasn't expecting that :/
> > 
> > Per documentation of barriers I think we should set descriptor fields 
> > and then barrier and finally ownership to HW so that remaining fields 
> > are coherent before owner is set.
> > 
> > Anyway, can you also add a dma_rmb() after the call to 
> > stmmac_rx_status() ?
> 
> Yes. I removed the debug print added the barrier, but that did not help.

So, I was finally able to setup NFS using your replicated setup and I 
can't see the issue :(

The only difference I have from yours is that I'm using TCP in NFS 
whilst you (I believe from the logs), use UDP.

You do have flow control active right ? And your HW FIFO size is >= 4k ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
