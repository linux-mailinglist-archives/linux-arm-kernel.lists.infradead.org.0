Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9B863B09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7VCl/8T1/9lA/Z+yLB0avvJq74UxK8YqCmGLERfItA=; b=Ci94qg3oLUox2H
	lV6kL0skEBpcKSFFh0csx2zXWfe4ab/z28V4yWCfEN/1l/gAFU8KcsIrldn4a3aoiZFCfXWV4ol0H
	Fw/hKhCt7rwqVm8r0q2NPEH3yBIp9HFSpNaRcK37/jOSFew6tnRUgP0Nx5QpVWYlCEm0YUXsgVxBj
	UZge+LQ0uG3+r3qFB33/V+Jthl0zUqNj7H11ZcT3mvUf7ZzowLXQUr66Axx0PTj3aJj0XxWjzgvBz
	iYMaGud4HUrEC7yG4Bcn2yacS+xBDh7qL+DhqDeXAHpQX6XbduDGdxHuubaeZJgoapLSJ1Zf56Uct
	jk6HxlchD7JyhvamgMdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuwG-0007aB-W1; Tue, 09 Jul 2019 18:34:05 +0000
Received: from us-smtp-delivery-168.mimecast.com ([63.128.21.168])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuur-0006Mc-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=mimecast20190405; t=1562697154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p8FgQHMDZotmaPJ3P/GlNO7Us6WhQQELizTu+38JudE=;
 b=ilxkcqMzqWMhqL7N3VbFtxP+wBLihg02BhCPND1jq/sJW/dndhI3hWeqxEIpQET/CeZ2RB
 4B2m1vIHtAjdHxZEgPbDuC6Wclg9fgijMrngT3Dfy1p3HFMIpA6VpKwidwJvc9LSoDr1dA
 WXpeRgTeKfGjey9VpirlSIaMQatZR8Y=
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2053.outbound.protection.outlook.com [104.47.33.53]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-mcGftj7-P-60TeGihOMjPw-1; Tue, 09 Jul 2019 14:30:43 -0400
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3754.namprd06.prod.outlook.com (10.167.236.147) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 18:30:41 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d66:fca6:b053:764f]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d66:fca6:b053:764f%6]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 18:30:41 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/2] nvmem: imx-ocotp: Support multiple word writes
Thread-Topic: [PATCH 2/2] nvmem: imx-ocotp: Support multiple word writes
Thread-Index: AQHVNoRpn4gokW54jUCjw+IsyIbySg==
Date: Tue, 9 Jul 2019 18:30:40 +0000
Message-ID: <20190709183016.4789-2-tpiepho@impinj.com>
References: <20190709183016.4789-1-tpiepho@impinj.com>
In-Reply-To: <20190709183016.4789-1-tpiepho@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0017.namprd08.prod.outlook.com
 (2603:10b6:a03:100::30) To MWHPR0601MB3708.namprd06.prod.outlook.com
 (2603:10b6:301:7c::38)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1908bf3-21db-4e45-2713-08d7049b8b89
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3754; 
x-ms-traffictypediagnostic: MWHPR0601MB3754:
x-microsoft-antispam-prvs: <MWHPR0601MB3754CD3DCC34B95A6DDE734CD3F10@MWHPR0601MB3754.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(39850400004)(346002)(189003)(199004)(256004)(86362001)(2351001)(50226002)(81166006)(5640700003)(14444005)(186003)(68736007)(6512007)(486006)(102836004)(6506007)(386003)(26005)(5660300002)(71190400001)(71200400001)(36756003)(54906003)(8676002)(446003)(476003)(81156014)(2616005)(11346002)(8936002)(25786009)(4326008)(316002)(1076003)(2906002)(99286004)(64756008)(66476007)(6436002)(66946007)(52116002)(73956011)(66556008)(66446008)(66066001)(305945005)(478600001)(7736002)(53936002)(76176011)(6486002)(2501003)(14454004)(3846002)(6116002)(6916009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3754;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FNCcQH6RAj+dIO3DPEuVFld61plUcJLK4tpoN2nolvG90sYRUPyE9jAuzl7KXjlwr0yjgs5D+T7Z8Uu09x9sn6hMee2yxlgqTUgF6oooPXGP8ZFHXDHDvgq13oQ2Mntyd01mjifM0OcEyCUq6uEnZ07Z4h6HfsSCpPoLgOJ6s1jpZOYygE4/vGsC3bLgzF1F630m4jfnTMsWxgmtkcRxtyeZJ9My0zwReCRbCxreSLrvEhyodeVX6AU/wqjiNePI1XROZzBKT7wMFfciVTOSH64iUOKQkGfGulk6pElMw0ivNHeJz405GGQ1lSdaaq26UeBpx4xFW81XY208ghjgfG92Gbt7RJp96YOP16W8XvBooXl359xjoh5clCWjsLNFKNTusTJwqqLfDnhHles1qE5a+L75rik9s5C7x7hD9DQ=
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1908bf3-21db-4e45-2713-08d7049b8b89
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 18:30:40.8135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tpiepho@impinj.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3754
X-MC-Unique: mcGftj7-P-60TeGihOMjPw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_113238_363005_1157FA69 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [63.128.21.168 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Trent Piepho <tpiepho@impinj.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All the other nvmem drivers here support multiple words being read, and
for writable memory, written in one call.  This driver appears to be the
only one with a single word write restriction.  It makes the driver fail
with generic userspace nvmem tools.

It's easy to support multiple words to write so do that.

The nvmem core verifies the write length against the word size, so that
can be removed from the driver.  But offset still needs to be checked.

Also simplify the bank write code for imx7 to avoid a lot of
duplication.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Trent Piepho <tpiepho@impinj.com>
---
 drivers/nvmem/imx-ocotp.c | 108 +++++++++++++++++++++++-----------------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index d45e71e9b73a..a8b5ea553c12 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -240,33 +240,13 @@ static void imx_ocotp_set_imx7_timing(struct ocotp_priv *priv)
 	writel(timing, priv->base + IMX_OCOTP_ADDR_TIMING);
 }
 
-static int imx_ocotp_write(void *context, unsigned int offset, void *val,
-			   size_t bytes)
+/* Write a single word to ocotp */
+static int imx_ocotp_write_word(struct ocotp_priv *priv, unsigned int offset,
+				u32 val)
 {
-	struct ocotp_priv *priv = context;
-	u32 *buf = val;
 	int ret;
-
 	u32 ctrl;
-	u8 waddr;
-	u8 word = 0;
-
-	/* allow only writing one complete OTP word at a time */
-	if ((bytes != priv->config->word_size) ||
-	    (offset % priv->config->word_size))
-		return -EINVAL;
-
-	mutex_lock(&ocotp_mutex);
-
-	ret = clk_prepare_enable(priv->clk);
-	if (ret < 0) {
-		mutex_unlock(&ocotp_mutex);
-		dev_err(priv->dev, "failed to prepare/enable ocotp clk\n");
-		return ret;
-	}
-
-	/* Setup the write timing values */
-	priv->params->set_timing(priv);
+	u8 word, waddr;
 
 	/* 47.3.1.3.2
 	 * Check that HW_OCOTP_CTRL[BUSY] and HW_OCOTP_CTRL[ERROR] are clear.
@@ -277,7 +257,7 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	ret = imx_ocotp_wait_for_busy(priv->base, 0);
 	if (ret < 0) {
 		dev_err(priv->dev, "timeout during timing setup\n");
-		goto write_end;
+		return ret;
 	}
 
 	/* 47.3.1.3.3
@@ -303,6 +283,7 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 		 * locations
 		 */
 		waddr = offset / 4;
+		word = 0;
 	}
 
 	ctrl = readl(priv->base + IMX_OCOTP_ADDR_CTRL);
@@ -335,36 +316,19 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	 *	 register written.
 	 */
 	if (priv->params->bank_address_words != 0) {
-		/* Banked/i.MX7 mode */
-		switch (word) {
-		case 0:
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA1);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA2);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA3);
-			writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA0);
-			break;
-		case 1:
-			writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA1);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA2);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA3);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA0);
-			break;
-		case 2:
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA1);
-			writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA2);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA3);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA0);
-			break;
-		case 3:
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA1);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA2);
-			writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA3);
-			writel(0, priv->base + IMX_OCOTP_ADDR_DATA0);
-			break;
-		}
+		/* Banked/i.MX7 mode. All four data words are zero ... */
+		u32 data[4] = { 0, 0, 0, 0 };
+		/* ... except the word we are programming. */
+		data[word] = val;
+
+		/* Always write in order 1,2,3,0: 0 being last is critical */
+		writel(data[1], priv->base + IMX_OCOTP_ADDR_DATA1);
+		writel(data[2], priv->base + IMX_OCOTP_ADDR_DATA2);
+		writel(data[3], priv->base + IMX_OCOTP_ADDR_DATA3);
+		writel(data[0], priv->base + IMX_OCOTP_ADDR_DATA0);
 	} else {
 		/* Non-banked i.MX6 mode */
-		writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA0);
+		writel(val, priv->base + IMX_OCOTP_ADDR_DATA0);
 	}
 
 	/* 47.4.1.4.5
@@ -381,8 +345,9 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 			imx_ocotp_clr_err_if_set(priv->base);
 		} else {
 			dev_err(priv->dev, "timeout during data write\n");
+			ret = -ETIMEDOUT;
 		}
-		goto write_end;
+		return ret;
 	}
 
 	/* 47.3.1.4
@@ -393,6 +358,41 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	 */
 	udelay(2);
 
+	return 0;
+}
+
+static int imx_ocotp_write(void *context, unsigned int offset, void *val,
+			   size_t bytes)
+{
+	struct ocotp_priv *priv = context;
+	u32 *buf = val;
+	int ret;
+
+	/* While the nvmem core will check that bytes is a multiple of the word
+	 * size, it does not check that offset is aligned to the word size or
+	 * the stride.
+	 */
+	if (offset % priv->config->word_size)
+		return -EINVAL;
+
+	mutex_lock(&ocotp_mutex);
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret < 0) {
+		mutex_unlock(&ocotp_mutex);
+		dev_err(priv->dev, "failed to prepare/enable ocotp clk\n");
+		return ret;
+	}
+
+	/* Setup the write timing values */
+	priv->params->set_timing(priv);
+
+	for (; bytes > 0; bytes -= 4, offset += 4, buf++) {
+		ret = imx_ocotp_write_word(priv, offset, *buf);
+		if (ret)
+			goto write_end;
+	}
+
 	/* reload all shadow registers */
 	writel(IMX_OCOTP_BM_CTRL_REL_SHADOWS,
 	       priv->base + IMX_OCOTP_ADDR_CTRL_SET);
-- 
2.14.5




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
