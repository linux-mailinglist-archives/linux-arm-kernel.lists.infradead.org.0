Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CAD182DA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sv9CydY5jf/p+BRAbMEJ/YV5jy8qA1/TA5fmQqIElds=; b=LlAG3Uzbfb5yYP
	bvXiTt6ueT6EUCky7n4EF0L2Wb76RABcsAjzS4HCv+PEFRE33MvBq/FqhFwVBi025Nt4ng+Y0X5gF
	2LUkWDa7DslZi8djrPxhjShurALO69W5ejNbkV1SfMyp4wZ8M89BICNrbOKKq/zyHo/rqcvmBbhwT
	co1A61P9uVuwI3pRkYh2O2LhVAmvC3tWy/Q4w/AF4N5neUgT+1tXmVenwo8Zi36s5+fwa1CFgJHke
	ajEBcQObKm6/xZfO0PfwxWkBGmhWCH2iJBdNaL+/AAj5QBFSH+ae9Q0MqhtWDfWJUkuTCsDlBTMZG
	siW0cSk8Kzj5ySJgGHCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL5y-0001Hv-TG; Thu, 12 Mar 2020 10:29:42 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL43-0008Eo-N8
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:27:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxV5FEApz1XrXI1md5+wzFspZ+t4yvcrxipl/fuVsiSXQdSMQJiv0cnnrnTTzBbY7H4kW9AzkYkgpUOcp6/lpFN3/QY+FUaPwrASQvxGkwtKbynOszyvZ48KtGjCRdNjfqQ6h+KHD0I5C/sn25cWz4svtjgJV729muUdPxwynCWxAHi8XzypVMKDIybJOw972BTVrQSCcsIYCDNlb2+39HruDfhHCha8+SSpLUkbKBr80XIKcPYiQ34GSSH4uD3ySuNfb2h5D7T/T42Ta8IsprvLOwglU8rtStFhXaDYqtCE19WiaJWr9e6Cdv7zTbHlt/KnRyKsNxe+ordcpbAvQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPQs2wkeiSzmKMw2pH6hf0VH29Cipc9SiiW50GGBG68=;
 b=ZURQB+7/gihdxsuHI6rN0KmnPMl9Zu+yBt/WS/1o9VqU/zbBvnv4+3iWBwSxByD6g1hsbIKlCZFCd1PVYr9GfQ1f59xzrV116mCv9l/5Gupw+eTO/16MNxuzVGrpE7OolJdzHhQtPUVbHFWqbxronDvxThHx4S3whrGeyhWHHOqDNiuyTIQKrAlyboNvq0qoG3E3otrP5/pJvrrkgwItwh2bQsOngDWmfT0WGNMTpdHv7hgHMblmmAWXhy/Lyk7WeI6xq2z+DSsUC51+hhMFCdM71jn6WD/EIns62vfPM8LaKDVDZcDe1pOkTVyP3jPzeUXILHx0et5s/xCNsXIaGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPQs2wkeiSzmKMw2pH6hf0VH29Cipc9SiiW50GGBG68=;
 b=n8Su/tcln+vOP/Zo3A8bsCt03SLL/JPWD6pDm7o3+FA3Frr08CU4f2IcCF4YK3BzdKWJipGtUkEvrQ5+VeKV5xyNt3Vhdvx3sHI78yyRiEa0kDgqRdW+OkXHz+Y8DXCJ1Ycx06wwR5ZroVsfLCIxnaLDwtFFzuwQvfgFGxHN8Jw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7171.eurprd04.prod.outlook.com (10.186.130.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Thu, 12 Mar 2020 10:27:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:27:41 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 10/10] clk: imx8mp: mark memrepair clock as critical
Date: Thu, 12 Mar 2020 18:19:44 +0800
Message-Id: <1584008384-11578-11-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:4:91::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0113.apcprd03.prod.outlook.com (2603:1096:4:91::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:27:34 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7ab6af42-76b3-4761-6352-08d7c66ffe52
X-MS-TrafficTypeDiagnostic: AM0PR04MB7171:|AM0PR04MB7171:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB71711DC3A0794DBD1BA6425188FD0@AM0PR04MB7171.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(478600001)(4326008)(8676002)(5660300002)(956004)(6506007)(7416002)(2616005)(16526019)(6486002)(186003)(2906002)(9686003)(86362001)(6666004)(36756003)(81166006)(26005)(66476007)(8936002)(6512007)(81156014)(66946007)(66556008)(52116002)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7171;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dOGNcfY14SOpYhIKUUC7Y1k+A2hWHrn7EjkxcZlGPLQIAgO6eBhUuRgv13dteuhh6xKQWfOsTYjbqLMyw51tpexY54fh7XtNpNMfHeMt42+ywq2qYTfye+gqrOpv4zuwSl7Ms7weDPHMLkukrXqyO54rn64tzL5yIz0HIDPg/8nwm9UF4UX7gAup1DcrWErYVQM55SckVp+ckP44MNLwCo8GHOM8hmy2nNv9Kf0/glxvJK+BDS3mMU7kk1XXSMoYEnJMT4OGGHAfX5d+55Ylij8marjLQmDfLJR/+1gQbANfKzLZyxSRHc8FJuQjPLqasg4idTg0E3RGNqeyxPRHOs3Hs/F54KDEVIYQ8B7fYIjd+hPLlNGTyZdtqTWnMNINLgKP/XYVxgI7rMzMAjPvHwYZTkg3/D0g+0QXLReoakue2NR1yvtfiRSVOR0HkKGMODpRHpuvjlOpkIUCrYDqxeH1sMuco1V58KSlhgST5Xb1HidYl/EPkP+kTGIZElVf
X-MS-Exchange-AntiSpam-MessageData: E9PH0mvqdzB3t9Bmmr3yzMpAC6EIxzrqnu91Z+nykx0BQB3zrC6UvSDMQUoErqsbPU4QeMGhmcL+GQJk/YkQli0TrG3mljfyXo7LI28/rY/E0Vnk0C84oNiHJ7qT8GwDs0Z1ttz4rBMXF6EOGG5Ghw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ab6af42-76b3-4761-6352-08d7c66ffe52
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:27:40.9074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rERLun6ZDH1LpVGtNvBLp9xjvTypaOlN2Xq26dBLQB+C21cbEnBwlVSuRp2xxJwwIyzFyDQmVR6BmpzTJPoLEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032743_789439_A298A451 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.83 listed in list.dnswl.org]
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
