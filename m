Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7762D18C7AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 07:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x1QPcTxc5Hu22+sA2rwtCPQ5LacrvqMBHB8+3bRZREk=; b=nubVp8Q/ZenApd
	HPiURv6n55uR4cEmKgfkOak3T3SqjlVXv1UxJoHCmRHlAk+F8ZABX5D0jWGvYMl+4SSgrvrvG3cAX
	y0Jxa4QZ9kWrp0hv7LkKcJWC4BA18XDfUUyOWh3MvjJnvW4TjD6tT41IQig6S08z9f0vZ9pXOAQvp
	C2UUAXKBH6nnQCy4VB0gw88IrVOshMgNE8J+3pjflBhtnpMQbHjUntekisrrCJxi7s32kjQAGwd6k
	+6+J8mPtgYvzGTWBNtX2MikyLZK8sy3jqP4dJOeS1vifuj1hVa2+Q2RKOLu+YfrbT+sOd6L4QG4uQ
	KoYiL0+yQDgclPCkEpSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBUx-0005ro-4q; Fri, 20 Mar 2020 06:51:15 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBUo-0005rH-9u
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 06:51:09 +0000
IronPort-SDR: szZHuTJOwLHjzpJu5997lS1eZrfB14vcRoK7UtBfmxW7vZSz5HFwy7n/VOPAM0KqzUSrmmUWqC
 FhVXWANekdK5y9YpIlxUFWk2yKGknqMGWh78LfThLPrkIObh8gWPsH4BEaAJJt7hA6oXPlBGDp
 04+gmTpDsWRwsTCKIetiCyB6f2pP3zaO60Z3U9nd9clR1g/Ojz6YmlwsRkMlvbHMJPblLeRJrY
 MHbD3Op9W5aPnpw7bCohNWs8N/YnG4+W/eNOmMEH7GNPvAXlaRn5pdkkDDjQHkX4VlXO0J9tlG
 w4g=
X-IronPort-AV: E=Sophos;i="5.72,283,1580799600"; d="scan'208";a="69643487"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Mar 2020 23:51:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Mar 2020 23:51:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Mar 2020 23:51:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCb/q2Oy+a6mWFG1xrpJ7McfIrVADNyhVO3JPQo2FpyL7Mp/lys0d91A+/eH75+U5m2SaILjzGrqeN6uj8LN6pQpkXnlKVaXyZfGUf8hBupE5a/DfEJwhS85kmCGRcBprtUi0AwU2JkJ/Y8x+nZ2xEYklrikGkP4Og0tYrsrGuY+HQCqkrU83YUCVU8xnbUr+9FiYTznxFwgypiChP0uz4FT78Ml2PLIOaxBjCEzhmDi5hhgYox9Ck7vazjVsPyD/L+68YmiNeU+zoUX8OCs9F1rFvt8D3agLrenpyBcGuTAVNkT/Q8NskLBPCud9I0cmySV7GISw/+KtrWvdV0REQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2m9zBRRmUZ5ztou5q7E5VMRnuK5Bgei05Bk3K6BfTMY=;
 b=cswtQGEJihe7JA/65vMphgvBAsmkQDEhEvHGQyAVZSOSXVU/a1KuyvyKaAaB5GsXGsvz5o5JEIEYU1kKIwW2DsCqc7DjNjv1+ua3k/iiPK2DiByWf2nVfPTV6655ifoTHjkE1I0OVMTfYg1NJ1fpefCETd+W0BOxm2ISGZ1kwWyJwWAY/FLM5RSh0KzGv4f84w5X12/fcHeREsuab8TOmmydk57JMlssD9HxR8plhahX5Rl2WSxRMkRiBRJJxrpdcHs3uKDbdK1BsqZAjuM7QSZLtXepfnAR0V2CW4FLNuyGeJUV3GwGhSYDiUJPf5dbHQwCrlr7tKbxS2FFE9mXrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2m9zBRRmUZ5ztou5q7E5VMRnuK5Bgei05Bk3K6BfTMY=;
 b=gEPNmNh0s6xHoHcux9GLMFE5w1n3Rn7TeRIFFRqbV/bDcOg7wkxvdDM25BZ85LF9qcCDlHpBbI0rdZ6F9T7UG4dSeqxHzU5Ici4hnunG2SqjO7eBwoupFuhhmiGy7jfJtlX7M8/VJFur7/JnSHaaefTwyG9pFCTeNvyPsd6lFT0=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB3710.namprd11.prod.outlook.com (2603:10b6:208:f2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Fri, 20 Mar
 2020 06:51:02 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::b515:d8f2:b5f5:245f]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::b515:d8f2:b5f5:245f%7]) with mapi id 15.20.2835.017; Fri, 20 Mar 2020
 06:51:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <broonie@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH] spi: atmel-quadspi: Add verbose debug facilities to monitor
 register accesses
