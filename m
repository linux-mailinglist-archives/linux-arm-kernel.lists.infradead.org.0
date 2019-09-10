Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3B1AEFF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbloFbgSIcViyFfJhf3CAJe55bYwW92UAcPFrKe1qRA=; b=DB19V6DNP6iWML
	xO6lszjQ3NkLqTW8FlqdggHsdqciiC/hQ+KZgjIzvYfAWzVD5Oqnk+3Nr+kqgmd+MASZ0e5OQ3dy0
	Gh9HLOdRZhCzWg9XyzwyPxdJuvDISGvHEfDwbl3LnevRN0N4fL0qGompiy15LpDt59WngmArjR2L2
	B8dS9XVvpEzwvQGdCzTq+/ztTLkHOpSDlpbM7iatnyaP6HC/c2ZhQtzn3Q7IAe5HUxQNJ+bhL0kFk
	3u8KTPbyRley1HNoa5agk4U/So4H0kCmLELqkDt2RWAuiOWMGDJgwmAaFH2EWcCfJ2mBlNNhx5W+P
	cTm8XQcjuCSF1YiUfKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7jLw-0004xj-V2; Tue, 10 Sep 2019 16:50:53 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7jLn-0004wf-6d
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:50:44 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A046DC0EB9;
 Tue, 10 Sep 2019 16:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568134240; bh=1l2N/1ITeD+vI3yMCijQCzfXn6NxAl88T7WdyuPMavc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=GDYvI7y/CuZtO/3MfGy0cPxmE68GvQQv03nQxVa0sgM/MhD19KobvRUb8x7lIxQd5
 RTXFCNVDnPdgfMmKogstZN09SRp6l8rtXwVVVbzzGv49352xOrNSmAjdEpjDN/5ku4
 i99sAKZ6DLvfrf2XQ0At/dh5Z63HVzOFkCJ96jNx4TinnonmHj9Sxi8QyD3AF77mbI
 eFUZndvUfQ3onGLWa3XUvPaEgQEwlcIavDEeidx8iM/GmJtvVxU6LLShN4F4Wol+Iw
 NalklicLsp5w6C0faeQa6PLVWYy8/l5gQ6rUYrcSWayJpPHly+M527cSf8EAK639uE
 5Sx42V41NOu6A==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id DA6F7A005A;
 Tue, 10 Sep 2019 16:50:36 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 10 Sep 2019 09:50:36 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 10 Sep 2019 09:50:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SU7VQGDXq6CaoOBmgAFkUtHy61gv1ZU6Qd1iAt4Db1MxVHkbggj7WuDlPpV+41LlFpI9Uuq37+sn/pctS0badoGK9cwlbbtFBWs7jYoG5JrTjSjKDz7o2VT7V4gnll36w1DEq/hf6T8P5Nc6YNMCMj0x1V381Yi1vFYEqt9XJyO6G7xnXDrnGrx3LXBPlbUjpCfPu2nyOBv1y6RM6a4cAcurp46bi7xRnFGpGLM6MxbGM80DeIiWARLUt+8WixRzAfWIVHXYyXLa1xmjNU8SII4qO8O7Ve4kxl4Lyqi+2TSmUnhAUrkDeNFVii+g4k7d1w40762ZDeBT4/2/DYaXqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pK1jXmQmS5bBm+tartDs95dhp2zoy76QGHzByDkwdhk=;
 b=P0Dj5f632eVU2PL/Bc9OPiVbK0ih3MU+MvZ/AkSNz6h5CFbl8Wh+4UQzPHHKb61DOrG0r1H/DjWpXHXtmOIaFYqtyykW7oyJX8HpI60GGxnj6BXDwxCOYSWW0T6XjMCMCNEqEaFXb8P1Q/I2vxNoe/gyvHpLt7nLVnlSx7iu0nuWgiaMJw+Bkb+NkhR1DH5xZICiri0fnPfLYVu8DkFY+QP7CZvMoU5swaOgPw60T89gerj9S79jFsnNFJXk3fT6NVUfGZM92WvVYztFjIrDyZzX0cFwYH+8BXX3+dLSR8XWzw30mZgU9iY2rXY/JoWHyGZ8BOOO3k06qYZ01kPswg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pK1jXmQmS5bBm+tartDs95dhp2zoy76QGHzByDkwdhk=;
 b=Wl+DxopzM3VC9f7hCXIVpUpX0bcWrrXdLlBgbKkbNXPQfREqs7dBBzdDWlqC5VgebekTKRSgu2I/X+kEQi6NSFmbP8/2kjU+624sd44EZCea7cT1bwVdr5XD9nezWgxDl1EJfGZ1zKBivVkRVY6rkVteeio62PmaPWeQJwtKK3E=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3458.namprd12.prod.outlook.com (20.178.211.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Tue, 10 Sep 2019 16:50:35 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2263.005; Tue, 10 Sep 2019
 16:50:35 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: RE: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Thread-Topic: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Thread-Index: AQHVZ+Xjv6EH/CtyAkiGIiwkAINrlqclH45Q
Date: Tue, 10 Sep 2019 16:50:34 +0000
Message-ID: <BN8PR12MB3266C0DED372AEE787FA00DAD3B60@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [148.69.85.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d25fcdc0-e733-4dc1-e47f-08d7360f001c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3458; 
x-ms-traffictypediagnostic: BN8PR12MB3458:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3458932C71B2EE3A1CBABBFAD3B60@BN8PR12MB3458.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(76176011)(74316002)(486006)(66446008)(11346002)(99286004)(6506007)(53936002)(6116002)(3846002)(4326008)(71190400001)(71200400001)(478600001)(25786009)(6246003)(66066001)(33656002)(7736002)(8676002)(26005)(52536014)(102836004)(5660300002)(81166006)(81156014)(186003)(86362001)(476003)(14454004)(66946007)(76116006)(6436002)(8936002)(2501003)(66476007)(66556008)(64756008)(305945005)(2906002)(446003)(256004)(9686003)(229853002)(54906003)(316002)(110136005)(7696005)(5024004)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3458;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jI4J8bP9YBjKLPhqYt2/qdVBKroL53ehztPo5xhA3E79Ir7u5l0o5imZewypoleZVCr5lnIHY7iaTPnWxxzPD+2eD2+rVS/dneG48oxA3OTQLn41XnTelGQmM439/iJhZsbnWeJSVlz/fg3NJQXwvpMrJrZMbGJwDvMvuX58CPoArBwgkHnGb69ILloY2TnDjIEW+t17Vqx/4xKVo5KmBMIdKlWJbm7rmz+IKIsVUHjNj9GIHycoZWvHApOiIshF/cTbQJ889RZXM6P78l+TH/IF6YuPoZ6b99bCKfYL+jXYxmcZb20cPFPyfZC1IjWdP5Y0MsdEZAAn6uMlmYdO2dQHAtCdAXktHQsZjxdsSmG2++Sar+V461q3Ie7OjPWBGpTEgcqIN+CKr/fuF7JRRJ4acPYPLVPxg3y46wCYxXw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d25fcdc0-e733-4dc1-e47f-08d7360f001c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 16:50:34.8948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7JKThsDzv0tcnkHCQxLib/NRgc4h4LP8F5FXHSPdmv1QgCP4eNQDtf9ngY1OGrRsoIM7ItjyATbGq2LIQoGog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3458
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_095043_285342_BC168D82 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David  S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <joabreu@synopsys.com>
Date: Sep/10/2019, 15:41:21 (UTC+00:00)

> Misc patches for -next. It includes:
>  - Two fixes for features in -next only
>  - New features support for GMAC cores (which includes GMAC4 and GMAC5)

BTW, just for reference (and because I forgot to attach it earlier), 
this is the selftests output for GMAC5.10 after this patchset:

# ethtool -t ens4
The test result is PASS
The test extra info:
 1. MAC Loopback         	 0
 2. PHY Loopback         	 0
 3. MMC Counters         	 0
 4. EEE                  	 -95
 5. Hash Filter MC       	 0
 6. Perfect Filter UC    	 0
 7. MC Filter            	 0
 8. UC Filter            	 0
 9. Flow Control         	 0
10. RSS                  	 -95
11. VLAN Filtering       	 0
12. Double VLAN Filtering	 0
13. Flexible RX Parser   	 0
14. SA Insertion (desc)  	 0
15. SA Replacement (desc)	 0
16. SA Insertion (reg)  	 0
17. SA Replacement (reg)	 0
18. VLAN TX Insertion   	 0
19. SVLAN TX Insertion  	 0
20. L3 DA Filtering     	 -95
21. L3 SA Filtering     	 -95
22. L4 DA TCP Filtering 	 -95
23. L4 SA TCP Filtering 	 -95
24. L4 DA UDP Filtering 	 -95
25. L4 SA UDP Filtering 	 -95
26. ARP Offload         	 0
27. Jumbo Frame         	 0
28. Multichannel Jumbo  	 0
29. Split Header        	 -95

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
