Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA9212ADA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 18:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uycnt0aGwaLt/YSZm8TN5sNvf1p7rV6yYaV041xmRwM=; b=IsqxO1g6hjzCiU
	Ne5dzBlt2HCKTGA0JAdE+R7vwGd48Aegx/j89/ft9agNoD1gx/5sLz2xhGrhMS5p5dsNeU9ppgVlI
	4hqjTIzzSewrlA74w+HtE2aH7Li3EM1VBX2bESPwBLKNyqcjRqA68YzXDdXwYbiILNEOHZ4bhP5zm
	rHyti1TPJAmt266xRoMR9BBPawq71J94pvTDHpuo160cRqeeVC5IYgOi9QKxaaRw8ziYNDDpUn+/p
	cStFrSnXRgtrh+QVclB5hI1zwzzvQ978revFNMe4UArsbDKB6P6WsAhbnJDjNtc4qZkZ8PlhHD4Vh
	bwH3OFT0N3UJdtrs8a/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikWin-0008Ok-F6; Thu, 26 Dec 2019 17:14:49 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikWif-0008No-GP
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 17:14:42 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 14305C096E;
 Thu, 26 Dec 2019 17:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577380476; bh=le4nA7EEjIQ/8dDjq/zddFgh/LFz5D/hv7vEtLT/MXQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=TDSn+jT+zVxCM459OfDnrzPiZ5IwRY6fWxTt6dN0z5FpDVFkS4IlEQ3m0AdGofa5P
 p+/VKKSxpiNcCsoSuXkpYhSspzJWNI9r5O5MFNDQyLBjouilfA3TS78vZXofn27EwL
 x8cdYlRso+Q5Ksb5Ddxffu/GRNnEkKGZADoTql6G0uXMKsVqfUxAw3cyUogajm1+Ia
 6CDBFjFd3B4zgZ29P8FB58BPXmK7Nd66AXYY7HLSKIBFMBBr90DRtvF9amfAg9CgIX
 /adpjQRskw6hMhQ0NsPzZ9TWdAmEAQqbScPR50CDPxLgi+k1q4HdO4NO0tk9f0JTtk
 y3x0PF2negbTQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D288AA007E;
 Thu, 26 Dec 2019 17:14:33 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 26 Dec 2019 09:14:23 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 26 Dec 2019 09:14:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lf8pyPC+mugwc/qRwl7wrNhhuv/4pQu7J5XaYBgmes+kEacNFIIZXaUGlELcE0LvpVo+3yKvtTXsEGhHh1V8sQocPUvYUMAXIqftjm9tr94MnXMiFP7tFTmWb7COvNu1KZvHEv0CZ6iuHM5IS0sX81oC6UC6cfTdsWUUrG9K+Bt/3H+FzO3+YwEzPyLOFymXNNpWhDaeT49WNTjVtsGKszgkdmwD5G13CQiGfkwpKsqvNa3lEV2xqCZjr7JHg0qeXXDZy4vlhphMYx7paweRfbogVEEvG1YdjEnL9niT/4XKBqKGkgqRKPwiK6OVfeijLVbBLMEb3ZgbZlvuGA4HjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=le4nA7EEjIQ/8dDjq/zddFgh/LFz5D/hv7vEtLT/MXQ=;
 b=jQj0dyUgjEmz1ebiVb7tdifDFC4PuvSrLVjZhPS1pXk+YspwB26pDpAdRiRxI2/OaUl+Bdpoo95ydWGooDprvR2Q0pBqJWWQDDhfq2p8gJaVm2w/vpDXtdpCqXwYKZXptuN8LFXqXgC1WjtJxyheKY31Xb2RMjBYjfAzBoKek9cfsZFbhCJYisb0AzhTNHSXM1t2e+ZRd8uiriqjKCVDnBjPBJusNe5DWnh7wLNoBiWD/eoSGch8iLTTyi4MYdiOMKd3JVYzmArfPGpDuqCwJLjgwpvVpnMEYMxHU7JP1sU9UWfsy40XydKYWaEygXu8VM/Ve7IfKEzRm0V1Z7eJtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=le4nA7EEjIQ/8dDjq/zddFgh/LFz5D/hv7vEtLT/MXQ=;
 b=ZXNnWdDo+eu2qe9NLZyCVCYyLTWnX0gDf0wszsxtRrrTWQO6iaUcCKvNcjwU3oL2X+6Vh4oqSpQWgDu3H/PjKCsAoD6OG9ceaC8EnKdr+/evQp1Y/I76darmgFvqbLaIBJH30opwraIH5RAOrFZYSLKRvZC7IANdjYH2/WPc03Q=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3235.namprd12.prod.outlook.com (20.179.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Thu, 26 Dec 2019 17:14:21 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510%7]) with mapi id 15.20.2581.007; Thu, 26 Dec 2019
 17:14:21 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Colin Ian King <colin.king@canonical.com>, "David S. Miller"
 <davem@davemloft.net>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre
 Torgue <alexandre.torgue@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: net: stmmac: Add basic EST support for GMAC5+
