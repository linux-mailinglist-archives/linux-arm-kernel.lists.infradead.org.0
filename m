Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01A04C2A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 23:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vYSujwuFSbpQpOv01Pf9C3dJLhBnXk1nfEil/T4AzIg=; b=o00a6biv1CpKqn
	8FDlwA2F3lbgu8B8ctsP/N+7fS7aYlRpcHU2/LHGIqJWTbAjbskmAjjThyiHCYTEwhqpmH/jIbsqQ
	26OaUZigXBuIHjBXgWxvD+GspXVTxIxuJKT7II+cIDCqcz4fHIollNH1WjIBLupOQgZ74vK1aG9x4
	SIEA3PQHrusvyrj+HcYrOdIyvqdzHcD6BHEZ/Um3SVFYVODKWJFj5tp7BMuCDA0EiMGKVaVTSVvj6
	eF/P2KU0m7nF4EcJ7t3pRGUjR+Z3DEFod7pvChTaXMH1YEcj4qrCpoeMats+Pnwcq2GzUNqA7Eg4U
	ow98r4RQxXt4wgja7kDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdhhd-0002ZV-Up; Wed, 19 Jun 2019 21:01:10 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdhhP-0002Yp-C6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 21:00:57 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x5JKwoZb030674
 for <linux-arm-kernel@lists.infradead.org>; Wed, 19 Jun 2019 14:00:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=WXpeq58S6dL6eDCTC/2yGs+1ISto/uWnTCwAmoTfh00=;
 b=OnjqZJrLiJuEM9YuXGenPVTHIKLFEsb8VkAlWd4NClMjiVIQiJ3qsMix9leys+TeNh7G
 ZJqEkXRQq4hW2Po+y/95XFmPMGdY1YVf0hnec3HJZgQmJ7vBzx6ZJdu59XBt3ZYdSvho
 rVgzbmSGxfQrFlGn/4VftszsaXpJNQy4yVc= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by m0089730.ppops.net with ESMTP id 2t7s8xgrwf-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 19 Jun 2019 14:00:53 -0700
Received: from mx-out.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Wed, 19 Jun 2019 14:00:52 -0700
Received: by devvm24792.prn1.facebook.com (Postfix, from userid 150176)
 id B4D83164B5271; Wed, 19 Jun 2019 13:50:10 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Tao Ren <taoren@fb.com>
Smtp-Origin-Hostname: devvm24792.prn1.facebook.com
To: Brendan Higgins <brendanhiggins@google.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>,
 <linux-i2c@vger.kernel.org>, <openbmc@lists.ozlabs.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Smtp-Origin-Cluster: prn1c35
Subject: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Date: Wed, 19 Jun 2019 13:50:09 -0700
Message-ID: <20190619205009.4176588-1-taoren@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906190172
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_140055_551922_9A261991 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tao Ren <taoren@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some intermittent I2C transaction failures are observed on Facebook CMM and
Minipack (ast2500) BMC platforms, because slave devices (such as CPLD, BIC
and etc.) NACK the address byte sometimes. The issue can be resolved by
increasing base clock divisor which affects ASPEED I2C Controller's base
clock and other AC timing parameters.

This patch allows to customize ASPEED I2C Controller's base clock divisor
in device tree.

Signed-off-by: Tao Ren <taoren@fb.com>
---
 drivers/i2c/busses/i2c-aspeed.c | 48 ++++++++++++++++++++++-----------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index 6c8b38fd6e64..e4b1c4c71b62 100644
--- a/drivers/i2c/busses/i2c-aspeed.c
+++ b/drivers/i2c/busses/i2c-aspeed.c
@@ -145,7 +145,8 @@ struct aspeed_i2c_bus {
 	spinlock_t			lock;
 	struct completion		cmd_complete;
 	u32				(*get_clk_reg_val)(struct device *dev,
-							   u32 divisor);
+							   u32 divisor,
+							   u32 base_clk_div);
 	unsigned long			parent_clk_frequency;
 	u32				bus_frequency;
 	/* Transaction state. */
