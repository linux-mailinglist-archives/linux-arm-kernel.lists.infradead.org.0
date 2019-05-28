Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2E02BFD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4YGBmhyOqR5Bgmt/Uy/CDZERyNEIq7uAZPvvxNq7AA=; b=iLsgrbix3eu4UE
	LZ5bB10Fhysey1Gsx5yAWMo+1U73/5gnPVYEe5g1/BEEKKE+FRt3HdiBYmP7MlDFcV5uYSyhsobEq
	zaqF5yHP8GFNUh3V0X1ratIxHxG8CrkFGVFWEC24LO5DDrBruAnU9ZUlb0xkdvxLoTJb+xDU+QVCN
	1t+qfu6UiwDit77t6Lh4eE8Xk5hkiSmgjA/gcXzBAQbObNejzWenFKdl5db4pN5ig8jf7A/kMHMXh
	5iOi9GcN/092CYGTcm9jjMbKBOHtcaSlgv2RL6BqqMhKhuzrFUZmj6a+bzJd26IJ535CFJ3BpKnsv
	IsELg4wNLRRabtGWE67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVW7m-0000pu-Q4; Tue, 28 May 2019 07:02:18 +0000
Received: from mail-sn1nam01on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe40::626]
 helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVW7f-0000p7-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 07:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AxdnGrTkHNOZgkBxgA0glW5ekbVIta1MIx8jjVGV09U=;
 b=BPOq3hZ6ml9Zr+9aXM+K+k2KIaI+GQkfO8BzH9s4MxuIQBZTD5vvpJmk/yzkwH64ghJJjMrvrAAKSRKdOM18hMXv6K1nAQl9AvGPWbVHGhHAx15sFng7TZwQwd1Nbg2p5yexnaPl67id6/TuJKGgs2nwEWpNEy8KS9Bk0vUPjCs=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3560.namprd03.prod.outlook.com (52.135.213.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Tue, 28 May 2019 07:02:07 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 07:02:07 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Jose Abreu <joabreu@synopsys.com>, "David S.
 Miller" <davem@davemloft.net>
Subject: [PATCH net-next] net: stmmac: use dev_info() before netdev is
 registered
Thread-Topic: [PATCH net-next] net: stmmac: use dev_info() before netdev is
 registered
Thread-Index: AQHVFSNDwZ9fWQ9KOEG6EbFP/Z0S5Q==
Date: Tue, 28 May 2019 07:02:07 +0000
Message-ID: <20190528145253.21b8abbc@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0201.jpnprd01.prod.outlook.com (2603:1096:403::31)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e56f1351-25c6-47aa-2a32-08d6e33a657b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3560; 
x-ms-traffictypediagnostic: BYAPR03MB3560:
x-microsoft-antispam-prvs: <BYAPR03MB356077961C059714EF5286B2ED1E0@BYAPR03MB3560.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(346002)(39850400004)(376002)(199004)(189003)(73956011)(5660300002)(66946007)(66476007)(1076003)(71190400001)(66556008)(478600001)(64756008)(66446008)(476003)(66066001)(2906002)(72206003)(54906003)(110136005)(71200400001)(14454004)(6436002)(81166006)(316002)(6486002)(86362001)(68736007)(305945005)(6512007)(81156014)(52116002)(7736002)(486006)(26005)(8676002)(99286004)(4326008)(186003)(53936002)(25786009)(50226002)(386003)(6506007)(3846002)(256004)(9686003)(6116002)(8936002)(102836004)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3560;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9u2giS+oMkZS8Mw5tJ3UYNsfna6lDBy3yEyXnYUFn3u0M0eVLoaOiP1ejfbQTmiWmDaEH+aoRCOfAq+/mk0taZLpAiYifzRtZOYKpS5dSwnZ3PTMDOQyL3aUHCwC+3qdo/AoW6pmAorZMTHI2ahU0jEvdlB8XsalWwefsx6Rit2NkTtNfo5wjrZI9fFiRAJE+a55iutveNnbd/IigXM+e5mANe+HSylhEKx34QK1Q1PIWdR4ty9Tr1DwZAFfiN16nQMaRstdQdElOj1+xOCl/WxSd70QScgikvjsEl2NCBtl1nB+C/WwvZYnb8AG67PgGPVA5uEUsuvJFhnuf/yL7vOkiYLUbS0LtUYA7Tt5fFzJ/pX/91rG8PGiERBl+uRrPR7NGItrTvwPapXQucXdKpU1taOjX/bbn5QuHsk8EHg=
Content-ID: <377D233A793EE04789DE5F86CED96582@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e56f1351-25c6-47aa-2a32-08d6e33a657b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 07:02:07.2381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3560
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_000211_106089_91F014D0 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe40:0:0:0:626 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before the netdev is registered, calling netdev_info() will emit
something as "(unnamed net device) (uninitialized)", looks confusing.

Before this patch:
[    3.155028] stmmaceth f7b60000.ethernet (unnamed net_device) (uninitialized): device MAC address 52:1a:55:18:9e:9d

After this patch:
[    3.155028] stmmaceth f7b60000.ethernet: device MAC address 52:1a:55:18:9e:9d

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 08022fbcb67a..7af083c29b36 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2167,8 +2167,8 @@ static void stmmac_check_ether_addr(struct stmmac_priv *priv)
 		stmmac_get_umac_addr(priv, priv->hw, priv->dev->dev_addr, 0);
 		if (!is_valid_ether_addr(priv->dev->dev_addr))
 			eth_hw_addr_random(priv->dev);
-		netdev_info(priv->dev, "device MAC address %pM\n",
-			    priv->dev->dev_addr);
+		dev_info(priv->device, "device MAC address %pM\n",
+			 priv->dev->dev_addr);
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
