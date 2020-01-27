Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97C714A60C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niBkw0hOMh/NTudOABo3f0vyfxRhKSQpdF4/R/H3XTg=; b=D+Tx2WahelKZIH
	oZSbP4FRdfojpvIDzrZ5ApbLn6CIiaygfF6lO1pH+8jKhIbp2omXtSoBLwTTEOVHlechDdLGkm492
	fL46gcI2QBgx0IuTEJKUMR1zHbYIw0m9oqfW4bZDO6XKrX8jcYFJBpD3ymH/nrDgDiXE8gNBs9OVy
	ZQDPmaVt5B+87wZ/bYcDR10AA/EN4AjKXsYqSXY+g9x30BYegUhyxr7HN9qZXbbOqBjiVcvZBKac/
	jjnEjfkUTgW2/9IqsA3lloOhZJdtz5kklWR+fj4j8BWxsMhP1kxHqLA4E/jzJFrbaEu7IAIU7HGfy
	UIhkb2dO//uQm9loaXKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5NF-0000fj-UY; Mon, 27 Jan 2020 14:28:21 +0000
Received: from mail-eopbgr00048.outbound.protection.outlook.com ([40.107.0.48]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5MY-0000E9-1O
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:27:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Th9zO6ItB/YPJT2KBCc7g98213Jrm8JjyPBQ9feSP5nvczH16MkKGkzNNutPuQrixOcpLuJ6RUs5bsBUhLJUZZD5IHsWxYpwZYI+YdkKW4XwcFL3dhzfSNNxGnzx8zK1LPUBY5HJRfKJBoCC+xyJQY3QdQgGAYlbJxMUj60byfolatamT8fBbS8vEaUWqPVBB5bMX9GtrMHZWO9753KTagsg7ZSJpSldgLfJEu05UcUzLnRRajI6vmZnGhREMIiszRbX7U+vn9DQw5oIs4SuSt11dSk/jeOrW7piko8wF6GCn7rDDfhCIIxaVJXLODfZQ1IAUDBlsgwbUsMWt7GIcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EifVznja+dtuuOzHbUidF1dUBXDHVn1DtC1pG30yJNE=;
 b=fVKeW8kPDfHc8bZlY2CQgRpy2yYShm4a0l4l7T11Pg5msw9rKTCjftCAycOglMdCNKI/YhbIDXZn0vxObM9gT4fJSxNAGeUGIjLeINhJ79NbE0UwdAy4zjawo2jJ8++b8f7btjcupLaQCmbTm0xN1OKzXgS5MUbV5KFJXmr54WWQfxfrp+EXVVEdZlJ61jDzNKakc7nwnyEXEGryxb+tutueJmVOvd2jtcaKPQx/bqj2eN3DfIj2XBmZEkxvbyVmXo7zOS631HpU3vn0VSvtoSnVGsQwWe+9h/i/mMpwKER2AAhJ4DhHxw/xsm1wzRdEmxLawOyEAcdGwBdK1Tb+Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EifVznja+dtuuOzHbUidF1dUBXDHVn1DtC1pG30yJNE=;
 b=IciBpm8G/zWqqZsVpwEoYWVjoLdOmIuX++b0WOf1ylHXfnNxT0a6sDMV2HWSlIer2QaIq3WWN3LUk5TCnuRD6arD0LIEq/v4ug+1Q+Gg9gS3AC+tZNjfwEt+Xx9PcyM+zBSN9zY9q+fOJt2OavYumexGsyPV/Y0XGBglrVBs+gw=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3664.eurprd04.prod.outlook.com (52.134.15.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 14:27:33 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 14:27:33 +0000
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM3PR05CA0141.eurprd05.prod.outlook.com (2603:10a6:207:3::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.21 via Frontend Transport; Mon, 27 Jan 2020 14:27:31 +0000
From: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCH 2/2] firmware: imx: scu-pd: enlarge PD range for mu_b
Thread-Topic: [PATCH 2/2] firmware: imx: scu-pd: enlarge PD range for mu_b
Thread-Index: AQHV1R3pM7J2DAQj8E+mhvmL3yBfgA==
Date: Mon, 27 Jan 2020 14:27:32 +0000
Message-ID: <20200127142717.27570-3-daniel.baluta@oss.nxp.com>
References: <20200127142717.27570-1-daniel.baluta@oss.nxp.com>
In-Reply-To: <20200127142717.27570-1-daniel.baluta@oss.nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0141.eurprd05.prod.outlook.com
 (2603:10a6:207:3::19) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 66fb2a34-a8e6-4e19-621a-08d7a3350c08
x-ms-traffictypediagnostic: VI1PR0402MB3664:|VI1PR0402MB3664:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3664EAECAE99D91503AF9D2AB80B0@VI1PR0402MB3664.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(366004)(376002)(189003)(199004)(1076003)(8936002)(66476007)(66946007)(6916009)(66446008)(54906003)(81156014)(81166006)(2616005)(316002)(956004)(66556008)(64756008)(478600001)(52116002)(5660300002)(6506007)(2906002)(8676002)(16526019)(186003)(86362001)(6512007)(6486002)(71200400001)(4326008)(26005)(4744005)(161623001)(147533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3664;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0wsea7bY/if/fLFNe+djDvqDCB+N2zgo3e88CKutNh7tLdJuhYAl0o9vKcnX5pAyJespyi46ddFEkqjD58Co+5KkjsYSygPp+DVc+fscGurTFktZUK1THwCCxbTN6i8WT5cad9BfMRDD5ECM6nn9xlRJ467LVZBqkEGORPERZHKPZfj+1UYW5PhtfgM7qtT9VeK7iBUSG+NthJllUcsFe5PIZnyHr9lw5iSW8xNId4CroQDRoAB+faxL0ePObtJmmgJv8vwKZJLQlYzT0DXuPtVLYXxFbhM3Dx68bXjAe0GErkEXZmFuZbptzy8ve6twiqKs84/M5hluGzVwrIr4xMfCCb3p5jEJT1Ig0zl0G4lJVWnvVtsAI9s/h+I09QO3G9pk65/ZBAyrinYBUaTTe5u8r2f4ArYBPl4tYLeGlijdV9ClLdC+kd1yvfvIZoiIinPhUWZ8jCBmrZkMzpI+7YdnCT7iW+y55FCJnHtFG7tvQDe7REajL2DCYecwhbFFsFM3G1gzvpgXlwiSMqspmA==
x-ms-exchange-antispam-messagedata: sBybwvvVlgawvN8BlTMpAgbcJkv/UZyDfiznQp7R1xUTxODGillM6gzkCyQtk1UuW5cQf6HT6zN28QUepNVnk/UOVFK0IljHTQKl1yeDztp4Is34uK0fDl8QXWilhiRYYdSqgLme4WdUMYaqCMshkg==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66fb2a34-a8e6-4e19-621a-08d7a3350c08
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 14:27:32.9000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PgZmdKxbE8+2JKAYtmomqR4uKs0RJLUGEM8EwofpwpoMacizOEu/48XqrYDNpNDKQFcs0bp4SWJVbbM2iczCCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3664
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_062738_078993_0613FA2C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Sebastien Fagard <sebastien.fagard@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sebastien Fagard <sebastien.fagard@nxp.com>

The range of resources for Messaging Units side B needs to contain
all the possible MUB resource available: starting from MU_5B up to
MU_13B.
This patch is needed to enable MU_8B for the 'imx-shmem-net' driver
which allows two OS partitions communicating via MUs without Hypervisor.

Signed-off-by: Sebastien Fagard <sebastien.fagard@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index c10f63901c1c..09cfa268c6bd 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -93,7 +93,7 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "kpp", IMX_SC_R_KPP, 1, false, 0 },
 	{ "fspi", IMX_SC_R_FSPI_0, 2, true, 0 },
 	{ "mu_a", IMX_SC_R_MU_0A, 14, true, 0 },
-	{ "mu_b", IMX_SC_R_MU_13B, 1, true, 13 },
+	{ "mu_b", IMX_SC_R_MU_5B, 9, true, 5 },
 
 	/* CONN SS */
 	{ "usb", IMX_SC_R_USB_0, 2, true, 0 },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