@@ -778,9 +779,10 @@ static const struct i2c_algorithm aspeed_i2c_algo = {
 
 static u32 aspeed_i2c_get_clk_reg_val(struct device *dev,
 				      u32 clk_high_low_mask,
-				      u32 divisor)
+				      u32 divisor,
+				      u32 base_clk_divisor)
 {
-	u32 base_clk_divisor, clk_high_low_max, clk_high, clk_low, tmp;
+	u32 clk_high_low_max, clk_high, clk_low, tmp;
 
 	/*
 	 * SCL_high and SCL_low represent a value 1 greater than what is stored
@@ -809,10 +811,12 @@ static u32 aspeed_i2c_get_clk_reg_val(struct device *dev,
 	 *		((1 << base_clk_divisor) * (clk_high + 1 + clk_low + 1))
 	 * The documentation recommends clk_high >= clk_high_max / 2 and
 	 * clk_low >= clk_low_max / 2 - 1 when possible; this last constraint
-	 * gives us the following solution:
+	 * gives us the following solution (unless base_clk_divisor is manually
+	 * configured in device tree):
 	 */
-	base_clk_divisor = divisor > clk_high_low_max ?
-			ilog2((divisor - 1) / clk_high_low_max) + 1 : 0;
+	if (base_clk_divisor > ASPEED_I2CD_TIME_BASE_DIVISOR_MASK)
+		base_clk_divisor = divisor > clk_high_low_max ?
+				ilog2((divisor - 1) / clk_high_low_max) + 1 : 0;
 
 	if (base_clk_divisor > ASPEED_I2CD_TIME_BASE_DIVISOR_MASK) {
 		base_clk_divisor = ASPEED_I2CD_TIME_BASE_DIVISOR_MASK;
@@ -843,35 +847,49 @@ static u32 aspeed_i2c_get_clk_reg_val(struct device *dev,
 			   & ASPEED_I2CD_TIME_BASE_DIVISOR_MASK);
 }
 
-static u32 aspeed_i2c_24xx_get_clk_reg_val(struct device *dev, u32 divisor)
+static u32 aspeed_i2c_24xx_get_clk_reg_val(struct device *dev,
+					   u32 divisor,
+					   u32 base_clk_divisor)
 {
 	/*
 	 * clk_high and clk_low are each 3 bits wide, so each can hold a max
 	 * value of 8 giving a clk_high_low_max of 16.
 	 */
-	return aspeed_i2c_get_clk_reg_val(dev, GENMASK(2, 0), divisor);
+	return aspeed_i2c_get_clk_reg_val(dev, GENMASK(2, 0), divisor,
+					  base_clk_divisor);
 }
 
-static u32 aspeed_i2c_25xx_get_clk_reg_val(struct device *dev, u32 divisor)
+static u32 aspeed_i2c_25xx_get_clk_reg_val(struct device *dev,
+					   u32 divisor,
+					   u32 base_clk_divisor)
 {
 	/*
 	 * clk_high and clk_low are each 4 bits wide, so each can hold a max
 	 * value of 16 giving a clk_high_low_max of 32.
 	 */
-	return aspeed_i2c_get_clk_reg_val(dev, GENMASK(3, 0), divisor);
+	return aspeed_i2c_get_clk_reg_val(dev, GENMASK(3, 0), divisor,
+					  base_clk_divisor);
 }
 
 /* precondition: bus.lock has been acquired. */
-static int aspeed_i2c_init_clk(struct aspeed_i2c_bus *bus)
+static int aspeed_i2c_init_clk(struct aspeed_i2c_bus *bus,
+			       struct platform_device *pdev)
 {
-	u32 divisor, clk_reg_val;
+	int ret;
+	u32 divisor, clk_reg_val, base_clk_divisor;
+
+	ret = of_property_read_u32(pdev->dev.of_node, "base-clock-divisor",
+				   &base_clk_divisor);
+	if (ret < 0)
+		base_clk_divisor = (u32)-1;
 
 	divisor = DIV_ROUND_UP(bus->parent_clk_frequency, bus->bus_frequency);
 	clk_reg_val = readl(bus->base + ASPEED_I2C_AC_TIMING_REG1);
 	clk_reg_val &= (ASPEED_I2CD_TIME_TBUF_MASK |
 			ASPEED_I2CD_TIME_THDSTA_MASK |
 			ASPEED_I2CD_TIME_TACST_MASK);
-	clk_reg_val |= bus->get_clk_reg_val(bus->dev, divisor);
+	clk_reg_val |= bus->get_clk_reg_val(bus->dev, divisor,
+					    base_clk_divisor);
 	writel(clk_reg_val, bus->base + ASPEED_I2C_AC_TIMING_REG1);
 	writel(ASPEED_NO_TIMEOUT_CTRL, bus->base + ASPEED_I2C_AC_TIMING_REG2);
 
@@ -888,7 +906,7 @@ static int aspeed_i2c_init(struct aspeed_i2c_bus *bus,
 	/* Disable everything. */
 	writel(0, bus->base + ASPEED_I2C_FUN_CTRL_REG);
 
-	ret = aspeed_i2c_init_clk(bus);
+	ret = aspeed_i2c_init_clk(bus, pdev);
 	if (ret < 0)
 		return ret;
 
@@ -989,7 +1007,7 @@ static int aspeed_i2c_probe_bus(struct platform_device *pdev)
 	if (!match)
 		bus->get_clk_reg_val = aspeed_i2c_24xx_get_clk_reg_val;
 	else
-		bus->get_clk_reg_val = (u32 (*)(struct device *, u32))
+		bus->get_clk_reg_val = (u32 (*)(struct device *, u32, u32))
 				match->data;
 
 	/* Initialize the I2C adapter */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
