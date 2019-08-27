Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46A19E237
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 10:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k78v0xHOmbpZE+pspzGiF7IyMkPGda/8fBeb2ZiGKv4=; b=hqpicWojGi+kHw
	i+o9eGgosHoK+nRhzLGUsde0loWI4VDRZtftndNtWHaEziMMjsF+jhkt2Fa0toPfvzFQ8zrpAdhuU
	LZjp8YBQGIV/Q08yFkIkCpX9/sB9xZ9kELagSwL0/sScxX29jItMe/sP0UAlXWE02r/dQ+4V0elhZ
	7bpyx4UAY8fjnPzZU92k4PzWzuuMMhPV0M+K5FihYBmKJPTN68zmLJuIW2fNFnUELsiJvgT/0n27E
	cfCStexyDsJGP+X2BxvLnWFhX7JuLJW0XugAcldZQjmUK1J06a0KDYt6WGIPwjqIYPNl4BmrEbOmk
	9KMDQhg8W/5UgEdGoiVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Wg7-0006QN-69; Tue, 27 Aug 2019 08:18:11 +0000
Received: from mail-db3eur04on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::61e]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Wfp-0006Cs-IY
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 08:17:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mC6SGfUGcj5qfowVWSJ996L5OzXYwktpH8iMQC2pLbM1ADZOtA4ZTllXCzGeYxZ/q49PldKvlaKqln3FVYJAa+fzFzYF9kPN88P3Hx8YIQxLGS0VZ3IJ7Nd4HKdczSBuEjqW//KTCy9iUz7UmRcCEEllnwR/Sv0pbw033bWRUPSvanRzuX+PJ5dUZTFAKM3eEQ7z5Ur73VdXQsuaD2nnTvpDZT4msP1e5mmzUS4BloKxEYd2y4Up/KHk0XQl/sGjq7gt9avOkpKSrWOWh8odLGNUzmeXnVgZyju3dfeGWiO/4kBHvDxPvgzG6X2qGVVwXW/Ch837WE/eCPoRjYFetQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tLgUOAdcUK2g4ZMA3HdTrrSdjZWSUZVsh5luoh4dMA=;
 b=EWit/mVuTId+PLQDdfPdFEklX278AjaUp4K/eCE/D0p2/6zO9e+xIsNgdyC/Wp/guukcq1BtZ4OK4jPh/gVED1YAZY4hS8KAyfThYtv2i4WvTkP1rs1pY0s1Hfza1ppPezXbpAiJ1IlEkBxLXlWDjr09fIM/TliuY8qtlaaTU86f9WKEzJn38xI0F9uZWgDWuKAhbI+9DW8D9WoCOk54+3ejzLl/ch9m7MB2wYMsLXTg/f+IcivJkFbW/lQXA2PCVof87Ejs5U01uJjbU0F/vIdDpws31h+ANS9sgEWo+rWhkjQSkC0DalI7U35pmkLsg4GFOT/3DfR4ELPJptanKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tLgUOAdcUK2g4ZMA3HdTrrSdjZWSUZVsh5luoh4dMA=;
 b=rGN9XdhVXSK6FQKzLQd1oOON8o4jwQSZnErHFROQIbdG8UX5bkPRlWT9shQ1o1At85ti97MaJef3s+3g5LJ9VZr4OwpR+WYo0zM7sWGoVN3uvS2nwWTYuYzt139bOhga1adUZsIPeCSznaVi2tmIk0nRDTs10fCZpgVNIHG3VxQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.214.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 08:17:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.022; Tue, 27 Aug 2019
 08:17:50 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
Thread-Topic: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
Thread-Index: AQHVXK/qRNohGClvt0yC94cqOwkPUA==
Date: Tue, 27 Aug 2019 08:17:50 +0000
Message-ID: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0143.apcprd02.prod.outlook.com
 (2603:1096:202:16::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31915c1d-db0b-4f77-1171-08d72ac70cc4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6961; 
x-ms-traffictypediagnostic: AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB696121F771311C6327AA6D9C88A00@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39860400002)(366004)(346002)(199004)(189003)(71200400001)(54906003)(2501003)(8936002)(66066001)(478600001)(36756003)(64756008)(66556008)(6436002)(6486002)(66446008)(386003)(6506007)(66476007)(71190400001)(7736002)(110136005)(305945005)(2201001)(86362001)(316002)(14454004)(6636002)(81156014)(81166006)(2906002)(486006)(2616005)(476003)(26005)(4326008)(44832011)(66946007)(53936002)(186003)(14444005)(52116002)(102836004)(99286004)(25786009)(6512007)(256004)(50226002)(3846002)(6116002)(5660300002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6961;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JaamQxk4G4A+hccSgbT3aTuuAafYjkuY65ZzYnFOIQblxCbZe1qlbpJcI5cPT0nu3ofMKsAYLR9zkghodqNlY23CJx3AHW59knHEHFz2B3Zw4Gba0nCKZLuDntMoBH07iPXlWphzMbUXCga0Xn7Vtf1H3Sci2YqmQm1vNTFUT98tOATjaeWjxHR6KWd9VvaKpGpNelXetfe1pt0WXwQv3dk6dwhCC8U3/O0d52V4z9/N8cT4MMbiL882ZZ9ItppJUVIwCfmvrH3zgQcT8VUJDTHOUk9qL+fFySlcfFVJUK/J7vyg0CLJlNssDKvM9QfHNaSTnnKjCIjGRGZL6jO1zlgk+LoE1qBvBN52HN2/sYTxOHAGC5Ii/biDwf6zX/fU07nZNrOTwG7o/Rxex0hyYEGNYIabOTEEr/tZkHzG32k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31915c1d-db0b-4f77-1171-08d72ac70cc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 08:17:50.1446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QAq71gkrnoh1/AcRotgSzzX5jZ0h43vi6PEuR8IzdXScqTdTeCB2PVd4YC3FLnefUqRmVumMF2pzHqetUypeaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_011753_650310_F028613F 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:61e listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There is hardware issue that:
The output clock the LPCG cell will not turn back on as expected,
even though a read of the IPG registers in the LPCG indicates that
the clock should be enabled.

The software workaround is to write twice to enable the LPCG clock
output.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-lpcg-scu.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
index a73a799fb777..7391d0668ec4 100644
--- a/drivers/clk/imx/clk-lpcg-scu.c
+++ b/drivers/clk/imx/clk-lpcg-scu.c
@@ -54,6 +54,11 @@ static int clk_lpcg_scu_enable(struct clk_hw *hw)
 
 	reg |= val << clk->bit_idx;
 	writel(reg, clk->reg);
+	/*
+	 * There is hardware bug. When enabling the LPCG clock
+	 * output, SW can write the enabling value twice
+	 */
+	writel(reg, clk->reg);
 
 	spin_unlock_irqrestore(&imx_lpcg_scu_lock, flags);
 
@@ -71,6 +76,11 @@ static void clk_lpcg_scu_disable(struct clk_hw *hw)
 	reg = readl_relaxed(clk->reg);
 	reg &= ~(CLK_GATE_SCU_LPCG_MASK << clk->bit_idx);
 	writel(reg, clk->reg);
+	/*
+	 * There is hardware bug. When enabling the LPCG clock
+	 * output, SW can write the enabling value twice
+	 */
+	writel(reg, clk->reg);
 
 	spin_unlock_irqrestore(&imx_lpcg_scu_lock, flags);
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