Thread-Topic: [PATCH] spi: atmel-quadspi: Add verbose debug facilities to
 monitor register accesses
Thread-Index: AQHV/oPqtOj7WQwUUkKT39YwyDGkQw==
Date: Fri, 20 Mar 2020 06:51:01 +0000
Message-ID: <20200320065058.891221-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7977fcb-52fe-4250-3d46-08d7cc9b0d8e
x-ms-traffictypediagnostic: MN2PR11MB3710:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37102ED26764469864183CD2F0F50@MN2PR11MB3710.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(396003)(346002)(376002)(199004)(76116006)(91956017)(66946007)(6512007)(6506007)(316002)(4326008)(64756008)(66556008)(1076003)(107886003)(81166006)(66446008)(81156014)(110136005)(54906003)(66476007)(26005)(71200400001)(186003)(6636002)(5660300002)(6486002)(2616005)(8676002)(2906002)(86362001)(478600001)(36756003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3710;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IuiEiYvFYAgOdAKJ0wIEDpS6QFN0Zo87nm3ZsyISA959oV8HK6kYXIOZQYr9JhZW5ZG6DXYaGQxfPg4kphNNIutcaJTD+z8LHhDBaB4XNhSRepRt3jUmwpsRZJQeWYB2sIbBVa23Tu9LS2/qqiXxZh3nES44Pee2RnfhNWGUI6BAGQmjRaDETpYxA3vbD4e/WzeTMqrZOF0E/WNWLN1GCHAby8exQxwOvfLiMhHoy70l+J5uOgX5vmvBYDGZvKeS6NYe6o7n2XpFbPimujSAq6WA0mnkdzF18qCadvLKwIh9Xn5bhz0SiMua5B/tNHitldoH3Z30puRjpkoF8dhXkPrdiq0o3uFlowhMfrOgVWmPTVzqF5dSWz1g+DQ+e4PBP11apfUJY7hPzt4w+FVt2jscfhaY/gC17HzPnK+OrFN6XZ0Dbr5tZic9LM+LeB2q
x-ms-exchange-antispam-messagedata: TGLyVe/KGXraA6NrzGN3ho6XUkz00rriSdmT56Df2AdwwNAjqPmw2wkNzekNYBuvEHM8oatp2wyXCyO/nk7xZUf9xNb7eOFZEI0VeMN55BMgytTy3yuziNCcN2V5FG4DpXgUBhJN5B5h0kUEKOL8yg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b7977fcb-52fe-4250-3d46-08d7cc9b0d8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 06:51:01.3148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DS4Ndj6xeyXdCYRUN33b5iLhIdXfjIH4kQn51T2CTmczymc2V2/xdEFCFvM8h2bxEoTrEcSHEmwwGoclHbToymbC5shmwMnczA8DXGRufYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_235106_404391_72873AC9 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tudor.Ambarus@microchip.com, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

This feature should not be enabled in release but can be useful for
developers who need to monitor register accesses at some specific places.

Helped me identify a bug in u-boot, by comparing the register accesses
from the linux driver with the ones from its u-boot variant.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/spi/atmel-quadspi.c | 119 +++++++++++++++++++++++++++++-------
 1 file changed, 97 insertions(+), 22 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 13def7f78b9e..cb44d1e169aa 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -173,6 +173,81 @@ static const struct atmel_qspi_mode atmel_qspi_modes[] = {
 	{ 4, 4, 4, QSPI_IFR_WIDTH_QUAD_CMD },
 };
 
+#ifdef VERBOSE_DEBUG
+static const char *atmel_qspi_reg_name(u32 offset, char *tmp, size_t sz)
+{
+	switch (offset) {
+	case QSPI_CR:
+		return "CR";
+	case QSPI_MR:
+		return "MR";
+	case QSPI_RD:
+		return "MR";
+	case QSPI_TD:
+		return "TD";
+	case QSPI_SR:
+		return "SR";
+	case QSPI_IER:
+		return "IER";
+	case QSPI_IDR:
+		return "IDR";
+	case QSPI_IMR:
+		return "IMR";
+	case QSPI_SCR:
+		return "SCR";
+	case QSPI_IAR:
+		return "IAR";
+	case QSPI_ICR:
+		return "ICR/WICR";
+	case QSPI_IFR:
+		return "IFR";
+	case QSPI_RICR:
+		return "RICR";
+	case QSPI_SMR:
+		return "SMR";
+	case QSPI_SKR:
+		return "SKR";
+	case QSPI_WPMR:
+		return "WPMR";
+	case QSPI_WPSR:
+		return "WPSR";
+	case QSPI_VERSION:
+		return "VERSION";
+	default:
+		snprintf(tmp, sz, "0x%02x", offset);
+		break;
+	}
+
+	return tmp;
+}
+#endif /* VERBOSE_DEBUG */
+
+static u32 atmel_qspi_read(struct atmel_qspi *aq, u32 offset)
+{
+	u32 value = readl_relaxed(aq->regs + offset);
+
+#ifdef VERBOSE_DEBUG
+	char tmp[8];
+
+	dev_vdbg(&aq->pdev->dev, "read 0x%08x from %s\n", value,
+		 atmel_qspi_reg_name(offset, tmp, sizeof(tmp)));
+#endif /* VERBOSE_DEBUG */
+
+	return value;
+}
+
+static void atmel_qspi_write(u32 value, struct atmel_qspi *aq, u32 offset)
+{
+#ifdef VERBOSE_DEBUG
+	char tmp[8];
+
+	dev_vdbg(&aq->pdev->dev, "write 0x%08x into %s\n", value,
+		 atmel_qspi_reg_name(offset, tmp, sizeof(tmp)));
+#endif /* VERBOSE_DEBUG */
+
+	writel_relaxed(value, aq->regs + offset);
+}
+
 static inline bool atmel_qspi_is_compatible(const struct spi_mem_op *op,
 					    const struct atmel_qspi_mode *mode)
 {
@@ -293,32 +368,32 @@ static int atmel_qspi_set_cfg(struct atmel_qspi *aq,
 	 * Serial Memory Mode (SMM).
 	 */
 	if (aq->mr != QSPI_MR_SMM) {
-		writel_relaxed(QSPI_MR_SMM, aq->regs + QSPI_MR);
+		atmel_qspi_write(QSPI_MR_SMM, aq, QSPI_MR);
 		aq->mr = QSPI_MR_SMM;
 	}
 
 	/* Clear pending interrupts */
-	(void)readl_relaxed(aq->regs + QSPI_SR);
+	(void)atmel_qspi_read(aq, QSPI_SR);
 
 	if (aq->caps->has_ricr) {
 		if (!op->addr.nbytes && op->data.dir == SPI_MEM_DATA_IN)
 			ifr |= QSPI_IFR_APBTFRTYP_READ;
 
 		/* Set QSPI Instruction Frame registers */
-		writel_relaxed(iar, aq->regs + QSPI_IAR);
+		atmel_qspi_write(iar, aq, QSPI_IAR);
 		if (op->data.dir == SPI_MEM_DATA_IN)
-			writel_relaxed(icr, aq->regs + QSPI_RICR);
+			atmel_qspi_write(icr, aq, QSPI_RICR);
 		else
-			writel_relaxed(icr, aq->regs + QSPI_WICR);
-		writel_relaxed(ifr, aq->regs + QSPI_IFR);
+			atmel_qspi_write(icr, aq, QSPI_WICR);
+		atmel_qspi_write(ifr, aq, QSPI_IFR);
 	} else {
 		if (op->data.dir == SPI_MEM_DATA_OUT)
 			ifr |= QSPI_IFR_SAMA5D2_WRITE_TRSFR;
 
 		/* Set QSPI Instruction Frame registers */
-		writel_relaxed(iar, aq->regs + QSPI_IAR);
-		writel_relaxed(icr, aq->regs + QSPI_ICR);
-		writel_relaxed(ifr, aq->regs + QSPI_IFR);
+		atmel_qspi_write(iar, aq, QSPI_IAR);
+		atmel_qspi_write(icr, aq, QSPI_ICR);
+		atmel_qspi_write(ifr, aq, QSPI_IFR);
 	}
 
 	return 0;
@@ -345,7 +420,7 @@ static int atmel_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	/* Skip to the final steps if there is no data */
 	if (op->data.nbytes) {
 		/* Dummy read of QSPI_IFR to synchronize APB and AHB accesses */
-		(void)readl_relaxed(aq->regs + QSPI_IFR);
+		(void)atmel_qspi_read(aq, QSPI_IFR);
 
 		/* Send/Receive data */
 		if (op->data.dir == SPI_MEM_DATA_IN)
@@ -356,22 +431,22 @@ static int atmel_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 				     op->data.nbytes);
 
 		/* Release the chip-select */
-		writel_relaxed(QSPI_CR_LASTXFER, aq->regs + QSPI_CR);
+		atmel_qspi_write(QSPI_CR_LASTXFER, aq, QSPI_CR);
 	}
 
 	/* Poll INSTRuction End status */
-	sr = readl_relaxed(aq->regs + QSPI_SR);
+	sr = atmel_qspi_read(aq, QSPI_SR);
 	if ((sr & QSPI_SR_CMD_COMPLETED) == QSPI_SR_CMD_COMPLETED)
 		return err;
 
 	/* Wait for INSTRuction End interrupt */
 	reinit_completion(&aq->cmd_completion);
 	aq->pending = sr & QSPI_SR_CMD_COMPLETED;
-	writel_relaxed(QSPI_SR_CMD_COMPLETED, aq->regs + QSPI_IER);
+	atmel_qspi_write(QSPI_SR_CMD_COMPLETED, aq, QSPI_IER);
 	if (!wait_for_completion_timeout(&aq->cmd_completion,
 					 msecs_to_jiffies(1000)))
 		err = -ETIMEDOUT;
-	writel_relaxed(QSPI_SR_CMD_COMPLETED, aq->regs + QSPI_IDR);
+	atmel_qspi_write(QSPI_SR_CMD_COMPLETED, aq, QSPI_IDR);
 
 	return err;
 }
@@ -410,7 +485,7 @@ static int atmel_qspi_setup(struct spi_device *spi)
 		scbr--;
 
 	aq->scr = QSPI_SCR_SCBR(scbr);
-	writel_relaxed(aq->scr, aq->regs + QSPI_SCR);
+	atmel_qspi_write(aq->scr, aq, QSPI_SCR);
 
 	return 0;
 }