Thread-Topic: net: stmmac: Add basic EST support for GMAC5+
Thread-Index: AQHVt5AvYOAfEKP32kajpx2asGgxD6fMsE8A
Date: Thu, 26 Dec 2019 17:14:20 +0000
Message-ID: <BN8PR12MB326646266EF7CEA29685CF0AD32B0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <c1b6b4cc-bc94-8ed6-0098-de9e5321722a@canonical.com>
In-Reply-To: <c1b6b4cc-bc94-8ed6-0098-de9e5321722a@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [188.251.69.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: efe4d2ec-6943-4a75-631e-08d78a270c70
x-ms-traffictypediagnostic: BN8PR12MB3235:
x-microsoft-antispam-prvs: <BN8PR12MB32353C7D2F3A9FD4BC87C9FBD32B0@BN8PR12MB3235.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 02638D901B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(39860400002)(136003)(396003)(366004)(51914003)(189003)(199004)(71200400001)(316002)(86362001)(8676002)(110136005)(66946007)(76116006)(26005)(6506007)(8936002)(52536014)(33656002)(81156014)(81166006)(186003)(5660300002)(2906002)(9686003)(55016002)(64756008)(66476007)(66446008)(7696005)(66556008)(4326008)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3235;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ooaZTlnb5x4NdPu75Of9zALmdLfFosk6YoMv4zSS+OmKcNDX+R2YE0DiMNOv61zNmxgZUAYtHlgmZ+ASC+bhE3zax4gPD0MVGXPtyDRL9hjRt0KT0ZptXcYfVCG1phqK4dk1SIyzFKtFHT8ls28ACDuERWGE2N705RSISA+89J2GBChNCBQGAmKbuAknrwrr/bPr3P0ziXbXx3AscqVh/AzK/HrPi0KznnLdpUDJCMcVcK/Q5tl6TTEGd7Uq7XLFaXWqU4nFkoaDP6BliriO3XR1oZjjNbL1/rXjXlBGWUryuJRB81sIpyFIOZ5Mc12ExPHiymZjuwj5AlIIBLFnEwQMX2/qYpy/fPvPgUn8rJW8ux+d0Id4anJn+pmhG0D8xvF5+h8C4pMDzsE5setbEHoemkpL6ajuIaGPWDPwwit5JfGl7IQVHkccZs8ZJzLgJclghaP+4ttKcsog57C1J5yNo0106ZSGEi3kLuX/QaVFtqF5Wabw+hcUI4oqWtMn
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: efe4d2ec-6943-4a75-631e-08d78a270c70
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2019 17:14:21.0305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RFZDm1voRoN4GsI3W0bWEdT9k6T3qyaDPJxtxaXB0GCH28xUAsFJ+rVkjj3V9ZpTJOoCAVwo2ctW7pC20ZXuTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3235
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_091441_643543_3465E272 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>
Date: Dec/20/2019, 23:49:02 (UTC+00:00)

> Hi,
> 
> Static analysis with Coverity has detected a potential issue with the
> following commit:
> 
> commit 504723af0d85434be5fb6f2dde0b62644a7f1ead
> Author: Jose Abreu <joabreu@synopsys.com>
> Date:   Wed Dec 18 11:33:05 2019 +0100
> 
>     net: stmmac: Add basic EST support for GMAC5+
> 
> 
> In function dwmac5_est_configure() we have a u64 total_ctr being
> assigned as follows:
> 
> 	total_ctr = cfg->ctr[0] + cfg->ctr[1] * 1000000000;
> 
> The cfg->ctr[1] is a u32, the multiplication of cfg->ctr[1] is a u32
> multiplication operation, so multiplying by 1000000000 can potentially
> cause an overflow.  Either cfg->ctr[1] needs to be cast to a u64 or
> 1000000000 should be at least a 1000000000UL to avoid this overflow. I
> was going to fix this but on further inspection I was not sure if the
> original code was intended as:
> 
> 	total_ctr = cfg->ctr[0] + cfg->ctr[1] * 1000000000UL;
> or:
> 	total_ctr = (cfg->ctr[0] + cfg->ctr[1]) * 1000000000UL;
> 
> ..hence I'm flagging this up as potential error.

Thanks for the report. The first option is the correct one as ctr[1] is 
seconds and ctr[0] is nanoseconds. Can you send a fix-up patch ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
