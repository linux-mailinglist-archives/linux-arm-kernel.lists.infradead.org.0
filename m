Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 018577AA60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUpDj8G8asYjjPQ9s8DM8nNlwAY03cVK3Ze+4eTmeZo=; b=tIcr7sr3HhaeBr
	LTDu3V7gvh3yp1fm9oDdr8tjxTq5D2AISa2Vdcc4z5C7aixKkmtEmRXLkGl+1d2GyZfl1OR1aWw47
	j3fi2aIGwADpyraFsxbWJZhea4EasY6VzetafeF13rkJiUYmt0C+fwB972HJE3k12xGulqGpRfd1H
	znKnKhCjxs/YmIzmbFk6gmSm77Z2PznA+gU9nD2Fw2ujqOgQSdDd2D37oF4l1uLH7Vq5TmTp5ufvQ
	XBzYICOV6SdruwLQlyiLexwEOCXqF3+ZfVWFV3rkeA0HcExZo9qERbgVYqCZOIUzcMEymCv34lb3N
	8I+/AhZfyZ9ZCqF4sjYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSeO-0001Dy-DJ; Tue, 30 Jul 2019 13:58:48 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSe4-0001D5-C9
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:58:29 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DBA25C01EC;
 Tue, 30 Jul 2019 13:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1564495108; bh=dsRxsIMMA7Re2X5jzrM5BT6whgSxGRni25VGvpOmnpc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=WVKafgDCUDtcxZ92sztqdz5jcNSERrbmwYXkMtEYzKK9S+jqITSVmSBLzbwiRH8mB
 YOLLfykPbJV2sGAD5J++68mvV8xXD158OwAVRCfTNzvP4CH0qaRi53yEj1mO+ORW4y
 lseDX8bzbLegxyLIF+G5+OGzzcFtjqv4ZjpHmVELCbBa9xW4CgAT6tRXIV5Oqyt01j
 5JcT1rFwLmS5ywuDzMUozuQDlPX0b6SMytBKjs+teq8LiZTdCgOYvNSTrkYHbl5Vev
 w61eln0Gdqez0lbPzRs8MleRgMrGH3afocpzZj+pk5ZpNXeCnAjeKBmLJYMTdm/sJa
 gh5cJv2sK0iYw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id F1442A0069;
 Tue, 30 Jul 2019 13:58:20 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 30 Jul 2019 06:58:20 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 30 Jul 2019 06:58:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RbnUeURGn8laCLbCesOGPQlQDuwW1OtI/DOG9EmogemAJ/SB2nC0A8O9XWld5nnKULwJbIGdTM+LRrkB4RyHzhOI1hu9tV28UhrUz9dKg9EFTi8Ch8XGASUZV0XE/HaUAT5FJsED9B8JRRKhYEAOROIyZMItnH33h9XwsSfYPuHxl0gzzVep9JValWU/7rfu3wWtDxgNn7wZ3Z3P30P1raciNreBY3HuZTQQfC2S3L6DUsazk9hbOcDaSYJjyvRFkTpYQy7zXZsQhiWVGQuqQ4y5BraNdzpwsJmieAHesDxMrQIg8qJtAU5uo6DW9ndZjvHNCEQYLTdBkIoe90hseQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsRxsIMMA7Re2X5jzrM5BT6whgSxGRni25VGvpOmnpc=;
 b=UC8Hmyxm+gAibQ6KphZnmG45GWe7ZDVyVYqZd+twcj+wkqE61MswYphODc64zSRGyLxLi7T1AbldpnPeQgcFdrc3YEH1wZmou1fdlrTfirYJo4x4vL7t9OsIQn+0/hunKMVnj4McmK8l9LDx1XTmgrl8sDc/naOewJwTuTXuWz47TurCgjEsq5C7+Mij6fIdmvGeblj2CLd8kDnVSbljYFDfD1klehn7QtgRG5pGW5JJFcXCj9u83bJccFfvitmE9As/TH7TbITB3eJ05/M8SlHtcwVHMyfw99Q/rNMv2kGSHD5Iu1MezJmybVbI1u07kh43ZCwEYS8TT8/qHjf6Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsRxsIMMA7Re2X5jzrM5BT6whgSxGRni25VGvpOmnpc=;
 b=Shuw1cY2YS1Y7RDLxL41YCeVTdHDqj1F6Y0RdO3rkL9Tep9K5BtMKnUEbCdupcfHR7bA5Osx3/Aa+CHcewpd0eD54kx6Akhq52j1edlw63Zqij+SPZOjCxeOSISK9naN1miICOnWgZoRzMNC7Hcu4UhsErLI+spCwg8aUZoVAPE=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3202.namprd12.prod.outlook.com (20.179.65.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Tue, 30 Jul 2019 13:58:19 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::6016:66cc:e24f:986c]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::6016:66cc:e24f:986c%5]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 13:58:19 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Robin Murphy <robin.murphy@arm.com>,
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
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abbdEOAgAAAgcCAABHmgIAADDMggAGB8wCAAa8dIIACpFiggAAs3ACAAAdb0IAACH4AgAACfECAAJ/bAIAAyh8ggABDGoCAAAXYoA==
Date: Tue, 30 Jul 2019 13:58:18 +0000
Message-ID: <BN8PR12MB32664C177C9356CE8C15FC65D3DC0@BN8PR12MB3266.namprd12.prod.outlook.com>
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
 <MN2PR12MB327997BDF2EA5CEE00F45AC3D3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
 <fcf648d2-70cc-d734-871a-ca7f745791b7@arm.com>
 <MN2PR12MB3279ABF628C52883021123C5D3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
 <8a60361f-b914-93ef-0d80-92ae4ad8b808@nvidia.com>
 <BN8PR12MB32664E23137805984F6FB2DAD3DC0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <8cb2ac13-3009-2117-d55f-6f1126b690e4@nvidia.com>
