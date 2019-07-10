Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8FE64536
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeRri/obceVvLgvsK8n5LakF5eqGttr4o3yXXC7cfg8=; b=ZknugLxi/bbEsn
	WvjptLtWRO1ahYKc+MVC/V/PdEfEe+jv0Xns/tBoIr42FFvhEmdsYfYfw0P3abeMzpTgrgmsfuEfG
	/uG+9q7oeiXEfljYbLCYqRK3jwqy0gHipV3MHOn67e0urxYEl7pwtQWkYVAwGw3bKGYtZZY9sH6AP
	pEsWdrq6NmloqTWzsX0X8um7TNzhYbxBCZ4rxL98cR8C01jGvpskHdWHr7Wa3Z2NYy8uJ1medQhyR
	dmF1Xa8b2hzhrjT4UVcOn+lPi2Mn34FXBrePY7MrCd5ViQol3+nEyJCQMDgDDEZqFTWqwRkqL5hI8
	ZoUdV41owxgX9puPMmfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9vL-0004Mm-Ko; Wed, 10 Jul 2019 10:34:07 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9vE-0004Lu-7S
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:34:01 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 98DA0C0167;
 Wed, 10 Jul 2019 10:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562754837; bh=1hMf7QxxYpiL2DjBcQK0XBZelYzP+0nPC5LuDTJrJsM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=MBtSsTmarLyCnSAhcVnnAo44H4E9TtWms9RlNeYlpUw+BTRzP7+ZVhgUatE5G0ZfD
 qr4D57ErTmQz3kqIyB9sm6s0yO4NwlcOpykoDudugFYwS8HO9fkTuY5sUUlW8+2m3O
 7fnG3IRiNf6AmyQX9tM2KDshyj+lvk3wglaks3zr2ea/+RBlRt1/1+O7JmbpSLkFQB
 zhs7J899xRlp2Lga3ofSM8Gi3dyr8mX924CIMxhWwD+LzULwLIVYZ0WNbBay8rvtXM
 XKY5x0zZkhDF0dojisK+CrATY9Yz18DjHScINq6A4u80Qo6S4bwcXxhcnGPPUvrBDS
 OurZINiWqQ8wA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9E321A009A;
 Wed, 10 Jul 2019 10:33:48 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 10 Jul 2019 03:33:48 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 10 Jul 2019 03:33:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1hMf7QxxYpiL2DjBcQK0XBZelYzP+0nPC5LuDTJrJsM=;
 b=kIbkEPjxwLcz+fzaGETFiWeO8YXvSXfB3hfAf+z861d9s7pB+tL3cMaNqIAPw+aeoXKOeU/apC1CpRSs/aJ/pRkUrTP1gPRq6b6R6FPvenY9gl7tv5txG9bey0fehNxiUZ80SBL30WNAdbO/aNn7UyJ+SgNkPiu2xJcAU1jdgb0=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3603.namprd12.prod.outlook.com (20.178.212.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Wed, 10 Jul 2019 10:33:46 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 10:33:46 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: RE: [PATCH 08/12] net: stmmac: Fix misuses of GENMASK macro
Thread-Topic: [PATCH 08/12] net: stmmac: Fix misuses of GENMASK macro
Thread-Index: AQHVNt0RSTk/ZLig7EqtmWvteU3zKqbDp4tA
Date: Wed, 10 Jul 2019 10:33:46 +0000
Message-ID: <BN8PR12MB3266C01DFCB92FF8A9BDBADAD3F00@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562734889.git.joe@perches.com>
 <b38b0b67e724cd026709194b68c2be5ee1058c57.1562734889.git.joe@perches.com>
In-Reply-To: <b38b0b67e724cd026709194b68c2be5ee1058c57.1562734889.git.joe@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be8102ad-26b5-4a41-7e7a-08d7052216d6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3603; 
x-ms-traffictypediagnostic: BN8PR12MB3603:
x-microsoft-antispam-prvs: <BN8PR12MB360355AAD18F2FA8D700BE24D3F00@BN8PR12MB3603.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(39860400002)(396003)(136003)(366004)(189003)(199004)(229853002)(110136005)(6436002)(9686003)(3846002)(53936002)(25786009)(8936002)(4326008)(33656002)(478600001)(55016002)(6246003)(66066001)(71200400001)(54906003)(4744005)(76176011)(14454004)(7416002)(316002)(99286004)(7696005)(186003)(102836004)(26005)(52536014)(446003)(11346002)(71190400001)(7736002)(486006)(81156014)(5660300002)(8676002)(476003)(81166006)(6506007)(74316002)(68736007)(66946007)(6116002)(66446008)(66476007)(64756008)(2906002)(256004)(86362001)(76116006)(305945005)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3603;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YMAj++/Mek0ZoQXIjqzeYtjoM6G6n3D4oboFPjSo9tk+GKEtusGAFEYPF6LjTMQTxpPNUuAcXn8gzZEBsiydwBDcHwl9UiuSEghpZSIRjVlcG2vmLwhUT3gkkHTxAPA3VMsM7FdiS4SLkV3boO6jaHMRcfAcomZTFSRnnUCUYEvr3ztCMIu+g+NF+1GkPGZ0Jt5LiIHKLfeQsHl89f/31zSmRnEUXqB9o+uPQza3uDsPNII7pBWJgLKyKV8hK7KwGY9KjwEeGQksCvyuENUHNh/NXOH4Qp+sYgeBNKPdMM0Av4UyysW88fLx8pEKRzQ/55rbn1s8ABE3rfPrP/RIn+QPyQ2x1o461IxTkPrTpSWuWyaLu81IbvBQ2xri1We0ucaRJ3FZuw2RDqjbdgU6BJc48SeZ82oMDkNUDI3ibHk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: be8102ad-26b5-4a41-7e7a-08d7052216d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 10:33:46.5417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3603
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_033400_275144_669280E3 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joe Perches <joe@perches.com>
Date: Jul/10/2019, 06:04:21 (UTC+00:00)

> Arguments are supposed to be ordered high then low.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

If you submit another version please add:

Fixes: 293e4365a1ad ("stmmac: change descriptor layout")
Fixes: 9f93ac8d4085 ("net-next: stmmac: Add dwmac-sun8i")

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
