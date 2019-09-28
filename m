Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC82FC1049
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 11:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hyz52FRnUGWM30rcBtXtqQme59pUH8RPHvsYTIl3rY4=; b=FrRj6wkoGp4rkl
	oloi+MfXGVVHmObGcjIF8oYt0PL4pzj81gwiXb9tGIu4IoyZWTJ1KLeFDsNbJx0DEeF+9aW3tpLlX
	7zhWVTLDZ6RDDdQUKpjOae3+Kvsd0TNoxdIVNsEXpRhzdP5nq87lQjPwvFuzk9USTih7MPqFI5iOQ
	GOT9WQDQ98JRQTJchn2K9fw45zs0RYatQqX1chjv5063ZMk8+3huCeNDIgYaJ0C4BZVRJpRniE0nL
	5JXgad/Vzkb9CBA4AWnf22dfXXa2sN14ZXXc4aOQaWDsTxBvuytg3OVfFuhcuc+ZBpN0jDqkcKB0S
	ibYbjSycXAnCBdIymaCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE8cK-0006ex-Ok; Sat, 28 Sep 2019 09:02:16 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE8cB-0006cO-5S
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 09:02:08 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1D77AC0CDD;
 Sat, 28 Sep 2019 09:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569661322; bh=1cqYGwIxi3VOH2w8jzKYB3Q8SDna/xsu7JsFOTgsDME=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=hLRobXHs1T3Nn/4753ZrTPZC8qD5TRvJ5se2XGnSWKfQ4FOq5HYifgAIRdPaziOiP
 ZEPPEoMd9YO6BQcztIwH51fsGjyvyTD0deUK2k2hYL73O6oxIaebKAIOLibbcPFJTg
 bx5jJd74XBOvJGY8kTXhcfsqsZDbL+A2kqKf0rv4rVN9fXz98R+TXd9JOU2B3FE3rq
 Wh4Sv1r8en0H9SFq6aczA0kNhu914qDJkTiwv2Y3FoesolIIub2pVfczlvwwf3HzKN
 yncXVrCc1cVyul+zbfDqPYu5ra7Qd5m6sMb76yNXsGR+t3KgY6FJTFteICLiq4iggs
 i3m7laxlH24nA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id A1C5EA0067;
 Sat, 28 Sep 2019 09:01:50 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 28 Sep 2019 02:01:42 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Sat, 28 Sep 2019 02:01:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dC7gW9K2ZvZ5ihC3eXfKzU9bk5YE8t2Yn6ALJZWpGyzNVFZPqRhnPHF0cppaPe3wrgFQ2RcTFTwI2yZKZ4kcARLFtO5Imh9JoqR8WuqB1n+cjBfiu1j0OM64jWBV+mkSQwVomleWoU7t5LUI1GoZ5LvZO++a/e1X177Af2uWWWyk8gLBSpaUtfZpS19YpHM0o2ME2LHHHeNdjWM8kFyqXchXk8eauVE3uedyzoaTJdXFCvjbNU7NXYbwsB4oS1VEZ7Rg+1+YJOT3ucqmzVES6z7uGslPzsilFGe3EkhhYj4/K5yYNrOzAfzjG8JU3/Y8xQKWCd5RSdb1nn2S/BzBZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1cqYGwIxi3VOH2w8jzKYB3Q8SDna/xsu7JsFOTgsDME=;
 b=VkASU75qi/niCjtSlr7HXGFd6UxW5vj3lK92mytuduDTksLJAkB9nHOalkRDDhUCijXYMndYIZgRbOr+vXDOqLKMk9Y76XUroYHZLaI7Pyo29s+wZsqStftvwx6sj6LpLkJRTD6zKc2rLEy4/N7PINaZVlIjKoZrKwW4kCNwP83Ive8u4Z3JdzqivHxDhwefdJQPyiBXTdn8RfDBXW9iRrlJRGuppDRqwsKR1d7nDQZmtlEuwHyPIMNrwV8k6xClavMnR9L7j+/VyWtJqHka9FIPMAFt7b91oZELIKwjwue0q56aG96F9VR3BknFxLvikb/us65J8UYF1bn2t5G5fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1cqYGwIxi3VOH2w8jzKYB3Q8SDna/xsu7JsFOTgsDME=;
 b=eNySKBV6Yyq36kU7kAS7GtlBJv3c38ayJlkNjWCV01asK2XZNkllCgpLKNGTN5AVRReZIoZmpXBP9NV0wzyI3GkJ6WlJMU0wHN6EO/G5qz07JuXiGR0weMQsev8eTyX29+0glpwU/6L50HJaScVAg8b1yAPlW5SB/fDtT7y3lkQ=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3009.namprd12.prod.outlook.com (20.178.210.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Sat, 28 Sep 2019 09:01:40 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2305.017; Sat, 28 Sep 2019
 09:01:40 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: RE: [PATCH net 0/8] net: stmmac: Fixes for -net
Thread-Topic: [PATCH net 0/8] net: stmmac: Fixes for -net
Thread-Index: AQHVdQgUsu3+9Gx8RkShfK4JNFRi6qdAzChg
Date: Sat, 28 Sep 2019 09:01:39 +0000
Message-ID: <BN8PR12MB32667D583653ABB31CDD4FA0D3800@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1569569778.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569569778.git.Jose.Abreu@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [188.80.50.127]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86cb476f-4b57-4940-33e9-08d743f279f6
x-ms-traffictypediagnostic: BN8PR12MB3009:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3009E0B858439D73C2AD53E7D3800@BN8PR12MB3009.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0174BD4BDA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(136003)(346002)(376002)(366004)(396003)(189003)(199004)(2906002)(26005)(99286004)(33656002)(486006)(446003)(11346002)(74316002)(305945005)(71200400001)(71190400001)(102836004)(186003)(25786009)(6506007)(4326008)(54906003)(3846002)(7736002)(476003)(66066001)(86362001)(5660300002)(316002)(558084003)(66946007)(66476007)(76116006)(66446008)(64756008)(81166006)(8676002)(76176011)(14454004)(7696005)(6116002)(110136005)(81156014)(66556008)(9686003)(55016002)(6436002)(8936002)(478600001)(2501003)(229853002)(52536014)(256004)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3009;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oInf90ScnbtZ6uXcLbLGNeQb/F26vrO0Zn7u5RVy68V3SEcxQRz/Je2BH3iDdxBtIh/Jhmu4tprdVMkux7vr29FbOl3XgAjapqO0ddl8Q+sIjfjTWGU1dW4jFggRu8ao2F82EMYVGNr5VvAMg91ymU5DZm5MP3X+dbTxWFLC+ldgSCIAdoizKRvgMOYcQx/5XdyiT8fCbvSR+iX4ti4umWP6qvm1WBSiaFkwsB0Tjz7wwZe/LFK4sSN6YBD5UYc1qq0K2Qh0am0Bmy9mPcRYuWKe+PGT6DaqMrE/II6y0iEqM8u5FkDPwht1u1mwQ4WJ/TprgmX5NWTySQHNy1T/8Z8k4aQ0PS/MT6YfGuKgUAZXqd+F5wosbPrXEGvtWaHIQnayAnmYSt1S/sD+b2UDoupMwD9NXEQ20UiS7D17zMA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 86cb476f-4b57-4940-33e9-08d743f279f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2019 09:01:40.1180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fOl4JFOI58xgoBtVwk+hZFV7mtsT7ruNlCNtsA4t6n8lusyLQYGIn8fRTY5t63seNv8jeGtw7/EGlk1Yd8VQ2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3009
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_020207_280945_5E60995B 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Sep/27/2019, 08:48:48 (UTC+00:00)

> Misc fixes for -net tree. More info in commit logs.

David, please do not apply these. I forgot to rebase my tree against 
-net and this was based on -next. I'll resend. Sorry for the mess :(

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