In-Reply-To: <8cb2ac13-3009-2117-d55f-6f1126b690e4@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e792b53-b959-438f-8dad-08d714f5fa08
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3202; 
x-ms-traffictypediagnostic: BN8PR12MB3202:|BN8PR12MB3202:
x-microsoft-antispam-prvs: <BN8PR12MB320204B8D99EB76DA2E6720AD3DC0@BN8PR12MB3202.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39860400002)(346002)(396003)(366004)(136003)(52284002)(189003)(199004)(86362001)(68736007)(71200400001)(71190400001)(74316002)(4744005)(6506007)(6436002)(99286004)(66476007)(66556008)(26005)(102836004)(66446008)(110136005)(53546011)(76116006)(316002)(9686003)(305945005)(64756008)(5024004)(476003)(229853002)(76176011)(52536014)(7696005)(486006)(54906003)(55016002)(11346002)(66946007)(5660300002)(186003)(7416002)(53936002)(446003)(256004)(81156014)(33656002)(8936002)(81166006)(2906002)(8676002)(6116002)(3846002)(4326008)(6246003)(7736002)(14454004)(2201001)(66066001)(478600001)(25786009)(2501003)(49934004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3202;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pzgpz9N7o5wfOFhHVs5Pa5mklnt/YMu2ajihCdfSUVZ5I6waubJ0FNCe8/xLusFHhHy5eqD3+nXT/BOyMddZStIjrncFVlXa4pGjFGqLzVIwlA78iBQPBU7nVxV1zXErwBX2+BDJwug4tCVTNhi64uDPKagoHx83sjwGiIcayt8oMX9D9hgqt8XEGxnipoYmAV8RuceL/vkMR251NI843KRumncTjIgMDq9jIIRBqyC8zNrZyvdqGpdeBPOiv4vu9De5a8d/cDzKI6xGkX2LN+yOBJey5fXGOu5vSb8mtcoAZKKQp5q/GVwynRuWI8dWIu2oe6E/mubskgsIcPhDOPv43lm3ALND8zysZqwWPPKRlHl7BtabnqDRZu/VXtGLiyi0wbqgHu3QhyxjdPA51WGnKJVvWvfli4mNTvsUqMY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e792b53-b959-438f-8dad-08d714f5fa08
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 13:58:18.8933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3202
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_065828_472013_FD35C539 
X-CRM114-Status: GOOD (  13.82  )
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
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/30/2019, 14:36:39 (UTC+00:00)

> 
> On 30/07/2019 10:39, Jose Abreu wrote:
> 
> ...
> 
> > I looked at netsec implementation and I noticed that we are syncing the 
> > old buffer for device instead of the new one. netsec syncs the buffer 
> > for device immediately after the allocation which may be what we have to 
> > do. Maybe the attached patch can make things work for you ?
> 
> Great! This one works. I have booted this several times and I am no
> longer seeing any issues. Thanks for figuring this out!
> 
> Feel free to add my ...
> 
> Tested-by: Jon Hunter <jonathanh@nvidia.com>

This one was hard to find :) Thank you for your patience in testing 
this!

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
