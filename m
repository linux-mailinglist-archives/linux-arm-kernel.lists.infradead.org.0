Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE90182C15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sv9CydY5jf/p+BRAbMEJ/YV5jy8qA1/TA5fmQqIElds=; b=kevhhy1BE8+vT4
	HwxyslbqY7wI58J+O8c/xiGn2cnnFWWG80JQs7UCFPObPVcbP03mP9OysfM4MYdcJL9jLpl0p7pBC
	OVW821NcSSRXqPKPCSZ1GmSaHnvQR4OYCTlR6XFdvzU+USYRMJj4gortztIiDx9DvloUNCIDn1Ife
	LyOkyKlBiPAbk3pQYdudQR6FZkM7c4zZHrX7dQPATd8FF7MWfXLDs5rQnlepMgpVejKVmuTJak2tl
	ufq+9QM3J4kjLeuj46POknRVW3tHpadMfiMV8jpFeAMFBSlabhIphlcFvODm4ZfubG+YezSKwM7HF
	6H1eD3IOAAbG0LVeD4VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJsG-00073t-6k; Thu, 12 Mar 2020 09:11:28 +0000
Received: from mail-am6eur05on2078.outbound.protection.outlook.com
 ([40.107.22.78] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJqC-00040F-34
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:09:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EHutbVr1fWH6q7/19Uhg4gCleWlOLzQ9oha903x9L3Y55zwBESSZ5A0DTWuo+bovbOgBNzxN2xq8siOfFiV8Ka5acvxQTL3DrdQGqNrQAAF/lmZ5iZS9RDKPQRIdT9/3iRe1ebM3ncvd4Na97uDAC6COhuhiAbJbbM2cjXMD9xINtW1/+x/otTkTvDbGwvTX3P/ors6PH6kCxS125CpKM8eU648Oq5lD//bP2cuMQjqKERtchnpsMWVLar2/MjrDyWcYH6FRUjG+HQOZClkWyYVzQIEegAH+VmUsJuuYfNZihzPQECdSPiz7nB9qdkkU55x7XD2DOeXXaClmMaolLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPQs2wkeiSzmKMw2pH6hf0VH29Cipc9SiiW50GGBG68=;
 b=JQJzrIVjNOrvFb0MQE+COcIxyAVaSFIZu2wImDdoICLGEuaZm31cCDbzC3oT5VKX4XBlTY7gMI/4XYfeXUz51F1Q1ee0ACl/PneHKW0ARhWHbp9xxqTV6pWhf0sq9oOoJKWrx/Hta16NxWWrqhcsCXJGCa1Qlwk7d1QD3R6b7WHNuCenVKZzVgxgJeUeWMe3Haecb3p3KVCKA2MQAV6nnmSX4qlRfcrxoqOckA5q5I9rvISAgHjDuz3eEQELBl+37yMZrtp71/H3uCnqbaATwX2AGQ7iqDu5Avg13hAUOKsQDUBoFH7E8edIrK3bnyCfHgNNx1bpp0cLzFRR7rnB8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPQs2wkeiSzmKMw2pH6hf0VH29Cipc9SiiW50GGBG68=;
 b=FZiEnsKnEkuRHeXOZFGTDQZ+s4+rx5Q4Jd+TJJrESm2gVfX5HM0HWDAuElg0p5dg/tU5+GYvwrTlya57bT1Ni7PPQBKzu5nR7Atru02PDSOHZviE7o9YtH4prU6fadAnV09DvHIpcypwQRE7tBlcpyeTfivIpwppma8ThkQWTCE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5795.eurprd04.prod.outlook.com (20.178.118.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:09:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:09:17 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH 10/10] clk: imx8mp: mark memrepair clock as critical
Date: Thu, 12 Mar 2020 17:01:32 +0800
Message-Id: <1584003692-25523-11-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
References: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:54::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0052.apcprd02.prod.outlook.com (2603:1096:4:54::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.14 via Frontend Transport; Thu, 12 Mar 2020 09:09:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 338e8d1d-58dd-4dc7-069b-08d7c6650acf
X-MS-TrafficTypeDiagnostic: AM0PR04MB5795:|AM0PR04MB5795:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5795748EBD8097ADF0EF579388FD0@AM0PR04MB5795.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(199004)(6666004)(52116002)(66946007)(6506007)(9686003)(6486002)(86362001)(66476007)(66556008)(6512007)(5660300002)(4326008)(956004)(36756003)(16526019)(26005)(186003)(478600001)(7416002)(2906002)(316002)(81166006)(2616005)(81156014)(8676002)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5795;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p8YGy9LdqLlUtKWBCxySuEXuCP64hGVe8CDYl7sAVSmodBHGiuk6TPbvj7iX0gUP/lOa1jXOUpqQkQkwvGOO/spJT1ZHE9qfq3B9k/+z0traDbtmurgy0AtkUwdA+Cz3Tt9J39l+rI3ygLQM5cO/5z9lQKzpwEU83RmgZPm5/9GdiYMkToYyJ9sUfel8Awdj0RdaaCS1g+lqKrHCTkpKU9Z4VbGoH8gI1r4fucPSdbSiIwSpViKqanqnQg9jH5GKnYjT115jY7GMvR5MgBCHrFrKAopWWG91hxbKgsXqNTngvJCURMl/Dk5MA4q5IB4e1l9f1uT8vaGwvaeBem5SEsNje3xyjEWevOXfAqs9OXtkHRSCtOjuRKZgKCC69LwqJOLNZpo/dv3N0izWnB3ds/SklHF6MkIvBqOozSslArmCCYdyXm5pkjgZNHo10RdeOwGoDXVoUO6nc9WlOARMjWwjMc15cOjPgTycnGB7zVw2QVPqujfz/3BQHjooJFZj
X-MS-Exchange-AntiSpam-MessageData: ZUCWsO8ZoWjxxgdhmwAMHOyZNzu7aG2XLDypNv+fZtM3LhUzEt6eqEjxQSU7keVIOJGPDLxqfvXxggeMLubrIZUyPIgsBV6aH9rDhx6/8gMeP4gcnKTnj0X14uZgn1e6fm6TKFxsAWnwpa+TxIQLuQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 338e8d1d-58dd-4dc7-069b-08d7c6650acf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:09:17.4818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxM6b9cvd3TDlJfb2bWNbiuu47fXTmeIIYHIdPNdr9ijqXrrS3k9id48paJK4Q+rmF9DiZp0Dj/W2k6MRnMbMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020920_214372_B3B7BCFE 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, fugang.duan@nxp.com, ping.bai@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 l.stach@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+CgpJZiBtZW1yZXBhaXIgcm9vdCBjbG9j
ayBpbiBDQ00gaXMgZGlzYWJsZWQsIHRoZSBtZW1vcnkgcmVwYWlyIGxvZ2ljCmluIEhETUlNSVgg
Y2Fu4oCZdCB3b3JrLiBTbyBsZXQncyBtYXJrIGl0IGFzIGNyaXRpY2FsIGNsb2NrLgoKU2lnbmVk
LW9mZi1ieTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+Ci0tLQogZHJpdmVycy9jbGsvaW14
L2Nsay1pbXg4bXAuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1wLmMgYi9k
cml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jCmluZGV4IGI0ZDlkYjlkNWJmMS4uYTdjNTlkN2E0
MGRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jCisrKyBiL2RyaXZl
cnMvY2xrL2lteC9jbGstaW14OG1wLmMKQEAgLTU5MCw3ICs1OTAsNyBAQCBzdGF0aWMgaW50IGlt
eDhtcF9jbG9ja3NfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlod3NbSU1Y
OE1QX0NMS19WUFVfRzJdID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgidnB1X2cyIiwgaW14OG1w
X3ZwdV9nMl9zZWxzLCBjY21fYmFzZSArIDB4YTE4MCk7CiAJaHdzW0lNWDhNUF9DTEtfQ0FOMV0g
PSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJjYW4xIiwgaW14OG1wX2NhbjFfc2VscywgY2NtX2Jh
c2UgKyAweGEyMDApOwogCWh3c1tJTVg4TVBfQ0xLX0NBTjJdID0gaW14OG1fY2xrX2h3X2NvbXBv
c2l0ZSgiY2FuMiIsIGlteDhtcF9jYW4yX3NlbHMsIGNjbV9iYXNlICsgMHhhMjgwKTsKLQlod3Nb
SU1YOE1QX0NMS19NRU1SRVBBSVJdID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgibWVtcmVwYWly
IiwgaW14OG1wX21lbXJlcGFpcl9zZWxzLCBjY21fYmFzZSArIDB4YTMwMCk7CisJaHdzW0lNWDhN
UF9DTEtfTUVNUkVQQUlSXSA9IGlteDhtX2Nsa19od19jb21wb3NpdGVfY3JpdGljYWwoIm1lbXJl
cGFpciIsIGlteDhtcF9tZW1yZXBhaXJfc2VscywgY2NtX2Jhc2UgKyAweGEzMDApOwogCWh3c1tJ
TVg4TVBfQ0xLX1BDSUVfUEhZXSA9IGlteDhtX2Nsa19od19jb21wb3NpdGUoInBjaWVfcGh5Iiwg
aW14OG1wX3BjaWVfcGh5X3NlbHMsIGNjbV9iYXNlICsgMHhhMzgwKTsKIAlod3NbSU1YOE1QX0NM
S19QQ0lFX0FVWF0gPSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJwY2llX2F1eCIsIGlteDhtcF9w
Y2llX2F1eF9zZWxzLCBjY21fYmFzZSArIDB4YTQwMCk7CiAJaHdzW0lNWDhNUF9DTEtfSTJDNV0g
PSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJpMmM1IiwgaW14OG1wX2kyYzVfc2VscywgY2NtX2Jh
c2UgKyAweGE0ODApOwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
