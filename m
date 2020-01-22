Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409B1452A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdLMx7Fjg2ts1a0kKc50iUYjBz/O1BAt0HayzRz4XKE=; b=Dd4z9OyPGwKfQj
	Re2p1Cym6xnF1ScLloUOzV7wOtagiJYSJsF7Mkm1CKnhxR4cyUyCHoIbEDjh4Ca0Ph3HoDODgvT5v
	ONSQBS8hM4+bM2LdZ4M187vCnhU6sIOJo46obPCKWL55RH8iuRGST91hhaLkvbSXx0I4iWYRymGB2
	vgQotZhPOM6Ttoy5KnzETWIRmNvRvG0aLQnGmJxXJMMaUHt9I9bwviJGp18kIIFYTzzmo838FbDSu
	DLEBwl79nVgBn6RcLxXN5V4lHR98scsOTe9BkvFqTmrCm7hZKPYMgy9WBa9NEQLqvyI11+dVFbfsf
	fvse8nLjujfTNhm8cByg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDIn-00077a-5k; Wed, 22 Jan 2020 10:32:01 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDIe-00076P-2w
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:31:53 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DC1494064D;
 Wed, 22 Jan 2020 10:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579689111; bh=TpBvhcq0e0QKCHbKp1nIql75IZbIWHuxSSbnqHbX4kM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lh2oKx9ajk7oQABBOSuPkzB9JjmRvQiv4OnO8qaxevkuxFqnQBX/U0bqIKLaGmEBa
 OJjYlUldIK8dUzDUGnnXZ36u9Bkq+jZ3I/ztXxPzkW+ZaaOFWH2iupdu2goz3qa9xp
 yXEeHzwoCQ0D+V5Mk3GdHmvNSEgrbmPbp6fAccf/J8bU1vsMZqk3dquJFRinm68hRn
 dfcZezdPNDjd8URlovToJ5TId0qST/KnpKc7cbVqOTZ799NPgm5kH7OuHusljtxPlb
 iuqsjv3fTaImMYI07/QxvOia6bPAQd4p2oDBF8KCyStlaorSbnwk6qWI+bvycI3ASK
 XDZBszDgbEzEA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 13BFAA0083;
 Wed, 22 Jan 2020 10:31:49 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 22 Jan 2020 02:31:37 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 22 Jan 2020 02:31:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PMvOLMuk+dY8rMG8n+fr/t0XCeFbh82666kFbW5cFJ3UZxu8XBuB0DTqf1mR9O0AB3PTCB6ayVwK0NgNTEUy9VI+H9DxGxQxwdDqZmjPGT1x5em6DaTlKMpBzl/X9nWhcWOWhIHni4FBiV5U8DDDFvD6ibN1KGbsqTPb89vEoMA9B1L8e7Ag/pmOY6N1Rz7RQ2osN5HOGNqtxdZqeXIuoPt4foNz3PkkGrqkErClEsL2OXjc2dIHQPqZBxyAFwAxBjGjNuC1mJ1sOyDeZlHUmYKFT9CP72uwmESXocw5FF7vND+3vk7FWMHWixX85B1Kgu6XAoaxG1tDT8fGhqkuQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TpBvhcq0e0QKCHbKp1nIql75IZbIWHuxSSbnqHbX4kM=;
 b=c44Kv4my60hqA9wa2Q8YkHgEPcawTr4SKjVoCm049mxkzo8t98MsmlL/U6XG2EUZfC3RDjv91X8IdV9VDqubY8UlAksEhM1tb4+HYAentzfv+n7M63kCG3oMqMgYbBWE+zu+BiKvhznmLciP9GB01bcKlTcJthkQ02nR4LSZqpj7UakWMLUevlKkHyMPSN2cfp3efck+DiMtNBvb+L9DabSfmZBHSRRch0RBuBZLomNYlhkt4M8z37jJB9wjFyF1xjHUpRpzX+aE5C+XZM5kqYdmagwpltre/tHlv7XJs1D8TZ/Ffhp5akX6c2H0s7KZCq90M7qnCUqRXhCs0Bfz5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TpBvhcq0e0QKCHbKp1nIql75IZbIWHuxSSbnqHbX4kM=;
 b=gU8NPLYybKICL2jPOjbhSqJ7GX7NS00dc1LLOuel2squ1EAkwbUzwhYeJSoTrV8pPQ5ZXn+ClzdYow/yz8lApPYrhodrcG0tbWdgT7tPvKm1sN9KmQCgogmswZ8VfdYmwd/MaCBn6JJK24svGTlov8eR354Y9iXJASgULkMJ7zU=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3332.namprd12.prod.outlook.com (20.178.209.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 22 Jan 2020 10:31:36 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 10:31:35 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Ong Boon Leong <boon.leong.ong@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net v3 2/5] net: stmmac: fix incorrect GMAC_VLAN_TAG
 register writting in GMAC4+