@@ -418,14 +493,14 @@ static int atmel_qspi_setup(struct spi_device *spi)
 static void atmel_qspi_init(struct atmel_qspi *aq)
 {
 	/* Reset the QSPI controller */
-	writel_relaxed(QSPI_CR_SWRST, aq->regs + QSPI_CR);
+	atmel_qspi_write(QSPI_CR_SWRST, aq, QSPI_CR);
 
 	/* Set the QSPI controller by default in Serial Memory Mode */
-	writel_relaxed(QSPI_MR_SMM, aq->regs + QSPI_MR);
+	atmel_qspi_write(QSPI_MR_SMM, aq, QSPI_MR);
 	aq->mr = QSPI_MR_SMM;
 
 	/* Enable the QSPI controller */
-	writel_relaxed(QSPI_CR_QSPIEN, aq->regs + QSPI_CR);
+	atmel_qspi_write(QSPI_CR_QSPIEN, aq, QSPI_CR);
 }
 
 static irqreturn_t atmel_qspi_interrupt(int irq, void *dev_id)
@@ -433,8 +508,8 @@ static irqreturn_t atmel_qspi_interrupt(int irq, void *dev_id)
 	struct atmel_qspi *aq = dev_id;
 	u32 status, mask, pending;
 
-	status = readl_relaxed(aq->regs + QSPI_SR);
-	mask = readl_relaxed(aq->regs + QSPI_IMR);
+	status = atmel_qspi_read(aq, QSPI_SR);
+	mask = atmel_qspi_read(aq, QSPI_IMR);
 	pending = status & mask;
 
 	if (!pending)
@@ -569,7 +644,7 @@ static int atmel_qspi_remove(struct platform_device *pdev)
 	struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);
 
 	spi_unregister_controller(ctrl);
-	writel_relaxed(QSPI_CR_QSPIDIS, aq->regs + QSPI_CR);
+	atmel_qspi_write(QSPI_CR_QSPIDIS, aq, QSPI_CR);
 	clk_disable_unprepare(aq->qspick);
 	clk_disable_unprepare(aq->pclk);
 	return 0;
@@ -596,7 +671,7 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 
 	atmel_qspi_init(aq);
 
-	writel_relaxed(aq->scr, aq->regs + QSPI_SCR);
+	atmel_qspi_write(aq->scr, aq, QSPI_SCR);
 
 	return 0;
 }
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