Thread-Topic: [PATCH net v3 2/5] net: stmmac: fix incorrect GMAC_VLAN_TAG
 register writting in GMAC4+
Thread-Index: AQHV0QPeIdIQkFuhA0e0QyofmiZPfqf2e+IA
Date: Wed, 22 Jan 2020 10:31:35 +0000
Message-ID: <BN8PR12MB326699D4E4CD49804F2E5097D30C0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20200122090936.28555-1-boon.leong.ong@intel.com>
 <20200122090936.28555-3-boon.leong.ong@intel.com>
In-Reply-To: <20200122090936.28555-3-boon.leong.ong@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adcf4088-de43-4ba8-97ec-08d79f2641e6
x-ms-traffictypediagnostic: BN8PR12MB3332:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3332C4ECB31FA0BECAF5DB08D30C0@BN8PR12MB3332.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(396003)(136003)(366004)(376002)(199004)(189003)(6506007)(8676002)(81166006)(81156014)(7696005)(55016002)(66476007)(71200400001)(66556008)(186003)(86362001)(64756008)(26005)(9686003)(478600001)(4326008)(33656002)(66446008)(7416002)(8936002)(66946007)(76116006)(5660300002)(52536014)(54906003)(110136005)(4744005)(2906002)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3332;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kgu80RqPPncafBNpBGXNnH/9+34arbsEKVMdpvkFqS9QS1RD3VY6WoRL29+BaQnI54xJDtrP+w6Smn4W56/zdfWupgt3FsoIkb7kJKzWW3ZD3btnyM1rzd63YTvrwqbmS5mAhrQDvwCi6bHjOKKZq7mJ55W9VyJaIH5JGFx8OHIZyb9Gz9oX7EhpJSDo/cNCMqOPrI8q5XsVUbbpG+tf6Fgc+1OgSoCcgkiYdvshEsR4UpfDGveA3aQuR8tkHElqx40cdYDJP59qn61nfEwMjAQx9FjLGKCbXe8K8kBPU2NulkeWiMBCOCCS110fHqwj5pzqSXwGUa/f/hWwJW3r1TsA+P1ZEPX6ms5umNgdS2HBGMaUgXKaDa/zBTeFNx6GCLoPE+Oibql+5HMzbMOmuXL5ClUQEl3ntU7w2psAKlrquB9CSgq1xiWTlFj80Vmh
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: adcf4088-de43-4ba8-97ec-08d79f2641e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 10:31:35.7760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SrcGpDgnxDzqFii3kxN/pbL3RyILjBGNy9wzOXuDtczcFu8esfmC6Sk4TPj89DIMiFcgg31cFkZiT3tINBsZRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3332
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_023152_142550_BE976146 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Joao  Pinto <Joao.Pinto@synopsys.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandru  Ardelean <alexandru.ardelean@analog.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ong Boon Leong <boon.leong.ong@intel.com>
Date: Jan/22/2020, 09:09:33 (UTC+00:00)

> It should always do a read of current value of GMAC_VLAN_TAG instead of
> directly overwriting the register value.

Thanks for adding patch 4/5 but I meant in previous reply that this patch 
should also go for XGMAC cores ...

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
